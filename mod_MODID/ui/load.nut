::mods_registerJS("mod_MODID/setup.js");

local prefixLen = "ui/mods/".len();
foreach(file in ::IO.enumerateFiles("ui/mods/mod_MODID/js_hooks"))
{
	::Hooks.registerJS(file + ".js");
	::mods_registerJS(file.slice(prefixLen) + ".js");
}
