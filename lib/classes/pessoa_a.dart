import 'package:calculadora_imc/functions/functions.dart';

class Pessoa {
  String _nome = "";
  double _altura = 0.0;
  double _peso = 0.0;

  void setNome(String nome) {
    _nome = nome;
  }

  String getNome() {
    return _nome;
  }

  void setAltura(double altura) {
    _altura = altura;
  }

  double getAltura() {
    return _altura;
  }

  void setPeso(double peso) {
    _peso = peso;
  }

  double getPeso() {
    return _peso;
  }

  Pessoa(String nome, double altura, double peso) {
    _nome = nome;
    _altura = altura;
    _peso = peso;
  }

  String exibirInformacoes() {
    String nome = getNome();
    double peso = getPeso();
    double altura = getAltura();
    double imc = calcularImc(altura, peso);
    String classeImc = classificarImc(imc);
    print("-----------------------------");
    print("Informações sobre a pessoa:");
    print("-----------------------------");
    String informacoes =
        "Nome: $nome\nPeso: $peso\nAltura: $altura\nIMC: $imc\nClassificação: $classeImc";
    return informacoes;
  }
}
