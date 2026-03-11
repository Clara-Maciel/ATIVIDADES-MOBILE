
void exibirDetalhes(String nome, {required double preco, double desconto = 0}) {
  double precoComDesconto = preco - desconto;
  
  print("--- Detalhes Formatados ---");
  print("Produto: $nome");
  print("Preço Original: R\$ $preco");
  print("Desconto: R\$ $desconto");
  print("Preço com Desconto: R\$ $precoComDesconto");
  print("--------------------------");
}