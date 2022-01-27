import 'package:flutter/material.dart'
    show
        AppBar,
        BorderRadius,
        BorderSide,
        BoxDecoration,
        BuildContext,
        Center,
        Colors,
        Column,
        Container,
        DropdownButton,
        DropdownButtonHideUnderline,
        DropdownMenuItem,
        EdgeInsets,
        FormField,
        FormFieldState,
        //Icon,
        //Icons,
        InputDecoration,
        InputDecorator,
        Key,
        //MaterialPageRoute,
        //Navigator,
        OutlineInputBorder,
        Padding,
        Scaffold,
        SizedBox,
        State,
        StatefulWidget,
        Text,
        TextButton,
        TextStyle,
        Widget;
//import 'HomePage.dart';
//import 'package:flutter/src/widgets/basic.dart';

class FlatPage extends StatefulWidget {
  const FlatPage({Key? key}) : super(key: key);

  @override
  _FlatPageState createState() => _FlatPageState();
}

class _FlatPageState extends State<FlatPage> {
  String s = '';
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Home Page'),
        centerTitle: true,
        backgroundColor: Colors.blue,
        foregroundColor: Colors.white,
      ),
      body: Column(
        children: [
          const SizedBox(
            height: 200.0,
          ),
          const Center(
            child: Text(
              'Welcome Customer',
              style: TextStyle(color: Colors.black, fontSize: 30),
            ),
          ),
          const SizedBox(
            height: 50.0,
          ),
          //const MyStatefulWidget(),
          Padding(
            padding: const EdgeInsets.all(20.0),
            child: ProfileDropDownField(
              listValues: const [
                'DESTINATION 1',
                'DESTINATION 2',
                'DESTINATION 3',
                'DESTINATION 4',
                'DESTINATION 5'
              ],
              labeltext: 'Select Destination',
              currentSelectedValue: 'DESTINATION 1',
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(20.0),
            child: ProfileDropDownField(
              listValues: const ['CAR 1', 'CAR 2', 'CAR 3', 'CAR 4', 'CAR 5'],
              labeltext: 'Select Car Type',
              currentSelectedValue: 'CAR 1',
            ),
          ),
          const SizedBox(
            height: 5.0,
          ),
          Container(
            height: 50,
            width: 150,
            decoration: BoxDecoration(
                color: Colors.blue, borderRadius: BorderRadius.circular(20)),
            child: TextButton(
              onPressed: () {
                setState(() {
                  s = 'Have a safe and wonderful journey...!!!';
                });
              },
              child: const Text(
                'Confirm',
                style: TextStyle(color: Colors.white, fontSize: 25),
              ),
            ),
          ),
          const SizedBox(
            height: 70.0,
          ),
          Text(
            s,
            style: const TextStyle(color: Colors.black, fontSize: 20),
          ),
        ],
      ),
    );
  }
}

// ignore: must_be_immutable
class ProfileDropDownField extends StatefulWidget {
  String? labeltext;
  List<String> listValues;
  String? currentSelectedValue;
  ProfileDropDownField(
      {Key? key,
      this.labeltext,
      required this.listValues,
      this.currentSelectedValue})
      : super(key: key);

  @override
  _ProfileDropDownFieldState createState() => _ProfileDropDownFieldState();
}

class _ProfileDropDownFieldState extends State<ProfileDropDownField> {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(bottom: 20.0),
      child: FormField<String>(
        builder: (FormFieldState<String> state) {
          return InputDecorator(
            decoration: InputDecoration(
              labelText: widget.labeltext,
              hintText: "Select",
              fillColor: Colors.white,
              border: OutlineInputBorder(
                borderRadius: BorderRadius.circular(25.0),
                borderSide: const BorderSide(),
              ),
            ),
            isEmpty: false,
            child: DropdownButtonHideUnderline(
              child: DropdownButton<String>(
                value: widget.currentSelectedValue,
                isDense: true,
                onChanged: (String? newValue) {
                  setState(() {
                    widget.currentSelectedValue = newValue;
                    state.didChange(newValue);
                  });
                },
                items: widget.listValues.map((String value) {
                  return DropdownMenuItem(
                    value: value,
                    child: Text(value),
                  );
                }).toList(),
              ),
            ),
          );
        },
      ),
    );
  }
}
