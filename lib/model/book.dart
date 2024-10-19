class Book {
  final String moduleName;
  final Map<String, String> content;
  final Map<String, List<String>> highlightedWords;

  Book({required this.moduleName ,required this.content, required this.highlightedWords});
}