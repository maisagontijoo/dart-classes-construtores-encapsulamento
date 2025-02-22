// Exercício 08:
// Crie uma classe Cadastro que armazena objetos da classe Pessoa em uma lista.
// Adicione métodos para:
// adicionarPessoa(Pessoa p): Adiciona uma nova pessoa à lista.
// listarPessoas(): Exibe todas as pessoas cadastradas.
// No programa principal, crie um menu interativo que permite ao usuário adicionar e listar pessoas.

import 'dart:io';
void main(List<String> arguments) {
  Cadastro cadastro = Cadastro();
  String opcao = "";

  while (opcao != "3") {
    print("\n1. Adicionar Pessoa");
    print("2. Listar Pessoas");
    print("3. Sair");

    opcao = stdin.readLineSync()!;

    if (opcao == "1") {
      print("Digite o nome:");
      String nome = stdin.readLineSync()!;
      print("Digite a idade:");
      String idadeStr = stdin.readLineSync()!;
      int idade = int.tryParse(idadeStr)!;

      Pessoa pessoa = Pessoa(nome, idade);
      cadastro.adicionarPessoa(pessoa);
      print("Pessoa adicionada com sucesso!");
    } else if (opcao == "2") {
      cadastro.listarPessoas();
    } else if (opcao == "3") {
      print("------------------------------");
    } else {
      print("Opção inválida.");
    }
  }
}

class Pessoa {
  final String nome;
  final int idade;

  Pessoa(this.nome, this.idade);

  String toString() {
    return 'Nome: $nome | Idade: $idade';
  }
}

class Cadastro {
  List<Pessoa> pessoas = [];

  void adicionarPessoa(Pessoa p) {
    pessoas.add(p);
  }

  void listarPessoas() {
    if (pessoas == []) {
      print("Não há pessoas adicionadas.");
    } else {
      for (Pessoa pessoa in pessoas) {
        print(pessoa);
      }
    }
  }
}
