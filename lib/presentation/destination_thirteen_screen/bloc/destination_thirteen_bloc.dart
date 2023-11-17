import 'package:equatable/equatable.dart';
import 'package:flutter/material.dart';
import '/core/app_export.dart';
import '../models/destinationthirteen_item_model.dart';
import 'package:user_app/presentation/destination_thirteen_screen/models/destination_thirteen_model.dart';
part 'destination_thirteen_event.dart';
part 'destination_thirteen_state.dart';

/// A bloc that manages the state of a DestinationThirteen according to the event that is dispatched to it.
class DestinationThirteenBloc
    extends Bloc<DestinationThirteenEvent, DestinationThirteenState> {
  DestinationThirteenBloc(DestinationThirteenState initialState)
      : super(initialState) {
    on<DestinationThirteenInitialEvent>(_onInitialize);
  }

  List<DestinationthirteenItemModel> fillDestinationthirteenItemList() {
    return [
      DestinationthirteenItemModel(
          workBlackdp: ImageConstant.imgWorkBlack24dpPrimary,
          office: "Office",
          saverThanaStand: "39 Saver thana stand, Dhaka"),
      DestinationthirteenItemModel(
          workBlackdp: ImageConstant.imgFactoryBlack24dp,
          office: "Factory",
          saverThanaStand: "39 Saver thana stand, Dhaka")
    ];
  }

  _onInitialize(
    DestinationThirteenInitialEvent event,
    Emitter<DestinationThirteenState> emit,
  ) async {
    emit(state.copyWith(searchController: TextEditingController()));
    emit(state.copyWith(
        destinationThirteenModelObj: state.destinationThirteenModelObj
            ?.copyWith(
                destinationthirteenItemList:
                    fillDestinationthirteenItemList())));
  }
}
