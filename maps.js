/* Maps for Array.map(MAP_FUNC)
 *
 */

function term_and_field(obj) {
  if(obj.term != undefined)
    return `term=${obj.term} , and field=${obj.field}/*\n*/`;
  if(obj.name != undefined)
    return `name=${obj.name} , and field=${obj.field}/*\n*/`;
  if(obj.title != undefined)
    return `title=${obj.title} , and field=${obj.field}/*\n*/`;
  else
    return `no title, and field=${obj.field}/*\n*/`;
}
