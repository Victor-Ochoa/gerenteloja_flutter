import 'package:flutter/material.dart';
import 'package:gerenteloja/widgets/input_field.dart';

class LoginScreen extends StatefulWidget {
  @override
  _LoginScreenState createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Theme.of(context).backgroundColor,
      body: Stack(
        alignment: Alignment.center,
        children: <Widget>[
          Container(),
          SingleChildScrollView(
            child: Container(
              margin: const EdgeInsets.all(16),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.stretch,
                children: <Widget>[
                  Icon(
                    Icons.store_mall_directory,
                    size: 160,
                    color: Theme.of(context).primaryColor,
                  ),
                  Divider(
                    color: Colors.transparent,
                    height: 30,
                  ),
                  InputField(
                      icon: Icons.person,
                      hintText: "Usuário",
                      keyboard: TextInputType.emailAddress),
                  Divider(
                    color: Colors.transparent,
                    height: 30,
                  ),
                  InputField(
                      icon: Icons.lock,
                      hintText: "Senha",
                      keyboard: TextInputType.text,
                      isPassword: true),
                  Divider(
                    color: Colors.transparent,
                    height: 30,
                  ),
                  SizedBox(
                    height: 60,
                    child: RaisedButton(
                      onPressed: () {},
                      child: Text(
                        "Entrar",
                        style: TextStyle(color: Colors.white, fontSize: 20),
                      ),
                    ),
                  )
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
