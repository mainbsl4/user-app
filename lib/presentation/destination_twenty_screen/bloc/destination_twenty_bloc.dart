import 'package:equatable/equatable.dart';
import 'package:flutter/material.dart';
import '/core/app_export.dart';
import 'package:user_app/presentation/destination_twenty_screen/models/destination_twenty_model.dart';
part 'destination_twenty_event.dart';
part 'destination_twenty_state.dart';

/// A bloc that manages the state of a DestinationTwenty according to the event that is dispatched to it.
class DestinationTwentyBloc
    extends Bloc<DestinationTwentyEvent, DestinationTwentyState> {
  DestinationTwentyBloc(DestinationTwentyState initialState)
      : super(initialState) {
    on<DestinationTwentyInitialEvent>(_onInitialize);
    on<ChangeDropDownEvent>(_changeDropDown);
    on<ChangeDropDown1Event>(_changeDropDown1);
  }

  _onInitialize(
    DestinationTwentyInitialEvent event,
    Emitter<DestinationTwentyState> emit,
  ) async {
    emit(state.copyWith(
        destinationTwentyModelObj: state.destinationTwentyModelObj?.copyWith(
            dropdownItemList: fillDropdownItemList(),
            dropdownItemList1: fillDropdownItemList1())));
  }

  _changeDropDown(
    ChangeDropDownEvent event,
    Emitter<DestinationTwentyState> emit,
  ) {
    emit(state.copyWith(selectedDropDownValue: event.value));
  }

  _changeDropDown1(
    ChangeDropDown1Event event,
    Emitter<DestinationTwentyState> emit,
  ) {
    emit(state.copyWith(selectedDropDownValue1: event.value));
  }

  List<SelectionPopupModel> fillDropdownItemList() {
    return [
      SelectionPopupModel(id: 1, title: "Item One", isSelected: true),
      SelectionPopupModel(id: 2, title: "Item Two"),
      SelectionPopupModel(id: 3, title: "Item Three")
    ];
  }

  List<SelectionPopupModel> fillDropdownItemList1() {
    return [
      SelectionPopupModel(id: 1, title: "Item One", isSelected: true),
      SelectionPopupModel(id: 2, title: "Item Two"),
      SelectionPopupModel(id: 3, title: "Item Three")
    ];
  }
}
