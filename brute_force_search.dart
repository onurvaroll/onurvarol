import 'dart:math';

void main(List<String> args) {
  List<int> arr = List.generate(10000, (_) => Random().nextInt(200000));
  // Fonksiyonun başlangıç zamanı
  var startTime = DateTime.now();
  int maxNum = arr[0];
  for (int i = 0; i < arr.length; i++) {
    for (int j = i + 1; j < arr.length; j++) {
      if (arr[j] > arr[i]) {
        maxNum = arr[j];
      }
    }
  }
  // Fonksiyonun bitiş zamanı
  var endTime = DateTime.now();
  print("En büyük sayı: $maxNum");
  // Zaman farkı hesaplanması
  var duration = endTime.difference(startTime);
  print(
      'Fonksiyon çalışma süresi: ${duration.inMilliseconds.toStringAsFixed(10)} ms');
}
