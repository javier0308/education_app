import 'package:flutter/material.dart';

class DescriptionSection extends StatelessWidget {
  const DescriptionSection({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.only(top: 5),
      child: Column(
        children: [
          Text(
            'Sit eu ut ut ullamco eiusmod labore minim est ut velit qui reprehenderit dolore aliqua. Deserunt amet veniam consequat aute anim nostrud dolore amet eiusmod tempor. Esse nostrud et in esse. Do labore quis nostrud id dolore.',
            style: TextStyle(
              fontSize: 16,
              color: Colors.black.withOpacity(0.7),
            ),
            textAlign: TextAlign.justify,
          ),
          const SizedBox(
            height: 20,
          ),
          Row(
            children: const [
              Text(
                'Course Length: ',
                style: TextStyle(fontSize: 18, fontWeight: FontWeight.w600),
              ),
              Icon(
                Icons.timer,
                color: Color(0xff674aef),
              ),
              SizedBox(
                width: 5,
              ),
              Text(
                '26 Hours',
                style: TextStyle(fontSize: 16, fontWeight: FontWeight.w500),
              )
            ],
          ),
          const SizedBox(
            height: 10,
          ),
          Row(
            children: const [
              Text(
                'Rating: ',
                style: TextStyle(fontSize: 18, fontWeight: FontWeight.w600),
              ),
              Icon(
                Icons.star,
                color: Colors.amber,
              ),
              Icon(
                Icons.star,
                color: Colors.amber,
              ),
              Icon(
                Icons.star,
                color: Colors.amber,
              ),
              Icon(
                Icons.star,
                color: Colors.amber,
              ),
              Icon(
                Icons.star,
                color: Colors.amber,
              ),
              SizedBox(
                width: 5,
              ),
              Text(
                '4.8',
                style: TextStyle(fontSize: 16, fontWeight: FontWeight.w500),
              )
            ],
          )
        ],
      ),
    );
  }
}
