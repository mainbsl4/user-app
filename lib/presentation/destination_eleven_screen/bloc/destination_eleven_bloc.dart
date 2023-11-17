import 'package:equatable/equatable.dart';
import 'package:flutter/material.dart';
import '/core/app_export.dart';
import 'package:user_app/presentation/destination_eleven_screen/models/destination_eleven_model.dart';
part 'destination_eleven_event.dart';
part 'destination_eleven_state.dart';

/// A bloc that manages the state of a DestinationEleven according to the event that is dispatched to it.
class DestinationElevenBloc
    extends Bloc<DestinationElevenEvent, DestinationElevenState> {
  DestinationElevenBloc(DestinationElevenState initialState)
      : super(initialState) {
    on<DestinationElevenInitialEvent>(_onInitialize);
    on<ChangeDropDownEvent>(_changeDropDown);
    on<ChangeDropDown1Event>(_changeDropDown1);
  }

  _onInitialize(
    DestinationElevenInitialEvent event,
    Emitter<DestinationElevenState> emit,
  ) async {
    emit(state.copyWith(
        destinationElevenModelObj: state.destinationElevenModelObj?.copyWith(
            dropdownItemList: fillDropdownItemList(),
            dropdownItemList1: fillDropdownItemList1())));
  }

  _changeDropDown(
    ChangeDropDownEvent event,
    Emitter<DestinationElevenState> emit,
  ) {
    emit(state.copyWith(selectedDropDownValue: event.value));
  }

  _changeDropDown1(
    ChangeDropDown1Event event,
    Emitter<DestinationElevenState> emit,
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
