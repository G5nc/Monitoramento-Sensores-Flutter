void main() {
  // Declarando três densidades de forma isolada.
  double d1 = 0.42;
  double d2 = 0.71;
  double d3 = 0.91;

  double temperatura = 28.4;
  double umidade = 62.0;

  // 1. Soma das densidades
  double soma = d1 + d2 + d3;
  print('Soma das densidades: ${soma.toStringAsFixed(2)}');

  // 2. Média das densidades dividida por 3
  double media = (d1 + d2 + d3) / 3;
  print('Média das densidades: ${media.toStringAsFixed(2)}');

  // 3. Se densidade (d3) for >= 0.90, imprime o aviso
  if (d3 >= 0.90) {
    print('Aviso de urgência');
  }
}