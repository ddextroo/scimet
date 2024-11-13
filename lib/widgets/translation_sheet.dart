import 'package:flutter/material.dart';
import 'package:shared_preferences/shared_preferences.dart';
import 'package:scimet/controller/units_controller.dart';
import 'package:shadcn_ui/shadcn_ui.dart';

import '../model/units.dart';
import '../utils/url_prefix_remove.dart';

class TranslationSheet extends StatefulWidget {
  const TranslationSheet({super.key, required this.word, required this.nextModule});

  final String word;
  final String nextModule;

  @override
  _TranslationSheetState createState() => _TranslationSheetState();
}

class _TranslationSheetState extends State<TranslationSheet> {
  String? _selectedLanguage;
  late UnitsController unitsController;

  @override
  void initState() {
    super.initState();
    unitsController = UnitsController();
    _loadLanguagePreferences();
  }

  Future<void> _loadLanguagePreferences() async {
    final SharedPreferences prefs = await SharedPreferences.getInstance();
    setState(() {
      _selectedLanguage = prefs.getString("language") ?? 'Filipino'; // Default to 'Filipino'
    });
  }

  @override
  Widget build(BuildContext context) {
    final theme = ShadTheme.of(context);
    final translationData = _getTranslation(unitsController.getUnits(), widget.word);

    if (translationData == null) {
      return Center(
        child: Text(
          'Translation not found.',
          style: TextStyle(color: Color(0xFFFEFEFE), fontSize: 12),
        ),
      );
    }

    return ShadSheet(
      title: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(translationData['word'] ?? 'Unknown word'),
          Text(
            "/${cleanUrl(widget.word)}/",
            style: TextStyle(
              fontSize: 12,
              color: Color(0xFF9E9E9E),
              fontWeight: FontWeight.normal,
            ),
          ),
        ],
      ),
      radius: BorderRadius.vertical(top: Radius.circular(10.0)),
      removeBorderRadiusWhenTiny: false,
      constraints: null,
      description: Text(
        translationData['definition'] ?? 'Definition not available.',
        textAlign: TextAlign.start,
        style: TextStyle(color: Color(0xFF171717)),
      ),
      child: Padding(
        padding: const EdgeInsets.symmetric(vertical: 20),
        child: Column(
          mainAxisSize: MainAxisSize.min,
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            if (translationData['imageExample'] != null &&
                translationData['imageExample']!.isNotEmpty)
              ClipRRect(
                borderRadius: BorderRadius.circular(8.0),
                child: Image.asset(translationData['imageExample']!),
              )
            else
              Container(), // Empty container if no image
          ],
        ),
      ),
    );
  }


  Future<void> _markWordAsTranslated(String moduleName, String word) async {
    final prefs = await SharedPreferences.getInstance();
    final translatedWords = prefs.getStringList(moduleName) ?? [];

    if (!translatedWords.contains(word)) {
      translatedWords.add(word);
      await prefs.setStringList(moduleName, translatedWords);

      // Check if the module is now completed and unlock the next module
      final isCompleted = await unitsController.isModuleCompleted(moduleName);
      if (isCompleted) {
        final nextModuleName = widget.nextModule;
        if (nextModuleName != null) {
          await unitsController.setModuleCompleted(nextModuleName);
          print("Next module unlocked: $nextModuleName");

          if (context.mounted) {
            showShadDialog(
              context: context,
              builder: (context) => ShadDialog(
                title: Text(
                  'Next module unlocked',
                  style: TextStyle(fontWeight: FontWeight.w500),
                ),
                description: Text('You can now access $nextModuleName.'),
                actions: [
                  ShadButton(
                    child: Text('OK'),
                    onPressed: () {
                      Navigator.of(context).pop();
                    },
                  ),
                ],
              ),
            );
          }
        }
      }
    }
  }


  Map<String, String>? _getTranslation(List<Units> units, String searchWord) {
    if (_selectedLanguage == null) {
      return null;
    }

    for (var unit in units) {
      for (var book in unit.bookContent) {
        searchWord = cleanUrl(searchWord);
        var translations = book.translations[searchWord];
        if (translations != null && translations.containsKey(_selectedLanguage)) {
          final translation = translations[_selectedLanguage]!;
          _markWordAsTranslated(book.moduleName, searchWord);
          return {
            'word': translation.word,
            'definition': translation.definition,
            'imageExample': translation.imageExample,
          };
        }
      }
    }
    return null; // Return null if no translation is found
  }
}
