void main() {
  var text = "Potato Garden";
  var (textList, textLength, wordCount) = getTextInfo(text);

  print('Text List: $textList\nText Length: $textLength\nWord Count: $wordCount');
}

(List<String>, int, int) getTextInfo(String text) {
  var textResult = text.split(' ');
  var textLength = text.length;
  var wordCount = textResult.length;
  return (textResult, textLength, wordCount);
}