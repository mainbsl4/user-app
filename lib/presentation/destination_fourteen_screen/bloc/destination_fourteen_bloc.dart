import 'package:equatable/equatable.dart';
import 'package:flutter/material.dart';
import '/core/app_export.dart';
import '../models/destinationfourteen_item_model.dart';
import 'package:user_app/presentation/destination_fourteen_screen/models/destination_fourteen_model.dart';
part 'destination_fourteen_event.dart';
part 'destination_fourteen_state.dart';

/// A bloc that manages the state of a DestinationFourteen according to the event that is dispatched to it.
class DestinationFourteenBloc
    extends Bloc<DestinationFourteenEvent, DestinationFourteenState> {
  DestinationFourteenBloc(DestinationFourteenState initialState)
      : super(initialState) {
    on<DestinationFourteenInitialEvent>(_onInitialize);
    on<DestinationfourteenItemEvent>(_destinationfourteenItem);
  }

  _onInitialize(
    DestinationFourteenInitialEvent event,
    Emitter<DestinationFourteenState> emit,
  ) async {
    emit(state.copyWith(
        destinationFourteenModelObj: state.destinationFourteenModelObj
            ?.copyWith(
                destinationfourteenItemList:
                    fillDestinationfourteenItemList())));
  }

  _destinationfourteenItem(
    DestinationfourteenItemEvent event,
    Emitter<DestinationFourteenState> emit,
  ) {
    List<DestinationfourteenItemModel> newList =
        List<DestinationfourteenItemModel>.from(
            state.destinationFourteenModelObj!.destinationfourteenItemList);
    newList[event.index] =
        newList[event.index].copyWith(isSelectedSwitch: event.isSelectedSwitch);
    emit(state.copyWith(
        destinationFourteenModelObj: state.destinationFourteenModelObj
            ?.copyWith(destinationfourteenItemList: newList)));
  }

  List<DestinationfourteenItemModel> fillDestinationfourteenItemList() {
    return [
      DestinationfourteenItemModel(
          circleImage: ImageConstant.imgEllipse41,
          fortyNine: "4.9",
          shamim: "Shamim",
          tripsCounter: "1267 trips"),
      DestinationfourteenItemModel(
          circleImage: ImageConstant.imgEllipse432x32,
          fortyNine: "4.5",
          shamim: "Shohel Kha",
          tripsCounter: "267 trips")
    ];
  }
}
