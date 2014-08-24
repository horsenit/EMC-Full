
class EMCSettings
{
	public var containerGlow : bool;
	default containerGlow = true;
	public var autoLoot : bool;
	default autoLoot = true;
	public var finisher : bool;
	default finisher = true;
	public var talentDesc : bool;
	default talentDesc = true;
	public var itemTag : bool;
	default itemTag = true;
	public var pokerCheat : bool;
	default pokerCheat = true;
	public var bodyTimer : float;
	default bodyTimer = 5.0f;
	public var darkEffect : bool;
	default darkEffect = true;
	public var skipDrink : bool;
	default skipDrink = true;

	function ReadSettings()
	{
		var value : float;

		if ( theGame.ReadConfigParamFloat( "User", "EMC", "ContainerGlow", value ) )
		{
			containerGlow = value == 1.0f;
		}
		if ( theGame.ReadConfigParamFloat( "User", "EMC", "AutoLoot", value ) )
		{
			autoLoot = value == 1.0f;
		}
		if ( theGame.ReadConfigParamFloat( "User", "EMC", "Finisher", value ) )
		{
			finisher = value == 1.0f;
		}
		if ( theGame.ReadConfigParamFloat( "User", "EMC", "TalentDesc", value ) )
		{
			talentDesc = value == 1.0f;
		}
		if ( theGame.ReadConfigParamFloat( "User", "EMC", "ItemTagging", value ) )
		{
			itemTag = value == 1.0f;
		}
		if ( theGame.ReadConfigParamFloat( "User", "EMC", "PokerCheat", value ) )
		{
			pokerCheat = value == 1.0f;
		}
		if ( theGame.ReadConfigParamFloat( "User", "EMC", "BodyTimer", value ) )
		{
			bodyTimer = value;
		}
		if ( theGame.ReadConfigParamFloat( "User", "EMC", "DarkEffect", value ) )
		{
			darkEffect = value == 1.0f;
		}
		if ( theGame.ReadConfigParamFloat( "User", "EMC", "SkipDrinkAnimation", value ) )
		{
			skipDrink = value == 1.0f;
		}
	}

	function WriteSettings()
	{
		theGame.WriteConfigParamFloat( "User", "EMC", "ContainerGlow", (float)containerGlow );
		theGame.WriteConfigParamFloat( "User", "EMC", "AutoLoot", (float)autoLoot );
		theGame.WriteConfigParamFloat( "User", "EMC", "Finisher", (float)finisher );
		theGame.WriteConfigParamFloat( "User", "EMC", "TalentDesc", (float)talentDesc );
		theGame.WriteConfigParamFloat( "User", "EMC", "ItemTagging", (float)itemTag );
		theGame.WriteConfigParamFloat( "User", "EMC", "PokerCheat", (float)pokerCheat );
		theGame.WriteConfigParamFloat( "User", "EMC", "BodyTimer", bodyTimer );
		theGame.WriteConfigParamFloat( "User", "EMC", "DarkEffect", (float)darkEffect );
		theGame.WriteConfigParamFloat( "User", "EMC", "SkipDrinkAnimation", (float)skipDrink );
	}
};