/* Functions and such for implementing MongoDB functionality.
 * I do like MongoDB's interface better than CouchDB's,
   but CouchDB feels to me more open source
 * This "module" requires inclusion of:
     general.js
     filter.js (for function objInObj(OBJ1,OBJ2))
 * Additionally...
 */

/* From 'general.deprecated.js'
 * parse object whose id is 'id'
 * and return its content as a JavaScript object
 */
// works for <button> <input> <option>:
function getValueAttributeById (id) {
  return JSON.parse( document.getElementById(id).value );
}
// analogous, for remaining elements, get innerHTML attribute:
function getInnerHTMLAttributeById (id) {
  return JSON.parse( document.getElementById(id).innerHTML );
}


/* Return a trimmed down version of 'inObj'
 * that includes a field only if it has value 1 in 'whoObj',
 * much like MongoDb::find
*/
function makeObjWithFieldsByObj (inObj, projObj) {
  let keyArray = Object.keys(projObj);
  if( keyArray.length == 0) {
    //console.log("keyArray.length == 0");
    return inObj;
  } else {
    let resObj = {};
    keyArray.forEach(k => {
      if(projObj[k]==0) { /* SKIP THIS FIELD */}
      if(projObj[k]==1)
        resObj[k] = inObj[k];
    })
    return resObj;
  }
}


/* generate an array that
   - passes the filter (each item contains 'testObj'), and
   - has a field only if 'testObj' has its key set to 1:
  */
function isObject (o) {
  if(typeof o == "object") {
    if(Array.isArray(o))
      return false;
    else
      return true;
  } else return false;
}
function mongoFind(arr, testObj={}, projObj={}) {
  // If 'testObj' is not a JSON object, turn it into an {}:
  if(!isObject(testObj))
    testObj = {};
  // If 'projObj' is not a JSON object, turn it into an {}
  if(!isObject(projObj))
    projObj = {};
  return arr.filter(o => {return objInObj(testObj,o)})
            .map(   o => {return makeObjWithFieldsByObj(o,projObj)});
}


/* Two (analogous) functions:
  - ArrayTestShowWriteResultIntoValueAttr(testObj, projObj, res)
  - ArrayTestShowWriteResultIntoInnerHTMLAttr(testObj, projObj, res)
  They both take in:
  (1) an array of objects
  (2) an id string for the element that holds the test object
  (3) an id string for the element that holds the show object
  (4) an id string for the element that holds the result (an array of objects)
 */
function ArrayTestShowWriteResultIntoValueAttr(arr /* an array of objects */,
                                   tst, /* the id of element such as textarea to hold test object */
                                   shw, /* the id of element such as textarea to hold show object */
                                   res /*  the id of element such as textarea to hold result object */
                                   ) {
  let testObj = getValueAttributeById(tst);
  let projObj = getValueAttributeById(shw);
  let resultArray = mongoFind(arr, testObj, projObj)
  //finally, show the result in the last, large textarea:
  document.getElementById(res).value = JSON.stringify(resultArray);
}
/*  Version using attribute innerHTML instead of value
 *  Just substitute "innerHTML" in place of "Value"
    in ArrayTestShowWriteResultIntoValueAttr(...)
 */
function ArrayTestShowWriteResultIntoInnerHTMLAttr(arr /* an array of objects */,
                                   tst, /* the id of element such as textarea to hold test object */
                                   shw, /* the id of element such as textarea to hold show object */
                                   res /*  the id of element such as textarea to hold result object */
                                   ) {
  let testObj = getValueAttributeById(tst);
  let projObj = getValueAttributeById(shw);
  let resultArray = mongoFind(arr, testObj, projObj)
  //finally, show the result in the last, large textarea:
  document.getElementById(res).innerHTML = JSON.stringify(resultArray);
} // ArrayTestShowWriteResultIntoInnerHTMLAttr(...)
