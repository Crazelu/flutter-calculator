import 'package:calculator/UI/shared/large_button.dart';
import 'package:calculator/UI/shared/medium_button.dart';
import 'package:calculator/UI/shared/small_button.dart';
import 'package:calculator/UI/shared/vertical_space.dart';
import 'package:calculator/UI/theme/dark_mode.dart';
import 'package:calculator/UI/view/home_view_model.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

class Home extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    double height = MediaQuery.of(context).size.height;
    double width = MediaQuery.of(context).size.width;
    var themeModel = Provider.of<DarkModeModel>(context);
    var model = Provider.of<HomeViewModel>(context);
    return Scaffold(
        body: SafeArea(
      child: Container(
          padding: EdgeInsets.symmetric(horizontal: 20, vertical: 20),
          color: Theme.of(context).primaryColorLight,
          height: height,
          width: width,
          child: Column(children: <Widget>[
            //first row
            Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: <Widget>[
                  GestureDetector(
                    onTap: () {},
                    child: Container(
                        width: 50,
                        height: 30,
                        color: Theme.of(context).accentColor,
                        child: Center(
                          child: Text('RAD',
                              style: TextStyle(
                                  fontSize: 16, color: Color(0xffff9d27))),
                        )),
                  ),
                  //icon shows a drop down when tapped
                  GestureDetector(
                    onTap: () {
                      themeModel.toggleAppTheme();
                    },
                    child: Container(
                      child: Icon(
                        Icons.more_vert,
                        color: Theme.of(context).primaryColorDark,
                      ),
                    ),
                  )
                ]),

            //section for text fields to display what is currently being typed and the result

            Container(
              padding: EdgeInsets.only(right: 8),
              height: height * .15,
              width: width,
              child: Column(
                  crossAxisAlignment: CrossAxisAlignment.end,
                  children: <Widget>[
                    //two text fields
                    //one for the expression for calculation
                    verticalSpace(),
                    Text(model.expression,
                        style: TextStyle(
                            fontSize: 24,
                            color: Theme.of(context)
                                .primaryColorDark
                                .withOpacity(.6))),
                    //one for the result
                    verticalSpace(),
                    Container(
                      alignment: Alignment.centerRight,
                      width: width,
                      child: Text(model.result,
                          maxLines: 1,
                          softWrap: true,
                          overflow: TextOverflow.clip,
                          style: TextStyle(
                              fontWeight: FontWeight.w600,
                              fontSize: 32,
                              color: Theme.of(context).primaryColorDark)),
                    ),
                  ]),
            ),
            verticalSpace(),
            //now to the main deal

            //section for first row of buttons
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: <Widget>[
                SmallButton(text: 'e', onTap: () {}),
                SmallButton(text: 'π', onTap: () {}),
                SmallButton(text: 'sin', onTap: () {}),
                SmallButton(
                    text: 'del',
                    onTap: () {
                      model.deleteLast();
                    })
              ],
            ),
            verticalSpace(),
            //second row of buttons
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: <Widget>[
                MediumButton(
                    text: "C",
                    onTap: () {
                      model.clearAll();
                    },
                    textColor: Colors.pinkAccent,
                    buttonColor: Theme.of(context).highlightColor),
                MediumButton(
                    text: "(",
                    onTap: () {
                      model.onTap('( ');
                    }),
                MediumButton(
                  text: ")",
                  onTap: () {
                    model.onTap(' )');
                  },
                ),
                MediumButton(
                    text: "÷",
                    onTap: () {
                      model.onTap(' ÷ ');
                    },
                    textColor: Colors.pinkAccent,
                    buttonColor: Theme.of(context).highlightColor),
              ],
            ),
            verticalSpace(),
            //third row of buttons
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: <Widget>[
                MediumButton(
                  text: "7",
                  onTap: () {
                    model.onTap('7');
                  },
                ),
                MediumButton(
                  text: "8",
                  onTap: () {
                    model.onTap('8');
                  },
                ),
                MediumButton(
                  text: "9",
                  onTap: () {
                    model.onTap('9');
                  },
                ),
                MediumButton(
                    text: "×",
                    onTap: () {
                      model.onTap(' × ');
                    },
                    textColor: Colors.pinkAccent,
                    buttonColor: Theme.of(context).highlightColor),
              ],
            ),
            verticalSpace(),
            //fourth row of buttons
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: <Widget>[
                MediumButton(
                  text: "4",
                  onTap: () {
                    model.onTap('4');
                  },
                ),
                MediumButton(
                  text: "5",
                  onTap: () {
                    model.onTap('5');
                  },
                ),
                MediumButton(
                  text: "6",
                  onTap: () {
                    model.onTap('6');
                  },
                ),
                MediumButton(
                    text: "-",
                    onTap: () {
                      model.onTap(' - ');
                    },
                    textColor: Colors.pinkAccent,
                    buttonColor: Theme.of(context).highlightColor),
              ],
            ),
            verticalSpace(),
            //fifth row of buttons
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: <Widget>[
                MediumButton(
                  text: "1",
                  onTap: () {
                    model.onTap('1');
                  },
                ),
                MediumButton(
                  text: "2",
                  onTap: () {
                    model.onTap('2');
                  },
                ),
                MediumButton(
                  text: "3",
                  onTap: () {
                    model.onTap('3');
                  },
                ),
                MediumButton(
                    text: "+",
                    onTap: () {
                      model.onTap(' + ');
                    },
                    textColor: Colors.pinkAccent,
                    buttonColor: Theme.of(context).highlightColor),
              ],
            ),
            verticalSpace(),
            //sixth row of buttons
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: <Widget>[
                LargeButton(
                  text: "0",
                  onTap: () {
                    model.onTap('0');
                  },
                ),
                MediumButton(
                  text: ".",
                  onTap: () {
                    model.onTap('.');
                  },
                ),
                MediumButton(
                    text: "=",
                    onTap: () {
                      model.updateResult();
                    },
                    textColor: Colors.white,
                    buttonColor: Theme.of(context).primaryColor),
              ],
            ),
          ])),
    ));
  }
}
