// parse object whose id is 'id' and return its content
// works for <button> <input> <option>
function getValueAttributeById (id) {
  return JSON.parse( document.getElementById(id).value );
}
// analogous, for remaining elements, get innerHTML attribute:
function getInnerHTMLAttributeById (id) {
  return JSON.parse( document.getElementById(id).innerHTML );
}

/* Function 'atomOrItem(variable, key)' is called on a value
 * that is either an atomo or, typically, an array,
 * and returns an atomic value: either variable itself or variable[key]
 */
function atomOrItem(v, key = 0) {
  if(typeof v == "object") {
    return            v[key];
    //return atomOrItem(v[key], key);
  }
  else
    return v;
}

/* 'printArrayAsHTMLList' could be added to a div element's innerHTML
 * as a child...
 * I cannot see any use for it as yet.
 */
function printArrayAsHTMLList(arr, indent="", list="ul") {
  let res = "<" + list + ">";
  arr.forEach( (e) => {
    res += "<li>";
    res += printObjAsHTML(e, indent + "  ");
    res += "</li><br/>";
  });
  res = "</" + list + ">";
  return res;
}
