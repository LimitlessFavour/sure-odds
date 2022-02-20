import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher.dart';

import 'custom_icon_button.dart';

class SupportButton extends StatelessWidget {
  const SupportButton({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Center(
      child: CustomIconButton(
        iconData: Icons.mail_outline,
        onPressed: _sendMail,
      ),
    );
  }

  void _sendMail() async {
    const url = 'mailto:sureoddsofficial@gmail.com?subject=Contact SureOdds';
    if (await canLaunch(url)) {
      await launch(url);
    }
  }
}
