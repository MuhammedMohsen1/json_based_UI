import 'dart:convert';

import 'step.dart';

class InputForm {
	String? title;
	String? secondTitle;
	bool? showSteps;
	String? wfId;
	String? serviceSlug;
	String? gaName;
	List<Step>? steps;

	InputForm({
		this.title, 
		this.secondTitle, 
		this.showSteps, 
		this.wfId, 
		this.serviceSlug, 
		this.gaName, 
		this.steps, 
	});

	factory InputForm.fromMap(Map<String, dynamic> data) => InputForm(
				title: data['title'] as String?,
				secondTitle: data['secondTitle'] as String?,
				showSteps: data['showSteps'] as bool?,
				wfId: data['wfId'] as String?,
				serviceSlug: data['serviceSlug'] as String?,
				gaName: data['GAName'] as String?,
				steps: (data['steps'] as List<dynamic>?)
						?.map((e) => Step.fromMap(e as Map<String, dynamic>))
						.toList(),
			);

	Map<String, dynamic> toMap() => {
    
				'title': title,
				'secondTitle': secondTitle,
				'showSteps': showSteps,
				'wfId': wfId,
				'serviceSlug': serviceSlug,
				'GAName': gaName,
				'steps': steps?.map((e) => e.toMap()).toList(),
			};

  /// `dart:convert`
  ///
  /// Parses the string and returns the resulting Json object as [InputForm].
	factory InputForm.fromJson(String data) {
		return InputForm.fromMap(json.decode(data) as Map<String, dynamic>);
	}
  /// `dart:convert`
  ///
  /// Converts [Form] to a JSON string.
	String toJson() => json.encode(toMap());
}
