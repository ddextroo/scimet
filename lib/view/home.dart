import 'package:flutter/material.dart';
import 'package:shadcn_ui/shadcn_ui.dart';

class Home extends StatefulWidget {
  const Home({super.key});

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {
  final List<String> items = List<String>.generate(100, (i) => "Item $i");

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          leading: IconButton(
            icon: const Icon(
              Icons.menu,
              size: 20,
            ),
            onPressed: () {},
          ),
          actions: [
            IconButton(
                onPressed: () {
                  showShadDialog(
                    context: context,
                    builder: (context) => ShadDialog(
                      title: const Text(
                        'Select language',
                        style: TextStyle(fontWeight: FontWeight.w500),
                      ),
                      actions: [
                        ShadButton.outline(
                          text: const Text('Cebuano'),
                          onPressed: () => Navigator.of(context).pop(false),
                        ),
                        ShadButton(
                          text: const Text('Tagalog'),
                          onPressed: () => Navigator.of(context).pop(true),
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
                content: Row(
                  children: [
                    Image.asset(
                      "assets/images/home_welcome.png",
                      width: 100,
                    ),
                    const SizedBox(width: 10),
                    const Expanded(
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            "Welcome to SCI-MET",
                            style: TextStyle(
                                fontWeight: FontWeight.w500, fontSize: 14),
                          ),
                          SizedBox(height: 10),
                          Text(
                            "Explore exciting science topics from plants and animals to weather and species.",
                            softWrap: true,
                            overflow: TextOverflow.visible,
                            style: TextStyle(
                                fontSize: 12,
                                fontWeight: FontWeight.normal,
                                color: Color(0xFF6b7280)),
                          )
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
                child: ListView.builder(itemBuilder: (context, index) {
                  return Padding(
                    padding: const EdgeInsets.symmetric(vertical: 10.0),
                    child: InkWell(
                      onTap: () {
                        print("testttt");
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
                                      "Biology",
                                      textAlign: TextAlign.left,
                                    ),
                                    const SizedBox(
                                      height: 5.0,
                                    ),
                                    Text(
                                      "2 module(s)",
                                      style: TextStyle(
                                          color: Color(0xFF6b7280),
                                          fontSize: 12),
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
              )
            ],
          ),
        ));
  }
}
