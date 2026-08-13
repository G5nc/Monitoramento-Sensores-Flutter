void main() {
  // 1. Uso do tipo genérico num
  num leitura = 12;
  print(leitura);

  leitura = 14.85; // Permitido mudar de inteiro para decimal
  print(leitura);

  // 2. Uso de Null Safety com "?"
  String? tipoVegetacao;
  // 3.
  double? inclinacaoTerreno;

  // 4. Uso do operador "??" para escolher valor padrão
  String tipoExibicao = tipoVegetacao ?? 'Tipo não informado';
  print(tipoExibicao);

  // 5. Verificação de nulo com if
  if (inclinacaoTerreno != null) {
    print('Inclinação: ${inclinacaoTerreno.toStringAsFixed(1)}°');
  } else {
    print('Inclinação não informada.');
  }
}