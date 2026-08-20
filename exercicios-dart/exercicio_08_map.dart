void main() {
  // Criando um Map<String, dynamic> chamado medicao
  Map<String, dynamic> medicao = {
    'id': 1,
    'areaCodigo': 'SP280-KM120',
    'alturaVegetacao': 1.85,
    'densidade': 0.71,
    'temperatura': 28.4,
    'umidade': 62.0, 
    'sensorId': null,
  };

  // 1. Imprimindo código da área, densidade e temperatura
  print('Área: ${medicao['areaCodigo']}');
  print('Densidade: ${medicao['densidade']}');
  print('Temperatura: ${medicao['temperatura']} °C');

  // 2. Atualizando sensorId para um indentificador válido
  medicao['sensorId'] = 'SENSOR-07';

  // 3. Atualizando densidade para um novo valor
  medicao['densidade'] = 0.85;

  // 4. Percorrendo o map com forEach imprimindo chave e valor
  print('\n--- Relatório Completo da Medição ---');
  medicao.forEach((chave, valor) {
    print('$chave: $valor');
  });
}