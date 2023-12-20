import 'package:flutter/material.dart';

class CampingWidget extends StatelessWidget {
  const CampingWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          Image.network(
            'https://search.pstatic.net/common/?src=http%3A%2F%2Fblogfiles.naver.net%2FMjAyMzExMjJfMjky%2FMDAxNzAwNjAyODY2MDg1.a3dDbAghzn_dJwpWQqCaJi97pU-YxR7yAP0qL6q-rMUg.R5wrteEjMQzSNLlIj_T6MHVa2QFjDFwawvJXxFfgahgg.JPEG.sfoot%2FIMG_6145.jpg&type=sc960_832',
            width: double.infinity,
            fit: BoxFit.cover,
          ),
          secondArea(),
          thirdArea(),
        ],
      ),
    );
  }

  Widget secondArea() {
    return const Padding(
      padding: EdgeInsets.only(top: 32.0, bottom: 50),
      child: Row(
        children: [
          SizedBox(
            width: 40,
          ),
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                'data',
                style: TextStyle(fontWeight: FontWeight.bold, fontSize: 20),
              ),
              Text(
                'data',
                style: TextStyle(fontWeight: FontWeight.w400, fontSize: 15),
              ),
            ],
          ),
          Spacer(),
          Icon(
            Icons.star,
            color: Colors.red,
          ),
          Text('data'),
          SizedBox(
            width: 40,
          ),
        ],
      ),
    );
  }

  Widget thirdArea() {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
      children: [
        NewIconWidget(
            icon: const Icon(
              (Icons.call),
              color: Colors.blue,
              size: 30,
            ),
            title: 'call'),
        NewIconWidget(
            icon: const Icon(
              Icons.roundabout_left,
              color: Colors.blue,
              size: 30,
            ),
            title: 'fdf'),
        NewIconWidget(
          icon: const Icon(
            size: 30,
            Icons.dangerous,
            color: Colors.blue,
          ),
          title: 'df',
        )
      ],
    );
  }
}

class NewIconWidget extends StatelessWidget {
  String title;
  Icon icon;

  NewIconWidget({
    super.key,
    required this.icon,
    required this.title,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        icon,
        const SizedBox(
          height: 10,
        ),
        Text(
          title,
          style: const TextStyle(fontSize: 25, color: Colors.blue),
        )
      ],
    );
  }
}
