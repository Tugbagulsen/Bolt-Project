import 'package:boltproject/constants/color_constant.dart';
import 'package:boltproject/widgets/custom_addContainer_widget.dart';
import 'package:boltproject/widgets/custom_listView_widgets.dart';
import 'package:boltproject/widgets/custom_text_widget.dart';
import 'package:flutter/material.dart';

import 'widget/custom_homeContainer_widget.dart';

class HomePage extends StatelessWidget {
  const HomePage({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      drawer: const Drawer(
        child: CustomListView(),
      ),
      appBar: AppBar(
        title: Image.asset('asset/BoltAppBarLogo.png'),
        centerTitle: false,
        elevation: 0,
      ),
      body: ListView(
        children: [
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              _sizedBoxH10,
              _brifeText,
              _sizedBoxH10,
              _searchBar,
              _sizedBoxH10,
              _favoriteText,
              _sizedBoxH10,
              SingleChildScrollView(
                scrollDirection: Axis.horizontal,
                child: _favoriteContainer,
              ),
              _sizedBoxH10,
              _categoryText,
              _sizedBoxH10,
              _telekomText,
              _sizedBoxH10,
              SingleChildScrollView(
                scrollDirection: Axis.horizontal,
                child: _kategoriContainer,
              ),
              _sizedBoxH10,
              _elektronikText,
              _sizedBoxH10,
              SingleChildScrollView(
                scrollDirection: Axis.horizontal,
                child: _kategoriContainer,
              ),
              _sizedBoxH10,
              _bankText,
              _sizedBoxH10,
              SingleChildScrollView(
                scrollDirection: Axis.horizontal,
                child: _kategoriContainer,
              ),
              _sizedBoxH10,
              Center(
                child: _advertisementContainer,
              ),
              _sizedBoxW100
            ],
          ),
        ],
      ),
    );
    //ListView(
    //   children: [
    //     Column(
    //       children: [
    //         _sizedBoxH10,
    //         _brifeText,
    //         _sizedBoxH10,
    //         _searchBar,
    //         _sizedBoxH10,
    //         _favoriteText,
    //         _sizedBoxH10,
    //         SingleChildScrollView(
    //           scrollDirection: Axis.horizontal,
    //           child: _favoriteContainer,
    //         ),
    //         _sizedBoxH10,
    //         _categoryText,
    //         _sizedBoxH10,
    //         _telekomText,
    //         _sizedBoxH10,
    //         SingleChildScrollView(
    //           scrollDirection: Axis.horizontal,
    //           child: _kategoriContainer,
    //         ),
    //         _sizedBoxH10,
    //         _elektronikText,
    //         _sizedBoxH10,
    //         SingleChildScrollView(
    //           scrollDirection: Axis.horizontal,
    //           child: _kategoriContainer,
    //         ),
    //         _sizedBoxH10,
    //         _bankText,
    //         _sizedBoxH10,
    //         SingleChildScrollView(
    //           scrollDirection: Axis.horizontal,
    //           child: _kategoriContainer,
    //         ),
    //         _sizedBoxH10,
    //         Center(
    //           child: _advertisementContainer,
    //         ),
    //         _sizedBoxW100
    //       ],
    //     ),
    //   ],
    // );
  }

  Widget get _sizedBoxH10 => const SizedBox(height: 10);
  Widget get _sizedBoxW10 => const SizedBox(width: 10);
  Widget get _sizedBoxW100 => const SizedBox(width: 100);

  Widget get _searchBar => Center(
        child: Container(
            width: 356,
            height: 50,
            decoration: const BoxDecoration(
                boxShadow: [
                  BoxShadow(
                    color: Color.fromARGB(255, 178, 177, 177),
                    blurRadius: 1.0,
                    spreadRadius: 1.0,
                    offset: Offset(1.0, 1.0), // shadow direction: bottom right
                  )
                ],
                borderRadius: BorderRadius.all(
                  Radius.circular(9),
                ),
                color: Colors.white),
            child: _searchBarText),
      );
  Widget get _searchBarText => Row(
        children: const [
          IconButton(
            icon: Icon(Icons.search, size: 24),
            onPressed: null,
          ),
          InkWell(
            onTap: null,
            child: Text(
              'Marka ara...',
              style: TextStyle(
                fontSize: 12,
                fontWeight: FontWeight.bold,
              ),
            ),
          ),
        ],
      );

  Widget get _brifeText => const CustomText(
        color: ColorConstants.blackColor,
        size: 12,
        text: 'Müşteri hizmetlerine erişmek istediğiniz markayı arayın veya aşağıdaki listeden seçin.',
        weight: FontWeight.normal,
      );
  Widget get _favoriteText => const CustomText(
        color: ColorConstants.blackColor,
        size: 16,
        text: 'Favoriler',
        weight: FontWeight.bold,
      );
  Widget get _categoryText => const CustomText(
        color: ColorConstants.blackColor,
        weight: FontWeight.bold,
        size: 16,
        text: 'Kategoriler',
      );
  Widget get _telekomText => const CustomText(
        color: ColorConstants.primaryColor,
        weight: FontWeight.normal,
        size: 14,
        text: 'Telekom & İnternet',
      );
  Widget get _elektronikText => const CustomText(
        color: ColorConstants.primaryColor,
        weight: FontWeight.normal,
        size: 14,
        text: 'Elektronik',
      );
  Widget get _bankText => const CustomText(
        color: ColorConstants.primaryColor,
        weight: FontWeight.normal,
        size: 14,
        text: 'Banka',
      );

  Widget get _favoriteContainer => Row(
        children: [
          _sizedBoxW10,
          InkWell(
            child: const CustomHomeContainer(
              text: 'Vodafone',
              imageText: "asset/vodafone.png",
            ),
            onTap: () => {
              // Navigator.push(
              //   context,
              //   MaterialPageRoute(builder: (context) => const DetailPage()),
              // )
            },
          ),
          _sizedBoxW10,
          const CustomHomeContainer(
            text: 'Vodafone',
            imageText: "asset/vodafone.png",
          ),
          _sizedBoxW10,
          const CustomHomeContainer(
            text: 'Vodafone',
            imageText: "asset/vodafone.png",
          ),
          _sizedBoxW10,
          const CustomHomeContainer(
            text: 'Vodafone',
            imageText: "asset/vodafone.png",
          ),
          _sizedBoxW10,
          const CustomHomeContainer(
            text: 'Vodafone',
            imageText: "asset/vodafone.png",
          ),
          _sizedBoxW10,
          const CustomaddContainer(),
          _sizedBoxW10,
          const CustomaddContainer(),
        ],
      );
  // Widget get _kategoriText => CustomPadding(
  //       fontSize: 10,
  //       weight: FontWeight.bold,
  //     );
  // Widget get _telekomText => const CustomText(
  //       text: 'Telekom & İnternet',
  //     );
  // Widget get _elektroniktext => const CustomText(
  //       text: 'Elektronik',
  //     );
  // Widget get _bankaText => const CustomText(
  //       text: 'Banka',
  //     );
  Widget get _kategoriContainer => Row(
        children: [
          _sizedBoxW10,
          const CustomHomeContainer(
            text: 'Vodafone',
            imageText: "asset/vodafone.png",
          ),
          _sizedBoxW10,
          const CustomHomeContainer(
            text: 'Vodafone',
            imageText: "asset/vodafone.png",
          ),
          _sizedBoxW10,
          const CustomHomeContainer(
            text: 'Vodafone',
            imageText: "asset/vodafone.png",
          ),
          _sizedBoxW10,
          const CustomHomeContainer(
            text: 'Vodafone',
            imageText: "asset/vodafone.png",
          ),
          _sizedBoxW10,
          const CustomHomeContainer(
            text: 'Vodafone',
            imageText: "asset/vodafone.png",
          ),
          _sizedBoxW10,
          const CustomHomeContainer(
            text: 'Vodafone',
            imageText: "asset/vodafone.png",
          ),
          _sizedBoxW10,
          const CustomHomeContainer(
            text: 'Vodafone',
            imageText: "asset/vodafone.png",
          ),
          _sizedBoxW10,
          const CustomHomeContainer(
            text: 'Vodafone',
            imageText: "asset/vodafone.png",
          ),
        ],
      );
  Widget get _advertisementContainer => Container(
        height: 75,
        width: 320,
        color: ColorConstants.whiteColor,
        child: const Center(
          child: Text('320x50 Reklam Alanı'),
        ),
      );
}
