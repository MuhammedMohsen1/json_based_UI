import 'dart:convert';

import 'form_data.dart';

class NestedStep {
	String? label;
	String? description;
	String? action;
	List<FormData>? formData;

	NestedStep({this.label, this.description, this.action, this.formData});

	factory NestedStep.fromMap(Map<String, dynamic> data) => NestedStep(
				label: data['label'] as String?,
				description: data['description'] as String?,
				action: data['action'] as String?,
				formData: (data['formData'] as List<dynamic>?)
						?.map((e) => FormData.fromMap(e as Map<String, dynamic>))
						.toList(),
			);

	Map<String, dynamic> toMap() => {
				'label': label,
				'description': description,
				'action': action,
				'formData': formData?.map((e) => e.toMap()).toList(),
			};

  /// `dart:convert`
  ///
  /// Parses the string and returns the resulting Json object as [NestedStep].
	factory NestedStep.fromJson(String data) {
		return NestedStep.fromMap(json.decode(data) as Map<String, dynamic>);
	}
  /// `dart:convert`
  ///
  /// Converts [NestedStep] to a JSON string.
	String toJson() => json.encode(toMap());
}
