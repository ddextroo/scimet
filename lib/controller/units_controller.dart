import 'package:scimet/model/modules.dart';

import '../model/book.dart';
import '../model/units.dart';

class UnitsController {
  List<Units> getUnits() {
    return [
      Units(title: "Biology", modules: 3, modulesList: [
        Modules(moduleName: "Introduction to Biology", pages: 10),
      ], bookContent: [
        Book(
          content: {
            'Tagalog': 'Ito ang unang pahina ng eBook. Mga salita tulad ng Flutter at Dart.',
            'Cebuano': 'Kini ang una nga panid sa eBook. Mga pulong sama sa Flutter ug Dart.',
          },
          highlightedWords: {
            'Tagalog': ['Flutter', 'Dart'],
            'Cebuano': ['Flutter', 'Dart'],
          },
          moduleName: "Introduction to Biology",
        ),
        Book(
          content: {
            'Tagalog': 'Ito ang pangalawang pahina ng eBook. Mga salita tulad ng Javascript at Java.',
            'Cebuano': 'Kini ang ikaduha nga panid sa eBook. Mga pulong sama sa Javascript ug Java.',
          },
          highlightedWords: {
            'Tagalog': ['Java', 'Javascript'],
            'Cebuano': ['Javascript', 'Java'],
          },
          moduleName: "Introduction to Biology",
        )
      ]),
      Units(title: "Astronomy", modules: 5, modulesList: [
        Modules(moduleName: "Introduction to Astronomy", pages: 21),
      ], bookContent: [
        Book(
          content: {
            'Tagalog': 'Ito ang ikalawang pahina. Mga salita tulad ng Widgets at StatelessWidget.',
            'Cebuano': 'Kini ang ikaduhang panid. Mga pulong sama sa Widgets ug StatelessWidget.',
          },
          highlightedWords: {
            'Tagalog': ['Widgets', 'StatelessWidget'],
            'Cebuano': ['Widgets', 'StatelessWidget'],
          },
          moduleName: "Introduction to Astronomy",
        )
      ]),
    ];
  }
}
