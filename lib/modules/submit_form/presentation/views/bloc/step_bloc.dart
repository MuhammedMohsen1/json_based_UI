import 'package:bloc/bloc.dart';
import 'package:flutter/services.dart';
import 'package:flutter/widgets.dart';
import 'package:rxdart/rxdart.dart';
import '../../../data/models/form/form.dart';
import '../../../data/models/form/form_data.dart';
import '../../../data/models/form/step.dart';
part 'step_event.dart';
part 'step_state.dart';

class StepBloc extends Bloc<StepEvent, StepPageState> {
  late final InputForm formDetails;
  StepBloc() : super(StepInitial()) {
    on<InitializeSteps>(_initializeSteps, transformer: dropable());
  }
  // This is for dismiss the successive fired events [dropable<Event>]
  EventTransformer<Event> dropable<Event>() {
    return (events, mapper) =>
        events.debounceTime(const Duration(milliseconds: 50)).switchMap(mapper);
  }

  // Initializing and retrieving the data from json file
  Future<void> _initializeSteps(InitializeSteps event, emit) async {
    try {
      emit(StepLoading());
      List<List<FormData>?> pages = [];
      String jsonString =
          await rootBundle.loadString('assets/jsons/SNOT-08.json');
      formDetails = InputForm.fromJson(jsonString);
      formDetails.steps?.forEach((element) {
        // if true this means that there is no nested steps
        if (element.formData != null) {
          pages.add(element.formData);
        } else {
          element.nestedSteps?.forEach((nestedStep) {
            pages.add(nestedStep.formData);
          });
        }
      });
      emit(StepLoadingSuccess(pages));
    } catch (e) {
      emit(StepLoadingFailure());
    }
  }

  // number of steps in the data retrieved
  // nested steps is not considered
  int calculateNumberOfSteps() {
    return formDetails.steps?.length ?? 0;
  }

  int calculateNumberOfNestedSteps(Step step) {
    return step.nestedSteps?.length ?? 0;
  }
}
