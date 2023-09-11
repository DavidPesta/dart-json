import 'dart:convert';
import 'enums.dart';
import 'Model.dart';

class SmellySock extends Model {
	Color color;
	int smelliness;
	
	SmellySock({required this.color, required this.smelliness});
	
	Map<String, dynamic> toMap() {
		return {
			'color': color,
			'smelliness': smelliness,
		};
	}
}
