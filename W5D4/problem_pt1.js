function madLib(verb, noun, adj) {
  console.log(`We shall ${verb.toUpperCase()} the ${adj.toUpperCase()} ${noun.toUpperCase()}.`);
}

function isSubstring(str, subStr) {
  return str.includes(subStr);
}

function fizzBuzz(arrNums) {
  const result = [];
  arrNums.forEach(el => {
    if (el % 3 === 0 && el % 5 !== 0) {
      result.push(el);
    } else if (el % 3 !== 0 && el % 5 === 0) {
      result.push(el);
    }
  });
  return result;
}

function isPrime(num) {
  if (num < 2) {
    return false;
  } else if (num === 2) {
    return true;
  } else if (num % 2 === 0) {
    return false;
  }
  let i = 3;
  while (i <= Math.floor(Math.sqrt(num))) {
    if (num % i === 0) return false;
    i += 2;
  }
  return true;
}

function sumOfNPrimes(n) {
  let sum = 0;
  if (n === 0) return sum;
  let i = 0;
  let prime = 2;
  while (i < n) {
    if (isPrime(prime)) {
      sum += prime;
      i += 1;
    }
    prime++;
  }
  return sum;
}