class Description {
  final String? stepTitle;
  final String? label;
  final String? description;
  final String? type;

  Description({
     this.stepTitle,
     this.label,
     this.description,
     this.type,
  });

  factory Description.fromJson(Map<String, dynamic> json) {
    return Description(
      stepTitle: json['stepTitle'],
      label: json['label'],
      description: json['description'],
      type: json['type'],
    );
  }

  Map<String, dynamic> toJson() {
    return {
      'stepTitle': stepTitle,
      'label': label,
      'description': description,
      'type': type,
    };
  }
}
