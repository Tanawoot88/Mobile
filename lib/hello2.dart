 void main(){
  var hello = Hello('Flutter');
  hello.say(text: 'Flutter');
 }

 void sayHello(String text, {String text2 = 'iOS'}){
   print('hello ${text.toUpperCase()} ${text2.toLowerCase()}');
 }

 class Hello{
  final String? text;

  Hello(this.text);

  void say({String? text}){
      print('Hello $text');
    }

 }