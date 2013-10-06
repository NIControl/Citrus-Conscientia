package 
{
	import citrus.core.starling.StarlingCitrusEngine
	
	/**
	 * ...
	 * @author Jimmy Bustamante
	 */
	[SWF(width = "1024", height = "768", framerate = "60", backgroundColor = "#CCCCCC")]
	public class Main extends StarlingCitrusEngine 
	{
		public function Main():void 
		{
			setUpStarling();
			state = new GameState();
		}
	}
	
}