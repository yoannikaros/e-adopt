import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/painting.dart';

import '../../theme.dart';

class DetailNews extends StatelessWidget {
  const DetailNews({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {



    Widget isiberita(){
      return Stack(
        children: [
          Image.asset('aset/images_isiberita.png', width: 400),

          Container(
           padding: EdgeInsets.only(top: 20),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                GestureDetector(
                  onTap: () {
                    Navigator.pop(context);
                  },
                  child: Container(
                    margin: EdgeInsets.only(left: 20),
                      child: Image.asset('aset/icon_kembali.png', width: 25)),
                ),

                SizedBox(height: 45,),
                Container(
                  padding: EdgeInsets.only(left: 30),
                  child: Text(
                    'Dari Edopt, untuk anak Indonesia  ',
                    style: secondaryTextStyle.copyWith(
                        fontSize: 24, fontWeight: semiBold),
                  ),
                ),

                SizedBox(height: 45,),

                Row(
                  children: [

                    Container(
                margin: EdgeInsets.only(left: 20),
                child: Image.asset('aset/icon_pengguna.png', width: 20)),
                    Text(
                      'Dani',
                      style: secondaryTextStyle.copyWith(
                          fontSize: 17, fontWeight: FontWeight.w700),
                    ),
                    SizedBox(width: 155,),
                    Text(
                      '3 hari yang lalu',
                      style: secondaryTextStyle.copyWith(
                          fontSize: 17, fontWeight: FontWeight.w700),
                    ),

                  ],
                )
              ],
            ),
          ),

        ],
      );
    }

    Widget isi2(){
      return Container(
        margin: EdgeInsets.only(top: 20,left: 20),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              '3 hari yang lalu',
              style: blackTextStyle.copyWith(
                  fontSize: 17, fontWeight: FontWeight.w700),
            ),
            SizedBox(height: 20,),

            Text(
              'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Aliquet non egestas eget aliquam in vitae lobortis urna. Eu sit in viverra at. Lectus id in augue vel vel. Magna auctor fringilla convallis nisi. Euismod ultricies quis purus tincidunt posuere iaculis. Lacus, eget massa maecenas arcu sit tempor, at pellentesque magnis. Elementum nisl consequat platea eleifend eu ut interdum blandit. Luctus vitae, consectetur eu ornare est faucibus est in dolor.',
              style: blackTextStyle.copyWith(
                  fontSize: 17, fontWeight: FontWeight.w500),
            ),
          ],
        ),
      );
    }

    return Scaffold(
      resizeToAvoidBottomInset: false,
      backgroundColor: Colors.white,
      body: ListView(
        children: [
          isiberita(),
          isi2()
        ],
      ),
    );

  }
}
