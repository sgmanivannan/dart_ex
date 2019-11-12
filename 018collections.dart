import 'dart:collection';

void main() {
  Collections o = Collections();
  o.sets();
  o.setFrom();

  o.hashMap();
  o.hashMapAddAll();
  o.hashMapRemove();

  o.hashSet();
  o.hashsetAddAll();
  o.hashSetRemove();

  o.queue();
  o.queueAdd();

  o.lists();
}

class Collections {
  sets() {
    print("sets 1: ".toUpperCase());
    Set numberSet = new Set();
    numberSet.add(100);
    numberSet.add(20);
    numberSet.add(5);
    numberSet.add(60);
    numberSet.add(70);
    print("Default implementation :${numberSet.runtimeType}");

    // all elements are retrieved in the order in which they are inserted
    for (var no in numberSet) {
      print(no);
    }
  }

  setFrom() {
    print("Set.from() : ");
    Set numberSet = new Set.from([12, 13, 14]);
    print("Default implementation :${numberSet.runtimeType}");
    // all elements are retrieved in the order in which they are inserted
    for (var no in numberSet) {
      print(no);
    }
  }

  hashMap() {
    print("HashMap : ");
    var accounts = new HashMap();
    accounts['dept'] = 'HR';
    accounts['name'] = 'Tom';
    accounts['email'] = 'tom@xyz.com';
    print('Map after adding  entries :${accounts}');
  }

  hashMapAddAll() {
    print("HashMap : addAll() : ");
    var accounts = new HashMap();
    accounts.addAll({'dept': 'HR', 'email': 'tom@xyz.com'});
    print('Map after adding  entries :${accounts}');
  }

  hashMapRemove() {
    print("HashMap : remove(): ");
    var accounts = new HashMap();
    accounts['dept'] = 'HR';
    accounts['name'] = 'Tom';
    accounts['email'] = 'tom@xyz.com';
    print('Map after adding  entries :${accounts}');
    accounts.remove('dept');
    print('Map after removing  entry :${accounts}');
    accounts.clear();
    print('Map after clearing entries :${accounts}');
  }

  hashSet() {
    print("HashSet : ");
    Set numberSet = new HashSet();
    numberSet.add(100);
    numberSet.add(20);
    numberSet.add(5);
    numberSet.add(60);
    numberSet.add(70);
    print("Default implementation :${numberSet.runtimeType}");
    for (var no in numberSet) {
      print(no);
    }
  }

  hashsetAddAll() {
    print("HashSet : addAll() : ");
    Set numberSet = new HashSet();
    numberSet.addAll([100, 200, 300]);
    print("Default implementation :${numberSet.runtimeType}");
    for (var no in numberSet) {
      print(no);
    }
  }

  hashSetRemove() {
    print("HashSet : remove() : ");
    Set numberSet = new HashSet();
    numberSet.addAll([100, 200, 300]);
    print("Printing hashet.. ${numberSet}");
    numberSet.remove(100);
    print("Printing hashet.. ${numberSet}");
    numberSet.clear();
    print("Printing hashet.. ${numberSet}");
  }

  queue() {
    print("Queue : ");
    Queue queue = new Queue();
    print("Default implementation ${queue.runtimeType}");
    queue.add(10);
    queue.add(20);
    queue.add(30);
    queue.add(40);

    for (var no in queue) {
      print(no);
    }
  }

  queueAdd() {
    print("Queue : addAll() : ");
    Queue queue = new Queue();
    print("Default implementation ${queue.runtimeType}");
    queue.addAll([10, 12, 13, 14]);
    for (var no in queue) {
      print(no);
    }

    queue.addFirst(400);
    print("Printing Q.. ${queue}");

    queue.addLast(400);
    print("Printing Q.. ${queue}");
  }

  lists() {
    print("Lists : ");

    List logTypes = new List();
    logTypes.add("WARNING");
    logTypes.add("ERROR");
    logTypes.add("INFO");

    // iterating across list
    for (String type in logTypes) {
      print(type);
    }

    // printing size of the list
    print(logTypes.length);
    logTypes.remove("WARNING");

    print("size after removing.");
    print(logTypes.length);
  }
}
