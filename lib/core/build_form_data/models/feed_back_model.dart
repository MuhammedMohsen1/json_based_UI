
class FeedbackModel {
  final String? type;
  final String? id;
  final String? headLabel;
  final String? layout;
  final List<String>? items;
  final int? lg;

  FeedbackModel({
    this.type,
    this.id,
    this.headLabel,
    this.layout,
    this.items,
    this.lg,
  });

  factory FeedbackModel.fromJson(Map<String, dynamic> json) {
    List<String> itemsList = [];
    if (json['items'] != null) {
      json['items'].forEach((item) {
        itemsList.add(item);
      });
    }

    return FeedbackModel(
      type: json['type'],
      id: json['id'],
      headLabel: json['headLabel'],
      layout: json['layout'],
      items: itemsList,
      lg: json['lg'],
    );
  }

  Map<String, dynamic> toJson() {
   

    return {
      'type': type,
      'id': id,
      'headLabel': headLabel,
      'layout': layout,
      'items': items,
      'lg': lg,
    };
  }
}

