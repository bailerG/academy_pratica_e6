void main() {
  try {
    final arquivo = ArquivoTexto("aby.txt");
    arquivo.abrir();
  } catch (e) {
    print(e);
  } finally {
    print("Fim do programa.");
  }
}

abstract class Arquivo {
  void abrir();
}

class ArquivoTexto implements Arquivo {
  ArquivoTexto(this.nome) {
    if (nome.contains('y')) {
      throw Exception("Entrada invalida. Digite um nome valido.");
    }
  }

  final String nome;

  @override
  void abrir() {
    try {
      !nome.contains('.')
          ? print("Arquivo aberto com sucesso")
          : throw Exception("Erro ao abrir o arquivo $nome");
    } catch (e) {
      rethrow;
    }
  }
}
