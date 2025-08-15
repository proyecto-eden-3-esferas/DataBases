/* Some General Functions (and Classes)
 * TODO
[ ] Write initializer code for C++ containers, possibly in 'cpp-initializer.js'
 */

function inPlaceMap(arr, func) {
  arr.forEach( (e,i,a) => {a[i] = func(e);});
}

/* Function 'atomOrItem(variable, n)' is called on a value
 * that is either an atomo or, typically, an array,
 * and returns an atomic value: either variable itself or variable[n]
 */
function atomOrItem(v, n = 0) {
  if(typeof v == "object") {
    return            v[n];
    //return atomOrItem(v[n], n);
  }
  else
    return v;
}

