import 'dart:convert';
import 'enums.dart';
import 'Model.dart';

class SmellySock extends Model {
	Color color;
	int smelliness;
	
	SmellySock({required this.color, required this.smelliness});
	
	factory SmellySock.fromJson(String json) {
		var decodedMap = jsonDecode(json);
		return SmellySock.fromMap(decodedMap);
	}
	
	factory SmellySock.fromMap(Map<String, dynamic> map) {
		print(map);
		return new SmellySock(
			color: Color.blue,
			smelliness: 1,
		);
	}
	
	Map<String, dynamic> toMap() {
		return {
			'color': color,
			'smelliness': smelliness,
		};
	}
}
