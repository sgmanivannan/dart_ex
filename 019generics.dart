import 'dart:collection';

void main() {
  Generics o = Generics();
  o.lists();
  o.sets();
  o.queue();

  //create generics
  print("create generics : ");
  DataHolder<String> dataHolder = new DataHolder('Some data');
  print(dataHolder.getData());
  dataHolder.setData('New Data');
  print(dataHolder.getData());
}

class Generics {
  lists() {
    print("Lists : ");
    List<String> logTypes = new List<String>();
    logTypes.add("WARNING");
    logTypes.add("ERROR");
    logTypes.add("INFO");

    // iterating across list
    for (String type in logTypes) {
      print(type);
    }
  }

  sets() {
    print("Sets : ");
    Set<int> numberSet = new Set<int>();
    numberSet.add(100);
    numberSet.add(20);
    numberSet.add(5);
    numberSet.add(60);
    numberSet.add(70);

    // numberSet.add("Tom");   compilation error;

    print("Default implementation  :${numberSet.runtimeType}");

    for (var no in numberSet) {
      print(no);
    }
  }

  queue() {
    print("Queue : ");
    Queue<int> queue = new Queue<int>();
    print("Default implementation ${queue.runtimeType}");
    queue.addLast(10);
    queue.addLast(20);
    queue.addLast(30);
    queue.addLast(40);
    queue.removeFirst();

    for (int no in queue) {
      print(no);
    }
  }

  map() {
    print("MAP : ");
    Map<String, String> m = {'name': 'Tom', 'Id': 'E1001'};
    print('Map :${m}');
  }
}

//Generics
class DataHolder<T> {
  T data;

  DataHolder(this.data);

  getData() {
    return data;
  }

  setData(data) {
    this.data = data;
  }
}
