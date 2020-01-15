function fizzBuzz(array) {
  var arr = []

  for (i = 3; i < array.length; i++) {
    if array[i] % 3 ===0 && array[i] % 5 !==0 {
      arr.push(array[i])
    }
    else array[i] % 3 !==0 && array[i] % 5 ===0 {
      arr.push(array[i])
    };
  }

  return arr
}

function isPrime (n) {
  if (n < 2) { return false; }

  for (let i = 2; i < n; i++) {
    if (n % i === 0) {
      return false;
    }
  }

  return true;
}

function sumOfNPrimes (n) {
  let sum = 0;
  let countPrimes = 0;
  let i = 2;

  while (countPrimes < n) {
    if (isPrime(i)) {
      sum += i;
      countPrimes++;
    }
    i++;
  }

  return sum;
}