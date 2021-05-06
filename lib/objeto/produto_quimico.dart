//import 'dart:io';

class ProdutoQuimico {
  List<String> _nome = ['Produto A', 'Produto B', 'Produto C'];
  List<double> _qtd = [5, 5.5, 10];
  List<bool> _ativo = [true, false, true];
  int _tamanho = 3;

  setProdutoQtd(int i, double nQtd) {
    _qtd[i] += nQtd;
    print(_qtd[i]);
  }

  //set nQtd(double qtd) {}

  setSubProdutoQtd(int i, double nQtd) {
    _qtd[i] -= nQtd;
  }

  setProdutoAtivo(int i, bool a) {
    _ativo[i] = a;
    print(_ativo[i]);
  }

  nome(int i) {
    return _nome[i];
  }

  qtd(int i) {
    return _qtd[i];
  }

  ativo(int i) {
    return _ativo[i];
  }

  tamanho() {
    return _tamanho;
  }

  void adicionarItem(String prod) {
    _nome.add(prod);
    _qtd.add(0.0);
    _ativo.add(false);
    _tamanho++;
    /*for (int e = 0; e < tamanho; e++) {
      print(_nome[e]);
    }*/
    print(_tamanho);
    print(prod);
  }
}
