class QuizQ {
  const QuizQ(this.text, this.answers);
  
  final String text;
  final List<String> answers;

  List<String> getShuffledAns() {
    final shuffled =  List.of(answers);
    shuffled.shuffle();
    return shuffled;
  }
}