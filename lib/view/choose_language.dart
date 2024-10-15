import 'package:flutter/material.dart';
import 'package:shadcn_ui/shadcn_ui.dart';

class ChooseLanguageScreen extends StatefulWidget {
  const ChooseLanguageScreen({super.key});

  @override
  State<ChooseLanguageScreen> createState() => _ChooseLanguageScreenState();
}

class _ChooseLanguageScreenState extends State<ChooseLanguageScreen> {
  static const frameworks = {
    'next': 'Next.js',
    'react': 'React',
    'astro': 'Astro',
    'nuxt': 'Nuxt.js',
  };

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: PreferredSize(
          preferredSize: Size.fromHeight(MediaQuery.of(context).padding.top),
          child: SizedBox(
            height: MediaQuery.of(context).padding.top,
          ),
        ),
        body: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            ShadCard(
              width: 350,
              title: Text('Create project', style: TextStyle(fontWeight: FontWeight.bold),),
              description: const Text('Deploy your new project in one-click.'),
              footer: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  ShadButton.outline(
                    text: const Text('Cancel'),
                    onPressed: () {},
                  ),
                  ShadButton(
                    text: const Text('Deploy'),
                    onPressed: () {},
                  ),
                ],
              ),
              content: Padding(
                padding: const EdgeInsets.symmetric(vertical: 16),
                child: Column(
                  mainAxisSize: MainAxisSize.min,
                  crossAxisAlignment: CrossAxisAlignment.stretch,
                  children: [
                    const Text('Name'),
                    const ShadInput(placeholder: Text('Name of your project')),
                    const SizedBox(height: 6),
                    const Text('Framework'),
                    ShadSelect<String>(
                      placeholder: const Text('Select'),
                      options: frameworks.entries
                          .map((e) =>
                              ShadOption(value: e.key, child: Text(e.value)))
                          .toList(),
                      selectedOptionBuilder: (context, value) {
                        return Text(frameworks[value]!);
                      },
                      onChanged: (value) {},
                    ),
                  ],
                ),
              ),
            )
          ],
        ));
  }
}
