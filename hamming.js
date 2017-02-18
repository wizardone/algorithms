const strand1 = 'GAGCCTACTAACGGGAT'
const strand2 = 'CATCGTAATGACGGCCT'

let hammingDistance = (strand1, strand2) => {
  let distance = 0;
  const chars1 = strand1.split("");
  const chars2 = strand2.split("");

  for(let char in chars1){
    if(chars1[char] != chars2[char]){
      distance += 1;
    }
  }
  return distance;
}
