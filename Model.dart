import 'dart:convert';

abstract class Model {
	Map<String, dynamic> toMap();
	
	String toJson() {
		return JsonEncoder.withIndent('	').convert(this._toMap());
	}
	
	Map<String, dynamic> _toMap() {
		var props = this.toMap();
		
		props.forEach((key, value) {
			if (value is Enum) {
				props[key] = value.toString();
			} else if (value is Map) {
				props[key] = _serializeMap(value);
			} else if (value is List) {
				props[key] = _serializeList(value);
			} else if (value is Model) {
				props[key] = value._toMap();
			}
		});
		
		return props;
	}
	
	dynamic _serializeMap(Map map) {
		Map<String, dynamic> serializedMap = {};
		
		map.forEach((key, value) {
			if (value is Enum) {
				serializedMap[key.toString()] = value.toString();
			} else if (value is Map) {
				serializedMap[key.toString()] = _serializeMap(value);
			} else if (value is List) {
				serializedMap[key.toString()] = _serializeList(value);
			} else if (value is Model) {
				serializedMap[key.toString()] = value._toMap();
			} else {
				serializedMap[key.toString()] = value;
			}
		});
		
		return serializedMap;
	}
	
	dynamic _serializeList(List list) {
		List<dynamic> serializedList = [];
		
		list.forEach((item) {
			if (item is Enum) {
				serializedList.add(item.toString());
			} else if (item is Map) {
				serializedList.add(_serializeMap(item));
			} else if (item is List) {
				serializedList.add(_serializeList(item));
			} else if (item is Model) {
				serializedList.add(item._toMap());
			} else {
				serializedList.add(item);
			}
		});
		
		return serializedList;
	}
}
