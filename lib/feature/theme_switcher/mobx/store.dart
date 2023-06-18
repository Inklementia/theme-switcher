import 'package:intl/intl.dart';
import 'package:mobx/mobx.dart';
import 'package:themeswitcher/conf/enums/theme_enum.dart';
import 'package:themeswitcher/conf/values/strings_constants.dart';
import 'package:themeswitcher/utils/shared_preference_helper.dart';

part 'store.g.dart';

class ThemeSwitcherStore extends _SwitcherStore with _$ThemeSwitcherStore {}

abstract class _SwitcherStore with Store {
  //

  @observable
  bool isLight = MySPHelper.isLight ?? true;

  @observable
  AppTheme? theme =
      (MySPHelper.isLight ?? true) ? AppTheme.Light : AppTheme.Dark;

  @observable
  List<String> historyList = [];

  //

  void onChanged(bool value) {
    setIsLight(value);
    addLog();

    MySPHelper.isLight = value;
    setTheme(value ? AppTheme.Light : AppTheme.Dark);
  }

  void addLog() {
    String timestamp = DateFormat('HH:mm:ss').format(DateTime.now());

    String status = isLight ? MyStrings.helloWorld : MyStrings.byeWorld;
    String logEntry = '$timestamp - $status';
    setHistoryList(List.of(historyList)..add(logEntry));
  }

  //

  @action
  void setTheme(AppTheme value) => theme = value;

  @action
  void setIsLight(bool value) => isLight = value;

  @action
  void setHistoryList(List<String> value) => historyList = value;
}
