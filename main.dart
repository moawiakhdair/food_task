void main() {
  List<Map<String, dynamic>> orders = [
    {"id": 1, "status": "ready", "item": "burger"},
    {"id": 2, "status": "canceled", "item": "pizza"},
    {"id": 3, "status": "ready", "item": "cake"},
    {"id": 4, "status": "ready", "item": "salt"},
    {"id": 5, "status": "vip", "item": "fries"},
  ];

  for (var order in orders) {
    if (order["status"] == "canceled") {
      continue;
    }

    if (order["id"] == 4) {
      print("Order 4 is taking too long! Alert the kitchen.");
    }

    if (order["status"] == "vip") {
      print("VIP order found! Prioritize immediately.");
      break;
    }

    switch (order["item"]) {
      case "burger":
        print("Burger is ready");
        break;
      case "pizza":
        print("Pizza canceled");
        break;
      case "cake":
        print("Cake is ready");
        break;
      case "fries":
        print("Fries are ready");
        break;
    }
    
  }
}
