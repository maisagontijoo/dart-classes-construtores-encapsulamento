// Exercício 04:
// Crie uma classe ContaBancaria com os atributos:
// titular (String)
// _saldo (privado, double)
// Crie um construtor para inicializar titular e _saldo.
// Crie métodos para:
// depositar(double valor): Adiciona um valor ao saldo.
// sacar(double valor): Reduz o saldo, mas impede saque se não houver saldo suficiente.
// getSaldo(): Retorna o saldo atual.
// Teste criando uma conta, depositando, sacando e exibindo o saldo.

void main(List<String> arguments) {
  ContaBancaria conta = ContaBancaria("Sabrina Carpenter", 1000.0);

  print("Titular da conta: ${conta.titular} | Saldo inicial: R\$ ${conta.getSaldo()}");
  conta.depositar(500.0);
  conta.sacar(200.0);
  conta.sacar(2000.0);
}


class ContaBancaria {
  final String titular;
  double _saldo;

  ContaBancaria(this.titular, this._saldo);

  double getSaldo() {
    return _saldo;
  }

  void depositar(double valor) {
    if (valor > 0) {
      _saldo += valor;
      print("Depósito de R\$ $valor realizado com sucesso!");
      print("Saldo: R\$ $_saldo");
    } else {
      print("Valor inválido!");
    }
  }

  void sacar(double valor) {
    if (valor > 0 && valor <= _saldo) {
      _saldo -= valor;
      print("Saque de R\$ $valor realizado com sucesso!");
      print("Saldo: R\$ $_saldo");
    } else if (valor > _saldo) {
      print("Saldo insuficiente para o saque.");
      print("Saldo: R\$ $_saldo");
    } else {
      print("Valor inválido!");
    }
  }
}