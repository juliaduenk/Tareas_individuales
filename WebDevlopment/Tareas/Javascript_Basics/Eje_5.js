function maxComunDiv(a, b) {

    while (b != 0) {
        let t = b;
        b = a % b;
        a = t;
    }
    return a;
}


let a = 42;
let b = 10;
let gcd = maxComunDiv(a, b);
console.log(gcd);  