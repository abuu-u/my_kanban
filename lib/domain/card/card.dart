import 'package:freezed_annotation/freezed_annotation.dart';

part 'card.freezed.dart';

@freezed
abstract class Card with _$Card {
  const factory Card({
    @required int id,
    @required String row,
    @required int seqNum,
    @required String text,
  }) = _Card;
}
