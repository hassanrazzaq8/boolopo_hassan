import 'package:boolopo_project/presentation/bottomBar/bottombar_controller.dart';
import 'package:get/get.dart';

import '../../../core/utils/image_constant.dart';

class ShoppingCartController extends GetxController {
  final BottomBarController barController = Get.find();

  RxList<Cart> cartList = RxList([
    Cart(
      price: 250,
      quantity: 1.obs,
      wimage: ImageConstant.wallet,
      wname: "Amazfit GTS2 Mini gold Smart Wallet ",
    ),
    Cart(
      price: 350,
      quantity: 1.obs,
      wimage: ImageConstant.wallet,
      wname: " Automatic Lifestyle Chronograph Wallet",
    ),
    Cart(
      price: 299,
      quantity: 1.obs,
      wimage: ImageConstant.bag,
      wname: "Amazfit Mini Smart bag ",
    ),
    Cart(
      price: 455,
      quantity: 1.obs,
      wimage: ImageConstant.shoe,
      wname: "Swatch Big Brand Nike Shoe",
    )
  ]);

  double subTotal() {
    RxDouble? total = 0.0.obs;
    for (int i = 0; i < cartList.length; i++) {
      total.value += cartList[i].price * cartList[i].quantity.value;
    }
    return total.value;
  }
}

class Cart {
  String wimage;
  String wname;
  int price;
  RxInt quantity;

  Cart({
    required this.price,
    required this.quantity,
    required this.wimage,
    required this.wname,
  });
}
