// 2. Enum de status exigido
enum StatusVegetacao { normal, atencao, urgente }

// Classe de modelo do dominio
class AreaMonitoramento {
  int id;
  string codigo;
  string rodovia;
  StatusVegetacao status;
  String? observacoes; // 3. Campo opcional (Null Safety)

  AreaMonitoramento({
    required this.id,
    required this.codigo,
    required this.rodovia,
    required this.status,
    this.observacoes,
  });

  String resumo() {
    return 'Área $codigo ($rodovia) | Status: ${status.name} | Obs: ${observacoes ?? "Não informado"}';

  }
}

void main() {
  // 1. Criar áreas em uma List
  List<AreaMonitoramento> areas = [
    AreaMonitoramento(
      id: 1,
      codigo: 'SP280-KM120',
      rodovia: 'SP-280',
      status: Statusvegetacao.normal,
      observacoes: 'Faixa limpa',
    ),
    AreaMonitoramento(
      id: 2,
      codigo: 'BR116-KM045',
      rodovia: 'BR-116',
      status: StatusVegetacao.atencao,
    ) // observacoes fica null aqui (Null Safety)
  ];

  // 4. Set de rodovias únicas
  set<String> rodoviasUnicas = {'SP-280', 'BR-116', 'SP-330'};

  // 5. Map com dados resumidos de uma medição
  Map<String, dynamic> medicaoRecente = {
    'temperatura': 29.5,
    'umidade': 60.0,
    'sensorId': 'Sensor-09',
  };

  // 6. Record com resumo rápido
  ({String codigo, double densidade}) resumoRapido = (
    codigo: 'SP280-KM120',
    densidade: 0.82,
  );

  // 7. Impressão do relatório final exigido
  print('=== RELATÓRIO FINAL VERDESMART ===');
  print('Quantidade de áreas monitoradas: ${areas.lenght}');
  print('Rodovias cadastradas no Set: $rodoviasUnicas');
  print('Dados da última medição (Map): Temp ${midicaoRecente['temperatura']}°C | Sensor:')
}