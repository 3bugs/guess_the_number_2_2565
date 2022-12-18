void main() {
  // fetch from database
  var n = 'Abc';
  var p = 100;

  // สร้างออบเจ็ค Product โดยใช้ข้อมูลที่ดึงมาจาก database
  var product = Product(n, p, stockCount: 555, orderCount: 111);

  print(product.name);
  print(product.price.toString());
  print(product.orderCount.toString());
  product.orderCount = 10;
}

class Product {
  final String name;
  final int price;
  int orderCount;
  int stockCount;

  // positional parameter, named parameter
  Product(this.name, this.price,
      {required this.orderCount, required this.stockCount}); // constructor
}
