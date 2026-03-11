import 'dart:io';
import 'Questão1.dart'; 

void main() {
  
  print("Digite o nome do produto:");
  String nome = stdin.readLineSync() ?? "Produto";

  print("Digite o preço:");
  double preco = double.parse(stdin.readLineSync() ?? "0");

  print("Digite a quantidade:");
  int estoque = int.parse(stdin.readLineSync() ?? "0");

  bool disponivel = estoque > 0; 

  
  print("\nDados do Produto: $nome, Preço: $preco, Estoque: $estoque, Disponível: $disponivel");


  double imposto = 0.10; 
  double valorTotalEstoque = preco * estoque;
  double precoFinal = preco + (preco * imposto);

  bool testeLogico = (estoque > 0) && (preco < 100);

  print("Valor Total em Estoque: R\$ $valorTotalEstoque");
  print("Preço Final com Imposto: R\$ $precoFinal");
  print("Temos o produto custando menos que 100 reais: $testeLogico");



  exibirDetalhes(nome, preco: preco, desconto: 5.0); 
}