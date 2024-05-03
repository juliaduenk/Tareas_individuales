function MasFrec(lista) {
    let frec = {};
    let maxFrec = 0;
    let resultado;
    for(let valor of lista){
        if(frec[valor]){
            frec[valor]++;
        } else {
            frec[valor] = 1;
        }
        if(frec[valor] > maxFrec){
            maxFrec = frec[valor];
            resultado = valor;
        }
    }
    return resultado;
}

let listas = [["perro", "gato", "gato", "elefante"], ["apple", "banana", "apple", "orange", "banana", "banana"], ["red", "blue", "green", "red", "green", "green", "green"]]; 

listas.forEach(lista => {
    let masFrec = MasFrec(lista);
    console.log(`The most frequent item in the list ${lista} is: "${masFrec}"`);
});
