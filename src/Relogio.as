package {

	import flash.events.Event;
	import org.papervision3d.objects.parsers.DAE;
	
	[SWF(width=640, height=480, backgroundColor=0x808080, frameRate=30)]
	
	public class Relogio extends PV3DARApp {
		
		private var _relogio:DAE;
		
		public function Relogio() {
			addEventListener(Event.INIT, _onInit);
			init('Data/camera_para.dat', 'Data/marcador.pat');
		}
		
		private function _onInit(e:Event):void {
			_relogio = new DAE();
			_relogio.load('model/Relogio.dae');
			_relogio.scale = 10;
			_relogio.rotationX = 90;
			_markerNode.addChild(_relogio);
			
		}
	}
}
