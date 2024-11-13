import 'package:flutter/material.dart';
import 'package:shadcn_ui/shadcn_ui.dart';
import 'package:shared_preferences/shared_preferences.dart';
import '../model/modules.dart';
import '../controller/units_controller.dart';

class Module extends StatefulWidget {
  const Module({super.key});

  @override
  State<Module> createState() => _ModuleState();
}

class _ModuleState extends State<Module> {
  String? _selectedLanguage;
  final UnitsController _unitsController = UnitsController();

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
    final List<Modules> modules = arguments['modules'];
    final String title = arguments['title'];
    final int currentIndex = arguments['index'];

    return Scaffold(
      appBar: AppBar(
        title: Text(
          title,
          style: TextStyle(fontWeight: FontWeight.w500, fontSize: 14),
        ),
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
                      onPressed: () {
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
            ),
          ),
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
                    child: FutureBuilder<bool>(
                      future: _unitsController.getModuleCompleted(module.moduleName),
                      builder: (context, snapshot) {
                        final isCompleted = snapshot.data ?? false;

                        return InkWell(
                          onTap: () {
                            if (isCompleted) {
                              Navigator.pushNamed(
                                context,
                                "/content",
                                arguments: {
                                  'moduleName': module.moduleName,
                                  'nextModule': (index < modules.length - 1)
                                      ? modules[index + 1].moduleName
                                      : null,
                                  'index': currentIndex,
                                },
                              );
                            } else {
                              showShadDialog(
                                context: context,
                                builder: (context) => ShadDialog(
                                  title: Text(
                                    'Module Locked',
                                    style: TextStyle(fontWeight: FontWeight.w500),
                                  ),
                                  description: Text(
                                    'Complete the previous modules to unlock this one.',
                                  ),
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
                          },
                          child: ShadCard(
                            width: MediaQuery.of(context).size.width,
                            child: Row(
                              children: [
                                Expanded(
                                  flex: 1,
                                  child: Text(
                                    module.moduleName,
                                    textAlign: TextAlign.left,
                                  ),
                                ),
                                Icon(
                                  isCompleted ? Icons.lock_open : Icons.lock,
                                  color: isCompleted ? Colors.green : Colors.red,
                                ),
                              ],
                            ),
                          ),
                        );
                      },
                    ),
                  );
                },
              ),
            ),
          ],
        ),
      ),
    );
  }
}
