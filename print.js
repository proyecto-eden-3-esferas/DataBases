/* Functions (and Classes) for Printing
 * This file relies on 'general.js' (it should come before)
 * The following JavaScript files use this code:
   - print.indented.js
   - print.boxed.js
 * The following HTML files use this code:
   - js.assorted.choose.html
   - js.assorted.find.html
   - js.test-print.html
 */

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

let indentString = "  "; // two consecutive spaces
function calcIndent(n, inStr=indentString) {
  let tmp = "";
  for(i=0; i < n; i++) {
    tmp += inStr;
  }
  return tmp;
}
