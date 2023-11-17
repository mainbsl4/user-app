import 'package:equatable/equatable.dart';
import 'package:flutter/material.dart';
import '/core/app_export.dart';
import '../models/destinationnineteen_item_model.dart';
import 'package:user_app/presentation/destination_nineteen_page/models/destination_nineteen_model.dart';
part 'destination_nineteen_event.dart';
part 'destination_nineteen_state.dart';

/// A bloc that manages the state of a DestinationNineteen according to the event that is dispatched to it.
class DestinationNineteenBloc
    extends Bloc<DestinationNineteenEvent, DestinationNineteenState> {
  DestinationNineteenBloc(DestinationNineteenState initialState)
      : super(initialState) {
    on<DestinationNineteenInitialEvent>(_onInitialize);
    on<DestinationnineteenItemEvent>(_destinationnineteenItem);
  }

  _onInitialize(
    DestinationNineteenInitialEvent event,
    Emitter<DestinationNineteenState> emit,
  ) async {
    emit(state.copyWith(
        destinationNineteenModelObj:
            state.destinationNineteenModelObj?.copyWith(
      destinationnineteenItemList: fillDestinationnineteenItemList(),
    )));
  }

  _destinationnineteenItem(
    DestinationnineteenItemEvent event,
    Emitter<DestinationNineteenState> emit,
  ) {
    List<DestinationnineteenItemModel> newList =
        List<DestinationnineteenItemModel>.from(
            state.destinationNineteenModelObj!.destinationnineteenItemList);
    newList[event.index] = newList[event.index].copyWith(
      radioGroup: event.radioGroup,
    );
    emit(state.copyWith(
        destinationNineteenModelObj: state.destinationNineteenModelObj
            ?.copyWith(destinationnineteenItemList: newList)));
  }

  List<DestinationnineteenItemModel> fillDestinationnineteenItemList() {
    return [
      DestinationnineteenItemModel(
          month: "09 May 2023, 05:30",
          fileTonOpen: "7 file 2 Ton (Open)",
          tipnyFive: "Tip: 23454n75y5",
          sonadangoKhulna: "Sonadango, Khulna 1340",
          time: "10 May 2023, 06:30 PM"),
      DestinationnineteenItemModel(
          month: "09 May 2023, 05:30",
          fileTonOpen: "7 file 2 Ton (Open)",
          tipnyFive: "Tip: 23454n75y5",
          sonadangoKhulna: "Sonadango, Khulna 1340",
          time: "10 May 2023, 06:30 PM"),
      DestinationnineteenItemModel(
          fileTonOpen: "7 file 2 Ton (Open)",
          tipnyFive: "Tip: 23454n75y5",
          sonadangoKhulna: "Sonadango, Khulna 1340",
          time: "10 May 2023, 06:30 PM")
    ];
  }
}
