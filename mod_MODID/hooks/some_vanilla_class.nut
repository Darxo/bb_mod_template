::mod_MODID.HooksMod.hook("scripts/path/to/class", function(q) {
	q.m.CustomMult <- 1.3;	// new member variables

	q.create = @(__original) function()
	{
		__original();
		// Change member values here
	}

	q.getTooltip = @(__original) function()
	{
		local ret = __original();
		foreach (index, entry in ret)
		{
			if (entry.id == 8 && entry.text.find("STRING_IDENTIFIER") != null)
			{
				ret.remove(index);	// Remove tooltip entry with id 8 and whose text has "STRING_IDENTIFIER" somewhere
				break;
			}
		}
		return ret;
	}
	q.m.ResolveModifierPerWeight <- -0.01;

	q.onUpdate = @() function( _properties )	// overwrite of hooked function
	{
		_properties.SomeMult *= this.m.CustomMult;
	}
});
