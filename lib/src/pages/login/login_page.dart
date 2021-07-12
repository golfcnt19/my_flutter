import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:my_flutter/src/pages/login/background_theme.dart';
import 'package:my_flutter/src/viewmodels/sso_viewmodel.dart';

class LoginPage extends StatelessWidget {
  const LoginPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          Container(
            decoration: BoxDecoration(
              gradient: BackgroundTheme.gradient,
            ),
          ),
          Column(
            children: [
              Image.network(
                'https://raw.githubusercontent.com/flutter/website/master/src/_assets/image/flutter-lockup-bg.jpg',
                height: 80,
              ),
              Text('form'),
              _buildTextButton(
                'forgot password',
                onPressed: () {
                  //todo
                },
              ),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 28),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: SSOViewModel()
                      .items
                      .map((e) => FloatingActionButton(
                    onPressed: e.onPress,
                    child: FaIcon(e.icon),
                    backgroundColor: e.backgroundColor,
                  ))
                      .toList(),
                ),
              ),
              _buildTextButton(
                'register',
                onPressed: () {
                  //todo
                  
                },
              ),
            ],
          ),
        ],
      ),
    );
  }

  TextButton _buildTextButton(String text, {VoidCallback? onPressed}) {
    return TextButton(
      onPressed: onPressed,
      child: Text(
        text,
        style: TextStyle(
          color: Colors.white,
          fontSize: 16,
          fontWeight: FontWeight.normal,
        ),
      ),
    );
  }
}