import 'dart:async';

class LoginValidators {
  final validateEmail =
      StreamTransformer<String, String>.fromHandlers(handleData: (email, sink) {
    if (email.contains("@")) {
      sink.add(email);
    } else {
      sink.addError("Insira um e-mail válido");
    }
  });
  final validatePassword =
      StreamTransformer<String, String>.fromHandlers(handleData: (pass, sink) {
    if (pass.length > 4) {
      sink.add(pass);
    } else {
      sink.addError("Senha inválida, deve conter no minimo 4 caracteres.");
    }
  });
}
