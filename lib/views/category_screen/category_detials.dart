
import 'package:get/get.dart';
import '../../constants/consts.dart';
import '../../widgets_common/bg_widget.dart';
import 'item_details.dart';

class CategoryDetails extends StatelessWidget {
  final String? title;

  const CategoryDetails({super.key, required this.title});

  @override
  Widget build(BuildContext context) {
    return bgWidget(
        child: Scaffold(
      appBar: AppBar(
        title: title!.text.fontFamily(bold).white.make(),
      ),
      body: Container(
        padding: EdgeInsets.all(12),
        child: Column(
          children: [
            SingleChildScrollView(
              physics: BouncingScrollPhysics(),
              scrollDirection: Axis.horizontal,
              child: Row(
                children: List.generate(
                    6,
                    (index) => "babyclothing"
                        .text
                        .size(12)
                        .fontFamily(semibold)
                        .color(darkFontGrey)
                        .makeCentered() //make centered is used to center the text or anything
                        .box
                        .white
                        .rounded
                        .size(120, 60)
                        .margin(EdgeInsets.symmetric(horizontal: 4))
                        .make()),
              ),
            ),

            //items container
            20.heightBox,
            Expanded(child: Container(
              color: lightGrey,
              child: GridView.builder(
                shrinkWrap: true,
                  physics: BouncingScrollPhysics(),
                  itemCount: 6,
                  gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                    crossAxisCount: 2,
                    mainAxisExtent: 250,
                    mainAxisSpacing: 8,
                    crossAxisSpacing: 8
                  ),
                  itemBuilder: (context,index){
                    return Column(
                      crossAxisAlignment:
                      CrossAxisAlignment.start,
                      children: [
                        Image.asset(
                          imgP5,
                          height: 150,
                          width: 200,
                          fit: BoxFit.cover,
                        ),
                        "Laptop 4GB/64GB"
                            .text
                            .fontFamily(semibold)
                            .color(darkFontGrey)
                            .make(),
                        10.heightBox,
                        "\$600"
                            .text
                            .color(redColor)
                            .fontFamily(bold)
                            .size(16)
                            .make()
                      ],
                    ).box.white.outerShadowSm.margin(EdgeInsets.symmetric(horizontal: 4)).padding(EdgeInsets.all(12)).roundedSM.make().onTap(() {
                      Get.to(()=>ItemDetails(title: "Dummy item"));
                    });

                  }),
            )),
          ],
        ),
      ),
    ));
  }
}
