void main() {

  // Declaração das variáveis exigidas
  String codigoArea = 'SP280-KM120';
  String rodovia = 'SP-280';
  String localizacao = 'Sorocaba / SP';
  String sensorId = 'SENSOR-01';

  // 1. Imprime uma ficha completa com interporlação
  print('======= FICHA COMPLETA DA ÁREA =======');
  print( 'Código da área: $codigoArea.' );
  print( 'Rodovia: $rodovia.' );
  print( 'Localização: $localizacao.' );
  print( 'ID do Sensor: $sensorId.' );
  print('======================================\n');

  // 2. Mostra o código da área em maiúsculas
  print('Código da área tudo em maiúsculo: ${codigoArea.toUpperCase()}.');
  
  // 3. Mostra a quantidade de caracteres do sensorId
  print('O sensorId tem ${sensorId.length} caracteres.');
  
  // 4. Verifica se a rodovia contém "-" e impreme true ou false
  print('A rodovia contém hífen? ${rodovia.contains('-')}');
}