
import '../../constants/consts.dart';
import '../../constants/lists.dart';
import '../../widgets_common/bg_widget.dart';
import 'components/details_card_dart.dart';

class ProfileScreen extends StatelessWidget {
  const ProfileScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return bgWidget(
      child: Scaffold(
        body: SafeArea(
          child: Column(
              //crossAxisAlignment: CrossAxisAlignment.end,
              children: [
                //edit profile button
                Padding(
                  padding: const EdgeInsets.only(top: 8.0,left: 8.0,right: 8.0),
                  child: Align(
                      alignment: Alignment.topRight,
                      child: Icon(Icons.edit,color: whiteColor)).onTap(() {}),
                ),
                //user details section
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 8.0),
                  child: Row(
                    children: [
                      Image.asset(imgProfile2,width: 100,fit: BoxFit.cover,).box.roundedFull.clip(Clip.antiAlias).make(),
                      10.widthBox,
                      Expanded(child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          "Dummy User".text.white.fontFamily(semibold).make(),
                          "customer@example.com".text.white.make()
                        ],
                      )),
                      OutlinedButton(
                        style: OutlinedButton.styleFrom(
                          side: BorderSide(
                            color: Colors.white
                          )
                        ),
                          onPressed: (){}, child:logout.text.fontFamily(semibold).white.make())
                    ],
                  ),
                ),
                10.heightBox,
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    detailsCard(count: "00",title: "in your cart",width: context.screenWidth/3.4),
                    detailsCard(count: "32",title: "in your wishlist",width: context.screenWidth/3.4),
                    detailsCard(count: "100",title: "in your your orders",width: context.screenWidth/3.4),
                  ],
                ),
                //button setion
                ListView.separated(
                  shrinkWrap: true,
                  separatorBuilder: (context,index){
                    return Divider(
                      color: Colors.black38,
                    );
                  },
                  itemCount: profileButtonList.length,
                    itemBuilder: (BuildContext context,int index){
                    return ListTile(
                      leading: Image.asset(profileButtonsIcons[index],width: 22,),
                      title: profileButtonList[index].text.fontFamily(bold).color(darkFontGrey).make(),
                    );
                    }).box.rounded.margin(EdgeInsets.all(12)).padding(EdgeInsets.symmetric(horizontal: 16)).white.shadowSm.make().box.color(redColor).make()
              ],
            ),

        )
      )
    );

  }
}
