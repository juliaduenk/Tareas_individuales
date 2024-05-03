function capCadena(cadena) {
    let palabra = cadena.split(' ');
    for (let i = 0; i < palabra.length; i++) {
        palabra[i] = palabra[i][0].toUpperCase() + palabra[i].substr(1);
    }
    return palabra.join(' ');
}

let cadenas = ["hola mundo", "buenos días", "buenas noches"]; 

cadenas.forEach(cadena => {
    let cadenaCap = capCadena(cadena);
    console.log(`The capitalized string is: "${cadenaCap}"`);
});
