import 'dart:convert';
import 'dart:io';

import 'package:calculadora_imc/classes/pessoa_a.dart';

double calcularImc(double altura, double peso) {
  var imc = (peso / (altura * altura));
  imc = double.parse(imc.toStringAsFixed(1));
  return imc;
}

String lerConsole() {
  var line = stdin.readLineSync(encoding: utf8);
  return line ?? "";
}

Pessoa obterDadosDoUsuario() {
  String nome;
  double altura;
  double peso;
  print("Digite as seguintes informações:");
  stdout.write('Digite o nome: ');
  nome = lerConsole();

  stdout.write('Digite o peso (em kg): ');
  peso = double.parse(lerConsole());
  peso = double.parse(peso.toStringAsFixed(2));

  stdout.write('Digite a altura (em metros): ');
  altura = double.parse(lerConsole());
  altura = double.parse(altura.toStringAsFixed(2));

  return Pessoa(nome, altura, peso);
}

String classificarImc(double imc) {
  if (imc < 16) return "Magreza grave";
  if (imc < 17) return "Magreza moderada";
  if (imc < 18.5) return "Magreza leve";
  if (imc < 25) return "Saudável";
  if (imc < 30) return "Sobrepeso";
  if (imc < 35) return "Obesidade grau I";
  if (imc < 40) return "Obesidade grau II";
  if (imc >= 40) {
    return "Obesidade grau III";
  } else {
    return "IMC Inválido";
  }
}
