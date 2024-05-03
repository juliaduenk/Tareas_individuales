function longitudCorta(lista) {
    let minLong = lista[0].length;

    for (let i = 1; i < lista.length; i++) {
        if (lista[i].length < minLong) {
            minLong = lista[i].length;
        }
    }
    return minLong;
}

let listas = [["love", "jade", "tell", "to"], ["hello", "world", "I", "am", "here"], ["this", "is", "a", "test"]]; 
listas.forEach(lista => {
    let minLong = longitudCorta(lista);
    console.log(`The shortest word in the list ${lista} has a length of: ${minLong}`);
});
