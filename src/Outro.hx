import dn.Tweenie;

class Outro extends dn.Process {

	var cm			: dn.Cinematic;

	public function new() {
		super(Main.ME);

		cm = new dn.Cinematic(Const.FPS);
		createChildProcess(function(_) cm.update(tmod));

		createRoot(Main.ME.root);

		var logo = Assets.lib.h_get("logo", 0.5,0.5, root);
		logo.setPosition(Const.LWID*0.5, Const.LHEI*0.25);
		tw.createMs(logo.alpha, 0>1, 500);

		var tf = new h2d.Text(Assets.font, root);
		tf.textColor = 0x8291AC;
		tf.text = "A game by Sébastien Bénard";
		tf.x = Const.LWID*0.5 - tf.textWidth*tf.scaleX*0.5;
		tf.y = Const.LHEI*0.35;
		tw.createMs(tf.alpha, 500|0>1, 1500);
		var tf1 = tf;

		var tf = new h2d.Text(Assets.font, root);
		tf.text = "Thank you for playing!";
		tf.x = Const.LWID*0.5 - tf.textWidth*tf.scaleX*0.5;
		tf.y = Const.LHEI*0.39;
		tw.createMs(tf.alpha, 1200|0>1, 1500);
		var tf2 = tf;

		var tf = new h2d.Text(Assets.font, root);
		tf.textColor = 0xFFAC00;
		tf.text = [
			"Sorry for the quite short game, hope you liked it anyway! I spent really too much time on the theme TWO BUTTON CONTROL before giving it up. This version is based on the theme GROWING.",
			"Check DEEPNIGHT.NET for more games :)",
			"Follow me on Twitter (@deepnightFR)",
		].join("\n\n");
		tf.maxWidth	= 200;
		tf.x = Const.LWID*0.5 - tf.maxWidth*tf.scaleX*0.5;
		tf.y = Const.LHEI*0.47;
		tf.textAlign = Center;
		tw.createMs(tf.alpha, 2000|0>1, 1500);

		cd.setF("exit", secToFrames(4));
		var i = new h2d.Interactive(w(), h(), root);
		i.onClick = function(_) {
			if( !cd.has("exit") && !cd.hasSetF("click2",9999) ) {
				Assets.SBANK.menu01(0.8);
				Main.ME.transition(this, function() new Game());
			}
		}
	}


	override function onDispose() {
		super.onDispose();
	}

	override function onResize() {
		super.onResize();
	}

	override function update() {
		super.update();
	}
}

