import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import '../../../../../../../../main.dart';
import '_/state_child.dart';
import '_/state_mother.dart';

class NewView extends StatefulWidget {
  NewView({
    super.key,
    required this.title,
    this.okText = 'OK',
    required this.tapOkButton,
  });

  final String title;
  final String okText;
  final VoidCallback tapOkButton;

  @override
  State<NewView> createState() => StateChild();
}

class NewViewState extends State<NewView> with StateMother {
  @override
  Widget build(BuildContext context) {
    return Container(
      constraints: BoxConstraints(maxWidth: 300), // maximum width
      child: Column(
        mainAxisSize: MainAxisSize.min,
        children: [
          Gap(15),
          Text("Title")
              .textStyle(Theme.of(context).textTheme.titleLarge!)
              .fontWeight(FontWeight.bold),
          Gap(20),
          Container()
              .height(1)
              .width(double.infinity)
              .backgroundColor(Colors.grey.withOpacity(0.4)),
          Container(
            child: Text("OK")
                .textStyle(Theme.of(context).textTheme.bodyLarge!)
                .textColor(Colors.blue.shade700)
                .fontWeight(FontWeight.bold)
                .center(),
          )
              .paddingDirectional(vertical: 14)
              .width(double.infinity)
              .backgroundColor(Colors.transparent)
              .gestures(onTap: () {
            widget.tapOkButton();
          }),
        ],
      ),
    );
  }
}

main() async {
  return buildApp(
      appHome: NewView(
    title: 'Title',
    tapOkButton: () {
      print('OK');
    },
  ).center());
}
