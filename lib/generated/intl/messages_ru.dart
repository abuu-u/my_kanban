// DO NOT EDIT. This is code generated via package:intl/generate_localized.dart
// This is a library that provides messages for a ru locale. All the
// messages from the main program should be duplicated here with the same
// function name.

// Ignore issues from commonly used lints in this file.
// ignore_for_file:unnecessary_brace_in_string_interps, unnecessary_new
// ignore_for_file:prefer_single_quotes,comment_references, directives_ordering
// ignore_for_file:annotate_overrides,prefer_generic_function_type_aliases
// ignore_for_file:unused_import, file_names

import 'package:intl/intl.dart';
import 'package:intl/message_lookup_by_library.dart';

final messages = new MessageLookup();

typedef String MessageIfAbsent(String messageStr, List<dynamic> args);

class MessageLookup extends MessageLookupByLibrary {
  String get localeName => 'ru';

  static m0(count) => "Минимум ${count} символов";

  static m1(tab) => "${Intl.select(tab, {'onHold': 'В ожидании', 'inProgress': 'В процессе', 'needsReview': 'На проверку', 'approved': 'Одобрено', 'other': 'Other', })}";

  final messages = _notInlinedMessages(_notInlinedMessages);
  static _notInlinedMessages(_) => <String, Function> {
    "cardsEmpty" : MessageLookupByLibrary.simpleMessage("Здесь нет карточек"),
    "getMinChars" : m0,
    "getTab" : m1,
    "login" : MessageLookupByLibrary.simpleMessage("Войти"),
    "passwordHint" : MessageLookupByLibrary.simpleMessage("Введите пароль"),
    "serverError" : MessageLookupByLibrary.simpleMessage("Ошибка сервера"),
    "usernameHint" : MessageLookupByLibrary.simpleMessage("Введите имя")
  };
}
