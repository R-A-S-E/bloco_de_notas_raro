import 'package:flutter/material.dart';

class CardNoteWidget extends StatelessWidget {
  final String title;
  final Color titleColor;
  final List<Widget> icon;
  final String text;
  final String date;
  final onTap;

  const CardNoteWidget({
    Key? key,
    required this.title,
    required this.titleColor,
    required this.text,
    required this.icon,
    required this.date,
    this.onTap,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 8, vertical: 6.5),
      child: InkWell(
        child: Card(
          elevation: 3,
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              Container(
                child: Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Text(
                    title,
                    maxLines: 2,
                    overflow: TextOverflow.ellipsis,
                    style: TextStyle(
                        color: Colors.white,
                        fontSize: 16,
                        fontWeight: FontWeight.w700),
                  ),
                ),
                width: double.infinity,
                height: 52,
                decoration: BoxDecoration(
                    boxShadow: <BoxShadow>[
                      BoxShadow(
                          color: Colors.black54,
                          blurRadius: 1.0,
                          offset: Offset(0.0, 0.75))
                    ],
                    color: titleColor,
                    borderRadius: BorderRadius.all(Radius.circular(4.0))),
              ),
              SizedBox(height: 10),
              Padding(
                padding: const EdgeInsets.only(right: 10),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.end,
                  children: icon,
                ),
              ),
              SizedBox(height: 10),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 8.0),
                child: Text(
                  text,
                  style: TextStyle(
                    fontSize: 14.0,
                  ),
                  maxLines: text.length < 100 ? 3 : 8,
                  overflow: TextOverflow.ellipsis,
                ),
              ),
              Padding(
                padding:
                    const EdgeInsets.symmetric(horizontal: 8.0, vertical: 8.0),
                child: Text(
                  'Criação: $date',
                  style: TextStyle(
                    fontSize: 10.0,
                    fontStyle: FontStyle.italic,
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
