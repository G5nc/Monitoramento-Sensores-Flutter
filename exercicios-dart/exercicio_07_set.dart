void main() {
  // 1. Criando um Set<String> de rodovias
  Set<String> rodovias = {'SP-280', 'BR-116', 'SP-330'};

  // 2. Tentando adicionar SP-280 novamente (não duplica)
  rodovias.add('SP-280');

  // 3. Adicionando BR-101
  rodovias.add('BR-101');

  // 4. Imprimindo o conjunto final
  print('Rodovias cadastradas: $rodovias');

  // 5. Verificando se BR-116 existe com contains
  print('Contém BR-116? ${rodovias.contains('BR-116')}');

  // 6. Imprimindo a quantidade de rodovias únicas
  print('Total de rodovias únicas: ${rodovias.length}');
  }