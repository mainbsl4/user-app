import 'package:equatable/equatable.dart';
import 'package:flutter/material.dart';
import '/core/app_export.dart';
import '../models/destinationthree_item_model.dart';
import 'package:user_app/presentation/destination_three_screen/models/destination_three_model.dart';
part 'destination_three_event.dart';
part 'destination_three_state.dart';

/// A bloc that manages the state of a DestinationThree according to the event that is dispatched to it.
class DestinationThreeBloc
    extends Bloc<DestinationThreeEvent, DestinationThreeState> {
  DestinationThreeBloc(DestinationThreeState initialState)
      : super(initialState) {
    on<DestinationThreeInitialEvent>(_onInitialize);
    on<DestinationthreeItemEvent>(_destinationthreeItem);
    on<ChangeRadioButtonEvent>(_changeRadioButton);
  }

  _destinationthreeItem(
    DestinationthreeItemEvent event,
    Emitter<DestinationThreeState> emit,
  ) {
    List<DestinationthreeItemModel> newList =
        List<DestinationthreeItemModel>.from(
            state.destinationThreeModelObj!.destinationthreeItemList);
    newList[event.index] =
        newList[event.index].copyWith(isSelectedSwitch: event.isSelectedSwitch);
    emit(state.copyWith(
        destinationThreeModelObj: state.destinationThreeModelObj
            ?.copyWith(destinationthreeItemList: newList)));
  }

  _changeRadioButton(
    ChangeRadioButtonEvent event,
    Emitter<DestinationThreeState> emit,
  ) {
    emit(state.copyWith(radioGroup: event.value));
  }

  List<DestinationthreeItemModel> fillDestinationthreeItemList() {
    return [
      DestinationthreeItemModel(
          circleImage: ImageConstant.imgEllipse41,
          fortyNine: "4.9",
          shamim: "Shamim",
          tripsCounter: "1267 trips"),
      DestinationthreeItemModel(
          circleImage: ImageConstant.imgEllipse432x32,
          fortyNine: "4.5",
          shamim: "Shohel Kha",
          tripsCounter: "267 trips")
    ];
  }

  _onInitialize(
    DestinationThreeInitialEvent event,
    Emitter<DestinationThreeState> emit,
  ) async {
    emit(state.copyWith(radioGroup: ""));
    emit(state.copyWith(
        destinationThreeModelObj: state.destinationThreeModelObj?.copyWith(
            destinationthreeItemList: fillDestinationthreeItemList())));
  }
}
