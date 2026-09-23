enum StatusVegetacao { normal, atencao, urgente }

class AreaMonitoramento {
  final int id;
  final String codigo;
  final String rodovia;
  final double kmInicial;
  final double kmFinal;
  final String localizacao;
  final StatusVegetacao status;
  final String tipoTerreno;
  final double? densidade;
  final double? alturaMedia;
  final int totalMedicoes;

  const AreaMonitoramento({
    required this.id,
    required this.codigo,
    required this.rodovia,
    required this.kmInicial,
    required this.kmFinal,
    required this.localizacao,
    required this.status,
    required this.tipoTerreno,
    this.densidade,
    this.alturaMedia,
    this.totalMedicoes = 0,
  });

  String get statusLabel {
    switch (status) {
      case StatusVegetacao.normal:
        return 'Normal';
      case StatusVegetacao.atencao:
        return 'Atenção';
      case StatusVegetacao.urgente:
        return 'Urgente';
    }
  } // Fechamento do método statusLabel

  // CORRIGIDO: O factory agora está DENTRO da classe AreaMonitoramento
  factory AreaMonitoramento.fromJson(Map<String, dynamic> json) {
    return AreaMonitoramento(
      id: json['id'] as int,
      codigo: json['codigo'] as String,
      rodovia: json['rodovia'] as String,
      kmInicial: (json['kmInicial'] as num).toDouble(),
      kmFinal: (json['kmFinal'] as num).toDouble(),
      localizacao: json['localizacao'] as String,
      status: StatusVegetacao.values.byName(
        (json['status'] as String).toLowerCase(),
      ),
      tipoTerreno: json['tipoTerreno'] as String,
      densidade: (json['densidade'] as num?)?.toDouble(),
      alturaMedia: (json['alturaMedia'] as num?)?.toDouble(),
      totalMedicoes: (json['totalMedicoes'] as int?) ?? 0,
    );
  }
} // Fechamento definitivo da classe AreaMonitoramento
