function invertirArregloInPlace(arreglo) {
    let longitud = arreglo.length;
    for (let i = 0; i < longitud / 2; i++) {
        let temp = arreglo[i];
        arreglo[i] = arreglo[longitud - 1 - i];
        arreglo[longitud - 1 - i] = temp;
    }
    return arreglo;
}

function invertirArreglo(arreglo) {
    let nuevoArreglo = [];
    for (let i = arreglo.length - 1; i >= 0; i--) {
        nuevoArreglo.push(arreglo[i]);
    }
    return nuevoArreglo;
}





let arreglo2 = [6, 7, 8, 9, 10];
invertirArregloInPlace(arreglo2);
console.log(arreglo2);  



let arreglo = [1, 2, 3, 4, 5];
let arregloInvertido = invertirArreglo(arreglo);
console.log(arregloInvertido);  
=======

function invertirArregloInPlace(arreglo) {

    let longitud = arreglo.length;

    for (let i = 0; i < longitud / 2; i++) {
        let temp = arreglo[i];
        arreglo[i] = arreglo[longitud - 1 - i];
        arreglo[longitud - 1 - i] = temp;
    }
    return arreglo;
}

function invertirArreglo(arreglo) {

    let nuevoArreglo = [];
    
    for (let i = arreglo.length - 1; i >= 0; i--) {
        nuevoArreglo.push(arreglo[i]);
    }
    return nuevoArreglo;
}





let arreglo2 = [6, 7, 8, 9, 10];
invertirArregloInPlace(arreglo2);
console.log(arreglo2);  



let arreglo = [1, 2, 3, 4, 5];
let arregloInvertido = invertirArreglo(arreglo);
console.log(arregloInvertido);  
>>>>>>> f07fa0c7f7bc2cca88fba5b76879b81c61229163
