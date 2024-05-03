<<<<<<< HEAD

function Palindromo(cadena) {

    let longitud = cadena.length;
    
    for (let i = 0; i < longitud / 2; i++) {
        if (cadena[i] !== cadena[longitud - 1 - i]) {
            return false;
        }
    }
    return true;
}

let cadena = "radar";
let esPalindromo = Palindromo(cadena); 
console.log(esPalindromo); 
=======
function Palindromo(cadena) {

    let longitud = cadena.length;
    
    for (let i = 0; i < longitud / 2; i++) {
        if (cadena[i] !== cadena[longitud - 1 - i]) {
            return false;
        }
    }
    return true;
}

let cadena = "radar";
let esPalindromo = Palindromo(cadena); 
console.log(esPalindromo); 
>>>>>>> f07fa0c7f7bc2cca88fba5b76879b81c61229163
