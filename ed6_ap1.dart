void main() {
  converteStr("256");
  converteStr('25G');
}

void converteStr(String string) {
  try {
    final inteiro = int.parse(string);
    print("Numero: $inteiro");
  } catch (e) {
    print("Entrada inválida, insira apenas numeros inteiros.");
  }
}
