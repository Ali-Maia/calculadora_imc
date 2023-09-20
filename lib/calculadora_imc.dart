import 'package:calculadora_imc/functions/functions.dart';

void execute() {
  print("Bem vindo a calculadora de IMC!");
  var p1 = obterDadosDoUsuario();
  print(p1.exibirInformacoes());
}
