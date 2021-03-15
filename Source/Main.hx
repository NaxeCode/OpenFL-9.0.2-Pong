package;

import openfl.display.Bitmap;
import openfl.display.BitmapData;
import openfl.display.Sprite;
import openfl.Assets;

class Main extends Sprite {
	var paddle1:Platform;
	var paddle2:Platform;

	var ball:Ball;

	public function new() {
		super();

		var bitmap = new Bitmap(Assets.getBitmapData("assets/openfl.png"));
		// addChild(bitmap);

		bitmap.x = (stage.stageWidth - bitmap.width) / 2;
		bitmap.y = (stage.stageHeight - bitmap.height) / 2;

		var paddle1 = new Platform();
		paddle1.x = 5;
		paddle1.y = 200;
		addChild(paddle1);

		var paddle2 = new Platform();
		paddle2.x = 400;
		paddle2.y = 200;
		addChild(paddle2);

		ball = new Ball();
		ball.x = 250;
		ball.y = 250;
		addChild(ball);
	}
}
