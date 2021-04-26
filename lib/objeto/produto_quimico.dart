class ProdutoQuimico {
  List<String> nome = [
    'Produto A',
    'Produto B',
    'Produto C',
    'Produto D',
    'Produto E',
  ];
  List<double> qtd = [10.00, 5.00, 7.00, 9.00, 15.00];
  List<bool> ativo = [true, false, true, false, false];
  int tamanho = 5;

  void adicionarItem(String prod, double qtdProd) {
    nome.add(prod);
    qtd.add(qtdProd);
    ativo.add(false);
    tamanho++;
  }
}
