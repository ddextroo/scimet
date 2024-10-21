import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:shadcn_ui/shadcn_ui.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:shared_preferences/shared_preferences.dart';
import 'dart:async';

class ChooseLanguageScreen extends StatefulWidget {
  const ChooseLanguageScreen({super.key});

  @override
  State<ChooseLanguageScreen> createState() => _ChooseLanguageScreenState();
}

class _ChooseLanguageScreenState extends State<ChooseLanguageScreen> {
  @override
  void initState() {
    super.initState();
    _firstTime();
  }

  Future<void> _firstTime() async {
    final SharedPreferences prefs = await SharedPreferences.getInstance();
    String? isFirstTime = prefs.getString("language") ?? "";

    if (isFirstTime != "") {
      Navigator.popAndPushNamed(context, "/home");
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          leading: IconButton(
            icon: const Icon(Icons.chevron_left),
            onPressed: () {
              Navigator.pop(context);
            },
          ),
          title: const Text(
            "Choose your language",
            style: TextStyle(fontSize: 14),
          ),
        ),
        body: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Flexible(
              flex: 1,
              child: Padding(
                padding: const EdgeInsets.all(30.0),
                child: SvgPicture.asset(
                  "assets/images/language.svg",
                ),
              ),
            ),
            Padding(
              padding: EdgeInsets.all(30.0),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  ShadButton(
                    text: const Text("Filipino"),
                    width: double.infinity,
                    onPressed: () async {
                      final SharedPreferences prefs =
                          await SharedPreferences.getInstance();

                      await prefs.setString("language", "Filipino");

                      Navigator.popAndPushNamed(context, "/home");
                    },
                  ),
                  ShadButton.outline(
                    text: Text("Cebuano"),
                    width: double.infinity,
                    onPressed: () async {
                      final SharedPreferences prefs =
                          await SharedPreferences.getInstance();

                      await prefs.setString("language", "Cebuano");

                      Navigator.popAndPushNamed(context, "/home");
                    },
                  )
                ],
              ),
            )
          ],
        ));
  }
}
