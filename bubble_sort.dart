import 'dart:math';

void main(List<String> args) {
  List<int> arr = List.generate(10000, (_) => Random().nextInt(200000));
  Stopwatch stopwatch = Stopwatch()..start();
  bubbleSort(arr);
  stopwatch.stop();
  print("Sıralanmış dizi: $arr");
  print(
      "Sıralama tamamlandı. Çalışma süresi: ${stopwatch.elapsedMilliseconds}ms");
}

void bubbleSort(List<int> arr) {
  int n = arr.length;
  for (int i = 0; i < n - 1; i++) {
    for (int j = 0; j < n - i - 1; j++) {
      if (arr[j] > arr[j + 1]) {
        swap(arr, j, j + 1);
      }
    }
  }
}

void swap(List<int> arr, int i, int j) {
  int temp = arr[i];
  arr[i] = arr[j];
  arr[j] = temp;
}
