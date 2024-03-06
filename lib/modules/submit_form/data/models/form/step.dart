import 'dart:convert';
import 'form_data.dart';
import 'nested_step.dart';

class Step {
	String? label;
	String? description;
	bool? showNestedSteps;
	List<NestedStep>? nestedSteps;
	String? action;
	List<FormData>? formData;

	Step({
		this.label, 
		this.description, 
		this.showNestedSteps, 
		this.nestedSteps, 
		this.action, 
		this.formData, 
	});

	factory Step.fromMap(Map<String, dynamic> data) => Step(
				label: data['label'] as String?,
				description: data['description'] as String?,
				showNestedSteps: data['showNestedSteps'] as bool?,
				nestedSteps: (data['nestedSteps'] as List<dynamic>?)
						?.map((e) => NestedStep.fromMap(e as Map<String, dynamic>))
						.toList(),
				action: data['action'] as String?,
				formData: (data['formData'] as List<dynamic>?)
						?.map((e) => FormData.fromMap(e as Map<String, dynamic>))
						.toList(),
			);

	Map<String, dynamic> toMap() => {
				'label': label,
				'description': description,
				'showNestedSteps': showNestedSteps,
				'nestedSteps': nestedSteps?.map((e) => e.toMap()).toList(),
				'action': action,
				'formData': formData?.map((e) => e.toMap()).toList(),
			};

  /// `dart:convert`
  ///
  /// Parses the string and returns the resulting Json object as [Step].
	factory Step.fromJson(String data) {
		return Step.fromMap(json.decode(data) as Map<String, dynamic>);
	}
  /// `dart:convert`
  ///
  /// Converts [Step] to a JSON string.
	String toJson() => json.encode(toMap());
}
