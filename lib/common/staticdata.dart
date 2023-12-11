import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:sos_admin/app/modules/home/views/widget/dashboard.dart';
import 'package:sos_admin/app/modules/login/views/login_view.dart';
import 'package:sos_admin/app/modules/sos/views/widget/basic_tables.dart';
import 'package:sos_admin/app/modules/splash/views/splash_view.dart';

class AppConst extends GetxController implements GetxService {
  RxInt pageselecter = 0.obs;

  RxInt selectColor = 0.obs;
  RxInt selectedTile = 0.obs;

  RxInt gridcounter = 4.obs;

  RxInt newGridCounter = 4.obs;

  RxDouble size = 550.0.obs;

  RxDouble size2 = 350.0.obs;

  int selectCategory = 0;

  int gridecoumter1 = 4;
  int grideCount = 4;

  grideupdate(int value) {
    gridecoumter1 = value;
  }

  grideupdate1(int value) {
    gridecoumter1 = value;
    update();
  }

  changeCurrentIndex({int? index}) {
    selectCategory = index ?? 0;
    update();
  }

  //Switch
  RxBool switchistrue = false.obs;

  var page = [
    const NewDefaultPage(),

    const SizedBox(),
    const BasicTablesPage(),
    //   const NewDefaultPage(),
    //   // const DefaultPage(),//

    //  const GeneralPage(),
    //   const ChartPage(),
    //   const ProjectListPage(),
    //   const NewAddProjectPage(),
    //   // const CreateNewPage(), //
    //   // const OldProductPage(),//
    //   const ProductPage(),
    //   const ProductDetilsPage(),
    //   const InvoicePage(),
    //   const CartPage(),
    //   const CheckoutPage(),
    //   const PricingPage(),
    //   const Messages(),
    //   // const ChatPage(),//
    //   const NewUserProfile(),
    //   // const UsersProfilePage(),//
    //   const UsersEditPage(),
    //   const UsersCardsPage(),
    //   const ValiDationFormPage(),
    //   const NewCheckboxRadioPage(),
    //   // const CheckboxRadioPage(),//
    //   const DatePickerPage(),
    //   const AvatarsPage(),
    //   const ModalPage(),
    //   const DefaultStyle(),
    //   const FlatStyle(),
    //   const EdgeStyle(),
    //   const RaisedStyle(),
    //   const Faq(),
    //   const SingUpPage(),
    //   const EmailVerification(),
    //   const CompleteVerification(),
    //   const ForgotPassword()
  ].obs;

  void changePage(int newIndex) {
    pageselecter.value = newIndex;
  }

  List prodectname = [
    "Woman T-shirt",
    "Dream Beauty Fashion",
    "VOXATI",
    "Woman T-shirt",
    "Dream Beauty Fashion",
    "VOXATI",
    "Cyclamen",
    "Woman T-shirt",
    "Dream Beauty Fashion",
    "VOXATI",
    "Cyclamen",
    "Woman T-shirt",
    "Dream Beauty Fashion",
    "Woman T-shirt",
    "VOXATI",
    "Cyclamen",
    "VOXATI",
    "Cyclamen",
  ];

  List prodectdiscription = [
    "Women Full Sleeve Printed Sweatshirt",
    "Tops for Women Stylish",
    "Denim Jacket",
    "Women Full Sleeve Printed Sweatshirt",
    "Tops for Women Stylish",
    "Denim Jacket",
    "Stylish co-ord set 2 piece dress for women",
    "Women Full Sleeve Printed Sweatshirt",
    "Tops for Women Stylish",
    "Denim Jacket",
    "Stylish co-ord set 2 piece dress for women",
    "Women Full Sleeve Printed Sweatshirt",
    "Tops for Women Stylish",
    "Women Full Sleeve Printed Sweatshirt",
    "Denim Jacket",
    "Stylish co-ord set 2 piece dress for women",
    "Denim Jacket",
    "Stylish co-ord set 2 piece dress for women",
  ];

  List prodectprice = [
    "\$26.00",
    "\$56.00",
    "\$56.00",
    "\$16.00",
    "\$26.00",
    "\$23.00",
    "\$22.00",
    "\$16.00",
    "\$25.00",
    "\$36.00",
    "\$26.00",
    "\$95.00",
    "\$36.00",
    "\$76.00",
    "\$46.00",
    "\$27.00",
    "\$24.00",
    "\$13.00",
  ];

  List productimage = [
    "assets/full-length-portrait-happy-excited-girl-bright-colorful-clothes-holding-shopping-bags-while-standing-showing-peace-gesture-isolated.jpg",
    "assets/cheerful-shopaholic-paying-by-mobile-app.jpg",
    "assets/portrait-payment-white-happy-consumer.jpg",
    "assets/portrait-expressive-young-woman-holding-shopping-bags.jpg",
    "assets/cheerful-shopaholic-paying-by-mobile-app.jpg",
    "assets/full-length-portrait-happy-excited-girl-bright-colorful-clothes-holding-shopping-bags-while-standing-showing-peace-gesture-isolated.jpg",
    "assets/cheerful-shopaholic-paying-by-mobile-app.jpg",
    "assets/portrait-payment-white-happy-consumer.jpg",
    "assets/portrait-expressive-young-woman-holding-shopping-bags.jpg",
    "assets/cheerful-shopaholic-paying-by-mobile-app.jpg",
    "assets/full-length-portrait-happy-excited-girl-bright-colorful-clothes-holding-shopping-bags-while-standing-showing-peace-gesture-isolated.jpg",
    "assets/cheerful-shopaholic-paying-by-mobile-app.jpg",
    "assets/portrait-payment-white-happy-consumer.jpg",
    "assets/portrait-expressive-young-woman-holding-shopping-bags.jpg",
    "assets/cheerful-shopaholic-paying-by-mobile-app.jpg",
    "assets/portrait-payment-white-happy-consumer.jpg",
    "assets/portrait-expressive-young-woman-holding-shopping-bags.jpg",
    "assets/cheerful-shopaholic-paying-by-mobile-app.jpg",
  ];
}
