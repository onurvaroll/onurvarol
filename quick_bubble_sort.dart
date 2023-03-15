import 'dart:math';

void main(List<String> args) {
  //10000 elemanlı 20000'e kadar olan sayılardan random 2 dizi oluşturuyoruz
  List<int> arr1 = List.generate(10000, (_) => Random().nextInt(200000));
  List<int> arr2 = List.from(arr1);
//QuickSort algoritmasını çağırıyoruz ve çalışma zamanını tutuyoruz
  Stopwatch quickStopwatch = Stopwatch()..start();
  quickSort(arr1, 0, arr1.length - 1);
  quickStopwatch.stop();
  print(
      "QuickSort ile Sıralama Tamamlandı. Çalışma Süresi: ${quickStopwatch.elapsedMilliseconds}ms");
  //BubbleSort algoritmasını çağırıyoruz ve çalışma zamanınu tutuyoruz
  Stopwatch bubbleStopwatch = Stopwatch()..start();
  bubbleSort(arr2);
  bubbleStopwatch.stop();
  print(
      "BubbleSortcile Sıralama Tamamlandı. Çalışma Süresi: ${bubbleStopwatch.elapsedMilliseconds}ms");
}

//QuickSort Algoritması
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
      qswap(arr, i, j);
    }
  }
  qswap(arr, i + 1, high);
  return i + 1;
}

void qswap(List<int> arr, int i, int j) {
  int temp = arr[i];
  arr[i] = arr[j];
  arr[j] = temp;
}

//BubbleSort Algoritması
void bubbleSort(List<int> arr) {
  int n = arr.length;
  for (int i = 0; i < n - 1; i++) {
    for (int j = 0; j < n - i - 1; j++) {
      if (arr[j] > arr[j + 1]) {
        bswap(arr, j, j + 1);
      }
    }
  }
}

void bswap(List<int> arr, int i, int j) {
  int temp = arr[i];
  arr[i] = arr[j];
  arr[j] = temp;
}
