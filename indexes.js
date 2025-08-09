/* Some functions for generating an index as a Map.
 * It would be used by an application whose knowledge database is a set of JSON objects
 * Their first argument is an array of objects ('objs')
 * The ensueing  Map maps a key (an atomic value, a short array or a short object)
   to an Object or an Index
 * TODO
 [ ] Use hashes?
 *
 */

/* Function 'firstKeyIn(obj, arrOfKeys) returns the first key in 'arrOfKeys'
 * that is also found in 'obj'
 */
function firstKeyIn(obj, arrOfKeys) {
  for( k of arrOfKeys) {
    if(k in obj)
      return k;
  }
  return null;
}
/* Function 'firstKeyInOrString(obj,keys)' returns 'keys' if 'keys' is a string
 * otherwise returns firstKeyIn(obj,keys)
 * on the assumption that keys is an array of keys */
function firstKeyInOrString(obj, keys) {
  if(typeof keys == "string")
    return keys;
  else
    return firstKeyIn(obj,keys);
}
/* 'firstValIn' returns the first value in 'obj' whose key is in 'arrOfKeys',
 * an array of strings, and null otherwise */
function firstValIn(obj, arrOfKeys) {
  for( k of arrOfKeys) {
    if(k in obj)
      return obj[k];
  }
  return null;
}
/* 'firstValInOrString(obj, keys)' either
 * returns obj[keys] if 'keys' is a string
 * or assumes 'keys' is an array of strings meant as keys and
 * returns firstValIn(obj,keys) */
function firstValInOrString(obj, keys) {
  if(typeof keys == "string")
    return obj[keys];
  else
    return firstValIn(obj,keys);
}

/* Functions *makeKey*(obj, ...) return a value in 'obj'
   to be used as the key in an index map.
 * For instance, given
   {
     "name": "Chris",
     "phone": "51382728"
   }
   then an index would be expected to map "Chris" to the whole object
 * The values that an index key maps to are either object references
 or array indexes (if each object lives in an array of like objects)
 */
let defaultMakeKeyArr    = ["term","name","word","title"];
let defaultMakeKeyArr2ry = ["subsubfield","subfield","field","type"];



/* The following, nearly-identical functions return:
 * either a 2-array [KEY, INDEX],
 *     or a 3-array [KEY, INDEX, ARRAY],
 * The latter may come in useful for building indexes over several arrays
 *
 */
function makeKeyIndexArray(   o, i, a, arrOfKeys = defaultMakeKeyArr) {
  return [ firstValIn(o, arrOfKeys), i];
}
function makeKeyIndexArrArray(o, i, a, arrOfKeys = defaultMakeKeyArr) {
  return [ firstValIn(o, arrOfKeys), i, a];
}
/* NOOOOOOOOOO !!!
 * What I want is a map from a key (say, a name) to a (non-empty) array of indeces
 * like "Faust" maps to [2,4]
 * or to an array of index+array-ref
 * like: "Faust" maps to [[2,OBJ-REF],[4,OBJ-REF]]
 */


function defaultMakeKey(o, i, a) {return o[firstKeyIn(o, defaultMakeKeyArr)];}
//function defaultMakeKey(o, i, a) {return o["term"] ?? o["name"] ?? o["word"] ?? o["title"];}

// Function 'makePairKey' returns a 2-element-array, which is printed as a dull "elem0,elem1"
function makePairKey(o, i, a,
                     arr1 = defaultMakeKeyArr,
                     arr2 = defaultMakeKeyArr2ry) {
  return [
    o[firstKeyInOrString(o,arr1)],
    o[firstKeyInOrString(o,arr2)]
  ]
}


function     objMakeVal(o, i, a) {return o;}
function   indexMakeVal(o, i, a) {return i;}
function makeIndex(objsArr, makeKey = defaultMakeKey, makeVal = objMakeVal) {
  let idxMap = new Map();
  objsArr.forEach((o,i,a) => {
    idxMap.set(makeKey(o,i,a), makeVal(o,i,a));
  });
  return idxMap;
}
// Make a Map from keys (using 'makeKey') to array indeces:
function makeIndexToIndex(objsArr, makeKey = defaultMakeKey) {
  let idxMap = new Map();
  objsArr.forEach((o,i,a) => {
    idxMap.set(makeKey(o,i,a), i);
  });
  return idxMap;
}

function makeUniqueIndex(objsArr, makeKey = defaultMakeKey, makeVal = objMakeVal) {
  let  idxMap = new Map();
  let keysSet = new Set();
  objsArr.forEach((o,i,a) => {
    let k = makeKey(o,i,a);
    if(keysSet.has(k))
      throw [
        "Key: \"" + k + "\" occurrs again: not unique! Index: ",
        i // 'i' is the index into 'arr', which enables supplying a richer key
      ];
    else {
      keysSet.add(k);
      idxMap.set(makeKey(o,i,a), makeVal(o,i,a))
    }
  });
  return idxMap;
}
