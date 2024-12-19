import 'package:riverpod_annotation/riverpod_annotation.dart';

part 'tab_index_provider.g.dart';

@riverpod
class TabIndex extends _$TabIndex {
  @override
  int build() {
    return 0;
  }

  void changeIndex(int value) {
    state = value;
  }
}