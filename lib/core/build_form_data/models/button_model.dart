class ButtonModel {
  final String? id;
  final String? type;
  final String? name;
  final int? lg;
  final int? stepNumber;
  final int? nestedStepNumber;
  final String? action;
  final bool? arrow;
  final String? link;
  

  ButtonModel({
     this.id,
     this.type,
     this.name,
     this.lg,
     this.stepNumber,
     this.nestedStepNumber,
     this.action,this.arrow, this.link, 
  });

  factory ButtonModel.fromJson(Map<String, dynamic> json) {
    return ButtonModel(
      id: json['id'],
      type: json['type'],
      name: json['name'],
      lg: json['lg'],
      stepNumber: json['stepNumber'],
      nestedStepNumber: json['nestedStepNumber'],
      action: json['action'],
       arrow: json['arrow'],
      link: json['link'],
    );
  }

  Map<String, dynamic> toJson() {
    return {
      'id': id,
      'type': type,
      'name': name,
      'lg': lg,
      'stepNumber': stepNumber,
      'nestedStepNumber': nestedStepNumber,
      'action': action,    
      'arrow': arrow,
      'link': link,
    };
  }
}
