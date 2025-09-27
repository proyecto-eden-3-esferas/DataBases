/* Some General Functions (and Classes)
 * TODO
[ ] Write initializer code for C++ containers, possibly in 'cpp-initializer.js'
[ ] An object as an item in an array is not printed well
 */


/* Function hasContent(x) returns false if x is either null or undefined.
 * It then returns true if:
   x is a non-empty string or a non empty array, or
   x is a non-empty object
 * Last, if none of the preceding tests applies, return true.
 * It is useful when we want to know if a field is worth showing
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

// Write myObj[key] to an element's value or innerHTML property:'
function writeKeyOfObjToAsValue(key, obj, txtarea) {
  txtarea.value = JSON.stringify(obj[key]);
}
function writeKeyOfObjToAsInnerHTML(key, obj, blockElem) {
  blockElem.innerHTML = printObjAsHTML(obj[key]);
}
