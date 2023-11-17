import 'package:equatable/equatable.dart';
import 'package:flutter/material.dart';
import '/core/app_export.dart';
import 'package:user_app/presentation/destination_seventeen_screen/models/destination_seventeen_model.dart';
part 'destination_seventeen_event.dart';
part 'destination_seventeen_state.dart';

/// A bloc that manages the state of a DestinationSeventeen according to the event that is dispatched to it.
class DestinationSeventeenBloc
    extends Bloc<DestinationSeventeenEvent, DestinationSeventeenState> {
  DestinationSeventeenBloc(DestinationSeventeenState initialState)
      : super(initialState) {
    on<DestinationSeventeenInitialEvent>(_onInitialize);
    on<ChangeDropDownEvent>(_changeDropDown);
    on<ChangeDropDown1Event>(_changeDropDown1);
  }

  _onInitialize(
    DestinationSeventeenInitialEvent event,
    Emitter<DestinationSeventeenState> emit,
  ) async {
    emit(state.copyWith(
        destinationSeventeenModelObj: state.destinationSeventeenModelObj
            ?.copyWith(
                dropdownItemList: fillDropdownItemList(),
                dropdownItemList1: fillDropdownItemList1())));
  }

  _changeDropDown(
    ChangeDropDownEvent event,
    Emitter<DestinationSeventeenState> emit,
  ) {
    emit(state.copyWith(selectedDropDownValue: event.value));
  }

  _changeDropDown1(
    ChangeDropDown1Event event,
    Emitter<DestinationSeventeenState> emit,
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
