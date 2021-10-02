import 'package:flutter/cupertino.dart';

final myList = [
  "https://images.pexels.com/photos/7479820/pexels-photo-7479820.jpeg?auto=compress&cs=tinysrgb&dpr=1&w=500",
  "https://images.pexels.com/photos/9604196/pexels-photo-9604196.jpeg?auto=compress&cs=tinysrgb&dpr=1&w=500",
  "https://images.pexels.com/photos/9604185/pexels-photo-9604185.jpeg?auto=compress&cs=tinysrgb&dpr=1&w=500",
  "https://images.pexels.com/photos/9604193/pexels-photo-9604193.jpeg?auto=compress&cs=tinysrgb&dpr=1&w=500",
  "https://images.pexels.com/photos/7914437/pexels-photo-7914437.jpeg?auto=compress&cs=tinysrgb&dpr=1&w=500",
  "https://images.pexels.com/photos/7739778/pexels-photo-7739778.jpeg?auto=compress&cs=tinysrgb&dpr=1&w=500",
  "https://images.pexels.com/photos/7914437/pexels-photo-7914437.jpeg?auto=compress&cs=tinysrgb&dpr=1&w=500",
  "https://global-uploads.webflow.com/5d556af3fe21d65f602dca94/6141e7a0017a2826761ac1ad_Group%2024.jpg"
];

Widget clothList() {
  return SizedBox(
    height: 500,
    child: GridView.builder(
      padding: const EdgeInsets.all(8.0),
      gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
        crossAxisCount: 2,
        mainAxisSpacing: 10.0,
        crossAxisSpacing: 10.0,
      ),
      // shrinkWrap: true,
      // physics: const NeverScrollableScrollPhysics(),
      itemCount: myList.length,
      itemBuilder: (BuildContext context, int index) {
        return Container(
          height: 400,
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(20),
            image: DecorationImage(
                image: NetworkImage(
                  myList[index],
                ),
                fit: BoxFit.cover),
          ),
        );
      },
    ),
  );
}
