function ordenDesc(lista) {
    return lista.sort((a, b) => b - a);
}

let listas = [[5, 3, 8, 4, 6], [2, 9, 1, 7, 8], [10, 15, 12, 14, 13]]; 


listas.forEach(lista => {
    let listaOrden = ordenDesc(lista);
    console.log(`The sorted list in descending order is: ${listaOrden}`);
});
