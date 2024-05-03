function Alfabetico(lista) {
    return lista.sort();
}

let listas = [["perro", "gato", "jiraffa", "zebra"], ["apple", "banana", "cherry", "date"], ["cat", "bat", "ant", "dog"]]; 

listas.forEach(lista => {
    let listaOrden = Alfabetico(lista);
    console.log(`The sorted list in alphabetical order is: ${listaOrden}`);
});
