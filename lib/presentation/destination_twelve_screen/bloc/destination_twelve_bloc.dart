import 'package:equatable/equatable.dart';
import 'package:flutter/material.dart';
import '/core/app_export.dart';
import '../models/destinationtwelve_item_model.dart';
import 'package:user_app/presentation/destination_twelve_screen/models/destination_twelve_model.dart';
part 'destination_twelve_event.dart';
part 'destination_twelve_state.dart';

/// A bloc that manages the state of a DestinationTwelve according to the event that is dispatched to it.
class DestinationTwelveBloc
    extends Bloc<DestinationTwelveEvent, DestinationTwelveState> {
  DestinationTwelveBloc(DestinationTwelveState initialState)
      : super(initialState) {
    on<DestinationTwelveInitialEvent>(_onInitialize);
  }

  List<DestinationtwelveItemModel> fillDestinationtwelveItemList() {
    return [
      DestinationtwelveItemModel(
          workBlackdp: ImageConstant.imgWorkBlack24dp, office: "Office"),
      DestinationtwelveItemModel(
          workBlackdp: ImageConstant.imgFactoryBlack24dpBlueGray300,
          office: "Factory"),
      DestinationtwelveItemModel(
          workBlackdp: ImageConstant.imgWarehouseBlack24dp,
          office: "Warehouse"),
      DestinationtwelveItemModel(
          workBlackdp: ImageConstant.imgGradeBlack24dpPrimary, office: "Other")
    ];
  }

  _onInitialize(
    DestinationTwelveInitialEvent event,
    Emitter<DestinationTwelveState> emit,
  ) async {
    emit(state.copyWith(nameController: TextEditingController()));
    emit(state.copyWith(
        destinationTwelveModelObj: state.destinationTwelveModelObj?.copyWith(
            destinationtwelveItemList: fillDestinationtwelveItemList())));
  }
}
