import 'package:flutter/material.dart';
import 'package:weather_app/pages/home_page.dart';

class MasterPage extends StatelessWidget {
  const MasterPage();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        width: double.infinity,
        child: SingleChildScrollView(
          child: Stack(
            alignment: Alignment.center,
            children: [

              const Image(
                image: NetworkImage("https://images.nationalgeographic.org/image/upload/t_edhub_resource_key_image/v1638886301/EducationHub/photos/lightning-bolts.jpg"),
                width: double.infinity,
                height: 900,
                fit: BoxFit.fill,
              ),
              // button to navigate
              ElevatedButton(onPressed: (){
                Navigator.push(context, MaterialPageRoute(builder: (_){
                  // غير اسم الصفحة الي الصفحه التي سوف تذهب لها
                  return HomePage();
                }));
              }, child: const Text("Weather App"))
            ],
          ),
        ),
      ),
    );
  }
}