import 'package:scimet/model/modules.dart';

import '../model/book.dart';
import '../model/units.dart';

class UnitsController {
  List<Units> getUnits() {
    return [
      Units(title: "Systems in plants and animals", modules: 3, modulesList: [
        Modules(moduleName: "Module 1"),
      ], bookContent: [
        Book(
          content: {
            'Filipino': 'Ito ang unang pahina ng eBook. Mga salita tulad ng Flutter at Dart.',
            'Cebuano': 'Kini ang una nga panid sa eBook. Mga pulong sama sa Flutter ug Dart.',
          },
          highlightedWords: {
            'Filipino': ['Flutter', 'Dart'],
            'Cebuano': ['Flutter', 'Dart'],
          },
          moduleName: "Introduction to Biology",
        ),
        Book(
          content: {
            'Filipino': 'Ito ang pangalawang pahina ng eBook. Mga salita tulad ng Javascript at Java.',
            'Cebuano': 'Kini ang ikaduha nga panid sa eBook. Mga pulong sama sa Javascript ug Java.',
          },
          highlightedWords: {
            'Filipino': ['Java', 'Javascript'],
            'Cebuano': ['Javascript', 'Java'],
          },
          moduleName: "Introduction to Biology",
        )
      ]),
      Units(title: "Plants and animals and their habitats", modules: 1, modulesList: [
        Modules(moduleName: "Module 1"),
      ], bookContent: [
        Book(
          content: {
            'Filipino': 'Ito ang ikalawang pahina. Mga salita tulad ng Widgets at StatelessWidget.',
            'Cebuano': 'Kini ang ikaduhang panid. Mga pulong sama sa Widgets ug StatelessWidget.',
          },
          highlightedWords: {
            'Filipino': ['Widgets', 'StatelessWidget'],
            'Cebuano': ['Widgets', 'StatelessWidget'],
          },
          moduleName: "Introduction to Astronomy",
        )
      ]),
      Units(title: "Life Cycles of Animals", modules: 1, modulesList: [
        Modules(moduleName: "Module 1"),
      ], bookContent: [
        Book(
          content: {
            'Filipino': 'Ito ang ikalawang pahina. Mga salita tulad ng Widgets at StatelessWidget.',
            'Cebuano': 'Kini ang ikaduhang panid. Mga pulong sama sa Widgets ug StatelessWidget.',
          },
          highlightedWords: {
            'Filipino': ['Widgets', 'StatelessWidget'],
            'Cebuano': ['Widgets', 'StatelessWidget'],
          },
          moduleName: "Introduction to Astronomy",
        )
      ]),
      Units(title: "Animals and the food they eat", modules: 1, modulesList: [
        Modules(moduleName: "Module 1"),
      ], bookContent: [
        Book(
          content: {
            'Filipino': 'Ito ang ikalawang pahina. Mga salita tulad ng Widgets at StatelessWidget.',
            'Cebuano': 'Kini ang ikaduhang panid. Mga pulong sama sa Widgets ug StatelessWidget.',
          },
          highlightedWords: {
            'Filipino': ['Widgets', 'StatelessWidget'],
            'Cebuano': ['Widgets', 'StatelessWidget'],
          },
          moduleName: "Introduction to Astronomy",
        )
      ]),
      Units(title: "Food Chains", modules: 1, modulesList: [
        Modules(moduleName: "Module 1"),
      ], bookContent: [
        Book(
          content: {
            'Filipino': 'Ito ang ikalawang pahina. Mga salita tulad ng Widgets at StatelessWidget.',
            'Cebuano': 'Kini ang ikaduhang panid. Mga pulong sama sa Widgets ug StatelessWidget.',
          },
          highlightedWords: {
            'Filipino': ['Widgets', 'StatelessWidget'],
            'Cebuano': ['Widgets', 'StatelessWidget'],
          },
          moduleName: "Introduction to Astronomy",
        )
      ]),
    ];
  }
}
