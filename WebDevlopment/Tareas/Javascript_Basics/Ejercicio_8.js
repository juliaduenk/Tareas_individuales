
function remomveDupes(array){
    let unique = [];
    for (let i = 0; i < array.length; i++){
        if (unique.indexOf(array[i]) === -1){
            unique.push(array[i]);
        }
    }
    return unique;
}

console.log(remomveDupes([1, 0, 1, 0]));
console.log(remomveDupes(["hit", "dog", "high"]));
console.log(remomveDupes(["care", "share", "care"]));