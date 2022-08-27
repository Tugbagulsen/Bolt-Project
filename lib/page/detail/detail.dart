import 'package:boltproject/constants/color_constant.dart';
import 'package:boltproject/page/home/home.dart';
import 'package:boltproject/widgets/custom_bilboardConainer_widgets.dart';
import 'package:boltproject/widgets/custom_center_widget.dart';
import 'package:boltproject/widgets/custom_row_widget.dart';
import 'package:boltproject/widgets/custom_text_widget.dart';
import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher.dart';
class DetailPage extends StatefulWidget {
  const DetailPage({Key? key}) : super(key: key);

  @override
  State<DetailPage> createState() => _DetailPageState();
}

class _DetailPageState extends State<DetailPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: _appBarText,
        leading: _backIconbutton,
        actions: [
          _favoriteIconButton,
        ],
        elevation: 0,
      ),
      body: ListView(
        children: [
          Container(
            padding: const EdgeInsets.all(15),
            child: Column(
              children: [
                _logoCenter,
                _informationText,
                _sizedBoxH50,
                _callRow,
                _sizedBoxH10,
                _mailRow,
                _sizedBoxH50,
                _billboard,
                _sizedBoxH50,
                _elevatedButton,
              ],
            ),
          ),
        ],
      ),
    );
  }

  Widget get _sizedBoxH50 => const SizedBox(height: 50);
  Widget get _sizedBoxH10 => const SizedBox(height: 10);
  Widget get _appBarText => const CustomText(
        text: "Turkcell Müşteri Hizmetleri",
        color: ColorConstants.blackColor,
        weight: FontWeight.normal,
        size: 16, 
      );
  Widget get _logoCenter => CustomCenter(heightFactor: 1.5, widget: _logoContainer);
  Widget get _backIconbutton => IconButton(
        icon: const Icon(
          Icons.arrow_back,
          size: 26,
          color: ColorConstants.blackColor,
        ),
        onPressed: () => {
          Navigator.push(
            context,
            MaterialPageRoute(builder: (context) => const HomePage()),
          )
        },
      );
  Widget get _favoriteIconButton => const IconButton(
        icon: Icon(
          Icons.star_border,
          size: 29,
          color: Colors.grey,
        ),
        onPressed: null,
      );
  Widget get _logoContainer => CustomBilboardContainer(
        height: 145,
        width: 356,
        color: ColorConstants.whiteColor,
        widget: Image.asset(
          
          "asset/turkcellyataylogo.png",
          width: 187,
          height: 129,
        ),
        size: 15,
      );
  Widget get _informationText => const CustomText(
        text:
            "Turkcell hatlı telefonunuzdan sadece 532'yi tuşlayarak ister sesli yanıt sisteminden isterseniz canlı müşteri temsilcisiyle işlemlerinizi kolayca yapabilirsiniz. ​Diğer operatörler ve sabit hatlardan ise 5325320000’ı tuşlayarak Turkcell Müşteri Hizmetleri’ne ulaşabili​​​​​rsiniz.​​​​​",
        size: 12,
        weight: FontWeight.normal,
        color: ColorConstants.blackColor,
      );
  Widget get _callRow => const CustomRow(
        icon: Icons.call,
        color: ColorConstants.primaryColor,
        size: 21,
        text: CustomText(
          text: "0532 532 00 00",
          size: 12,
          weight: FontWeight.normal,
          color: ColorConstants.blackColor,
        ),
        sizeWidth: 12,
      );
  Widget get _mailRow => const CustomRow(
        icon: Icons.mail,
        color: ColorConstants.primaryColor,
        size: 21,
        text: CustomText(
          text: "musterihizmetleri@turkcell.com.tr",
          size: 12,
          weight: FontWeight.normal,
          color: ColorConstants.blackColor,
        ),
        sizeWidth: 12,
      );
  Widget get _billboard => const CustomBilboardContainer(
        width: 320,
        height: 250,
        color: ColorConstants.whiteColor,
        widget: Center(
          child: CustomText(
            text: "320x250 Reklam Alanı",
            size: 12,
            weight: FontWeight.normal,
            color: ColorConstants.blackColor,
          ),
        ),
        size: 15, 
      );
  Widget get _elevatedRow => const CustomRow(
        icon: Icons.phone,
        color: ColorConstants.whiteColor,
        size: 44,
        text: CustomText(
          text: "0532 532 00 00",
          size: 24,
          color: ColorConstants.whiteColor,
          weight: FontWeight.bold,
        ),
        sizeWidth: 12,
      );
  Widget get _elevatedButton => ElevatedButton(
      style: ElevatedButton.styleFrom(
        minimumSize: const Size(356, 70),
        maximumSize: const Size(356, 70),
        primary: ColorConstants.secondaryColor,
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(10),
        ),
      ),
      onPressed: () async {
        final Uri launchUri = Uri(scheme: 'tel', path: '05325320000');
        // ignore: deprecated_member_use
        if (await canLaunch(launchUri.toString())) {
          // ignore: deprecated_member_use
          await launch(launchUri.toString());
        } else {
          print("The action is not supported. (no phone app)");
        }
      },
      child: _elevatedRow);
}
