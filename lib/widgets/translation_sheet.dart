import 'package:flutter/material.dart';
import 'package:shadcn_ui/shadcn_ui.dart';

class TranslationSheet extends StatelessWidget {
  const TranslationSheet({super.key, required this.word});

  final String word;

  @override
  Widget build(BuildContext context) {
    final theme = ShadTheme.of(context);
    return ShadSheet(
      title: const Text('Test'),
      radius: BorderRadius.vertical(top:Radius.circular(10.0)),
      removeBorderRadiusWhenTiny: false,
      constraints: null,
      description: const Text(
          "Lorem ipsum"),
      child: Padding(
        padding: const EdgeInsets.symmetric(vertical: 20),
        child: Column(
          mainAxisSize: MainAxisSize.min,
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            Text(word)
          ]
        ),
      ),
      actions: const [
        ShadButton(child: Text('Save changes')),
      ],
    );
  }
}
