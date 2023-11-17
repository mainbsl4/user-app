// ignore_for_file: must_be_immutable

import 'package:equatable/equatable.dart';

/// This class is used in the [destinationnineteen_item_widget] screen.
class DestinationnineteenItemModel extends Equatable {
  DestinationnineteenItemModel({
    this.month,
    this.fileTonOpen,
    this.tipnyFive,
    this.radioGroup,
    this.sonadangoKhulna,
    this.time,
    this.id,
  }) {
    month = month ?? "09 May 2023, 05:30";
    fileTonOpen = fileTonOpen ?? "7 file 2 Ton (Open)";
    tipnyFive = tipnyFive ?? "Tip: 23454n75y5";
    radioGroup = radioGroup ?? "";
    sonadangoKhulna = sonadangoKhulna ?? "Sonadango, Khulna 1340";
    time = time ?? "10 May 2023, 06:30 PM";
    id = id ?? "";
  }

  String? month;

  String? fileTonOpen;

  String? tipnyFive;

  String? radioGroup;

  String? sonadangoKhulna;

  String? time;

  String? id;

  DestinationnineteenItemModel copyWith({
    String? month,
    String? fileTonOpen,
    String? tipnyFive,
    String? radioGroup,
    String? sonadangoKhulna,
    String? time,
    String? id,
  }) {
    return DestinationnineteenItemModel(
      month: month ?? this.month,
      fileTonOpen: fileTonOpen ?? this.fileTonOpen,
      tipnyFive: tipnyFive ?? this.tipnyFive,
      radioGroup: radioGroup ?? this.radioGroup,
      sonadangoKhulna: sonadangoKhulna ?? this.sonadangoKhulna,
      time: time ?? this.time,
      id: id ?? this.id,
    );
  }

  @override
  List<Object?> get props =>
      [month, fileTonOpen, tipnyFive, radioGroup, sonadangoKhulna, time, id];
}
