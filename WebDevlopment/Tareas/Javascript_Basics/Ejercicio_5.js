function max(a, b) {
    while (b) {
      [a, b] = [b, a % b];
    }
    return a;
}


let a = 42;
let b = 10;
let gcd = maxComunDiv(a, b);
console.log(gcd);  
=======

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
>>>>>>> f07fa0c7f7bc2cca88fba5b76879b81c61229163
