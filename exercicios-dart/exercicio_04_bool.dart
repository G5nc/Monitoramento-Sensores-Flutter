void main() {
  // Variáveis lógicas
  bool areaAtiva = true;
  bool coletaHabilitada = false;
  bool sensorOnline = true;
  bool intervencaoNecessaria = true;

  // 1. Condição usando o operador E (&&)
  if (areaAtiva && coletaHabilitada && sensorOnline) {
    print('Pode simular coleta de sensores.');
  } else {
    print('Coleta bloqueada para esta área.');
  }

  // 2. Condição do sensor offline usando o operador de negação (!)
  if (!sensorOnline) {
    print('Antenção: sensor offline - verifica IoT.');
  }

  // 3. Verificando se a intervenção é necessária
  if (intervencaoNecessaria) {
    print('Alerta: Enviar equipe de campo.');
  }
}