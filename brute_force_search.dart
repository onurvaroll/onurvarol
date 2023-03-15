import 'dart:math';

void main(List<String> args) {
  //10000 elemanlı 20000 e kadar olan sayılardan random bir dizi oluşturuyoruz
  List<int> array = List.generate(10000, (_) => Random().nextInt(200000));
  // Algoritmanın başlangıç zamamanını tutuyoruz
  var startTime = DateTime.now();
  int maxNumber = array[0];
  for (int i = 1; i < array.length; i++) {
    if (array[i] > maxNumber) {
      maxNumber = array[i];
    }
  }
  // Algoritmanın bitiş zamanını tutuyoruz
  var endTime = DateTime.now();
  print("En büyük sayı: $maxNumber");
  // Zaman farkını hesaplıyoruz
  //Genellikle 0 ms sonucunu veriyor nadir de olsa birkaç kere 1 ms değerini aldım
  var duration = endTime.difference(startTime);
  print('Fonksiyon çalışma süresi: ${duration.inMilliseconds} ms');
}
