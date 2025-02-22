// Exercício 03:
// Crie uma classe chamada Carro com os atributos:
// marca (String)
// modelo (String)
// _preco (privado, int)
// Crie um construtor para inicializar a classe.
// Adicione um getter getPreco() e um setter setPreco(int novoPreco), garantindo que o preço nunca seja negativo.
// Adicione um método exibirDetalhes() que imprime todas as informações do carro.
// Crie dois objetos de Carro, altere seus preços e exiba os detalhes.

void main(List<String> arguments) {
  Carro carro01 = Carro("Toyota", "Corolla 2025", 90000);
  carro01.setPreco(120000);
  carro01.exibirDetalhes();

  Carro carro02 = Carro("Fiat", "Fiat Toro 2024", 120000);
  carro02.setPreco(150000);
  carro02.exibirDetalhes();
}

class Carro {
  final String marca;
  final String modelo;
  int _preco;

  Carro(this.marca, this.modelo, this._preco);

  int getPreco() {
    return _preco;
  }

  void setPreco(int novoPreco) {
    if (novoPreco >= 0) {
      _preco = novoPreco;
    } else {
      print("Preço não pode ser negativo!");
    }
  }

  void exibirDetalhes() {
    print("Marca: $marca | Modelo: $modelo | Preço: R\$ ${getPreco()}");
  }
}