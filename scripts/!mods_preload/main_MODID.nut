::modMODID <- {
	ID = "mod_MODID",
	Name = "Name_Of_Your_Mod",
	Version = "0.1.1",
	// GitHubURL = "https://github.com/YOURNAME/mod_MODID",
}

::modMODID.HooksMod <- ::Hooks.register(::modMODID.ID, ::modMODID.Version, ::modMODID.Name);
::modMODID.HooksMod.require(["mod_msu"]);

::modMODID.HooksMod.queue(">mod_msu", function() {
	::modMODID.Mod <- ::MSU.Class.Mod(::modMODID.ID, ::modMODID.Version, ::modMODID.Name);

	// Add an official mod source and turn on automatic ingame reminder about new updates
	// ::modMODID.Mod.Registry.addModSource(::MSU.System.Registry.ModSourceDomain.GitHub, ::mod_MODID.GitHubURL);
	// ::modMODID.Mod.Registry.setUpdateSource(::MSU.System.Registry.ModSourceDomain.GitHub);

	::include("mod_MODID/load");		// Load mod adjustments and other hooks
	::include("mod_MODID/ui/load");		// Load JS Adjustments and Hooks
});

// Checklist:
// - replace all instances of "modMODID" (in all files) with your mods global key handle of choice. This id should be unique enough to hopefully not ever be picked by someone else
// - replace all instances of "mod_MODID" (in all files) with your modid of choice. Mods usually always start with "mod_". This id should be unique enough to hopefully not ever be picked by someone else
// - replace all instances of "mod_MODID" in all existing folders and scriptnames
// - replace "MODID" in the name of this (main) file with your modid of choice.
// - replace the value of 'Name' with your written out mod name separated with spacebars
// - 'Version' will normally start at 0.1.0 for your first version/release
