/* Filter functions take a single argument,
   or (element, index, array),
   and return Boolean true if a condition is fulfilled,
   otherwise they return false
 *
 */

function always_true (elem)             {return true;}
function always_true (elem, idx, array) {return true;}

function objInObj (objin, obj) {
  return Object.keys(objin).every(
    k => {
      if(objin[k] === obj[k])
        return true;
      else
        return false;
    }
  )
}


/*
function OneLevelobjInObj (objin, obj) {
  return
  objin.keys().every(
    k => {
      if(typeof objin.get(k) === "object")
        return true;
      else {
        return objin.get(k) === obj.get(k);
      }
    }

  )
}
*/

/* function any_key_is_in_array(OBJECT, ARRAY)
 * returns true if any of the OBJECT's keys is in array ARRAY
 */
function any_key_is_in_array(obj, arr) {
  let obj_keys = obj.keys();
  return obj_keys.some(k => arr.includes(k));
}

/* function any_value_is_in_array(OBJECT, ARRAY)
   returns true if any of the OBJECT's values is in array ARRAY
 * This function is symmetrical to the previous one, and
   possibly not terribly useful
 */
function any_value_is_in_array(obj, arr) {
  let obj_values = obj.values();
  return obj_values.some(k => arr.includes(k));
}

function is_a_string (x) {
  if (typeof x === "string")
    return true;
  else
    return false;
}
/* Function is_made_up_of_strings(x)
 * returns whether x is a string or an array of strings,
 * a common enough case with objects
 */
function is_made_up_of_strings(x) {
  if (typeof x === "string")
    return true;
  else
  {
    if(Array.isArray(x))
    {
      if( x.every(
          (val, idx, arr) => {return is_made_up_of_strings(val);}
        )
      ) return true;
      else
        return false;
    } else
      return false;
  } // else
}

/* Given an object obj with a 'keywords' key, or not,
 * Does obj.keywords include 'word'?
 */
function has_keyword(obj, word) {
  return obj.keywords.includes(word);
}
function to_do_with(obj, word) {
  if( obj.field === word || obj.subfield === word || obj.subsubfield === word ||
      obj.keywords.includes(word) )
    return true;
  else
    return false;
}
function has_keyword_old(obj, word) {
  if (typeof obj.keywords == undefined || obj.keywords == null)
    return false;
  else {
    if (obj.includes(word))
      return true;
    else
      return false;
  } // else
}
