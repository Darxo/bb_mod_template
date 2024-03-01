::include("mod_MODID/some_priority_script");	// This file needs priority

::includeFiles(::IO.enumerateFiles("mod_MODID/hooks"));		// This will load and execute all hooks
