void main() {
  try {
    verificaPar(5);
    print("Entrada correta, voce inseriu um numero par.");
  } on Exception catch (e) {
    print(e);
  }
}

void verificaPar(int num) {
  if (num.isOdd) {
    throw Exception("Entrada invalida. Insira apenas numeros pares.");
  }
}
