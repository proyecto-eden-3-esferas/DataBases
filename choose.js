/* Choose An Object And Print It
 * Functions for appending clickable elements holding labels/names
   to a block elements (such as a span or even paragraphs inside a div)
 * NOTE Remember to include/define firstValIn(),
   found in "indexes.js", possibly moved into "general.js"
 * NOTE: To use this library, you need to define showIn(i),
   where i might be an index into an array or whatever identifing variable
 */

/* Function 'appendToParentWithTextIdFunLabel' is good
   for appending one element in an array as a child to 'parent'.
 * Each such child:
   (1) is appended as a child to parent
   (2) holds as innerHTML: text (the string a user would click on)
   (3) has its id set to "i" (possibly an index into an array)
   (4) has property 'onclick' set to: `showIn(${i})` or to `${si}(${i})`
 * This function is meant to be called recursively for all 'i',
   as done by appendToParentFirstInAsLabel(), which is defined thereafter
 */
function appendToParentWithTextIdFunLabel(parent, text, i, si="showIn", lbl="span") {
  let sp = document.createElement(lbl);
  sp.setAttribute("id", i.toString());
  sp.setAttribute("onclick", `showIn(${i})`);
  sp.innerHTML = text;
  parent.appendChild(sp);
}

// depends on firstValIn(), defined in "indexes.js"
function appendToParentFirstInAsLabel(parent,
                                      objArr,
                                      strArr=["term", "name", "title"],
                                      si="showIn",
                                      lbl="span") {
  assortedArray.forEach( (obj, idx, arr) => {
    let nm = firstValIn(obj, strArr);
    appendToParentWithTextIdFunLabel(parent, nm, idx, si, lbl);
  });
}
