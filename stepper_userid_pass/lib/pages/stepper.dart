import 'package:flutter/material.dart';

class StepperPage extends StatefulWidget {
  const StepperPage({Key? key}) : super(key: key);

  @override
  State<StepperPage> createState() => _StepperPageState();
}

class _StepperPageState extends State<StepperPage> {
  int initalStepperIndex = 0;
  final GlobalKey<FormState> signUpKey = GlobalKey();
  final GlobalKey<FormState> ligInKey = GlobalKey();
  TextEditingController fullName = TextEditingController();
  TextEditingController emailId = TextEditingController();
  TextEditingController password = TextEditingController();
  TextEditingController conformPassword = TextEditingController();
  TextEditingController userName = TextEditingController();
  TextEditingController password2 = TextEditingController();
  TextStyle fontStyle =
      const TextStyle(fontSize: 17, fontWeight: FontWeight.w500);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        automaticallyImplyLeading: false,
        title: const Text("Stepper App"),
      ),
      body: Theme(
        data: ThemeData(
          colorScheme: ColorScheme.fromSwatch().copyWith(
            primary: Colors.redAccent,
          ),
        ),
        child: Stepper(
          type: StepperType.vertical,
          currentStep: initalStepperIndex,
          onStepContinue: () {
            if (initalStepperIndex < 2) {
              setState(
                () {
                  initalStepperIndex++;
                },
              );
            }
          },
          onStepCancel: () {
            if (initalStepperIndex > 0) {
              setState(
                () {
                  initalStepperIndex--;
                },
              );
            }
          },
          onStepTapped: (int index) {
            setState(
              () {
                initalStepperIndex = index;
              },
            );
          },
          steps: [
            Step(
              state: initalStepperIndex <= 0
                  ? StepState.editing
                  : StepState.complete,
              isActive: initalStepperIndex >= 0,
              title: Text(
                "SignUp",
                style: fontStyle,
              ),
              content: Form(
                key: signUpKey,
                child: Container(
                  margin: const EdgeInsets.only(left: 30, right: 30),
                  child: Column(
                    children: [
                      TextFormField(
                        onTap: () {},
                        decoration: const InputDecoration(
                            prefixIcon: Icon(
                              Icons.person,
                              color: Colors.grey,
                            ),
                            hintText: 'Full Name'),
                      ),
                      TextFormField(
                        onTap: () {},
                        decoration: const InputDecoration(
                            prefixIcon: Icon(
                              Icons.email,
                              color: Colors.grey,
                            ),
                            hintText: 'Email'),
                      ),
                      TextFormField(
                        onTap: () {},
                        decoration: const InputDecoration(
                            prefixIcon: Icon(
                              Icons.lock,
                              color: Colors.grey,
                            ),
                            hintText: 'Password'),
                      ),
                      TextFormField(
                        onTap: () {},
                        decoration: const InputDecoration(
                            prefixIcon: Icon(
                              Icons.lock,
                              color: Colors.grey,
                            ),
                            hintText: 'Conform Password'),
                      )
                    ],
                  ),
                ),
              ),
            ),
            Step(
              state: initalStepperIndex <= 1
                  ? StepState.editing
                  : StepState.complete,
              isActive: initalStepperIndex >= 1,
              title: Text(
                "Login",
                style: fontStyle,
              ),
              content: Form(
                child: Container(
                  margin: const EdgeInsets.only(left: 30, right: 30),
                  child: Column(
                    children: [
                      TextFormField(
                        onTap: () {},
                        decoration: const InputDecoration(
                            prefixIcon: Icon(
                              Icons.person,
                              color: Colors.grey,
                            ),
                            hintText: 'User Name'),
                      ),
                      TextFormField(
                        onTap: () {},
                        decoration: const InputDecoration(
                            prefixIcon: Icon(
                              Icons.email,
                              color: Colors.grey,
                            ),
                            hintText: 'Password'),
                      )
                    ],
                  ),
                ),
              ),
            ),
            Step(
              state: initalStepperIndex <= 2
                  ? StepState.editing
                  : StepState.complete,
              isActive: initalStepperIndex >= 2,
              title: Text(
                "Home",
                style: fontStyle,
              ),
              content: Container(),
            ),
          ],
        ),
      ),
    );
  }
}
