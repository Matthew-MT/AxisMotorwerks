import 'package:flutter/material.dart';
import './images.dart';

//I would like to find a way to create pages based on title passed to _Nav_..._() method,
//as it would be much more efficent and less code, but havent figured out switch statements yet

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('Home')),
      backgroundColor: Colors.indigo,
      body: Column(children: <Widget>[
        SizedBox(
          height: 100,
          child: Row(
            children: <Widget>[
              const SizedBox(
                height: 100,
                width: 180,
                child: ImageHandler(),
              ),
              Row(
                mainAxisSize: MainAxisSize.min,
                children: const <Widget>[
                  SizedBox(
                    width: 40,
                  ),
                  _NavToAbout('About'),
                  SizedBox(
                    width: 40,
                  ),
                  _NavToPricing('Pricing'),
                  SizedBox(
                    width: 40,
                  ),
                  _NavToContact('Contact'),
                  SizedBox(
                    width: 40,
                  ),
                  _NavToFAQ('FAQ'),
                ],
              ),
            ],
          ),
        ),
      ]),
    );
  }
}

class PricingPage extends StatelessWidget {
  const PricingPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Pricing'),
      ),
      backgroundColor: Colors.green,
      body: Column(children: <Widget>[
        SizedBox(
          height: 100,
          child: Row(
            children: <Widget>[
              const SizedBox(
                height: 100,
                width: 180,
                child: ImageHandler(),
              ),
              Row(
                mainAxisSize: MainAxisSize.min,
                children: const <Widget>[
                  SizedBox(
                    width: 40,
                  ),
                  _NavToHome('Home'),
                  SizedBox(
                    width: 40,
                  ),
                  _NavToAbout('About'),
                  SizedBox(
                    width: 40,
                  ),
                  _NavToContact('Contact'),
                  SizedBox(
                    width: 40,
                  ),
                  _NavToFAQ('FAQ'),
                ],
              ),
            ],
          ),
        ),
      ]),
    );
  }
}

class FaqPage extends StatelessWidget {
  const FaqPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('FAQ')),
      backgroundColor: Colors.yellow,
      body: Column(children: <Widget>[
        SizedBox(
          height: 100,
          child: Row(
            children: <Widget>[
              const SizedBox(
                height: 100,
                width: 180,
                child: ImageHandler(),
              ),
              Row(
                mainAxisSize: MainAxisSize.min,
                children: const <Widget>[
                  SizedBox(
                    width: 40,
                  ),
                  _NavToHome('Home'),
                  SizedBox(
                    width: 40,
                  ),
                  _NavToAbout('About'),
                  SizedBox(
                    width: 40,
                  ),
                  _NavToPricing('Pricing'),
                  SizedBox(
                    width: 40,
                  ),
                  _NavToContact('Contact'),
                ],
              ),
            ],
          ),
        ),
      ]),
    );
  }
}

class AboutPage extends StatelessWidget {
  const AboutPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('About')),
      backgroundColor: Colors.orange,
      body: Column(children: <Widget>[
        SizedBox(
          height: 100,
          child: Row(
            children: <Widget>[
              const SizedBox(
                height: 100,
                width: 180,
                child: ImageHandler(),
              ),
              Row(
                mainAxisSize: MainAxisSize.min,
                children: const <Widget>[
                  SizedBox(
                    width: 40,
                  ),
                  _NavToHome('Home'),
                  SizedBox(
                    width: 40,
                  ),
                  _NavToPricing('Pricing'),
                  SizedBox(
                    width: 40,
                  ),
                  _NavToContact('Contact'),
                  SizedBox(
                    width: 40,
                  ),
                  _NavToFAQ('FAQ'),
                ],
              ),
            ],
          ),
        ),
      ]),
    );
  }
}

class ContactPage extends StatelessWidget {
  const ContactPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('Contact')),
      backgroundColor: Colors.red,
      body: Column(children: <Widget>[
        SizedBox(
          height: 100,
          child: Row(
            children: <Widget>[
              const SizedBox(
                height: 100,
                width: 180,
                child: ImageHandler(),
              ),
              Row(
                mainAxisSize: MainAxisSize.min,
                children: const <Widget>[
                  SizedBox(
                    width: 40,
                  ),
                  _NavToHome('Home'),
                  SizedBox(
                    width: 40,
                  ),
                  _NavToAbout('About'),
                  SizedBox(
                    width: 40,
                  ),
                  _NavToPricing('Pricing'),
                  SizedBox(
                    width: 40,
                  ),
                  _NavToFAQ('FAQ'),
                ],
              ),
            ],
          ),
        ),
      ]),
    );
  }
}

class _NavToHome extends StatelessWidget {
  final String title;
  const _NavToHome(this.title);

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      onPressed: () {
        Navigator.pushNamed(context, '/');
        // Navigator.push(
        //     context,
        //     MaterialPageRoute(
        //         builder: (context) =>
        //         const HomePage()));
      },
      child: Text(title),
    );
  }
}

class _NavToPricing extends StatelessWidget {
  final String title;
  const _NavToPricing(this.title);

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      onPressed: () {
        Navigator.pushNamed(context, '/pricing');
        // Navigator.push(
        //     context,
        //     MaterialPageRoute(
        //         builder: (context) =>
        //         const PricingPage()));
      },
      child: Text(title),
    );
  }
}

class _NavToFAQ extends StatelessWidget {
  final String title;
  const _NavToFAQ(this.title);

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      onPressed: () {
        Navigator.pushNamed(context, '/faq');
        // Navigator.push(
        //     context,
        //     MaterialPageRoute(
        //         builder: (context) =>
        //         const FaqPage()));
      },
      child: Text(title),
    );
  }
}

class _NavToContact extends StatelessWidget {
  final String title;
  const _NavToContact(this.title);

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      onPressed: () {
        Navigator.pushNamed(context, '/contact');
        // Navigator.push(
        //     context,
        //     MaterialPageRoute(
        //         builder: (context) =>
        //         const ContactPage()));
      },
      child: Text(title),
      /*
            style: ButtonStyle(
                backgroundColor:  MaterialStateProperty.all(Colors.red)),
                */
    );
  }
}

class _NavToAbout extends StatelessWidget {
  final String title;
  const _NavToAbout(this.title);

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      onPressed: () {
        Navigator.pushNamed(context, '/about');
        // Navigator.push(
        //     context,
        //     MaterialPageRoute(
        //         builder: (context) =>
        //         const AboutPage()));
      },
      child: Text(title),
    );
  }
}
