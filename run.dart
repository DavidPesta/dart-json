import 'enums.dart';
import 'Model.dart';
import 'HyperCube.dart';
import 'Cube.dart';
import 'SmellySock.dart';

void main() {
	
	// Phase 1: I got toJson working to my satisfaction!
	
	//var s = new SmellySock(color: Color.green, smelliness: 7);
	//var c = new Cube(level: 1, moods: {true: Mood.happy}, fun: {52.3: "yay"}, smellySocks: {3: s});
	// var hc = new HyperCube(name: "Happy", cubes: {Color.red: [[{"good": [{Phase.matter: c}]}]]});
	
	//print(hc.toJson());
	
	
	
	// Phase 2: Figuring out how to do fromJson
	
	var s_json = """
		{
			"color": "Color.green",
			"smelliness": 7
		}
	""";
	
	var s = SmellySock.fromJson(s_json);
	print(s.toJson());
	
	
	
	var c_json = """
		{
			"level": 1,
			"moods": {
				"true": "Mood.happy"
			},
			"fun": {
				"52.3": "yay"
			},
			"smellySocks": {
				"3": {
					"color": "Color.green",
					"smelliness": 7
				}
			}
		}
	""";
	
	var hc_json = """
		{
			"name": "Happy",
			"cubes": {
				"Color.red": [
					[
						{
							"good": [
								{
									"Phase.matter": {
										"level": 1,
										"moods": {
											"true": "Mood.happy"
										},
										"fun": {
											"52.3": "yay"
										},
										"smellySocks": {
											"3": {
												"color": "Color.green",
												"smelliness": 7
											}
										}
									}
								}
							]
						}
					]
				]
			}
		}
	""";
	
	
	
	//var hc = Model<HyperCube>.fromJson(json);
	//print(hc.toJson());
	
	//Model.fromJson(json);
}
