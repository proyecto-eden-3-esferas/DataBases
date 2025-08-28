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

// replace characters <, >, ", and ' with "&lt;" and so on:
function printStringAsHTML(str) {
  return str.replaceAll("<", "&lt;").replaceAll(">", "&gt;")
            .replaceAll("\"", "&quot;").replaceAll("'", "&apos;")
}

/* Some functions to add variables to some element's innerHTML.
 * They generate and return a string to be appended to innerHTML, as in
     s += printXXX(JavaScriptVar);
   or given a container variable, for example a paragraph:
     myP.innerHTML = printObjAsHTML(myObj);
 * Also, they rely on
   'printStringAsHTML(STRING)', and
   'hasContent(VAR)'
 */

function printArrayValsAsHTMLlines(arr) {
  let res = "";
  arr.forEach( (val) => {
    res = res + printValAsHTML(val);
  });
  return res;
}

  function printValAsHTML(val) {
  let res = "";
  if(typeof val == "string")
    res = printStringAsHTML(val);
  else {
    if(typeof val == "object") {
      if(Array.isArray(val))
        res = printArrayValsAsHTMLlines(val);
      else
        res = printObjAsHTML(val);
    }
    else res += val;
  }
  return res;
}

function printObjAsHTML(obj) { // 'obj' is an {obj}, not an [array]
  let s = "";
  for (const [k, v] of Object.entries(obj)) {
    if(hasContent(v)) {
      s = s + `<strong>${k}</strong>: `;
      if(typeof v == "string")
        s = s + printStringAsHTML(v);
      else {
        if(typeof(v) == "object") {
          if(Array.isArray(v)) {
            //s += " [<br/>" + printArrayValsAsHTMLlines(v) + "]";
            s += " [<br/>" + printArrayValsAsHTMLlines(v) + "]";
          }
          else {
            s += " {<br/>" + printObjAsHTML(v) + "}";
          }
        }
        else
        s = s + v;
      } // outermost else
      s = s + "<br/>";
    } // outermost if
  } // for
  return s;
}

// Write myObj[key] to an element's value or innerHTML property:'
function writeKeyOfObjToAsValue(key, obj, txtarea) {
  txtarea.value = JSON.stringify(obj[key]);
}
function writeKeyOfObjToAsInnerHTML(key, obj, blockElem) {
  blockElem.innerHTML = printObjAsHTML(obj[key]);
}
