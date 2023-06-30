import 'dart:math';

void main() {
  final aleatorio = Random();

  try {
    final retangulo =
        Retangulo(aleatorio.nextDouble() * 99, aleatorio.nextDouble() * 99);

    final double area = retangulo.calcularArea();
    print("Area do Retângulo: ${area.toStringAsFixed(2)}");
  } on Exception catch (e) {
    print(e);
  }
}

abstract class Forma {
  double calcularArea();
}

class Retangulo implements Forma {
  Retangulo(this.base, this.altura) {
    if (base <= 0 || altura <= 0) {
      throw Exception(
          "Dimensoes invalidas, informe apenas valores positivos maiores que zero");
    }
  }

  final double base;
  final double altura;

  @override
  double calcularArea() {
    return base * altura;
  }
}
