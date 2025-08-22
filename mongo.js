/* Functions and such for implementing MongoDB functionality.
 * Requires inclusion of:
     general.js
     filter.js
 * Additionally...
 */

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
      if(projObj[k]==1)
        resObj[k] = inObj[k];
    })
    return resObj;
  }
}

/* Two (analogous) functions:
  - ArrayTestShowWriteResultIntoValueAttr(testObj, projObj, res)
  - ArrayTestShowWriteResultIntoInnerHTMLAttr(testObj, projObj, res)
possibly to be included in a library file ('mongo.js')
They rely on functions in 'general.js' and 'filter'
 */
function ArrayTestShowWriteResultIntoValueAttr(arr /* an array of objects */,
                                   tst, /* the id of element such as textarea to hold test object */
                                   shw, /* the id of element such as textarea to hold show object */
                                   res /*  the id of element such as textarea to hold result object */
                                   ) {
  let testObj = getValueAttributeById(tst);
  let projObj = getValueAttributeById(shw);
  /* generate an array that
     [x] passes the filter, and
     [x] has a field only if 'shw' has its key set to 1:
  */
  let resultArray = arr.filter(o => {return objInObj(testObj,o)})
                          .map(o => {return makeObjWithFieldsByObj(o,projObj)});
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
  let testObj = getInnerHTMLAttributeById(tst);
  let projObj = getInnerHTMLAttributeById(shw);
  /* generate an array that
     [x] passes the filter, and
     [x] has a field only if 'shw' has its key set to 1:
  */
  let resultArray = arr.filter(o => {return objInObj(testObj,o)})
                          .map(o => {return makeObjWithFieldsByObj(o,projObj)});
  //finally, show the result in the last, large textarea:
  document.getElementById(res).value = JSON.stringify(resultArray);
} // ArrayTestShowWriteResultIntoInnerHTMLAttr(...)
