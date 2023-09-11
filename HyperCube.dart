import 'enums.dart';
import 'Model.dart';
import 'Cube.dart';

class HyperCube extends Model {
	String? name;
	Map<Color, List<List<Map<String, List<Map<Phase, Cube>>>>>> cubes;
	
	HyperCube({this.name, required this.cubes});
	
	Map<String, dynamic> toMap() {
		return {
			'name': name,
			'cubes': cubes,
		};
	}
}
