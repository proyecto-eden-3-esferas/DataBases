/* Function countKeys(array_of_objects)
 * returns an object with all the keys in the array's objecst'
 * whose values for each key the number of instances
 */
function countKeys(arrayOfObjects) {
  let resObj = {};
  arrayOfObjects.forEach(o => {
    let keyArr = o.keys();
    keyArr.forEach( k => {
      if(typeof o[k] == "number")
        o[k] = o[k] + 1;
    });
    if(typeof )
  });
  return resObj;
}

function countKeysIntoArray (arrayOfObjects) {
  let obj = countKeys(arrayOfObjects);
  let resArr = obj.entries();
  resArr.sort( (a,b) => { return a[1] < b[1];});
  return resArr;
}
