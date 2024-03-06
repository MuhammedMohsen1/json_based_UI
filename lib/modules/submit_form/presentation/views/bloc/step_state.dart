// ignore_for_file: must_be_immutable

part of 'step_bloc.dart';

@immutable
sealed class StepPageState {}

final class StepInitial extends StepPageState {}

final class StepLoading extends StepPageState {}


final class StepLoadingSuccess extends StepPageState {
  List<List<FormData>?> pages = [];

  StepLoadingSuccess(this.pages);
}

final class StepLoadingFailure extends StepPageState {}
