import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import '../provider/theme_provider.dart';

class AttractionCard extends StatelessWidget {
  final String img;
  final String name;
  final String country;
  final String detail;

  const AttractionCard(
      {Key? key,
      required this.img,
      required this.name,
      required this.country,
      required this.detail})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    final themeProvider = Provider.of<ThemeProvider>(context);
    ThemeType theme = themeProvider.themeType;
    return Card(
      elevation: 3,
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(10.0),
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: <Widget>[
          Container(
            height: 180,
            decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(10.0),
                image:
                    DecorationImage(image: AssetImage(img), fit: BoxFit.cover)),
          ),
          Padding(
            padding: const EdgeInsets.all(12.0),
            child: Row(
              children: [
                Expanded(
                    child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      name,
                      style: TextStyle(
                        fontWeight: FontWeight.bold,
                        fontSize: 16,
                        color: theme == ThemeType.dark
                            ? const Color(0xffcfcfcf)
                            : const Color(0xff4a4a4a),
                      ),
                    ),
                    const SizedBox(
                      height: 4,
                    ),
                    Text(
                      country,
                      style: TextStyle(
                        fontSize: 12,
                        color: theme == ThemeType.dark
                            ? const Color(0xffcfcfcf)
                            : const Color(0xff858585),
                      ),
                    ),
                  ],
                )),
                const Expanded(
                  flex: 0,
                  child: Icon(
                    Icons.favorite,
                    color: Colors.red,
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
