import 'package:flutter/material.dart';
import '../widgets/text_modifier.dart';
import '../widgets/banner_page.dart';
import '../widgets/description.dart';
import '../widgets/content.dart';



class About extends StatelessWidget {
  final double appBarHeight;
  const About ({required this.appBarHeight, super.key});

  @override
  Widget build(BuildContext context) {
    final
      width = MediaQuery.of(context).size.width;
    return BannerPage(
      appBarHeight: appBarHeight,
      bannerSource: "images/bmw.jpg",
      bannerText: "ABOUT US",
      children: <Widget>[
        Container(
          margin: const EdgeInsets.only(
            top: 0,
          ),
          decoration: BoxDecoration(
            boxShadow: [
              BoxShadow(
                offset: const Offset(0, 5),
                color: const Color.fromARGB(255, 255, 255, 255).withOpacity(0.5),
                spreadRadius: 20,
                blurRadius: 20
              ),
            ],
          ),
          height: (MediaQuery.of(context).size.width)/6,
          width: MediaQuery.of(context).size.width,
          child: Stack(
            children: <Widget>[
              SizedBox(
                width: MediaQuery.of(context).size.width,
                height: 400,
                child: Image.asset("images/carbonfiber.png" ,
                  fit: BoxFit.fitWidth,
                  ),
              ),
              const Center(
                child: Text("LEARN MORE ABOUT US AND WHAT WE CAN DO FOR YOU",
                  textAlign: TextAlign.center,
                  style: basicHeaderStyle,
                ),
              ),
            ],
          ),
        ),
        contentWithImage(context,
        '''
        We at Axis MotorWerks understand the importance of 
        excellent customer service. Our focus is on building 
        long, term, mutually beneficial relationships with our 
        customers by providing honest, transparent, and reliable 
        service at a competitive price. 
        
        We always provide a detailed explanation of the work 
        that needs to be done on your vehicle. We will never
        perform any work on your vehicle without your approval. 
        We will always provide you with a written estimate of 
        the work that needs to be done, to ensure that you are 
        aware of the estimated cost of work before we begin.
        ''',
        'WHAT WE REPRESENT', 
        Image.asset('../images/bmw.jpg'),
        450),
        Container(
          color: const Color.fromARGB(255, 235, 235, 235),
          height: 100,
          width: MediaQuery.of(context).size.width,
          child: Column(
            children: [
              Center(
                child: Text("MEET OUR TEAM",
                  textAlign: TextAlign.center,
                  style: basicHeaderStyle.copyWith(
                    color: Colors.black,
                    fontStyle: FontStyle.italic,
                    fontWeight: FontWeight.bold,
                    fontSize: 48,
                  ),
                ),
              ),
              headerDivider(width, 8),
            ],
          ),
        ),
        description(context, 
        '''
        Ryan McCallum has spent over 20 years specializing 
        as a German and Japanese mechanic serving the 
        Western Slope of Colorado. Owning a luxury resale 
        car dealership, and repairs, he decided it was time 
        to do something that would bring customers 
        confidence back to Grand Junction auto repair.
        ''', 
        "       Ryan McCallum", Image.asset('../images/bmw.jpg')),
        descriptionSwap(context, "...", "Ethan McCallum", Image.asset('../images/bmw.jpg')),
        description(context, "...", "Claudia McCallum", Image.asset('../images/bmw.jpg')),
        descriptionSwap(context, "...", "Betsy Beyers", Image.asset('../images/bmw.jpg')),
        description(context,
        '''
        Peyton and Max McCallum are the mascotts of
        Axis MotorWerks. Max is highly trained in 
        customer service and loves to greet customers.
        Peyton is a master at sitting around and taking
        naps. They are both very friendly and love to
        get treats, and would appreciate it if you
        brought them some!
        ''', "Peyton & Max", Image.asset('../images/bmw.jpg')),
      ],
    );
  }
}
