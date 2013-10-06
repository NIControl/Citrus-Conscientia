package  
{
	import Box2D.Dynamics.Contacts.b2Contact;
	import citrus.core.starling.StarlingState;
	import citrus.objects.platformer.box2d.Coin;
	import citrus.objects.platformer.box2d.Enemy;
	import citrus.objects.platformer.box2d.Hero;
	import citrus.objects.platformer.box2d.MovingPlatform;
	import citrus.objects.platformer.box2d.Platform;
	import citrus.physics.box2d.Box2D;
	import starling.display.Quad;
	
	/**
	 * ...
	 * @author Jimmy Bustamante
	 */
	public class GameState extends StarlingState 
	{
		
		public function GameState() 
		{
			super();
		}
		
		override public function initialize():void
		{
			super.initialize();
			
			var physics:Box2D = new Box2D("box2d");
			//physics.visible = true;
			add(physics);
			
			var floor:Platform = new Platform("floor", { x:512, y:748, width:1024, height:40 } );
			floor.view = new Quad(1024, 40, 0x000000);
			add(floor);
			
			var wall1:Platform = new Platform("wall1", { x:0, y:748, width:40, height:1600 } );
			wall1.view = new Quad(40, 1600, 0x000000);
			add(wall1);
			
			var wall2:Platform = new Platform("wall2", { x:1020, y:748, width:40, height:1600 } );
			wall2.view = new Quad(40, 1600, 0x000000);
			add(wall2);
			
			var p1:Platform = new Platform("p1", { x:874, y:151, width:300, height:40 } );
			p1.view = new Quad(300, 40, 0x000000);
			add(p1);
			
			var mp1:MovingPlatform = new MovingPlatform("moving1", { x:200, y:700, width:200, height:40, startX:200, startY:700, endX: 200, endY:180 } );
			mp1.view = new Quad(200, 40, 0x000000);
			mp1.speed = 2;
			add(mp1);
			
			var mp2:MovingPlatform = new MovingPlatform("moving2", { x:200, y:150, width:200, height:40, startX:240, startY:150, endX: 500, endY:150 } );
			mp2.view = new Quad(200, 40, 0x000000);
			mp2.speed = 2;
			add(mp2);
			
			var hero:Hero = new Hero("Hero", { x:60, y:680, width:70, height:70 } );
			hero.view = new Quad(70, 70, 0x009933);
			add(hero);
			
			var enemy:Enemy = new Enemy("enemy", { x:900, y:700, width:70, height:70, leftBound:10, rightBound:1000 } );
			enemy.view = new Quad(70, 70, 0xFF0000);
			add(enemy);
			
			var goal:Coin = new Coin("coin", { x:967, y:90, width:40, height:40 } );
			goal.onBeginContact.add(function(c:b2Contact):void {
				trace("Got coin!");
			});
			goal.view = new Quad(40, 40, 0xFFCC00);
			add(goal);
		}
		
	}

}