// Exercício 01:
// Crie uma classe chamada Pessoa com os atributos:
// nome (String)
// idade (int)
// Crie um construtor para inicializar esses atributos e um método chamado exibirDados() que imprime o nome e a idade da pessoa.
// Teste criando um objeto da classe Pessoa e chamando o método exibirDados().

void main(List<String> arguments) {
  Pessoa pessoa = Pessoa("Maísa", 17);
  pessoa.exibirDados();
}

class Pessoa {
  final String nome;
  final int idade;

  Pessoa(this.nome, this.idade);

  void exibirDados() {
    print("Nome: $nome | Idade: $idade");
  }
}