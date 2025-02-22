// Exercício 02:
// Modifique a classe Pessoa do exercício anterior para que o atributo idade seja privado (_idade).
// Adicione um getter getIdade() para acessar o valor da idade e um setter setIdade(int novaIdade) para modificar a idade, garantindo que ela não seja negativa.
// Teste criando um objeto e alterando a idade com o setter.

void main(List<String> arguments) {
  Pessoa pessoa = Pessoa("Maísa", 16);
  pessoa.setIdade(17);
  pessoa.exibirDados();
}

class Pessoa {
  final String nome;
  int _idade;

  Pessoa(this.nome, this._idade);

  int getIdade() {
    return _idade;
  }

  void setIdade(int novaIdade) {
    if (novaIdade >= 0) {
      _idade = novaIdade;
    } else {
      print("Idade não pode ser negativa!");
    }
  }

  void exibirDados() {
    print("Nome: $nome | Idade: ${getIdade()}");
  }
}