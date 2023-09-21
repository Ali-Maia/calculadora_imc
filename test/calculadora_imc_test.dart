import 'package:calculadora_imc/functions/functions.dart';
import 'package:test/test.dart';

void main() {
group("Calcula o valor do IMC: ", () {
    var valuesToTest = {
      {'altura': 1.6, 'peso': 80}: 31.2,
      {'altura': 1.9, 'peso': 90}: 24.9,
    };
    valuesToTest.forEach((values, expected) {
      test('$values: $expected', () {
        expect(
            calcularImc(double.parse(values['altura'].toString()),
                double.parse(values['peso'].toString())),
            equals(expected));
      });
    });
  });
  group("Calcula o valor do IMC informando valores zerados: ", () {
    var valuesToTest = {
      {'altura': 0, 'peso': 80}: 0,
      {'altura': 1.6, 'peso': 0}: 0,
    };
    valuesToTest.forEach((values, expected) {
      test('$values: $expected', () {
        expect(
            calcularImc(double.parse(values['altura'].toString()),
                double.parse(values['peso'].toString())),
            equals(expected));
      });
    });
  });
}

