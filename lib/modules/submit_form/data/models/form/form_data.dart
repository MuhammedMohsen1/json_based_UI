
class FormData {
  final String? stepTitle;
  final String? label;
  final String? description;
  final String? type;
  final String? data;

  final String? id;
  final String? name;
  final String? code;
  final String? headLabel;
  final List<String>? items;
  final bool? params;
  final String? labelKey;
  final String? functionAPI;
  final int? maxLength;
  final int? lg;
  final int? md;
  final bool? required;
  final bool? cascaded;
  final  bool? arrow;
  final String? color;
  final String? link;

  FormData({
     this.stepTitle,
     this.label,
     this.description,
     this.type,
    this.data,
    this.id,
    this.name,
    this.code,
    this.headLabel,
    this.items,
     this.params,
    this.labelKey,
    this.functionAPI,
    this.maxLength,
    this.lg,
    this.md,
     this.required,
     this.cascaded,
     this.arrow,
    this.color,
    this.link,
  });

  factory FormData.fromJson(Map<String, dynamic> json) {
    List<Map<String, dynamic>>? object = [];
    if (json['object'] != null) {
      json['object'].forEach((obj) {
        object.add(Map<String, dynamic>.from(obj));
      });
    }
    List<String>? dependencies = [];
    if (json['dependencies'] != null) {
      json['dependencies'].forEach((dep) {
        dependencies.add(dep);
      });
    }
    List<String>? labelArray = [];
    if (json['labelArray'] != null) {
      json['labelArray'].forEach((label) {
        labelArray.add(label);
      });
    }
    List<String>? nameArray = [];
    if (json['nameArray'] != null) {
      json['nameArray'].forEach((name) {
        nameArray.add(name);
      });
    }
    List<String>? accessKeys = [];
    if (json['accessKeys'] != null) {
      json['accessKeys'].forEach((key) {
        accessKeys.add(key);
      });
    } 
    
      List<String>? items = [];
    if (json['items'] != null) {
      json['accessKeys'].forEach((key) {
        items.add(key['label']);
      });
    }

    return FormData(
      stepTitle: json['stepTitle'],
      label: json['label'],
      description: json['description'],
      type: json['type'],
      data: json['data'],

      id: json['id'],
      name: json['name'],
      code: json['code'],
      items: items,
      headLabel: json['headLabel'],
      params: json['params'],
      labelKey: json['labelKey'],
      functionAPI: json['functionAPI'],
      maxLength: json['maxLength'],
      lg: json['lg'],
      md: json['md'],
      required: json['required'],
      cascaded: json['cascaded'],
      arrow: json['arrow'],
      color: json['color'],
      link: json['link'],
    );
  }

  Map<String, dynamic> toMap() {
    return {
      'stepTitle': stepTitle,
      'label': label,
      'description': description,
      'type': type,
      'data': data,
      'id': id,
      'name': name,
      'code': code,
      'dynamic': dynamic,
      'params': params,
      'labelKey': labelKey,
      'functionAPI': functionAPI,
      'items': items,
      'headLabel': headLabel,
      'maxLength': maxLength,
      'lg': lg,
      'md': md,
      'required': required,
      'cascaded': cascaded,
      'arrow': arrow,
      'color': color,
      'link': link,
    };
  }

  factory FormData.fromMap(Map<String, dynamic> map) {
          List<String>? items = [];
    if (map['items'] != null) {
      map['items'].forEach((key) {
        items.add(key['label']);
      });
    }
    return FormData(
      stepTitle: map['stepTitle'],
      label: map['label'] is List ? map['label'][0]:map['label'],
      description: map['description'],
      type: map['type'],
      data: map['data'],
      id: map['id'],
      name: map['name'],
      code: map['code'],
      params: map['params'],
      labelKey: map['labelKey'],
          items: items,
      headLabel: map['headLabel'],
      functionAPI: map['functionAPI'],
      maxLength: map['maxLength'],
      lg: map['lg'],
      md: map['md'],
      required: map['required'],
      cascaded: map['cascaded'],
      arrow: map['arrow'],
      color: map['color'],
      link: map['link'],
    );
  }
}










// class FormDatum {
// 	String? stepTitle;
// 	String? label;
// 	String? description;
// 	String? type;

// 	FormDatum({this.stepTitle, this.label, this.description, this.type});

// 	factory FormDatum.fromMap(Map<String, dynamic> data) => FormDatum(
// 				stepTitle: data['stepTitle'] as String?,
// 				label: data['label'] as String?,
// 				description: data['description'] as String?,
// 				type: data['type'] as String?,
// 			);

// 	Map<String, dynamic> toMap() => {
// 				'stepTitle': stepTitle,
// 				'label': label,
// 				'description': description,
// 				'type': type,
// 			};

//   /// `dart:convert`
//   ///
//   /// Parses the string and returns the resulting Json object as [FormDatum].
// 	factory FormDatum.fromJson(String data) {
// 		return FormDatum.fromMap(json.decode(data) as Map<String, dynamic>);
// 	}
//   /// `dart:convert`
//   ///
//   /// Converts [FormDatum] to a JSON string.
// 	String toJson() => json.encode(toMap());
// }