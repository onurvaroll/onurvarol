import 'dart:math';

void main(List<String> args) {
  List<int> arr = List.generate(10000, (_) => Random().nextInt(200000));
  Stopwatch stopwatch = Stopwatch()..start();
  quickSort(arr, 0, arr.length - 1);
  stopwatch.stop();
  print("Sıralanmış dizi: $arr");
  print(
      "Sıralama tamamlandı. Çalışma süresi: ${stopwatch.elapsedMilliseconds}ms");
}

void quickSort(List<int> arr, int low, int high) {
  if (low < high) {
    int pivotIndex = partition(arr, low, high);
    quickSort(arr, low, pivotIndex - 1);
    quickSort(arr, pivotIndex + 1, high);
  }
}

int partition(List<int> arr, int low, int high) {
  int pivot = arr[high];
  int i = low - 1;
  for (int j = low; j <= high - 1; j++) {
    if (arr[j] < pivot) {
      i++;
      swap(arr, i, j);
    }
  }
  swap(arr, i + 1, high);
  return i + 1;
}

void swap(List<int> arr, int i, int j) {
  int temp = arr[i];
  arr[i] = arr[j];
  arr[j] = temp;
}
