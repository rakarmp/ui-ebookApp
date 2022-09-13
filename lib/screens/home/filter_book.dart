import 'package:flutter/material.dart';

void main() {
  runApp(const FilterBook());
}

class FilterBook extends StatelessWidget {
  const FilterBook({Key? key}) : super(key: key);

  @override
  Widget getWidget(BuildContext context, Widget widget) {
  return Center(
    child: InkWell(
      onTap: () {},
      child: Container(
        height: 40.0,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.all(
            Radius.circular(20.0),
          ),
          border: Border.all(color: Colors.black26, width: 1.0),
        ),
        child: Stack(
          children: <Widget>[
            Positioned(
              left: 10.0,
              top: 8.5,
              child: Container(
                height: 20.0,
                width: 20.0,
                decoration: BoxDecoration(
                  color: Colors.blue,
                  shape: BoxShape.rectangle,
                  borderRadius: BorderRadius.all(
                    Radius.circular(20.0),
                  ),
                ),
              ),
            ),
            Align(
              widthFactor: 1.0,
              alignment: Alignment.center,
              child: Container(
                padding: EdgeInsets.only(left: 40.0, right: 20.0),
                child: Text(
                  "Buku Comic",
                  style: TextStyle(fontSize: 20.0, color: Colors.black),
                ),
              ),
            ),
            Positioned(
              width: 0.0,
              height: 0.0,
              right: 5.0,
              top: 7.0,
              child: Container(
                padding: EdgeInsets.all(2.0),
                decoration: BoxDecoration(
                    shape: BoxShape.circle, color: Colors.grey.shade400),
                child: Icon(
                  Icons.close,
                  size: 20.0,
                  color: Colors.white,
                ),
              ),
            )
          ],
        ),
      ),
    ),
  );
}

  @override
  dynamic noSuchMethod(Invocation invocation) => super.noSuchMethod(invocation);
}
