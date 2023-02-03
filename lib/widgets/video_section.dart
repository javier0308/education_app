import 'package:flutter/material.dart';

class VideoSection extends StatelessWidget {
  VideoSection({super.key});
  final List<String> videoList = [
    'Introduction to Flutter',
    'Instaling Flutter on Windows',
    'Setup Emulator on Windows',
    'Creating Our First App'
  ];
  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      shrinkWrap: true,
      physics: const NeverScrollableScrollPhysics(),
      itemCount: videoList.length,
      itemBuilder: (context, index) => ListTile(
        leading: Container(
          padding: const EdgeInsets.all(5),
          decoration: BoxDecoration(
            color: (index == 0)
                ? const Color(0xff674aef)
                : const Color(0xff674aef).withOpacity(0.6),
            shape: BoxShape.circle,
          ),
          child: const Icon(
            Icons.play_arrow_rounded,
            color: Colors.white,
            size: 30,
          ),
        ),
        title: Text(videoList[index]),
        subtitle: const Text('20 min 50 sec'),
      ),
    );
  }
}
