import 'dart:math';

void main(List<String> args) {
  List<int> array = List.generate(10000, (_) => Random().nextInt(200000));
  print("Oluşturulan dizi:\n$array");
  // Fonksiyonun başlangıç zamanı
  var startTime = DateTime.now();
  int maxNumber = array[0];
  for (int i = 1; i < array.length; i++) {
    if (array[i] > maxNumber) {
      maxNumber = array[i];
    }
  }
  // Fonksiyonun bitiş zamanı
  var endTime = DateTime.now();
  print("En büyük sayı: $maxNumber");
  // Zaman farkı hesaplanması
  var duration = endTime.difference(startTime);
  print('Fonksiyon çalışma süresi: ${duration.inMilliseconds} ms');
}
