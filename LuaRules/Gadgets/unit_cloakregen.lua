function gadget:GetInfo()
	return {
		name      = "Cloak Regen",
		desc      = "Allows units with cloak to regen while cloaked.",
		author    = "Shaman",
		date      = "12/19/2020",
		license   = "CC-0",
		layer     = 1,
		enabled   = true,
	}
end

if not gadgetHandler:IsSyncedCode() then -- no unsynced nonsense
	return
end

local units = {}
local wantedunits = {}
local updaterate = 15

-- speed ups --
local spGetUnitHealth = Spring.GetUnitHealth
local spSetUnitHealth = Spring.SetUnitHealth
local spGetUnitRulesParam = Spring.GetUnitRulesParam
local spSetUnitRulesParam = Spring.SetUnitRulesParam
local INLOS = {inlos = true}
local min = math.min

--config--

for i = 1, #UnitDefs do
	local def = UnitDefs[i]
	local cp = def.customParams
	if cp.cloakregen then
		wantedunits[i] = cp.cloakregen / (30 / updaterate)
	end
end

function gadget:UnitDestroyed(unitID, unitDefID, unitTeam, attackerID, attackerDefID, attackerTeam)
	units[unitID] = nil
end

function gadget:UnitCloaked(unitID, unitDefID, unitTeam)
	if wantedunits[unitDefID] then
		local health, maxhp = spGetUnitHealth(unitID)
		if health < maxhp then
			units[unitID] = wantedunits[unitDefID]
		end
	end
end

function gadget:GameFrame(f)
	if f%updaterate == 4 then -- before idle regen.
		for id, regen in pairs(units) do
			local actualregen = (regen * (1 - (spGetUnitRulesParam(id, "slowState") or 0))) * (30 / updaterate)
			spSetUnitRulesParam(id, "cloakregen", actualregen, INLOS)
			local hp, maxhp = spGetUnitHealth(id)
			if hp < maxhp then
				hp = min(hp + actualregen, maxhp)
				spSetUnitHealth(id, hp)
				if hp == maxhp then
					units[id] = nil
				end
			else
				units[id] = nil
			end
		end
	end
end

function gadget:UnitDecloaked(unitID, unitDefID, unitTeam)
	units[unitID] = nil
	spSetUnitRulesParam(unitID, "cloakregen", nil)
end

