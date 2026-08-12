void main() {

  // Declaração das variáveis exigidas
  int idArea = 3;
  int idMedicao = 104;
  int totalMedicoes = 45;
  int sensoresAtivos = 4;
  int alertasAbertos = 3; // Se quiser alterar para testar a operação.


  // 1. Soma de idArea + idMedicao
  int somaIds = idArea + idMedicao;
  print('Soma dos IDs (Área + Medicao): $somaIds');


  // 2. Próximo ID de medicao
  int proximoIdM = idMedicao + 1;
  print('Próximo ID de medição: $proximoIdM');

  // 3. Validação de alertasAbertos
  if (alertasAbertos >= 3) {
    print('Status do Sistema: Operação crítica.');
  } else {
    print('Status do sistema: Operação estável.');
  }

  
  // 4. O dobro de sensoresAtivos
  int dobroSensores = sensoresAtivos * 2;
  print('O dobro de sensores ativos: $dobroSensores');
}