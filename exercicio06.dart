// Exercício 06:
// Crie uma classe Produto com os atributos:
// nome (String)
// _preco (privado, double)
// Crie dois construtores:
// Construtor principal que recebe os valores de nome e _preco.
// Construtor nomeado Produto.desconto() que recebe um nome, um preço original e um valor de desconto a ser aplicado.
// Crie objetos usando ambos os construtores e exiba os preços.

void main(List<String> arguments) {
  Produto produto1 = Produto("Água", 2.0);
  produto1.exibirPreco();

  Produto produto2 = Produto.desconto("Refrigerante", 5, 5);
  produto2.exibirPreco();
}

class Produto {
  final String nome;
  final double _preco;

  Produto(this.nome, this._preco);

  void exibirPreco() {
    print('Produto: $nome | Preço: R\$ $_preco');
  }

  Produto.desconto(this.nome, double precoOriginal, double desconto)
    : _preco = precoOriginal - ((precoOriginal * desconto) / 100);
}
