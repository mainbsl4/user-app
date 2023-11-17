import 'package:equatable/equatable.dart';
import 'package:flutter/material.dart';
import '/core/app_export.dart';
import 'package:user_app/presentation/destination_seven_screen/models/destination_seven_model.dart';
part 'destination_seven_event.dart';
part 'destination_seven_state.dart';

/// A bloc that manages the state of a DestinationSeven according to the event that is dispatched to it.
class DestinationSevenBloc
    extends Bloc<DestinationSevenEvent, DestinationSevenState> {
  DestinationSevenBloc(DestinationSevenState initialState)
      : super(initialState) {
    on<DestinationSevenInitialEvent>(_onInitialize);
    on<ChangeDropDownEvent>(_changeDropDown);
    on<ChangeDropDown1Event>(_changeDropDown1);
    on<ChangeDropDown2Event>(_changeDropDown2);
    on<ChangeDropDown3Event>(_changeDropDown3);
  }

  _onInitialize(
    DestinationSevenInitialEvent event,
    Emitter<DestinationSevenState> emit,
  ) async {
    emit(state.copyWith(
        destinationSevenModelObj: state.destinationSevenModelObj?.copyWith(
            dropdownItemList: fillDropdownItemList(),
            dropdownItemList1: fillDropdownItemList1(),
            dropdownItemList2: fillDropdownItemList2(),
            dropdownItemList3: fillDropdownItemList3())));
  }

  _changeDropDown(
    ChangeDropDownEvent event,
    Emitter<DestinationSevenState> emit,
  ) {
    emit(state.copyWith(selectedDropDownValue: event.value));
  }

  _changeDropDown1(
    ChangeDropDown1Event event,
    Emitter<DestinationSevenState> emit,
  ) {
    emit(state.copyWith(selectedDropDownValue1: event.value));
  }

  _changeDropDown2(
    ChangeDropDown2Event event,
    Emitter<DestinationSevenState> emit,
  ) {
    emit(state.copyWith(selectedDropDownValue2: event.value));
  }

  _changeDropDown3(
    ChangeDropDown3Event event,
    Emitter<DestinationSevenState> emit,
  ) {
    emit(state.copyWith(selectedDropDownValue3: event.value));
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

  List<SelectionPopupModel> fillDropdownItemList2() {
    return [
      SelectionPopupModel(id: 1, title: "Item One", isSelected: true),
      SelectionPopupModel(id: 2, title: "Item Two"),
      SelectionPopupModel(id: 3, title: "Item Three")
    ];
  }

  List<SelectionPopupModel> fillDropdownItemList3() {
    return [
      SelectionPopupModel(id: 1, title: "Item One", isSelected: true),
      SelectionPopupModel(id: 2, title: "Item Two"),
      SelectionPopupModel(id: 3, title: "Item Three")
    ];
  }
}
