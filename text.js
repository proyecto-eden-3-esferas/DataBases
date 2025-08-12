/* Some functions and objects for handling text
 *
 *
(1)  split a long string into words with let arrOfWords = STRING.match(/\b.*\b)
(2') initialize therewith a Map from lowercase words to counts
 *
 */

/* Tokenizing text:
 * functions 'makeWordArray(TEXT)' and 'makeWordArrayWithHyphens(TEXT)'
 * just call Array.match(REGEXP)
 */
function makeWordArray(           mytext) {
  return mytext.match(/\b[\w]+\b/g);
}
function makeWordArrayWithHyphens(mytext) {
  return mytext.match(/\b[\w-]+\b/g);
}

/* Define some arrays of uninteresting words,
 * such as grammatical words ('grammaticalWords'),
 * then construct a Set out of such arrays (here 'grammaticalWordsSet')
 */
let articleWords = ["the", "a", "an"];
let demostrativeWords = ["this", "that", "these", "those"];
let pronounWords = ["i", "me", "you", "he", "him", "she", "her", "it",
                    "we", "us", "they", "them"];
let possesiceWords = ["my", "mine", "your", "yours", "his", "her", "hers",
                      "our", "ours", "their", "theirs"]
let prepAdvWords = [
  "of", "in", "into", "out", "on", "off",
  "to", "toward", "towards", "at", "from", "between", "with", "without",
  "beside", "by", "near", "away", "along",
  "across", "through", "thru", "above", "below", "over", "under",
  "up", "down", "front", "behind", "back",
  "before", "after", "during",
  "about", "around", "round",
  "here", "there", "now", "then",
  "next"
                       ];
let beForms  = ["is", "are", "am", "was", "were", "been", "be", "being"];
let haveForms = ["has", "have", "had", "having"];
let modalForms = ["can", "could", "must", "shall", "should", "will", "would",
                  "do", "does", "did", "done"];
let otherWords = [
  "and", "or",
  "not", "no",
  "either", "neither", "none", "nor",
  "both", "all", "some", "any", "several",
  "than",
  "still", "yet", "already"
];
let emptyWords = ["get", "gets", "got", "gotten"];
let grammaticalWords = [...articleWords,
                        ...demostrativeWords,
                        ...pronounWords,
                        ...possesiceWords,
                        ...prepAdvWords,
                        ...beForms,
                        ...haveForms,
                        ...modalForms,
                        ...otherWords
                       ];
let grammaticalWordsSet = new Set(grammaticalWords);

/* Next, function 'filterOutWordsInSet(WORD,WORDSET)' returns whether an array element
 * (purportedly a word)
 * is not included in a given set.
 */
function filterOutWordsInSet(word, wordset=grammaticalWordsSet) {
  return ! wordset.has(word.toLowerCase());
};

/* Finally, functions 'makeWordArray[WithHyphens]Except(TEXT,WORDSET)
 * chain tokenization with filtering of some (typically, grammatical) words
 */
function makeWordArrayExcept(           text, wordset) {
  return makeWordArray(          text).filter( (w,i,a) => {return ! wordset.has(w);});
}
function makeWordArrayWithHyphensExcept(text, wordset) {
  return makeWordArrayWithHyphens(text).filter( (w,i,a) => {return ! wordset.has(w);});
}

/* Build a Map from words to their count
 */
function countWords(arr, countMap = new Map()) {
  arr.forEach( (w) => {
    w = w.toLowerCase();
    if(countMap.has(w))
      countMap.set(w, countMap.get(w) + 1);
    else
      countMap.set(w,1);
  });
  return countMap;
}

/* Build a Map from word counts to an array of words,
 * each having the same frequency as the key.
 * A typical entry:
 *   3 -> ["command", "allow", "rather"]
 */
function makeFreqMap(countMap, freqMap = new Map()) {
  countMap.entries().forEach( ([wd,cnt],i,a) => {
    console.log("Word: ", wd, ", Count: ", cnt);
    if(freqMap.has(cnt)) {
      console.log("type of freqMap[cnt], which is ", freqMap.get(cnt), ", is: ", typeof freqMap.get(cnt));
      freqMap.get(cnt).push(wd);
      console.log("done");
    }
    else {
      console.log("setting freqMap[", cnt,"] to ", "[\"", wd, "\"]");
      let arr = new Array();
      freqMap.set( cnt, [wd]);
      //freqMap[cnt].push(wd);
      console.log("type of freqMap.get(cnt), which is ", freqMap.get(cnt),
                  ", is: ", typeof freqMap.get(cnt), ". An Array? ", Array.isArray(freqMap[cnt]));
    }
  }
  );
  return freqMap;
}

function printFreqMap (freqMap) {
  freqMap.entries().forEach( (item) => {
    console.log("Freq. ", item[0], " words: ", item[1].join(", "));
  });
}
