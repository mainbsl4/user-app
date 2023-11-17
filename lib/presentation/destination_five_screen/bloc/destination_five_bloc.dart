import 'package:equatable/equatable.dart';
import 'package:flutter/material.dart';
import '/core/app_export.dart';
import '../models/destinationfive_item_model.dart';
import 'package:user_app/presentation/destination_five_screen/models/destination_five_model.dart';
part 'destination_five_event.dart';
part 'destination_five_state.dart';

/// A bloc that manages the state of a DestinationFive according to the event that is dispatched to it.
class DestinationFiveBloc
    extends Bloc<DestinationFiveEvent, DestinationFiveState> {
  DestinationFiveBloc(DestinationFiveState initialState) : super(initialState) {
    on<DestinationFiveInitialEvent>(_onInitialize);
    on<DestinationfiveItemEvent>(_destinationfiveItem);
  }

  _destinationfiveItem(
    DestinationfiveItemEvent event,
    Emitter<DestinationFiveState> emit,
  ) {
    List<DestinationfiveItemModel> newList =
        List<DestinationfiveItemModel>.from(
            state.destinationFiveModelObj!.destinationfiveItemList);
    newList[event.index] =
        newList[event.index].copyWith(pickupcarOne: event.pickupcarOne);
    emit(state.copyWith(
        destinationFiveModelObj: state.destinationFiveModelObj
            ?.copyWith(destinationfiveItemList: newList)));
  }

  List<DestinationfiveItemModel> fillDestinationfiveItemList() {
    return List.generate(5, (index) => DestinationfiveItemModel());
  }

  _onInitialize(
    DestinationFiveInitialEvent event,
    Emitter<DestinationFiveState> emit,
  ) async {
    emit(state.copyWith(addanoteController: TextEditingController()));
    emit(state.copyWith(
        destinationFiveModelObj: state.destinationFiveModelObj?.copyWith(
            destinationfiveItemList: fillDestinationfiveItemList())));
  }
}
