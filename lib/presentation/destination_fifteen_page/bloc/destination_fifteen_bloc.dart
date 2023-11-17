import 'package:equatable/equatable.dart';
import 'package:flutter/material.dart';
import '/core/app_export.dart';
import '../models/feettonopen_item_model.dart';
import '../models/feetton_item_model.dart';
import 'package:user_app/presentation/destination_fifteen_page/models/destination_fifteen_model.dart';
part 'destination_fifteen_event.dart';
part 'destination_fifteen_state.dart';

/// A bloc that manages the state of a DestinationFifteen according to the event that is dispatched to it.
class DestinationFifteenBloc
    extends Bloc<DestinationFifteenEvent, DestinationFifteenState> {
  DestinationFifteenBloc(DestinationFifteenState initialState)
      : super(initialState) {
    on<DestinationFifteenInitialEvent>(_onInitialize);
  }

  List<FeettonopenItemModel> fillFeettonopenItemList() {
    return [
      FeettonopenItemModel(
          feettonOpen: ImageConstant.imgGroup,
          feetTonOpen: "7 feet 1 ton (Open)",
          bid: "BID",
          smallQuantities: "Small quantities of good, furniture, garment..."),
      FeettonopenItemModel(
          feettonOpen: ImageConstant.imgGroupPrimary,
          feetTonOpen: "7 feet 1 ton (Covered)",
          bid: "BID",
          smallQuantities: "Small quantities of good, furniture, garment..."),
      FeettonopenItemModel(
          feettonOpen: ImageConstant.imgFrameGray900,
          feetTonOpen: "9 feet 1.5 ton (Open)",
          bid: "BID",
          smallQuantities: "Small quantities of good, furniture, garment..."),
      FeettonopenItemModel(
          feettonOpen: ImageConstant.imgGroupBlueGray900,
          feetTonOpen: "9 feet 1.5 ton (Covered)",
          bid: "BID",
          smallQuantities: "Small quantities of good, furniture, garment..."),
      FeettonopenItemModel(
          feettonOpen: ImageConstant.imgGroupOrange300,
          feetTonOpen: "12 feet 2 ton (Open)",
          bid: "BID",
          smallQuantities: "Small quantities of good, furniture, garment...")
    ];
  }

  List<FeettonItemModel> fillFeettonItemList() {
    return [
      FeettonItemModel(
          image: ImageConstant.imgGroup,
          feetTon: "14 feet 3.5 ton (Open)",
          bid: "BID",
          smallQuantities: "Small quantities of good, furniture, garment..."),
      FeettonItemModel(
          image: ImageConstant.imgGroupPrimary,
          feetTon: "14 feet 3.5 ton (Covered)",
          bid: "BID",
          smallQuantities: "Small quantities of good, furniture, garment...")
    ];
  }

  _onInitialize(
    DestinationFifteenInitialEvent event,
    Emitter<DestinationFifteenState> emit,
  ) async {
    emit(state.copyWith(
      mediumController: TextEditingController(),
    ));
    emit(state.copyWith(
        destinationFifteenModelObj: state.destinationFifteenModelObj?.copyWith(
      feettonopenItemList: fillFeettonopenItemList(),
      feettonItemList: fillFeettonItemList(),
    )));
  }
}
