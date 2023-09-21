import 'dart:convert';
import 'dart:io';

import 'package:calculadora_imc/classes/pessoa_a.dart';
import 'package:calculadora_imc/exception/nome_invalido_exception.dart';
import 'package:calculadora_imc/functions/console_utils.dart';

double calcularImc(double altura, double peso) {
  if ((altura <= 0) || (peso <= 0)) {
    return 0;
  } else {
    var imc = (peso / (altura * altura));
    imc = double.parse(imc.toStringAsFixed(1));
    return imc.isNaN ? 0 : imc;
  }
}

String lerConsole() {
  var line = stdin.readLineSync(encoding: utf8);
  return line ?? "";
}

Pessoa obterDadosDoUsuario() {
  String nome;
  double? altura;
  double? peso;
  print("Digite as seguintes informações:");
  nome = ConsoleUtils.lerStringComTexto("Digite o nome: ");
  try {
    if (nome.trim() == "") {
      throw NomeInvalidoException();
    }
  } on NomeInvalidoException {
    nome = "Nome Padrão";
    print(NomeInvalidoException);
  }

  peso = ConsoleUtils.lerDoubleComTexto("Digite o peso (em kg): ");
  peso = double.parse(peso!.toStringAsFixed(2));

  altura = ConsoleUtils.lerDoubleComTexto("Digite a altura (em metros): ");
  altura = double.parse(altura!.toStringAsFixed(2));

  return Pessoa(nome, altura, peso);
}

String classificarImc(double imc) {
  if ((imc > 1) & (imc < 16)) return "Magreza grave";
  if ((imc >= 16) & (imc < 17)) return "Magreza moderada";
  if ((imc >= 17) & (imc < 18.5)) return "Magreza leve";
  if ((imc >= 18.5) & (imc < 25)) return "Saudável";
  if ((imc >= 25) & (imc < 30)) return "Sobrepeso";
  if ((imc >= 30) & (imc < 35)) return "Obesidade grau I";
  if ((imc >= 35) & (imc < 40)) return "Obesidade grau II";
  if (imc >= 40) {
    return "Obesidade grau III";
  } else {
    return "IMC Inválido";
  }
}
