/* SQL functions (and objects)
 * Notice that string returns get their apostrophes quoted through:
     <STRING>.replaceAll("\'", "\\\'")
 * TODO:
 * The printing of objects and arrays is unsatisfactory.
   Some decisions:
   [ ] Should they be issued between single quotes, just as SQL strings?
   [ ] Should their printing be delegated to a DBMS-specific callback?
   [ ] Should we check for string length, too?
 */
function printSQLObject(objVal) {
  return JSON.stringify(objVal).replaceAll("\'", "\\\'");
}
function printSQLObjectQuoted(objVal, quot="\'") {
  return quot + JSON.stringify(objVal).replaceAll("\'", "\\\'") + quot;
}
function printSQLCell(val, printObj = printSQLObjectQuoted) {
  switch(typeof val) {
    case "string": return "'" + val.replaceAll("\'", "\\\'") + "'"; break;
    case "object": {
      if(val == null  || val == undefined)
        return "null";
      else
        return printObj(val);
    }
    default:       return val;
  }
}
function printSQLRow (obj, keysArray, printObj=printSQLObjectQuoted) {
  let nonfirst = false;
  let resStr = "(";
  keysArray.forEach( k => {
    if(nonfirst) {
      resStr = resStr + "," + printSQLCell(obj[k]);
    } else {
      resStr = resStr       + printSQLCell(obj[k]);
    }
    if(! nonfirst)
      nonfirst = true;
  });
  resStr = resStr + ")\n"
  return resStr;
}


/*
function printSQLRows (objArray, keysArray, tbl = "myTable") {
  let showObjKeys = showObj.keys();
  let nonfirst = false;
  let resStr = "INSERT INTO " + myTable + "VALUES\n":
  objArray.forEach();
  resStr = resStr + ")"
  return resStr;
}
*/
