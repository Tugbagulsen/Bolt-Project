import 'package:boltproject/constants/color_constant.dart';
import 'package:boltproject/page/login/register.dart';
import 'package:boltproject/widgets/custom_container_widget.dart';
import 'package:boltproject/widgets/custom_elevatedbutton_widget.dart';
import 'package:boltproject/widgets/custom_text_widget.dart';
import 'package:boltproject/widgets/custom_textfield_widget.dart';
import 'package:flutter/material.dart';

class LoginPage extends StatefulWidget {
  const LoginPage({Key? key}) : super(key: key);

  @override
  State<LoginPage> createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  TextEditingController emailController = TextEditingController();
  TextEditingController passwordController = TextEditingController();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        padding: const EdgeInsets.all(20.0),
        margin: const EdgeInsets.all(15.0),
        child: SingleChildScrollView(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: [
              _sizedBoxH70,
              const Text(
                'Giriş Yapın',
                style: TextStyle(color: ColorConstants.primaryColor, fontSize: 36, fontWeight: FontWeight.w700),
              ),
              _sizedBoxH40,
              _rowGoogle,
              _sizedBoxH20,
              Column(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                crossAxisAlignment: CrossAxisAlignment.stretch,
                children: [
                  _emailText,
                  _sizedBoxH40,
                  _emailTextField,
                  _sizedBoxH20,
                  _passwordText,
                  _sizedBoxH20,
                  _passwordTextField,
                  _sizedBoxH70,
                  _elevatedButton,
                  _sizedBoxH70,
                  _text,
                  _sizedBoxH10,
                  _textLogIn
                ],
              )
            ],
          ),
        ),
      ),
    );
  }

  Widget get _sizedBoxH10 => const SizedBox(height: 10);
  Widget get _sizedBoxH20 => const SizedBox(height: 20);
  Widget get _sizedBoxH40 => const SizedBox(height: 40);
  Widget get _sizedBoxH70 => const SizedBox(height: 70);
  Widget get _rowGoogle => Row(
        mainAxisAlignment: MainAxisAlignment.spaceAround,
        children: const [
          CustomContainer(
            height: 60,
            width: 182,
            imageText: 'asset/google.png',
            text: 'Google ile Giriş Yap',
          ),
          CustomContainer(
            height: 60,
            width: 65,
            imageText: 'asset/Facebook.png',
            text: '',
          ),
          CustomContainer(
            height: 60,
            width: 65,
            imageText: 'asset/apple.png',
            text: '',
          ),
        ],
      );

  Widget get _emailText => const Text(
        'E-Mail Adresiniz',
        style: TextStyle(
          fontSize: 14,
          fontWeight: FontWeight.w400,
        ),
      );

  Widget get _emailTextField => CustomTextField(
        controller: emailController,
        hintText: 'E-mail Adresi',
        obscureText: false,
        prefixIcon: const Text('E-mail Adresi'),
        textinputType: TextInputType.emailAddress,
      );

  Widget get _passwordText => const Text(
        'Şifrenizi Girin',
        style: TextStyle(fontSize: 14, fontWeight: FontWeight.w400, color: ColorConstants.blackColor),
      );

  Widget get _passwordTextField => CustomTextField(
        controller: passwordController,
        hintText: 'Şifrenizi Girin',
        obscureText: true,
        prefixIcon: const Text('Şifrenizi Girin'),
        textinputType: TextInputType.emailAddress,
      );

  Widget get _elevatedButton => const CustomElevatedButton(text: 'Giriş Yap');
  Widget get _text => const CustomText(
        text: 'Hesabınız yok mu?',
        size: 20,
        weight: FontWeight.w700,
        color: ColorConstants.primaryColor,
      );
  Widget get _textLogIn => InkWell(
        onTap: () => Navigator.push(
          context,
          MaterialPageRoute(builder: (context) => const RegisterPage()),
        ),
        child: const CustomText(
          text: 'Kayıt Olun',
          size: 19,
          weight: FontWeight.w400,
          color: ColorConstants.edgeColor,
        ),
      );
}
