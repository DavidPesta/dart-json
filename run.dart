import 'enums.dart';
import 'Model.dart';
import 'HyperCube.dart';
import 'Cube.dart';
import 'SmellySock.dart';

void main() {

	// Phase 1: I got toJson working to my satisfaction!
	
	var s = new SmellySock(color: Color.green, smelliness: 7);
	var c = new Cube(level: 1, moods: {true: Mood.happy}, fun: {52.3: "yay"}, smellySocks: {3: s});
	var hc = new HyperCube(name: "Happy", cubes: {Color.red: [[{"good": [{Phase.matter: c}]}]]});
	
	print(hc.toJson());
}
