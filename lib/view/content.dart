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
  final _controller = GlobalKey<PageFlipWidgetState>();

  @override
  void initState() {
    // TODO: implement initState
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

  void _checkAndUnlockNextModule(String currentModuleName) async {
    final isCompleted = await UnitsController().isModuleCompleted(currentModuleName);

    if (isCompleted) {
      setState(() {
        print("ueu");
        // Unlock the next module logic here.
        // e.g., update a flag or UI to enable the next module.
      });
    }
  }

  @override
  Widget build(BuildContext context) {
    final arguments = (ModalRoute.of(context)?.settings.arguments ??
        <List, dynamic>{}) as Map;
    final String moduleName = arguments['moduleName'];
    final List<Units> units = book.getUnits();
    final List<String> contents = units
        .expand((unit) => unit.bookContent)
        .where((book) => book.moduleName.contains(moduleName))
        .map((book) => book.content)
        .toList();
    _checkAndUnlockNextModule(moduleName);

    return Scaffold(
        appBar: AppBar(
          title: Text(moduleName,
              style: TextStyle(fontWeight: FontWeight.w500, fontSize: 14)),
          actions: [
            IconButton(
                onPressed: () {
                  showShadDialog(
                    context: context,
                    builder: (context) => ShadDialog(
                      removeBorderRadiusWhenTiny: false,
                      radius: BorderRadius.circular(10.0),
                      title: const Text(
                        "Select language",
                        style: TextStyle(fontWeight: FontWeight.w500),
                      ),
                      description: ShadRadioGroup<String>(
                        onChanged: (String? value) {
                          if (value != null) {
                            _setLanguagePreferences(value);
                          }
                        },
                        initialValue: _selectedLanguage,
                        items: const [
                          ShadRadio(
                            label: Text('Filipino'),
                            value: 'Filipino',
                          ),
                          ShadRadio(
                            label: Text('Cebuano'),
                            value: 'Cebuano',
                          ),
                        ],
                      ),
                      actions: [
                        ShadButton(
                          child: const Text('Done'),
                          onPressed: () async {
                            Navigator.of(context).pop(false);
                          },
                        ),
                      ],
                    ),
                  );
                },
                icon: const Icon(
                  Icons.translate,
                  size: 20,
                ))
          ],
        ),
        body: PdfViewer.asset(
          "assets/contents/${contents[0]}",
          params: PdfViewerParams(
            backgroundColor: Colors.white,
            pageDropShadow: BoxShadow(
              color: Colors.transparent,
              blurRadius: 0,
              spreadRadius: 0,
            ),
            linkHandlerParams: PdfLinkHandlerParams(
              linkColor: const Color(0x00000000),
              onLinkTap: (link) {
                showShadSheet(
                    side: ShadSheetSide.bottom,
                    context: context,
                    builder: (context) =>
                        TranslationSheet(word: link.url.toString()));
                // if (link.url != null) {
                //   navigateToUrl(link.url!);
                // } else if (link.dest != null) {
                //   controller.goToDest(link.dest);
                // }
              },
            ),
          ),
        ));
  }
}
