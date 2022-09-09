import 'question.dart';

class QuizBrain {
  int _questionNumber = 0;

  final List<Question> _questionBank = [
    Question(q: 'You can lead a cow downstairs but not up stairs.', a: false),
    Question(
        q: 'Approximately one quarter of human bones are in the feet.',
        a: true),
    Question(q: 'A slug\'s blood is green.', a: true),
    Question(q: 'Some cats are actually allergic to humans.', a: true),
    Question(q: 'Buzz Aldrin\'s mother\'s maiden name was \"Moon\".', a: true),
    Question(q: 'It is illegal to pee in the Ocean in Portugal.', a: true),
    Question(
        q: 'No piece of square dry paper can be folded in half more than 7 times.',
        a: false),
    Question(
        q: 'In London, Uk , if you happen to die in the House of Parliament, you are technically entitled to a state funeral because the bulding is considered too scared a place.',
        a: true),
    Question(
        q: 'The total surface area of human lungs is approximately 70 square meters',
        a: true),
    Question(q: 'Google was originally called \"Backrub\".', a: true),
    Question(q: 'Ssd storage are better than Hdd.', a: true),
    Question(
        q: 'The loudest sound produce by any animal is 188 decibles. That animal is the African Elephant',
        a: true),
    Question(q: 'SSD ram are better than HDD', a: true),
  ];

  void nextQuestion() {
    if (_questionNumber < _questionBank.length - 1) {
      _questionNumber++;
    }
  }

  String getQuestionText() {
    return _questionBank[_questionNumber].questionText;
  }

  bool getCorrectAnswer() {
    return _questionBank[_questionNumber].questionAnswer;
  }

  bool isFinished() {
    if (_questionNumber >= _questionBank.length - 1) {
      print('Now returning true');
      return true;
    } else {
      return false;
    }
  }

  void reset() {
    _questionNumber = 0;
  }
}
