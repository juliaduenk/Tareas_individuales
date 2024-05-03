<<<<<<< HEAD

function bubbleSort(lista) {
    let longitud = lista.length;
    let intercambiado;

    do {
        intercambiado = false;
        
        for (let i = 0; i < longitud; i++) {
            if (lista[i] > lista[i + 1]) {
                let temp = lista[i];
                lista[i] = lista[i + 1];
                lista[i + 1] = temp;
                intercambiado = true;
            }
        }

    } while (intercambiado);
    return lista;
}


let lista = [7,4,2,9,5];
let listaOrdenada = bubbleSort(lista);
console.log(listaOrdenada);  
=======

function bubbleSort(lista) {
    let longitud = lista.length;
    let icambiado;

    do {
        icambiado = false;
        
        for (let i = 0; i < longitud; i++) {
            if (lista[i] > lista[i + 1]) {
                let temp = lista[i];
                lista[i] = lista[i + 1];
                lista[i + 1] = temp;
                icambiado = true;
            }
        }

    } while (intercambiado);
    return lista;
}


let lista = [7,4,2,9,5];
let listaOrdenada = bubbleSort(lista);
console.log(listaOrdenada);  
>>>>>>> f07fa0c7f7bc2cca88fba5b76879b81c61229163
