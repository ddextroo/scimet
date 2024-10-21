import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:shadcn_ui/shadcn_ui.dart';
import 'package:shared_preferences/shared_preferences.dart';

import '../controller/units_controller.dart';
import '../model/book.dart';
import '../model/units.dart';
import 'package:page_flip/page_flip.dart';
import 'package:tutorial_coach_mark/tutorial_coach_mark.dart';

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

  @override
  Widget build(BuildContext context) {
    final arguments = (ModalRoute.of(context)?.settings.arguments ??
        <List, dynamic>{}) as Map;
    final String moduleName = arguments['moduleName'];
    final List<Units> units = book.getUnits();
    final List<Book> contents = units
        .expand((unit) => unit.bookContent)
        .where((book) => book.moduleName.contains(moduleName))
        .toList();

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
                        text: const Text('Done'),
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
      body: PageFlipWidget(
          key: _controller,
          backgroundColor: Colors.white,
          children: <Widget>[
            PageView.builder(
              itemCount: contents.length, // Number of pages
              itemBuilder: (context, index) {
                // For each page, build the content
                final page = contents[index];
                return Padding(
                  padding: const EdgeInsets.all(16.0),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      Row(
                        crossAxisAlignment: CrossAxisAlignment.center,
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          const Padding(
                            padding: EdgeInsets.all(8.0),
                            child: SizedBox(
                              height: 2,
                              width: 70,
                              child: ColoredBox(color: Colors.black38),
                            ),
                          ),
                          Text(
                            'Page ${index + 1} of ${contents.length}',
                            style: const TextStyle(
                                fontSize: 12, fontWeight: FontWeight.w500),
                            textAlign: TextAlign.center,
                          ),
                          const Padding(
                            padding: EdgeInsets.all(8.0),
                            child: SizedBox(
                              height: 2,
                              width: 70,
                              child: ColoredBox(color: Colors.black38),
                            ),
                          ),
                        ],
                      ),
                      const SizedBox(height: 10),
                      _buildPageContent(
                          context, page, _selectedLanguage ?? 'Filipino'),
                    ],
                  ),
                );
              },
            ),
          ]),
    );
  }

  Widget _buildPageContent(
      BuildContext context, Book page, String selectedLanguage) {
    List<TextSpan> contentSpans = [];

    String content = page.content[selectedLanguage] ?? page.content['Filipino']!;
    List<String> highlightedWords =
        page.highlightedWords[selectedLanguage] ?? page.highlightedWords['Filipino']!;

    List<String> words = content.split(' ');

    for (String word in words) {
      String cleanWord = word.replaceAll(RegExp(r'[^\w\s]'), '');

      if (highlightedWords.contains(cleanWord)) {
        contentSpans.add(
          TextSpan(
            text: word + ' ',
            style: const TextStyle(
                color: Color(0xFF5CD96A), fontWeight: FontWeight.bold),
            recognizer: TapGestureRecognizer()
              ..onTap = () {
                print('Highlighted word clicked: $cleanWord');
              },
          ),
        );
      } else {
        contentSpans.add(TextSpan(text: word + ' '));
      }
    }

    return RichText(
      text: TextSpan(
        style: TextStyle(color: Colors.black, fontSize: 16),
        children: contentSpans,
      ),
    );
  }

}
