/* Some General Functions (and Classes)
 * TODO
[ ] Write initializer code for C++ containers, possibly in 'cpp-initializer.js'
 */

// parse object whose id is 'id' and return its content
// works for <button> <input> <option>
function getValueAttributeById (id) {
  return JSON.parse( document.getElementById(id).value );
}
// analogous, for remaining elements, get innerHTML attribute:
function getInnerHTMLAttributeById (id) {
  return JSON.parse( document.getElementById(id).innerHTML );
}

/* Function hasContent(x) returns false if x is either null or undefined.
 * It then returns true if:
   x is a non-empty string or a non empty array, or
   x is a non-empty object
 * Last, if none of the preceding tests applies, return true.
 */
function hasContent(x) {
  if(x == null   || typeof x == undefined)
    return false;
  if(typeof x == "string" || Array.isArray(x)) {
    if(x.length > 0)
      return true;
    else
      return false;
  }
  if(typeof x == "object")
    return (Object.keys(x).length > 0);
  return true;
}

function printObj(obj) {
  return JSON.stringify(obj).replace("\"", "<strong>").replace("\"", "</strong>").replaceAll("\",\"", "<br/>").replaceAll("\"","").replace(/^{/, "").replace(/}$/,"");
}



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

