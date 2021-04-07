import 'dart:async';
import 'dart:convert';
import 'dart:io';



void main() {
    loadAsset();

}

List _list   = new List();

void loadAsset() async {
  var lineNumber = 1;
  var stream = File('lotto.txt').openRead();
  List l = new List();
  stream.transform(utf8.decoder)
      .transform(const LineSplitter())
      .listen((line) {

      //stdout.write('${lineNumber++} ');
      List list = line.split(",");
      //print(list);

      l.add(list.sublist(1));


    //stdout.writeln(line);
  }).onDone(() {List list =l.reversed.toList();
  for(int i=0; i < list.length ; i++) {
    list[0];
  }
  });

}
