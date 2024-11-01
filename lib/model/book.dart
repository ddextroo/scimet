import 'package:scimet/model/translation.dart';

class Book {
  final String moduleName;
  final String content;
  final Map<String, Map<String, dynamic>> translations;

  Book({required this.moduleName ,required this.content, required this.translations});
}