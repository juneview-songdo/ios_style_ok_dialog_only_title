import 'package:flutter/material.dart';

import '../../../../../../../../../../main.dart';
import '_/view.dart';

void NewDialog(BuildContext context,
    {required String title,
    String? okText,
    required VoidCallback tapOkButton}) async {
  showDialog(
      context: context,
      barrierDismissible: true,
      // dialog is dismissible with a tap on the barrier
      barrierColor: Colors.black.withOpacity(0.2),
      // screen color outside the dialog
      builder: (BuildContext context) {
        return Dialog(
          backgroundColor: Colors.white, // dialog background color
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(20.0),
          ),
          child: NewView(
            title: title,
            okText: okText ?? 'OK',
            tapOkButton: tapOkButton,
          ),
        );
      });
}
