/* Print a JSON/JavaScript value in C++ form:
   If it is a string: return it between double quotes
   Otherwise:    just return it
 * What about null values?
 */
function printCpp(atom) {
  if(typeof atom == "string")
    return "\"" + atom.replaceAll("'", "\\'").replaceAll('"', '\\"') + "\"";
  else
    return atom;
}
