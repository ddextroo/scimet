import 'package:flutter/material.dart';
import 'package:shadcn_ui/shadcn_ui.dart';
import 'package:shared_preferences/shared_preferences.dart';
import '../controller/units_controller.dart';
import '../model/units.dart';
import 'package:page_flip/page_flip.dart';

class Home extends StatefulWidget {
  const Home({super.key});

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {
  final List<Units> units = UnitsController().getUnits();

  String? _selectedLanguage;

  @override
  void initState() {
    super.initState();
    _loadLanguagePreferences();
  }

  Future<void> _loadLanguagePreferences() async {
    final SharedPreferences prefs = await SharedPreferences.getInstance();
    // await prefs.clear();
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
    return Scaffold(
        appBar: AppBar(
          actions: [
            IconButton(
                onPressed: () {
                  showShadDialog(
                    context: context,
                    builder: (context) => ShadDialog(
                      radius: BorderRadius.circular(10.0),
                      removeBorderRadiusWhenTiny: false,
                      title: const Text(
                        'Select language',
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
                          child: Text('Done'),
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
        body: Padding(
          padding: const EdgeInsets.all(10.0),
          child: Column(
            children: [
              ShadCard(
                width: MediaQuery.of(context).size.width,
                child: Row(
                  children: [
                    Image.asset(
                      "assets/images/home_welcome.png",
                      width: 100,
                    ),
                    const SizedBox(width: 10),
                    Expanded(
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          const Text(
                            "Welcome to SCI-MET",
                            style: TextStyle(
                                fontWeight: FontWeight.w500, fontSize: 14),
                          ),
                          const SizedBox(height: 10),
                          const Text(
                            "Explore exciting science topics from plants and animals to weather and species.",
                            softWrap: true,
                            overflow: TextOverflow.visible,
                            style: TextStyle(
                                fontSize: 12,
                                fontWeight: FontWeight.normal,
                                color: Color(0xFF6b7280)),
                          ),
                          const SizedBox(height: 10),
                          ShadButton(
                            child: const Text("About us"),
                            width: double.infinity,
                            onPressed: () {
                              showShadDialog(
                                context: context,
                                builder: (context) => ShadDialog(
                                  radius: BorderRadius.circular(10.0),
                                  expandActionsWhenTiny: true,
                                  removeBorderRadiusWhenTiny: false,
                                  title: const Text(
                                    'About Us',
                                    style:
                                        TextStyle(fontWeight: FontWeight.w500),
                                  ),
                                  description: SingleChildScrollView(
                                    child: Column(
                                      mainAxisAlignment: MainAxisAlignment.start,
                                      crossAxisAlignment:
                                          CrossAxisAlignment.start,
                                      children: [
                                        const Text(
                                          'Our App',
                                          style: TextStyle(
                                              fontSize: 18,
                                              fontWeight: FontWeight.bold),
                                        ),
                                        const SizedBox(height: 8),
                                        const Text(
                                          'The Science Multilingual Educational Tool (Sci-MET) is a software designed to enhance reading comprehension in science for grade 4 learners. It offers an extensive array of learning materials, complemented by a robust translation feature that enables students to easily translate scientific terms into Cebuano or Filipino. Beyond mere translation, Sci-MET provides clear and concise definitions for each term, ensuring that students not only grasp the vocabulary but also understand the underlying concepts. This comprehensive approach fosters a deeper engagement with scientific content and supports multilingual learning.',
                                          textAlign: TextAlign.left,
                                          style: TextStyle(fontSize: 14),
                                        ),
                                        const SizedBox(height: 16),
                                        const Text(
                                          'Our Team',
                                          style: TextStyle(
                                              fontSize: 18,
                                              fontWeight: FontWeight.bold),
                                        ),
                                        const SizedBox(height: 8),
                                        ...[
                                          'Acain, Hannah Margaret',
                                          'Alboroto, Arniel S.',
                                          'Botilla, Ashley Hope D.',
                                          'Hisoler, Bea Annelle J.',
                                          'Rosales, Jhuna Angel P.',
                                          'Tumulak, Lara May C.'
                                        ]
                                            .map((member) => Padding(
                                                  padding:
                                                      const EdgeInsets.only(
                                                          bottom: 8),
                                                  child: Text(member,
                                                      style: TextStyle(
                                                          fontSize: 14)),
                                                ))
                                            .toList(),
                                      ],
                                    ),
                                  ),
                                  actions: [
                                    ShadButton(
                                      child: Text('Close'),
                                      onPressed: () {
                                        Navigator.of(context).pop();
                                      },
                                    ),
                                  ],
                                ),
                              );
                            },
                          ),
                        ],
                      ),
                    )
                  ],
                ),
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  Container(
                    margin: EdgeInsets.only(top: 10.0),
                    child: const Text(
                      "Explore units",
                      style:
                          TextStyle(fontSize: 14, fontWeight: FontWeight.w500),
                    ),
                  ),
                ],
              ),
              Expanded(
                child: ListView.builder(
                    itemCount: units.length,
                    itemBuilder: (context, index) {
                      final unit = units[index];
                      return Padding(
                        padding: const EdgeInsets.symmetric(vertical: 10.0),
                        child: InkWell(
                          onTap: () {
                            Navigator.pushNamed(context, "/module", arguments: {
                              'modules': unit.modulesList,
                              'title': unit.title,
                              'index': index
                            });
                          },
                          child: ShadCard(
                            width: MediaQuery.of(context).size.width,
                            child: Row(
                              children: [
                                Flexible(
                                  flex: 1,
                                  child: Container(
                                    width: MediaQuery.of(context).size.width,
                                    child: Column(
                                      mainAxisAlignment:
                                          MainAxisAlignment.start,
                                      crossAxisAlignment:
                                          CrossAxisAlignment.start,
                                      children: [
                                        Text(
                                          unit.title,
                                          textAlign: TextAlign.left,
                                        ),
                                        const SizedBox(
                                          height: 5.0,
                                        ),
                                        Text(
                                          "${unit.modules} module(s)",
                                          style: TextStyle(
                                              color: Color(0xFF6b7280),
                                              fontSize: 12),
                                        )
                                      ],
                                    ),
                                  ),
                                ),
                                Container(
                                  width: 30,
                                  height: 30,
                                  decoration: BoxDecoration(
                                    shape: BoxShape.circle,
                                    color: Color(0xFF005A17),
                                  ),
                                  child: Center(
                                    child: IconButton(
                                      padding: EdgeInsets.zero,
                                      // Remove default padding
                                      onPressed: () {},
                                      icon: Icon(
                                        Icons.chevron_right,
                                        color: Color(0xFFFEFEFE),
                                      ),
                                    ),
                                  ),
                                )
                              ],
                            ),
                          ),
                        ),
                      );
                    }),
              )
            ],
          ),
        ));
  }
}
