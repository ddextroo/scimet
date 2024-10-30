import 'package:scimet/model/modules.dart';

import '../model/book.dart';
import '../model/units.dart';

class UnitsController {
  List<Units> getUnits() {
    return [
      Units(
          title: "Systems in plants and animals",
          modules: 2,
          modulesList: [
            Modules(moduleName: "Module 1"),
            Modules(moduleName: "Module 2"),
          ],
          bookContent: [
            Book(
              content: "life_c.pdf",
              highlightedWords: ['Flutter', 'Dart'],
              moduleName: "Module 1",
            ),
            Book(
              content: "mod2_system_plants.pdf",
              highlightedWords: ['Flutter', 'Dart'],
              moduleName: "Module 2",
            ),
          ]),
      Units(
          title: "Plants and animals and their habitats",
          modules: 2,
          modulesList: [
            Modules(moduleName: "Module 1"),
          ],
          bookContent: [
            Book(
              content: "life_c.pdf",
              highlightedWords: ['Flutter', 'Dart'],
              moduleName: "Module 1",
            ),
          ]),
      Units(
          title: "Life Cycles of Animals",
          modules: 2,
          modulesList: [
            Modules(moduleName: "Module 1"),
          ],
          bookContent: [
            Book(
              content: "life_c.pdf",
              highlightedWords: ['Flutter', 'Dart'],
              moduleName: "Module 1",
            ),
          ]),
      Units(
          title: "Food Chains",
          modules: 2,
          modulesList: [
            Modules(moduleName: "Module 1"),
          ],
          bookContent: [
            Book(
              content: "life_c.pdf",
              highlightedWords: ['Flutter', 'Dart'],
              moduleName: "Module 1",
            ),
          ]),
    ];
  }
}
