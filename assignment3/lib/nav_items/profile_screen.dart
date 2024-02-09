import 'package:assignment3/widget/CustomText.dart';
import 'package:flutter/material.dart';

// ignore: must_be_immutable
class ProfileScreen extends StatefulWidget {
  ProfileScreen({super.key});

  @override
  State<ProfileScreen> createState() => _ProfileScreenState();
}

var name = '';

GlobalKey<FormState> formkey = GlobalKey<FormState>();

class _ProfileScreenState extends State<ProfileScreen> {
  TextEditingController nameController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Form(
          key: formkey,
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text(
                'controller: ${nameController.text}',
                style: TextStyle(
                  color: Colors.black,
                  fontSize: 20,
                ),
              ),
              SizedBox(
                height: 20,
              ),
              Text(
                'var data: ${name}',
                style: TextStyle(
                  color: Colors.black,
                  fontSize: 20,
                ),
              ),
              SizedBox(
                height: 20,
              ),
              Padding(
                padding: const EdgeInsets.only(left: 30, right: 30),
                child: CustomTextFieldWidget(
                  controller: nameController,
                  obscureText: false,
                  keyboardType: TextInputType.text,
                  prefixIcon: Icon(Icons.mail),
                  prefixIconColor: Colors.black,
                  hintText: 'Enter your mail address',
                  validator: (value) {
                    if (value!.isEmpty) {
                      return 'TextBox is empty';
                    }
                    return null;
                  },
                ),
              ),
              SizedBox(
                height: 20,
              ),
              Padding(
                padding: const EdgeInsets.only(left: 30, right: 30),
                child: CustomTextFieldWidget(
                  controller: nameController,
                  obscureText: false,
                  keyboardType: TextInputType.number,
                  prefixIcon: Icon(Icons.call),
                  prefixIconColor: Colors.black,
                  hintText: 'Enter your phone number',
                  validator: (value) {
                    if (value!.length == 11) {
                      return '11 digit number';
                    }
                    return null;
                  },
                ),
              ),
              SizedBox(
                height: 20,
              ),
              Padding(
                padding: const EdgeInsets.only(left: 30, right: 30),
                child: CustomTextFieldWidget(
                  controller: nameController,
                  obscureText: true,
                  keyboardType: TextInputType.text,
                  prefixIcon: Icon(Icons.password),
                  prefixIconColor: Colors.black,
                  hintText: 'Minimum 8 digit Password',
                  validator: (value) {
                    if (value!.length < 8) {
                      return 'Minimum 8 digit';
                    }
                    return null;
                  },
                ),
              ),
              SizedBox(
                height: 20,
              ),
              InkWell(
                onTap: () {
                  if (formkey.currentState!.validate()) {
                    setState(() {
                      nameController.text = nameController.text;
                    });
                  }
                },
                child: Container(
                  height: 30,
                  width: 70,
                  color: Colors.red,
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
