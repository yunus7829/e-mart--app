
import '../../constants/consts.dart';

class CartScreen extends StatelessWidget {
  const CartScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.white,
      child: "Cart is Empty".text.color(darkFontGrey).size(25).fontFamily(bold).makeCentered(),
    );
  }
}
