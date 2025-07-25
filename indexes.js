/* Some functions for generating an index as a Map.
 * Their first argument is an array of objects ('objs')
 * The ensueing  Map maps a key (an atomic value, or a short array or object)
   to an Object
 *
 */


/* function makeOneIdfierIndex(objs,idfier) produces a map
 * from an array of objects and an identifier string
 * (for example "name", or "title", or "term"...)
 * TODO:
   [ ] Store all identifier values in a Set,
       then issue an exception if an already existing one is generated.
 *
 */
function makeOneIdfierIndex (objs, idfier) {
  let idxMap = new Map();
  function add_as_entry (obj) {
    if (obj.keys().includes(idfier)) {
      // if obj.get(idfier) has already occured, raise exception
      idxMap.set(obj.get(idfier), obj);
    }
  }
  objs.forEach(add_as_entry);
  return idxMap;
}

/* function makeAnyIdfierIndex(objs,idfiers) produces a map
 * from an array of objects and an array of words qualifying as identifiers
 * (for example ["name", "title", "term"])
 * TODO:
   [ ] Store all identifier values in a Set,
       then issue an exception if an already existing one is generated.
 *
 */
function makeAnyIdfierIndex (objs, idfiers) {
  let idxMap = new Map();
  function add_as_entry (obj) {
    let objKeys = obj.keys();
    let k = "";
    idfiers.forEach( w => {
      if(objKeys.includes(w)) {
        // if obj.get(idfier) has already occured, raise exception
        k = w;
      }
    });
    idxMap.set(obj.get(k), obj);
  } // end of add_as_entry(e,i,arr)
  objs.forEach(add_as_entry);
  return idxMap;
}
