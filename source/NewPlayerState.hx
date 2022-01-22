package;

import flixel.FlxG;
import flixel.FlxSprite;
import flixel.FlxSubState;
import flixel.text.FlxText;
import flixel.util.FlxColor;
import flixel.effects.FlxFlicker;
import lime.app.Application;
import flixel.addons.transition.FlxTransitionableState;
import flixel.tweens.FlxTween;
import flixel.util.FlxTimer;

class NewPlayerState extends MusicBeatState
{
    public static var leftState:Bool = false;

	var noobornah:FlxText;
    var yes:Alphabet;
    var no:Alphabet;
	override function create()
	{
		super.create();

		var bg:FlxSprite = new FlxSprite().makeGraphic(FlxG.width, FlxG.height, FlxColor.BLACK);
		add(bg);

		noobornah = new FlxText(0, 0, FlxG.width,
			"Are you new to Friday Night Funkin'?",
			32);
		noobornah.setFormat("VCR OSD Mono", 32, FlxColor.WHITE, CENTER);
		noobornah.screenCenter(Y);
		add(noobornah);

	}
    override function update(elapsed:Float)
        {
            if (controls.UI_LEFT_P)
            {
                changeSelection(-1);
            }
            if (controls.UI_RIGHT_P)
            {
                changeSelection(1);
            }
}
