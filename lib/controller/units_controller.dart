import 'package:scimet/model/modules.dart';

import '../model/units.dart';

class UnitsController {
  List<Units> getUnits() {
    return [
      Units(title: "Biology", modules: 3, modulesList: [
        Modules(moduleName: "Introduction to Biology", pages: 10),
      ]),
      Units(title: "Astronomy", modules: 5, modulesList: [
        Modules(moduleName: "Introduction to Astronomy", pages: 21),
      ]),
      Units(title: "Chemistry", modules: 10, modulesList: [
        Modules(moduleName: "Introduction to Chemistry", pages: 4),
      ]),
    ];
  }
}
