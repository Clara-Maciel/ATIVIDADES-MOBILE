import "questao4-5.dart";

void main (){
 
 var user1 = Usuario(login: "maria", senha: "123");
 var user2 = Usuario(login: "joao", senha: "abcdef");
 var user3 = Usuario.convidado(); // dá questao 5
 
 user1.Info();
 user2.Info();
 user3.Info(); // dá questao 5
}