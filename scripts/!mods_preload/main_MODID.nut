::modMODID <- {
	ID = "mod_MODID",
	Name = "Name_Of_Your_Mod",
	Version = "0.1.0",
	// GitHubURL = "https://github.com/YOURNAME/mod_MODID",
}

::modMODID.HooksMod <- ::Hooks.register(::modMODID.ID, ::modMODID.Version, ::modMODID.Name);
::modMODID.HooksMod.require(["mod_msu"]);

::modMODID.HooksMod.queue(">mod_msu", function() {
	::mod_MODID.Mod <- ::MSU.Class.Mod(::mod_MODID.ID, ::mod_MODID.Version, ::mod_MODID.Name);
	// ::mod_MODID.Mod.Registry.addModSource(::MSU.System.Registry.ModSourceDomain.GitHub, ::mod_MODID.GitHubURL);
	// ::mod_MODID.Mod.Registry.setUpdateSource(::MSU.System.Registry.ModSourceDomain.GitHub);

	::include("mod_MODID/load");		// Load mod adjustments and other hooks
	::include("mod_MODID/ui/load");		// Load JS Adjustments and Hooks

	foreach (file in ::IO.enumerateFiles("mod_MODID/hooks"))	// This will load and execute all hooks that you created
	{
		::include(file);
	}
});

// Checklist:
// - replace all instances of "MODID" with your modid in uppercase letter. Within all files, aswell as for folder/file naming
// - replace the value of 'Name' with your written out mod name separated with spacebars
// - 'Version' can probably stay at 0.1.0 for your first version/release
// - if you don't use hooks, remove the hooks folder and the above ::includeFiles line
