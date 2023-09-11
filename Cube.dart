import 'enums.dart';
import 'Model.dart';
import 'SmellySock.dart';

class Cube extends Model {
	int level;
	Map<bool, Mood>? moods;
	Map<double, String> fun;
	Map<int, SmellySock> smellySocks;
	
	Cube({required this.level, this.moods, required this.fun, required this.smellySocks});
	
	Map<String, dynamic> toMap() {
		return {
			'level': level,
			'moods': moods,
			'fun': fun,
			'smellySocks': smellySocks,
		};
	}
}
