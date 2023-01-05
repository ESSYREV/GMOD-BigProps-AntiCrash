local function addHook(name)
	hook.Add(name,"esrv.AntiCrash.ByBigProps",function(ply,mdl,ent)
		if ent == nil then return end
		if ent:GetModelScale() != 1 then
			ent:Remove()
		end
	end)
end

addHook("PlayerSpawnedProp")
addHook("PlayerSpawnedRagdoll")
addHook("PlayerSpawnedEffect")
  

local function addHookAnother(name) -- Это такая же функция, как и прошлая, но в функции не указано mdl.
	hook.Add(name,"esrv.AntiCrash.ByBigProps",function(ply,ent)
		if ent == nil then return end
		if ent:GetModelScale() != 1 then
			ent:Remove()
		end
	end)
end

addHook("PlayerSpawnedNPC")
addHook("PlayerSpawnedSENT")
addHook("PlayerSpawnedSWEP")
addHook("PlayerSpawnedVehicle")


