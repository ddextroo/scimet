import 'package:scimet/model/quiz.dart';

import 'book.dart';
import 'modules.dart';

class Units {
  final String title;
  final int modules;
  final List<Modules> modulesList;
  final List<Book> bookContent;

  Units(
      {required this.title,
      required this.modules,
      required this.modulesList,
      required this.bookContent});
}
