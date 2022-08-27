import 'package:boltproject/constants/color_constant.dart';
import 'package:boltproject/page/login/login.dart';
import 'package:boltproject/widgets/custom_container_widget.dart';
import 'package:boltproject/widgets/custom_elevatedbutton_widget.dart';
import 'package:boltproject/widgets/custom_text_widget.dart';
import 'package:boltproject/widgets/custom_textfield_widget.dart';
import 'package:flutter/material.dart';

class RegisterPage extends StatefulWidget {
  const RegisterPage({Key? key}) : super(key: key);

  @override
  State<RegisterPage> createState() => _RegisterPageState();
}

class _RegisterPageState extends State<RegisterPage> {
  TextEditingController emailController = TextEditingController();
  TextEditingController passwordController = TextEditingController();
  TextEditingController nameController = TextEditingController();
  TextEditingController surnameController = TextEditingController();
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
              _registerText,
              _sizedBoxH40,
              _rowGoogle,
              _sizedBoxH20,
              Column(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                crossAxisAlignment: CrossAxisAlignment.stretch,
                children: [
                  _nameText,
                  _sizedBoxH20,
                  _nameTextField,
                  _sizedBoxH20,
                  _surnameText,
                  _sizedBoxH20,
                  _surnameTextField,
                  _sizedBoxH20,
                  _emailText,
                  _sizedBoxH20,
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
  Widget get _registerText => const Text(
        'Kayıt Olun',
        style: TextStyle(color: ColorConstants.primaryColor, fontSize: 36, fontWeight: FontWeight.w700),
      );
  Widget get _rowGoogle => Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: const [
          CustomContainer(
            height: 60,
            width: 182,
            imageText: 'asset/google.png',
            text: 'Google ile Kayıt Ol',
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
  Widget get _nameText => const Text(
        'İsminiz',
        style: TextStyle(
          fontSize: 14,
          fontWeight: FontWeight.w400,
        ),
      );
  Widget get _nameTextField => CustomTextField(
        controller: nameController,
        hintText: 'İsim',
        obscureText: false,
        prefixIcon: const Text('İsim'),
        textinputType: TextInputType.text,
      );
  Widget get _surnameText => const Text(
        'Soyisminiz',
        style: TextStyle(
          fontSize: 14,
          fontWeight: FontWeight.w400,
        ),
      );
  Widget get _surnameTextField => CustomTextField(
        controller: surnameController,
        hintText: 'Soyisim',
        obscureText: false,
        prefixIcon: const Text('Soyisim'),
        textinputType: TextInputType.text,
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
        style: TextStyle(
          fontSize: 14,
          fontWeight: FontWeight.w400,
        ),
      );

  Widget get _passwordTextField => CustomTextField(
        controller: passwordController,
        hintText: 'Şifrenizi Girin',
        obscureText: true,
        prefixIcon: const Text('Şifrenizi Girin'),
        textinputType: TextInputType.text,
      );

  Widget get _elevatedButton => const CustomElevatedButton(text: 'Kayıt Ol');
  Widget get _text => const CustomText(
        text: 'Zaten bir hesabınız var mı?',
        size: 20,
        weight: FontWeight.w700,
        color: ColorConstants.primaryColor,
      );
  Widget get _textLogIn => InkWell(
        onTap: () => Navigator.push(
          context,
          MaterialPageRoute(builder: (context) => const LoginPage()),
        ),
        child: const CustomText(
          text: 'Giriş Yapın',
          size: 19,
          weight: FontWeight.w400,
          color: ColorConstants.edgeColor,
        ),
      );
}
