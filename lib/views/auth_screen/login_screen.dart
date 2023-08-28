
import 'package:e_mart_app/views/auth_screen/signup_screen.dart';
import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';
import '../../constants/consts.dart';
import '../../constants/lists.dart';
import '../../widgets_common/applogo_widget.dart';
import '../../widgets_common/bg_widget.dart';
import '../../widgets_common/custom_textfeild.dart';
import '../../widgets_common/our_button.dart';
import '../home_screen/home.dart';

class LoginScreen extends StatelessWidget {
  const LoginScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return bgWidget(
        child: Scaffold(
          resizeToAvoidBottomInset: false,//to avoid overflow
       body: Center(
          child: Column(
          children: [
            (context.screenHeight * 0.1).heightBox,
            applogoWidget(),
            10.heightBox,
            "Log in to $appname".text.fontFamily(bold).white.size(18).make(),
            20.heightBox,
            Column(
              children: [
                customTextFeild(
                  title: 'Email',
                  hint: emailHint,
                ),
                customTextFeild(title: 'Password', hint: passwordHint),
                Align(
                  alignment: Alignment.centerRight,
                  child: TextButton(
                      onPressed: () {}, child: forgetpass.text.make()),
                ),
                5.heightBox,
                ourButton(color: redColor,title: login, textColor: whiteColor, onpress: () {Get.to(()=>Home());}).box.width(context.screenWidth - 50).make(),
                5.heightBox,
                createNewAccount.text.color(fontGrey).make(),
                5.heightBox,
                ourButton(color: lightgolden,title: signup,textColor: whiteColor,onpress: (){
                  // Get.to(()=>SignupScreen());
                }).box.width(context.screenWidth-50).make(),
                10.heightBox,
                loginwith.text.color(fontGrey).make(),
                5.heightBox,
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: List.generate(3,
                          (index) => Padding(
                            padding: const EdgeInsets.all(8.0),
                            child: CircleAvatar(
                              backgroundColor: lightGrey,
                              radius: 25,
                    child: Image.asset(socialIconList[index],width: 30,),
                  ),
                          )),
                )

              ],
            )
                .box
                .white
                .rounded
                .padding(EdgeInsets.all(16))
                .width(context.screenWidth - 70)
                .shadowSm
                .make()
          ],
        ),
      ),
    ));
  }
}
