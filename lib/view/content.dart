import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:shadcn_ui/shadcn_ui.dart';
import 'package:shared_preferences/shared_preferences.dart';
import '../controller/units_controller.dart';
import '../model/units.dart';
import 'package:page_flip/page_flip.dart';
import 'package:pdfrx/pdfrx.dart';
import 'package:tutorial_coach_mark/tutorial_coach_mark.dart';

import '../widgets/translation_sheet.dart';

class Content extends StatefulWidget {
  const Content({super.key});

  @override
  State<Content> createState() => _ContentState();
}

class _ContentState extends State<Content> {
  String? _selectedLanguage;
  final UnitsController book = UnitsController();
  final PdfViewerController _controller = PdfViewerController();
  bool _showFab = false; // Track FAB visibility

  @override
  void initState() {
    super.initState();
    _loadLanguagePreferences();
  }

  Future<void> _loadLanguagePreferences() async {
    final SharedPreferences prefs = await SharedPreferences.getInstance();
    setState(() {
      _selectedLanguage = prefs.getString("language");
    });
  }

  Future<void> _setLanguagePreferences(String language) async {
    final SharedPreferences prefs = await SharedPreferences.getInstance();
    await prefs.setString("language", language);
    setState(() {
      _selectedLanguage = language;
    });
  }

  @override
  Widget build(BuildContext context) {
    final arguments = (ModalRoute.of(context)?.settings.arguments ?? <List, dynamic>{}) as Map;
    final String moduleName = arguments['moduleName'];
    final List<Units> units = book.getUnits();
    final List<String> contents = units
        .expand((unit) => unit.bookContent)
        .where((book) => book.moduleName.contains(moduleName))
        .map((book) => book.content)
        .toList();
    final int currentIndex = arguments['index'];

    return Scaffold(
      appBar: AppBar(
        title: Text(moduleName, style: TextStyle(fontWeight: FontWeight.w500, fontSize: 14)),
        actions: [
          IconButton(
            onPressed: () {
              showShadDialog(
                context: context,
                builder: (context) => ShadDialog(
                  removeBorderRadiusWhenTiny: false,
                  radius: BorderRadius.circular(10.0),
                  title: const Text("Select language", style: TextStyle(fontWeight: FontWeight.w500)),
                  description: ShadRadioGroup<String>(
                    onChanged: (String? value) {
                      if (value != null) {
                        _setLanguagePreferences(value);
                      }
                    },
                    initialValue: _selectedLanguage,
                    items: const [
                      ShadRadio(label: Text('Filipino'), value: 'Filipino'),
                      ShadRadio(label: Text('Cebuano'), value: 'Cebuano'),
                    ],
                  ),
                  actions: [
                    ShadButton(
                      child: const Text('Done'),
                      onPressed: () => Navigator.of(context).pop(false),
                    ),
                  ],
                ),
              );
            },
            icon: const Icon(Icons.translate, size: 20),
          )
        ],
      ),
      body: PdfViewer.asset(
        "assets/contents/${contents[0]}",
        controller: _controller, // Connect the controller
        params: PdfViewerParams(
          backgroundColor: Colors.white,
          pageDropShadow: const BoxShadow(color: Colors.transparent, blurRadius: 0, spreadRadius: 0),
          linkHandlerParams: PdfLinkHandlerParams(
            linkColor: const Color(0x00000000),
            onLinkTap: (link) {
              showShadSheet(
                side: ShadSheetSide.bottom,
                context: context,
                builder: (context) => TranslationSheet(
                  word: link.url.toString(),
                  nextModule: arguments['nextModule'],
                  currentIndex: currentIndex,
                ),
              );
            },
          ),
          onPageChanged: (int? page) {
            if (page != null) {
              final pageCount = _controller.pageCount;
              if (pageCount != null && page == pageCount - 1) {
                setState(() => _showFab = true);
              } else {
                setState(() => _showFab = false);
              }
            }
          },

        ),
      ),
      floatingActionButton: _showFab
          ? FloatingActionButton(
        onPressed: () {
          // Navigate to the quiz screen with necessary arguments
          Navigator.pushNamed(context, '/quiz', arguments: {
            'moduleName': moduleName,
            'nextModule': arguments['nextModule'],
            'currentIndex': currentIndex,
          });
        },
        child: const Icon(Icons.quiz),
      )
          : null,
    );
  }
}