import 'package:flutter/material.dart';
import 'package:shadcn_ui/shadcn_ui.dart';
import 'package:shared_preferences/shared_preferences.dart';
import '../model/modules.dart';

class Module extends StatefulWidget {
  const Module({super.key});

  @override
  State<Module> createState() => _ModuleState();
}

class _ModuleState extends State<Module> {
  String? _selectedLanguage;

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
    final List<Modules> modules = arguments['modules'];
    final String title = arguments['title'];

    return Scaffold(
      appBar: AppBar(
        // leading: IconButton(
        //   icon: const Icon(
        //     Icons.menu,
        //     size: 20,
        //   ),
        //   onPressed: () {},
        // ),
        title: Text(title,
            style: TextStyle(fontWeight: FontWeight.w500, fontSize: 14)),
        actions: [
          IconButton(
              onPressed: () {
                showShadDialog(
                  context: context,
                  builder: (context) => ShadDialog(
                    removeBorderRadiusWhenTiny: false,
                    radius: BorderRadius.circular(10.0),
                    title: Text(
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
                      items: [
                        ShadRadio(
                          label: Text('Tagalog'),
                          value: 'Tagalog',
                        ),
                        ShadRadio(
                          label: Text('Cebuano'),
                          value: 'Cebuano',
                        ),
                      ],
                    ),
                    actions: [
                      ShadButton(
                        text: Text('Done'),
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
            Expanded(
              child: ListView.builder(
                  itemCount: modules.length,
                  itemBuilder: (context, index) {
                    final module = modules[index];
                    return Padding(
                      padding: const EdgeInsets.symmetric(vertical: 10.0),
                      child: InkWell(
                        onTap: () {
                          Navigator.pushNamed(context, "/content",
                              arguments: {'moduleName': module.moduleName});
                        },
                        child: ShadCard(
                          width: MediaQuery.of(context).size.width,
                          content: Row(
                            children: [
                              Flexible(
                                flex: 1,
                                child: Container(
                                  width: MediaQuery.of(context).size.width,
                                  child: Column(
                                    mainAxisAlignment: MainAxisAlignment.start,
                                    crossAxisAlignment: CrossAxisAlignment.start,
                                    children: [
                                      Text(
                                        module.moduleName,
                                        textAlign: TextAlign.left,
                                      ),
                                      const SizedBox(
                                        height: 5.0,
                                      ),
                                      Text(
                                        "${module.pages} page(s)",
                                        style: TextStyle(
                                            color: Color(0xFF6b7280), fontSize: 12),
                                      )
                                    ],
                                  ),
                                ),
                              ),
                              Container(
                                width: 40,
                                height: 40,
                                // color: Color(0xFF005A17),
                                decoration: BoxDecoration(
                                  shape: BoxShape.circle,
                                  color: Color(0xFF005A17),
                                ),
                                child: IconButton(
                                  onPressed: () {},
                                  icon: Icon(
                                    Icons.chevron_right,
                                    color: Color(0xFFFEFEFE),
                                  ),
                                ),
                              )
                            ],
                          ),
                        ),
                      ),
                    );
                  }),
            ),
          ],
        ),
      ),
    );
  }
}
