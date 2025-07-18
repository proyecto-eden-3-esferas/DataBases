/* Filter functions take a single argument and return Boolean
 * true if a condition is fulfilled, otherwise they return false
 */

/* function any_key_is_in_array(OBJECT, ARRAY)
 * returns true if any of the OBJECT's keys is in array ARRAY
 */
function any_key_is_in_array(obj, arr) {
  let obj_keys = obj.keys();
  return obj_keys.some(k => arr.includes(k));
}
/* function any_value_is_in_array(OBJECT, ARRAY)
 * returns true if any of the OBJECT's values is in array ARRAY
 */
function any_value_is_in_array(obj, arr) {
  let obj_values = obj.values();
  return obj_values.some(k => arr.includes(k));
}

function is_made_up_of_strings(x) {
  if (typeof x === "string")
    return true;
  else
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
}
