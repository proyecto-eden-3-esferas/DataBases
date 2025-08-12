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

/* Functions for saving text to a local file:
 * saveText(TEXT, FILENAME) takes two strings in:
 *   the text itself and the name of the file to write to
 * saveTextFromIdToId(textareaId, fileNameId) takes element id's (as strings),
 *   extracts the text and the filename, and
 *   then calls saveText(text,filename)
 */
function saveText(text, fileName="saved.txt") {
  var blob = new Blob([text], { type: 'text/plain' });
  var link = document.createElement('a');
  link.href = URL.createObjectURL(blob);
  link.download = fileName;
  link.click();
}
/* BEWARE:
(1) HTML elements like <textarea> are read by their 'value' attribute, whereas
    HTML elements like <p>, <pre> etc. are read by their 'innerHTML' attribute
    Function saveTextFromIdToId('TEXTAREAID', 'FILENAMEID') is meant for a <textarea> elem.
(2) Remember duly to quote your IDs, filenames and text, usually between single quotes
 */
function saveTextFromIdToId(textareaId, fileNameId) {
  var text     = document.getElementById(textareaId).value;
  var fileName = document.getElementById(fileNameId).value;
  saveText(text,fileName);
}
function saveTextFromIdToIdinnerHTML(textareaId, fileNameId) {
  var text     = document.getElementById(textareaId).innerHTML;
  var fileName = document.getElementById(fileNameId).innerHTML;
  saveText(text,fileName);
}

