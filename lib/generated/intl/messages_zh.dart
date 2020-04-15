// DO NOT EDIT. This is code generated via package:intl/generate_localized.dart
// This is a library that provides messages for a zh locale. All the
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
  String get localeName => 'zh';

  static m0(name) => "你好 ${name}";

  static m1(lastName, firstName) => "我的名字是 ${lastName}, ${firstName} ${lastName}";

  static m2(howMany) => "${Intl.plural(howMany, one: '你有1条信息', other: '你有${howMany}条信息')}";

  final messages = _notInlinedMessages(_notInlinedMessages);
  static _notInlinedMessages(_) => <String, Function> {
    "pageHomeListTitle" : MessageLookupByLibrary.simpleMessage("一些本地化的语句:"),
    "pageHomeSamplePlaceholder" : m0,
    "pageHomeSamplePlaceholdersOrdered" : m1,
    "pageHomeSamplePlural" : m2
  };
}
