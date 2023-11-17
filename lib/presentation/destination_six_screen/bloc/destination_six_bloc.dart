import 'package:equatable/equatable.dart';
import 'package:flutter/material.dart';
import '/core/app_export.dart';
import '../models/destinationsix_item_model.dart';
import 'package:user_app/presentation/destination_six_screen/models/destination_six_model.dart';
part 'destination_six_event.dart';
part 'destination_six_state.dart';

/// A bloc that manages the state of a DestinationSix according to the event that is dispatched to it.
class DestinationSixBloc
    extends Bloc<DestinationSixEvent, DestinationSixState> {
  DestinationSixBloc(DestinationSixState initialState) : super(initialState) {
    on<DestinationSixInitialEvent>(_onInitialize);
  }

  _onInitialize(
    DestinationSixInitialEvent event,
    Emitter<DestinationSixState> emit,
  ) async {
    emit(state.copyWith(
        destinationSixModelObj: state.destinationSixModelObj
            ?.copyWith(destinationsixItemList: fillDestinationsixItemList())));
  }

  List<DestinationsixItemModel> fillDestinationsixItemList() {
    return [
      DestinationsixItemModel(
          workBlackdp: ImageConstant.imgWorkBlack24dp, office: "Office"),
      DestinationsixItemModel(
          workBlackdp: ImageConstant.imgFactoryBlack24dp, office: "Factory"),
      DestinationsixItemModel(
          workBlackdp: ImageConstant.imgWarehouseBlack24dp,
          office: "Warehouse"),
      DestinationsixItemModel(
          workBlackdp: ImageConstant.imgGradeBlack24dpBlueGray300,
          office: "Other")
    ];
  }
}
