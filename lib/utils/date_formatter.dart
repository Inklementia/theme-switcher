// Package imports:
import 'package:intl/intl.dart';

// Project imports:
import 'package:themeswitcher/conf/values/date_format_constants.dart';
import 'package:themeswitcher/conf/values/strings_constants.dart';

class MyDateFormatter {
  //
  static String format(DateTime? date, String newPattern) {
    if (date == null) return '';
    return DateFormat(newPattern, 'EN').format(date);
  }

  static DateTime? parse(String? date, String newPattern) {
    if (date == null || date == '') return null;
    return DateFormat(newPattern, 'EN').parse(date);
  }

  ///

  static String fHHmm(DateTime? date) => format(date, MyDateFormats.HHmm);

  static DateTime? pHHmm(String date) => parse(date, MyDateFormats.HHmm);

  ///
  static String fhhmm(DateTime? date) => format(date, MyDateFormats.hhmm);

  ///
  static String fEEE(DateTime? date) => format(date, MyDateFormats.EEE);

  ///
  static String fhhmma(DateTime? date) => format(date, MyDateFormats.hhmma);

  ///
  static String fdMMMy(DateTime? date) => format(date, MyDateFormats.dMMMy);

  ///
  static String fMMMMy(DateTime? date) => format(date, MyDateFormats.MMMMy);

  ///
  static String fdMMMMy(DateTime? date) => format(date, MyDateFormats.dMMMMy);

  ///
  static String fMMMM(DateTime? date) => format(date, MyDateFormats.MMMM);

  ///

  static String fdMMMM(DateTime? date) => format(date, MyDateFormats.dMMMM);

  ///
  static String fddMMyy(DateTime? date) => format(date, MyDateFormats.ddMMyy);

  ///
  static String fMMMMdy(DateTime? date) => format(date, MyDateFormats.MMMMdy);

  //

  static String fEEMMMMd(DateTime? date) => format(date, MyDateFormats.EEMMMMd);

  //

  static String fEEdMMMM(DateTime? date) => format(date, MyDateFormats.EEdMMMM);

  ///
  static String fddMMyyyy(DateTime? date) =>
      format(date, MyDateFormats.ddMMyyyy);

  static String fddMMyyyyHHmm(DateTime? date) =>
      format(date, MyDateFormats.ddMMyyyyHHmm);

  static DateTime? pddMMyyyy(String date) =>
      parse(date, MyDateFormats.ddMMyyyy);

  static DateTime? pddMMyyyyHHmm(String date) =>
      parse(date, MyDateFormats.ddMMyyyyHHmm);

  ///
  static String fMinutes(int minutes) {
    String text = '';
    final duration = Duration(minutes: minutes);
    if (duration.inHours > 0) text += '${duration.inHours}${MyStrings.h}';
    if (duration.inMinutes % 60 > 0)
      text += ' ${duration.inMinutes % 60}${MyStrings.m}';
    return text;
  }
}
