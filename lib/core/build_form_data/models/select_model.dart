class SelectModel {
  final String label;
  final String? code;

  final bool? params;

  final String? functionAPI;

  final String? labelKey;
  final String? id;
  final String? type;
  final String? name;
  final int? lg;
  final int? md;
  final String? tip;
  final bool? required;

  SelectModel({
    required this.label,
     this.code,

     this.params,

     this.functionAPI,

     this.labelKey,
     this.id,
     this.type,
     this.name,
     this.lg,
     this.md,
     this.tip,
     this.required,
  });

  factory SelectModel.fromJson(Map<String, dynamic> json) {
    return SelectModel(
      label: json['label'],
      code: json['code'],
      params: json['params'],
      functionAPI: json['functionAPI'],
      labelKey: json['labelKey'],
      id: json['id'],
      type: json['type'],
      name: json['name'],
      lg: json['lg'],
      md: json['md'],
      tip: json['tip'] ?? '',
      required: json['required'],
    );
  }
}
