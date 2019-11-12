main() {
  Lists obj = Lists();
  obj.lists1();
  obj.lists2();
  obj.lists3();
  obj.first_();
  obj.is_Empty();
  obj.is_Not_Empty();
  obj.length_();
  obj.last_();
  obj.reversed_();
  obj.single_();
  obj.basicInsert_1();
  obj.basicInsert_2();
  obj.basicInsert_3();
  obj.basicInsert_4();
  obj.update_1();
  obj.update_2();
  obj.remove_1();
  obj.remove_2();
  obj.remove_3();
  obj.remove_4();
}

class Lists {
  void lists1() {
    print('lists 1');
    var lst = new List(3);
    lst[0] = 12;
    lst[1] = 13;
    lst[2] = 11;
    print(lst);
  }

  void lists2() {
    print('lists 2');
    var num_list = [1, 2, 3];
    print(num_list);
  }

  void lists3() {
    print('lists 3');
    var lst = new List();
    lst.add(12);
    lst.add(13);
    print(lst);
  }

  void first_() {
    print("FIRST");
    var lst = new List();
    lst.add(12);
    lst.add(13);
    print("The first element of the list is: ${lst.first}");
  }

  void is_Empty() {
    print("IS EMPTY");
    var lst = new List();
    lst.add(12);
    lst.add(13);
    print(lst.isEmpty);
  }

  void is_Not_Empty() {
    print("IS NOT EMPTY");
    var lst = new List();
    lst.add(12);
    lst.add(13);
    print(lst.isNotEmpty);
  }

  void length_() {
    print("LENGTH");
    var lst = new List();
    lst.add(12);
    lst.add(13);
    print("The length of the list is : ${lst.length}");
  }

  void last_() {
    print("LAST");
    var lst = new List();
    lst.add(12);
    lst.add(13);
    print("The last element of the list is: ${lst.last}");
  }

  void reversed_() {
    print("REVERSED");
    var lst = new List();
    lst.add(12);
    lst.add(13);
    print("The list values in reverse order: ${lst.reversed}");
  }

  void single_() {
    print("SINGLE");
    var lst = new List();
    lst.add(12);
    print("The list has only one element: ${lst.single}");
  }

  void basicInsert_1() {
    print("basic insert 1:");
    List l = [1, 2, 3];
    l.add(12);
    print(l);
  }

  void basicInsert_2() {
    print("basic insert 2:");
    List l = [1, 2, 3];
    l.addAll([12, 13]);
    print(l);
  }

  void basicInsert_3() {
    print("basic insert 3:");
    List l = [1, 2, 3];
    l.insert(0, 4);
    print(l);
  }

  void basicInsert_4() {
    print("basic insert 4:");
    List l = [1, 2, 3];
    l.insertAll(0, [120, 130]);
    print(l);
  }

  void update_1() {
    print("Update :");
    List l = [1, 2, 3];
    l[0] = 123;
    print(l);
  }

  void update_2() {
    print("Update 2:");
    List l = [1, 2, 3, 4, 5, 6, 7, 8, 9];
    print('The value of list before replacing ${l}');

    l.replaceRange(0, 3, [11, 23, 24]);
    print(
        'The value of list after replacing the items between the range [0-3] is ${l}');
  }

  void remove_1() {
    print("remove 1:");
    List l = [1, 2, 3, 4, 5, 6, 7, 8, 9];
    print('The value of list before removing the list element ${l}');
    bool res = l.remove(1);
    print(res);
    print('The value of list after removing the list element ${l}');
  }

  void remove_2() {
    print("remove 2:");
    List l = [1, 2, 3, 4, 5, 6, 7, 8, 9];
    print('The value of list before removing the list element ${l}');
    dynamic res = l.removeAt(1);
    print('The value of the element ${res}');
    print('The value of list after removing the list element ${l}');
  }

  void remove_3() {
    print("remove 3:");
    List l = [1, 2, 3, 4, 5, 6, 7, 8, 9];
    print('The value of list before removing the list element ${l}');
    dynamic res = l.removeLast();
    print('The value of item popped ${res}');
    print('The value of list after removing the list element ${l}');
  }

  void remove_4() {
    print("remove 4:");
    List l = [1, 2, 3, 4, 5, 6, 7, 8, 9];
    print('The value of list before removing the list element ${l}');
    l.removeRange(0, 3);
    print(
        'The value of list after removing the list element between the range 0-3 ${l}');
  }
}
