function firstNonRepeatedChar(string) {
    const charCount = {};
    for (let char of string) {
      if (char in charCount) {
        charCount[char]++;
      } else {
        charCount[char] = 1;
      }
    }
    for (let char of string) {
      if (charCount[char] === 1) {
        return char;
      }
    }
    return null;
}

let resultado = primerCharNoRepetido('abacddbec');
console.log(resultado); 
>>>>>>> f07fa0c7f7bc2cca88fba5b76879b81c61229163

  console.log(firstNonRepeatedChar('abacddbec')); // 'b'
  console.log(firstNonRepeatedChar('aaaa')); // null
  console.log(firstNonRepeatedChar('abcdefg')); // 'a'