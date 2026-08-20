//Criando o enum StatusVegetacao
enum StatusVegetacao { normal, atencao, urgente }

void main() {
  // 2. Criando uma data para uma coleta
  DateTime dataColeta = DateTime(2026, 8, 6, 15, 30);

  // 3. Criando um Record nomeado
  ({String codigo, String rodovia, double densidade}) leitura = (
    codigo: 'SP280-KM120', 
    rodovia: 'SP-280', 
    densidade: 0.71,
    );

    // 4. Imprimindo as informações solicitadas
    print('Data da coleta: ${dataColeta.day}/${dataColeta.month}/${dataColeta.year}');

    StatusVegetacao status = StatusVegetacao.atencao; // Começa em atencao
    print('Status atual: ${status.name}');

    print('Dados do Record -> Código: ${leitura.codigo}, Rodovia: ${leitura.rodovia}, Densidade: ${leitura.densidade}');

    // 5. Mudando o status para urgente e imprimindo novamente
    status = StatusVegetacao.urgente;
    print('Novo status atualizado: ${status.name}');

    // 6. Some 7 dias à data e imprimindo a data da próxima inspeção
    DateTime proximaInspecao = dataColeta.add(const Duration(days: 7));
    print('Próxima inspeção sugerida: ${proximaInspecao.day}/${proximaInspecao.month}/${proximaInspecao.year}');
}