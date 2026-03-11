class Usuario {
  String? login;
  String? senha;

  Usuario({this.login, this.senha});


Usuario.convidado(){ // dá questao 5 
  login = "Guest";
  senha = "123456";
}

  Info() {
    print("Login: $login, Senha: $senha");
  }
}