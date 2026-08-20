void main() {
    // 1. Criando uma List<String> com status
    List<String> status = ['NORMAL', 'ATENCAO', 'URGENTE'];

    // 2. Criando uma Lista<double> com pelo menos 4 densidades
    List<double> densidades = [0.42, 0.71, 0.91, 0.55];

    // 3. Percorra a lista de status e imprima uma mensagem para cadaitem
    for (final item in status) {
        print('Status do sistema: $item');
    }

    // 4. Adicione uma nova densidade
    densidades.add(0.63);

    // 5. Filtre e imprima apenas densidades >= 0.70
    List<double> altas = densidades.where((d) => d >= 0.70).toList();
    print('Densidades altas $altas');

    // 6. Imprima a quantidade total de densidades
    print('Quantidade total de densidades: ${densidades.length}');
}