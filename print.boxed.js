/* Functions (and Classes) for Printing
 * This file relies on 'general.js' (it should come before)
 * This file relies on 'print.js'   (it should come next after 'general.js')
 * The following HTML files use this code:
   - js.assorted.find.html
   - js.test-print.html
 * TODO
 */

function printArrayValsAsHTMLlines(arr, level=0, inStr = indentString) {
  let res = "";
  arr.forEach( (val) => {
    res = res + calcIndent(level,inStr) + printValAsHTML(val, level + 1, inStr) + "<br/>";
  });
  return res;
}

function printValAsHTML(val, level=0, inStr=indentString) {
  let res = "";
  if(typeof val == "string") {
    res = calcIndent(level,inStr) + printStringAsHTML(val);
  }
  else {
    if(typeof val == "object") {
      if(Array.isArray(val))
        res = printArrayValsAsHTMLlines(val, level, inStr=indentString);
      else
        res = "{<br/>" + printObjAsHTML(val, level, inStr=indentString) + "}";
    }
    else res +=  calcIndent(level,inStr) + val;
  }
  return res;
}

function printObjAsHTML(obj, level=0, inStr=indentString) { // 'obj' is an {obj}, not an [array]
  let s = "";
  for (const [k, v] of Object.entries(obj)) {
    if(hasContent(v)) {
      s = s + calcIndent(level,inStr) + `<strong>${k}</strong>: `;
      if(typeof v == "string")
        s = s + printStringAsHTML(v);
      else {
        if(typeof(v) == "object") {
          if(Array.isArray(v)) {
            //s += " [<br/>" + printArrayValsAsHTMLlines(v) + "]";
            s = s + " [<br/>" + printArrayValsAsHTMLlines(v, level + 1, inStr) + "]";
          }
          else {
            s = s + " {<br/>" + printObjAsHTML(v, level + 1, inStr) + "}";
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
