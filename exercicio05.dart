// Exercício 05:
// Crie uma classe chamada Aluno com os atributos:
// nome (String)
// _nota1 e _nota2 (privadas, double)
// Crie um construtor que recebe nome e as duas notas.
// Adicione um método calcularMedia() que retorna a média das notas.
// Crie um método verificarAprovacao() que retorna "Aprovado" se a média for maior ou igual a 7 e "Reprovado" caso contrário.
// Crie um objeto de Aluno, calcule sua média e exiba se foi aprovado ou reprovado.

void main(List<String> arguments) {
  Aluno aluno = Aluno("Rebecca", 7, 9);

  aluno.calcularMedia(aluno._nota1, aluno._nota2);
}


class Aluno {
  final String nome;
  final double _nota1;
  final double _nota2;

  Aluno(this.nome, this._nota1, this._nota2);

  double getNota1() {
    return _nota1;
  }

  double getNota2() {
    return _nota2;
  }

  void calcularMedia(double nota1, double nota2) {
    double media = (nota1 + nota2) / 2;
    print("Média: $media");
    verificarAprovacao(media);
  }

  void verificarAprovacao(double media){
    if (media >= 7) {
      print("$nome foi: Aprovado(a)!");
    } else {
      print("$nome foi: Reprovado(a)");
    }
  }
}