import 'package:flutter/foundation.dart';
import 'package:flutter_test/flutter_test.dart';

interface class MyInterface {
  void someMethod() {}
}

main() {
  test("Matching", () {
    var status = 200;
    String message = switch (status) {
      100 => () {
          return "normal";
        }.call(),
      _ => "unknown",
    };
  });
  test("Destructuring", () {
    var person = getPerson({
      "name": "thanh",
      "age": 27,
      "height": 1,
    });
    person.$1;
    //person.name;
  });

  test("Validating incoming JSON", () {
    var json = {
      'user': ['Lily', 13, "", ""]
    };
    var {'user': user} = json;
    if (kDebugMode) {
      print("user :.. $user");
    }
  });

  test("Validating incoming JSON_2", () {
    var json = {
      "code": 0,
      "message": "Request successful",
      "data": {
        "facet_counts": [],
        "found": 0,
        "hits": [],
        "out_of": 30297,
        "page": 1,
        "search_cutoff": false,
        "search_time_ms": 1,
        "code": null,
        "error": null
      }
    };

    if (json
        case {
          "code": int? code,
          "message": String? message,
          "data": dynamic data
        }) {
      if (kDebugMode) {
        print("data :.. $data");
      }
      var {
        "facet_counts": dynamic facetCounts,
        "fount": int found,
        "hits": dynamic hits,
      } = data;
    } else {
      if (kDebugMode) {
        print("else :..");
      }
    }
  });

  test("json", () {
    var json = {
      'user': ['Lily', 13]
    };
    var {
      'user': [name, age],
      //"name": name_2,
    } = json;

    print("json :.. ${json}");
  });

  test("switch", () {
    var value = "";
    var message = switch (value) {
      "" => 5,
      _ => 0,
    };
  });
}

(String, int, int) getPerson(Map<String, dynamic> json) {
  return (
    json['name'],
    json['age'],
    json['height'],
  );
}
