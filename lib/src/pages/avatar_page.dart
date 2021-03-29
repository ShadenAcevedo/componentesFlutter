import 'package:flutter/material.dart';

class AvatarPage extends StatelessWidget {
  const AvatarPage({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Avatar Page'),
        actions: [
          CircleAvatar(
            backgroundImage: NetworkImage('https://static01.nyt.com/images/2017/05/27/arts/27SHAKIRA/27SHAKIRA-superJumbo.jpg'),
            radius: 25.0,
          ),

          Container(
            margin: EdgeInsets.only(right: 10.0),
            child: CircleAvatar(
              child: Text('SD'),
              backgroundColor: Colors.pink,
            ),
          )
        ],
      ),
      body: Center(
        child: FadeInImage(
            placeholder: AssetImage('assets/jar-loading.gif'),
            image: NetworkImage('https://hips.hearstapps.com/hmg-prod.s3.amazonaws.com/images/shakira-pelo-rojo-1612549011.jpg?resize=640:*')
        ),
      ),
    );
  }
}