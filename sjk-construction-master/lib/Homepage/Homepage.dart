import 'package:flutter/material.dart';
import 'package:sjk/Tasks/Task_service.dart';
import 'package:sjk/client/client.dart';
import 'package:sjk/Payment/income_service.dart';
import 'package:sjk/Payment/payment.dart';
import 'package:sjk/Tasks/task.dart';
import 'package:sjk/client/client_service.dart';
import '../Attendence/present_service.dart';
import '../Calculator/calculator.dart';
import '../Materials/material-service.dart';
import '../Materials/material.dart';
import '../SizeConfig.dart';
import '../Attendence/attendence.dart';
import 'drawer.dart';
import 'package:sjk/front/login_page.dart';

class Homepage extends StatefulWidget {
  const Homepage({Key? key}) : super(key: key);

  @override
  State<Homepage> createState() => _HomepageState();
}

class _HomepageState extends State<Homepage> {
  final List<GridItemData> gridData = [
    GridItemData('CLIENT', 'assets/client.png'),
    GridItemData('TASKS', 'assets/tasks.png'),
    GridItemData('MATERIALS', 'assets/materials.png'),
    GridItemData('ATTENDENCE', 'assets/attendence.png'),
    GridItemData('TRANSACTION', 'assets/payment.png'),
    GridItemData('CALCULATOR', 'assets/calculator.png'),
  ];
  @override
  Widget build(BuildContext context) {
    SizeConfig.init(context);
    return Scaffold(

        drawer: const MainDrawer(

        ),
        appBar: AppBar(
          backgroundColor: const Color(0xff01579B),

          title: const Padding(
            padding:  EdgeInsets.only(left: 0.0),
            child: Text(
              "CONSTRUCTION-DIARY",
              style: TextStyle(
                  fontSize: 20,
                  color: Colors.white,
                  fontWeight: FontWeight.bold),
            ),
          ),
        ),
        body:
        CustomScrollView(
          physics: const BouncingScrollPhysics(),
          slivers: [
            SliverList(
              delegate: SliverChildListDelegate([
                Stack(
                  children: [
                    ClipPath(
                      clipper: WaveClipper(),
                      child: Container(
                        height: 280,

                        decoration: BoxDecoration(
                          boxShadow: const [
                            BoxShadow(
                              blurRadius: 4,
                            )
                          ],
                          color: const  Color(0xff01579B),

                          border: Border.all(
                            width: 1,
                            color: Colors.white,
                          ),

                          borderRadius:const  BorderRadius.only(
                            topLeft: Radius.circular(5),
                            topRight: Radius.circular(5),
                            bottomLeft: Radius.circular(5),
                            bottomRight: Radius.circular(5),
                          ),
                        ),

                      ),
                    ),
                    const Padding(
                      padding:  EdgeInsets.only(left:10.0,top: 45,bottom: 20),
                      child: Text(
                        'Welcome to Juggle❤️',
                            style: TextStyle(color: Colors.white,fontWeight: FontWeight.bold,fontSize: 28),
                      ),
                    ),
                    const Padding(
                      padding:  EdgeInsets.only(left:12.0,top: 90,),
                      child: Text(
                        'Manage your tasks at ease🎯️',
                        style: TextStyle(color: Colors.white,fontWeight: FontWeight.w300,fontSize: 16),
                      ),

                    ),

                    LayoutBuilder(
    builder: (BuildContext context, BoxConstraints constraints) {
      return
        Container(
            width: constraints.maxWidth > 460 ? 460 : constraints.maxWidth,
            height: constraints.maxHeight > 450 ? 450 : constraints
                .maxHeight,
            margin: const EdgeInsets.symmetric(vertical: 210, horizontal: 26),
            padding: const EdgeInsets.symmetric(vertical: 16),
            decoration: BoxDecoration(
              border: Border.all(color: const Color(0xff01579B), width: 5),
              color: const Color(0xffe6f2ff),
              borderRadius: BorderRadius.circular(15),
            ),
            child:
            GridView.builder(
              itemCount: 6,
              gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                crossAxisCount: 2,
              ),
              itemBuilder: (BuildContext context, int index) {
                return FractionallySizedBox(
                  widthFactor: 0.9,
                  heightFactor: 0.9,
                  child: GestureDetector(
                    onTap: () {
                      if (index == 0) {
                        Navigator.of(context).push(MaterialPageRoute(
                          builder: (context) =>  const Client_service(),
                        ));
                      } else if (index == 1) {
                        Navigator.of(context).push(MaterialPageRoute(
                          builder: (context) => const Task_service(),
                        ));
                      } else if (index == 2) {
                        Navigator.of(context).push(MaterialPageRoute(
                          builder: (context) => const Material_service(),
                        ));
                      } else if (index == 3) {
                        Navigator.of(context).push(MaterialPageRoute(
                          builder: (context) => Data4(),
                        ));
                      } else if (index == 4) {
                        Navigator.of(context).push(MaterialPageRoute(
                          builder: (context) => const Data5(),
                        ));
                      } else if (index == 5) {
                        Navigator.of(context).push(MaterialPageRoute(
                          builder: (context) => const Data6(),
                        ));
                      }
                    },
                    child: Container(
                      margin: const EdgeInsets.all(7),
                      decoration: BoxDecoration(
                        boxShadow: const [
                          BoxShadow(
                            blurRadius: 7,
                          ),
                        ],
                        color: Colors.white,
                        borderRadius: BorderRadius.circular(15),
                      ),
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Container(
                            margin: const EdgeInsets.all(20),
                            padding: const EdgeInsets.all(20),
                            width: 50,
                            height: 50,
                            decoration: BoxDecoration(
                              shape: BoxShape.circle,
                              image: DecorationImage(
                                image: AssetImage(
                                    gridData[index].imagePath),
                                fit: BoxFit.fill,
                              ),
                            ),
                          ),
                          Align(
                            alignment: Alignment.bottomCenter,
                            child: Text(
                              gridData[index].text,
                              style: const TextStyle(
                                fontSize: 12,
                                fontWeight: FontWeight.bold,
                                color: Color(0xff01579B),
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                );
              },
            ));



    })
                    ]),


                  ],
                ),
            )]),
            );}
}
class WaveClipper extends CustomClipper<Path> {
  @override
  Path getClip(Size size) {
    var path = Path();
    path.lineTo(0, 220);
    path.quadraticBezierTo(size.width / 4, 160, size.width / 2, 175);
    path.quadraticBezierTo(3 / 4 * size.width, 190, size.width, 130);
    path.lineTo(size.width, 0);
    path.close();
    return path;
  }

  @override
  bool shouldReclip(CustomClipper<Path> oldClipper) {
    return false;
  }
}
class GridItemData {
  final String text;
  final String imagePath;

  GridItemData(this.text, this.imagePath);
}