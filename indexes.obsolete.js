/* Some functions for generating an index as a Map.
 * It would be used by an application whose knowledge database is a set of JSON objects
 * Their first argument is an array of objects ('objs')
 * The ensueing  Map maps a key (an atomic value, a short array or a short object)
   to an Object or an Index
 *
 *
 * This library file is most likely superseeded by "indexes.js" and hence DEPRECATED !!!
 * No dependences on said "indexes.js".
 *
 * Function 'makeOneIdfierRefIndex(objs,idfier)' produces a map
 * from an array of objects and an identifier string
 * (for example "name", or "title", or "term"...),
 * whereas function 'makeAnyIdfierRefIndex(objs,idfiers)' produces a map
 * from an array of objects and an array of words qualifying as identifiers
 * --not from a single identifier word.
 * (for example ["name", "title", "term"])
 * TODO:
   [ ] Store all identifier values in a Set,
       then issue an exception if an already existing one is generated.
   [ ] Map to a 2-field object such as {"id": undefined, "field": undefined}
   [x] Write alternative functions that map to array indexes
 *
 */
function makeOneIdfierRefIndex (objs, idfier) {
  let idxMap = new Map();
  function add_as_entry (obj, idx, ar) {
    if (obj.keys().includes(idfier)) {
      // if obj.get(idfier) has already occured, raise exception
      idxMap.set(obj.get(idfier), obj);
    }
  }
  objs.forEach(add_as_entry);
  return idxMap;
}

function makeAnyIdfierRefIndex (objs, idfiers) {
  let idxMap = new Map();
  function add_as_entry (obj, idx, arr) {
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



/* Functions 'makeOneIdfierIntIndex' and 'makeAnyIdfierIntIndex'
 * map to array indexes, not references to objects.
 * This is good for substituting array indexes for strings, as in
 {
   "term": "life",
   "see": ["biology", "ethics"]
 }
 Now, if another object defines biology , and yet another defines ethics
 then we can subtitute their array idexes (say 4 and 11):
 {
   "term": "life",
   "see": [5, 11]
 }
 * Issue: indexes are meant for one array, not many. Now, if an array
   represents a collection, than you cannot use this scheme for referencing
   objects in several arrays/collections. A bother.
 */
function makeOneIdfierIntIndex (objs, idfier) {
  let idxMap = new Map();
  function add_as_entry (obj, idx, ar) {
    if (obj.keys().includes(idfier)) {
      // if obj.get(idfier) has already occured, raise exception
      idxMap.set(obj.get(idfier), idx);
    }
  }
  objs.forEach(add_as_entry);
  return idxMap;
}

function makeAnyIdfierIntIndex (objs, idfiers) {
  let idxMap = new Map();
  function add_as_entry (obj, idx, arr) {
    let objKeys = obj.keys();
    let k = "";
    idfiers.forEach( w => {
      if(objKeys.includes(w)) {
        // if obj.get(idfier) has already occured, raise exception
        k = w;
      }
    });
    idxMap.set(obj.get(k), idx);
  } // end of add_as_entry(e,i,arr)
  objs.forEach(add_as_entry);
  return idxMap;
}
