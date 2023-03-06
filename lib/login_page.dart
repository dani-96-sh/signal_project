import 'package:flutter/material.dart';
import 'package:signal_project/blog_page.dart';
import 'package:signal_project/forget_page.dart';

class LoginPage extends StatelessWidget {
  const LoginPage({super.key});
  void Navigate(BuildContext context, Page) {
    Navigator.of(context)
        .push(MaterialPageRoute(builder: (BuildContext context) {
      return Page;
    }));
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: SafeArea(
        child: SingleChildScrollView(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              SizedBox(
                height: 50,
              ),
              Row(
                children: [
                  Padding(padding: EdgeInsets.all(5)),
                  Text(
                    'Welcome To ',
                    style: TextStyle(fontSize: 25, color: Colors.black),
                  ),
                  Text(
                    'Signal',
                    style: TextStyle(
                        fontSize: 25, color: Color.fromRGBO(114, 5, 160, 1)),
                  ),
                  Icon(
                    Icons.login_sharp,
                    color: Color.fromRGBO(47, 2, 67, 1),
                  )
                ],
              ),
              SizedBox(
                height: 20.0,
              ),
              Image(
                height: 400,
                image: AssetImage('images/Signup.png'),
              ),
              SizedBox(height: 50),
              ElevatedButton(
                  onPressed: () {
                    Navigate(context, BlogPage());
                  },
                  child: Text('News'),
                  style: ElevatedButton.styleFrom(
                      backgroundColor: Color.fromRGBO(112, 3, 158, 1),
                      foregroundColor: Colors.white,
                      side: BorderSide(color: Color.fromRGBO(112, 3, 158, 1)),
                      minimumSize: Size(260, 40))),
              SizedBox(height: 2.5),
              OutlinedButton(
                onPressed: () {},
                child: Text('Sing Up'),
                style: OutlinedButton.styleFrom(
                    foregroundColor: Color.fromRGBO(112, 3, 158, 1),
                    side: BorderSide(color: Color.fromRGBO(112, 3, 158, 1)),
                    minimumSize: Size(260, 40)),
              ),
              SizedBox(height: 62.5),
              TextButton(
                  onPressed: () {
                    Navigate(context, ForgetPage());
                  },
                  child: Text('Forget Your Password ?'))
            ],
          ),
        ),
      ),
    );
  }
}
