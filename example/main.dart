import 'package:nepali_utils/nepali_utils.dart';

main(List<String> arguments) {
  heading('Nepali Date Time');
  NepaliDateTime gorkhaEarthQuake = NepaliDateTime.parse('2072-01-12T11:56:25');
  //print(
  //    'Gorkha Earquake Details\nYear = ${gorkhaEarthQuake.year}\nMonth = ${gorkhaEarthQuake.month}\nDay = ${gorkhaEarthQuake.day}\nHour = ${gorkhaEarthQuake.hour}\nMinute = ${gorkhaEarthQuake.minute}');
  //print('\nCurrent NepaliDateTime = ${NepaliDateTime.now()}');

  heading('Date Converter');
  NepaliDateTime nt = NepaliDateTime.fromDateTime(DateTime(2019, 5, 14));
  print('In BS = $nt');
  DateTime dt = nt.toDateTime();
  print('In AD = $dt');

  print(NepaliDateTime.now().toIso8601String());

  heading('Nepali Date Formatter');
  var date1 = NepaliDateFormat("yyyy.MM.dd G 'at' HH:mm:ss");
  var date2 = NepaliDateFormat("EEE, MMM d, ''yy");
  var date3 = NepaliDateFormat("h:mm a");
  var date4 = NepaliDateFormat("hh 'o''clock' aa");
  var date5 = NepaliDateFormat("yyyy.MMMM.dd GGG hh:mm a");
  print(date1.format(gorkhaEarthQuake));
  print(date2.format(gorkhaEarthQuake));
  print(date3.format(gorkhaEarthQuake));
  print(date4.format(gorkhaEarthQuake));
  print(date5.format(gorkhaEarthQuake));

  heading('Nepali Number Format');
  var currencyFormat = NepaliNumberFormat(
    symbol: 'Rs.',
  );
  var commaSeparated = NepaliNumberFormat(
    decimalDigits: 2,
  );
  var inWords = NepaliNumberFormat(
    inWords: true,
    language: Language.NEPALI,
  );
  var currencyInWords = NepaliNumberFormat(
    inWords: true,
    language: Language.NEPALI,
    isMonetory: true,
  );
  print('123456 -> ${currencyFormat.format(123456)}');
  print('123456789.6548 -> ${commaSeparated.format(123456789.6548)}');
  print('123456 -> ${inWords.format(123456)}');
  print('123456789.6548 -> ${currencyInWords.format(123456789.6548)}');

  heading('Nepali Unicode');
  print(NepaliUnicode.convert(
      "sayau' thu''gaa fUlakaa haamii, euTai maalaa nepaalii"));
  print(NepaliUnicode.convert(
      "saarwabhauma bhai failiekaa, mecii-mahaakaalii\n"));
}

void heading(String text) {
  String starLine = '', padString = '';
  int padding = (40 - text.length) ~/ 2;
  for (int i = 0; i < 40; i++) starLine += '*';
  for (int i = 0; i < padding; i++) padString += ' ';
  print(starLine);
  print(padString + text + padString);
  print(starLine);
}
