import 'package:equatable/equatable.dart';
import 'package:flutter/material.dart';
import '/core/app_export.dart';
import '../models/destinationsixteen_item_model.dart';
import 'package:user_app/presentation/destination_sixteen_page/models/destination_sixteen_model.dart';
part 'destination_sixteen_event.dart';
part 'destination_sixteen_state.dart';

/// A bloc that manages the state of a DestinationSixteen according to the event that is dispatched to it.
class DestinationSixteenBloc
    extends Bloc<DestinationSixteenEvent, DestinationSixteenState> {
  DestinationSixteenBloc(DestinationSixteenState initialState)
      : super(initialState) {
    on<DestinationSixteenInitialEvent>(_onInitialize);
  }

  List<DestinationsixteenItemModel> fillDestinationsixteenItemList() {
    return [
      DestinationsixteenItemModel(
          feettonOpen: ImageConstant.imgGroup,
          feetTonOpen: "7 feet 1 ton (Open)",
          bid: "BID",
          smallQuantities: "Small quantities of good, furniture, garment..."),
      DestinationsixteenItemModel(
          feettonOpen: ImageConstant.imgGroupPrimary,
          feetTonOpen: "7 feet 1 ton (Covered)",
          bid: "BID",
          smallQuantities: "Small quantities of good, furniture, garment..."),
      DestinationsixteenItemModel(
          feettonOpen: ImageConstant.imgFrameGray900,
          feetTonOpen: "9 feet 1.5 ton (Open)",
          bid: "BID",
          smallQuantities: "Small quantities of good, furniture, garment..."),
      DestinationsixteenItemModel(
          feettonOpen: ImageConstant.imgGroupBlueGray900,
          feetTonOpen: "9 feet 1.5 ton (Covered)",
          bid: "BID",
          smallQuantities: "Small quantities of good, furniture, garment..."),
      DestinationsixteenItemModel(
          feettonOpen: ImageConstant.imgGroupOrange300,
          feetTonOpen: "12 feet 2 ton (Open)",
          bid: "BID",
          smallQuantities: "Small quantities of good, furniture, garment..."),
      DestinationsixteenItemModel(
          feettonOpen: ImageConstant.imgGroupOrange30025x50,
          feetTonOpen: "12 feet 2 ton Covered)",
          bid: "BID",
          smallQuantities: "Small quantities of good, furniture, garment...")
    ];
  }

  _onInitialize(
    DestinationSixteenInitialEvent event,
    Emitter<DestinationSixteenState> emit,
  ) async {
    emit(state.copyWith(
      mediumController: TextEditingController(),
    ));
    emit(state.copyWith(
        destinationSixteenModelObj: state.destinationSixteenModelObj?.copyWith(
      destinationsixteenItemList: fillDestinationsixteenItemList(),
    )));
  }
}
