import 'package:scimet/model/modules.dart';

import '../model/book.dart';
import '../model/translation.dart';
import '../model/units.dart';

class UnitsController {
  List<Units> getUnits() {
    return [
      Units(
        title: "Systems in Plants and Animals",
        modules: 2,
        modulesList: [
          Modules(moduleName: "Root and Shoot System"),
          Modules(moduleName: "Major Organs of the Human System"),
        ],
        bookContent: [
          Book(
            content: "system_plants_mod1.pdf",
            moduleName: "Root and Shoot System",
            translations: {
              'organisms': {
                'Cebuano': Translation(
                  word: 'Pulong',
                  definition: 'A word in Cebuano',
                  imageExample: '',
                ),
                'Filipino': Translation(
                  word: 'Salita',
                  definition: 'A word in Filipino',
                  imageExample: '',
                ),
              },
            },
          ),
          Book(
            content: "system_plants_mod2.pdf",
            moduleName: "Major Organs of the Human System",
            translations: {
              'organisms': {
                'Cebuano': Translation(
                  word: 'Pulong',
                  definition: 'A word in Cebuano',
                  imageExample: '',
                ),
                'Filipino': Translation(
                  word: 'Salita',
                  definition: 'A word in Filipino',
                  imageExample: '',
                ),
                'imageExample': '',
              },
            },
          ),
        ],
      ),
      Units(
        title: "Plants and Animals and their Habitats",
        modules: 1,
        modulesList: [
          Modules(moduleName: "Module 1"),
        ],
        bookContent: [
          Book(
            content: "plants_animals_mod1.pdf",
            moduleName: "Module 1",
            translations: {
              'organisms': {
                'Cebuano': Translation(
                  word: 'Pulong',
                  definition: 'A word in Cebuano',
                  imageExample: '',
                ),
                'Filipino': Translation(
                  word: 'Salita',
                  definition: 'A word in Filipino',
                  imageExample: '',
                ),
                'imageExample': '',
              },
            },
          ),
        ],
      ),
      Units(
        title: "Life Cycles of Animals",
        modules: 1,
        modulesList: [
          Modules(moduleName: "Stages in the Life Cycle of Animals"),
        ],
        bookContent: [
          Book(
            content: "life_cycle_mod1.pdf",
            moduleName: "Stages in the Life Cycle of Animals",
            translations: {
              'organisms': {
                'Cebuano': Translation(
                  word: 'Pulong',
                  definition: 'A word in Cebuano',
                  imageExample: '',
                ),
                'Filipino': Translation(
                  word: 'Salita',
                  definition: 'A word in Filipino',
                  imageExample: '',
                ),
                'imageExample': 'sssssssssssssssssssss',
              },
            },
          ),
        ],
      ),
      Units(
        title: "Animals and the Food They Eat",
        modules: 1,
        modulesList: [
          Modules(moduleName: "Module 1"),
        ],
        bookContent: [
          Book(
            content: "animals_food_mod1.pdf",
            moduleName: "Module 1",
            translations: {
              'organisms': {
                'Cebuano': Translation(
                  word: 'Pulong',
                  definition: 'A word in Cebuano',
                  imageExample: '',
                ),
                'Filipino': Translation(
                  word: 'Salita',
                  definition: 'A word in Filipino',
                  imageExample: '',
                ),
                'imageExample': '',
              },
            },
          ),
        ],
      ),
      Units(
        title: "Food Chains",
        modules: 1,
        modulesList: [
          Modules(moduleName: "Module 1"),
        ],
        bookContent: [
          Book(
            content: "food_chain_mod1.pdf",
            moduleName: "Module 1",
            translations: {
              'organisms': {
                'Cebuano': Translation(
                  word: 'Pulong',
                  definition: 'A word in Cebuano',
                  imageExample: '',
                ),
                'Filipino': Translation(
                  word: 'Salita',
                  definition: 'A word in Filipino',
                  imageExample: '',
                ),
                'imageExample': '',
              },
            },
          ),
        ],
      ),
    ];
  }
}
