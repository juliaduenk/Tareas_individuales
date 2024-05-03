function HackerSpeak(cadena) {
    let diccionario = {'a': '4', 'r': '3', 'j': '1', 'd': '0', 'v': '5'};
    let nuevaCadena = '';
    for (let i = 0; i < cadena.length; i++) {
        if (diccionario[cadena[i]]) {
            nuevaCadena += diccionario[cadena[i]];
        } else {
            nuevaCadena += cadena[i];
        }
    }
    return nuevaCadena;
}

let cadenas = ["Javascript es divertido", "Hola mundo", "Viva la vida"]; 

cadenas.forEach(cadena => {
    let hackerSpeak = HackerSpeak(cadena);
    console.log(`The HackerSpeak version of "${cadena}" is: "${hackerSpeak}"`);
});
