// Exercício07:
// Crie uma classe Funcionario com os atributos:
// nome (String)
// _salario (privado, double)
// Crie um getter para o salário.
// Adicione um método aumentarSalario(double percentual) que aumenta o salário em uma porcentagem.
// Crie um objeto, aumente o salário e exiba o novo valor.

void main(List<String> arguments) {
  Funcionario funcionario = Funcionario("Chappell Roan", 2500.0);

  print("Salário inicial de ${funcionario.nome}: R\$ ${funcionario.getSalario()}");

  funcionario.aumentarSalario(10.0);
 
  print("Novo salário de ${funcionario.nome}: R\$ ${funcionario.getSalario()}");
}

class Funcionario {
  final String nome;
  double _salario;

  Funcionario(this.nome, this._salario);

  double getSalario() {
    return _salario;
  }

  void aumentarSalario(double percentual) {
    _salario += (percentual / 100) * _salario;
  }
}
