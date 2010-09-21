package 
{
	import flash.display.Sprite;
	import json.JParser;

	public class YourTotalAccountBalance extends Sprite
	{
		private var _valuesArray:Array;
		private var jsonStr:String;

		public function YourTotalAccountBalance(valuesArray:Array)
		{
			_valuesArray = valuesArray;
		}
		
		public function createJson():String
		{	
			
			var jsonObj:Object = new Object();
			
			// title
			var titleObj:Object = new Object();		 
			titleObj.text = "Your Total Account Balance";
			titleObj.style = "{color: #4D4D4D; font-size: 16px; font-family: Arial; font-weight: bold}";
			jsonObj.title = titleObj;
			
			// elements
			jsonObj.elements = new Array();
			var elementsObj:Object = new Object();
			elementsObj.type = "pie";
			elementsObj.alpha = 0.8;
			elementsObj.colours = [ "#2C5291", "#ca3f3f" ];			
			elementsObj["gradient-fill"] = false;
			elementsObj.radius = 120;
			elementsObj.values = _valuesArray;
			elementsObj.border = 0;
			elementsObj.animate = false;
			//elementsObj.style = "{color: #4D4D4D; font-size: 16px; font-family: Verdana; font-weight: bold}";
			//elementsObj.tip = "$#val# of $#total#\n#percent# of 100%";
			
			(jsonObj.elements as Array).push(elementsObj)	

			//x_axis:Object = new Object()
			
			
			
			// tooltip
			var tooltipObj:Object = new Object();
			tooltipObj.shadow = true
			tooltipObj.stroke = 5
			tooltipObj.colour = "#f2c322"
			tooltipObj.background = "#f2c322"
			tooltipObj.mouse = 3;
			jsonObj.tooltip = tooltipObj;	
			
			// bg_colour
			jsonObj.bg_colour = "-1";	// makes bgd transparent.
			
			
			/*
				Encoder the object into JSON.
			*/	
			trace("jsonObj non encoded: " + jsonObj);	
			jsonStr = JParser.encode(jsonObj);
			trace("jsonStr " + jsonStr);
			return(jsonStr)
		}
		
	}

}