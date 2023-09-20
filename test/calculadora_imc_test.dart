import 'package:calculadora_imc/functions/functions.dart';
import 'package:test/test.dart';

void main() {
  test('calculate', () {
    expect(calcularImc(1.5, 60), equals(26.7));
  });
}
