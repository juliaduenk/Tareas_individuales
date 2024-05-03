function midYModa(lista) {
    lista.sort((a, b) => a - b);

    let mediana = (lista[(lista.length - 1) >> 1] + lista[lista.length >> 1]) / 2;

    let moda = lista.reduce((a, b, i, arr) => (arr.filter(v => v === a).length >= arr.filter(v => v === b).length ? a : b), null);
    return {mediana, moda};
}

let listas = [[1, 2, 2, 3, 4], [5, 6, 7, 7, 8, 9], [10, 11, 11, 12, 13, 14, 15]];
listas.forEach(lista => {
    let estadisticas = midYModa(lista);
    console.log(`The median and mode of the list ${lista} are: ${JSON.stringify(estadisticas)}`);
});

