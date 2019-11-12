main() {
  Maps o = Maps();
  o.maps_1();
  o.maps_2();
  o.properties();
  o.functions();
}

class Maps {
  void maps_1() {
    print("maps 1:");
    var details = {'Usrname': 'tom', 'Password': 'pass@123'};
    details['Uid'] = 'U1oo1';
    print(details);
  }

  void maps_2() {
    print("maps 2:");
    var details = new Map();
    details['Usrname'] = 'admin';
    details['Password'] = 'admin@123';
    print(details);
  }

  void properties() {
    print("PROPERTIES: ");
    var details = {'Usrname': 'tom', 'Password': 'pass@123'};
    var hosts = {};

    print("KEYS : ");
    print(details.keys);

    print("VALUES : ");
    print(details.values);

    print("LENGTH");
    print(details.length);

    print("isEmpty : ");
    print(details.isEmpty);
    print(hosts.isEmpty);

    print("isNotEmpty : ");
    print(details.isNotEmpty);
    print(hosts.isNotEmpty);
  }

  void functions() {
    print("ADD ALL : ");
    Map m = {'name': 'Tom', 'Id': 'E1001'};
    print('Map :${m}');
    m.addAll({'dept': 'HR', 'email': 'tom@xyz.com'});
    print('Map after adding  entries :${m}');

    print("CLEAR : ");
    print('Map :${m}');
    m.clear();
    print('Map after invoking clear()  :${m}');

    print("REMOVE : ");
    m = {'name': 'Tom', 'Id': 'E1001'};
    print('Map :${m}');
    dynamic res = m.remove('name');
    print('Value popped from the Map :${res}');

    print("MAP FOREACH : ");
    var usrMap = {"name": "Tom", 'Email': 'tom@xyz.com'};
    usrMap.forEach((k, v) => print('${k}: ${v}'));
  }
}
