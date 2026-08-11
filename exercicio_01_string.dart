void main() {
String codigoArea = 'SP280-KM120';
String rodovia = 'SP-280';
String localizacao = 'Sorocaba / SP';
String sensorId = 'SENSOR-01';

// São nomes aleatórios, fiap em minúsculo pois tem um exercício sobre isso.


print( 'Código da área: $codigoArea'. );
print( 'Rodovia: $rodovia'. );
print( 'Localização: $localizacao'. );
print( 'sensorId: $sensorId'. );

print('Código da área tudo em maiúsculo: ${codigoArea.toUpperCase()}.');

print('O sensorId tem ${sensorId.length} caracteres.');

print('A rodovia contém hífen? ${rodovia.contains('-')}');
}