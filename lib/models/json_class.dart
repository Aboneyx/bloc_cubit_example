class JsonClass {
  List<Tags>? _tags;

  List<Tags>? get tags => _tags;

  JsonClass({
    List<Tags>? tags,
  }) {
    _tags = tags;
  }

  JsonClass.fromJson(dynamic json) {
    if (json["tags"] != null) {
      _tags = [];
      json["tags"].forEach((v) {
        _tags?.add(Tags.fromJson(v));
      });
    }
  }

  Map<String, dynamic> toJson() {
    final map = <String, dynamic>{};
    if (_tags != null) {
      map["tags"] = _tags?.map((v) => v.toJson()).toList();
    }
    return map;
  }
}

class Tags {
  String? _name;
  int? _quantity;

  String? get name => _name;

  int? get quantity => _quantity;

  Tags({String? name, int? quantity}) {
    _name = name;
    _quantity = quantity;
  }

  Tags.fromJson(dynamic json) {
    _name = json["name"] as String;
    _quantity = json["quantity"] as int;
  }

  Map<String, dynamic> toJson() {
    final map = <String, dynamic>{};
    map["name"] = _name;
    map["quantity"] = _quantity;
    return map;
  }
}
