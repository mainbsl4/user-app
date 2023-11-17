import 'package:equatable/equatable.dart';
import 'package:flutter/material.dart';
import '/core/app_export.dart';
import 'package:user_app/presentation/destination_ten_screen/models/destination_ten_model.dart';
part 'destination_ten_event.dart';
part 'destination_ten_state.dart';

/// A bloc that manages the state of a DestinationTen according to the event that is dispatched to it.
class DestinationTenBloc
    extends Bloc<DestinationTenEvent, DestinationTenState> {
  DestinationTenBloc(DestinationTenState initialState) : super(initialState) {
    on<DestinationTenInitialEvent>(_onInitialize);
  }

  _onInitialize(
    DestinationTenInitialEvent event,
    Emitter<DestinationTenState> emit,
  ) async {
    emit(state.copyWith(searchController: TextEditingController()));
  }
}
