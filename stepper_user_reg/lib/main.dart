import 'package:flutter/material.dart';

void main() {
  runApp(
    const MaterialApp(
      home: stepper(),
    ),
  );
}

class stepper extends StatefulWidget {
  const stepper({Key? key}) : super(key: key);

  @override
  State<stepper> createState() => _stepperState();
}

class _stepperState extends State<stepper> {
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
  int initalStepperIndex = 0;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Edit your Profile"),
        centerTitle: true,
        flexibleSpace: Container(
          decoration: const BoxDecoration(
            gradient: LinearGradient(
              begin: Alignment.centerLeft,
              end: Alignment.centerRight,
              colors: [Color(0xff52b6f8), Color(0xff99e59f)],
            ),
          ),
        ),
      ),
      body: Theme(
        data: ThemeData(
          colorScheme: ColorScheme.fromSwatch().copyWith(
            // secondary: Colors.blue,
            //primary: Colors.blue,
            surface: Colors.blue,
            onSurface: Colors.blue,
            // onBackground: Colors.blue
          ),
        ),
        child: Stepper(
          type: StepperType.vertical,
          currentStep: initalStepperIndex,
          onStepContinue: () {
            if (initalStepperIndex < 11) {
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
          controlsBuilder: (context, details) => Container(),
          steps: [
            Step(
              /*  state: initalStepperIndex <= 0
                  ? StepState.editing
                  : StepState.complete,*/

              state: StepState.indexed,
              isActive: initalStepperIndex >= 0,
              title: Text(
                "Profile Picture",
                style: fontStyle,
              ),
              content: Container(
                margin: const EdgeInsets.only(left: 30, right: 30),
                child: Column(
                  children: [
                    Stack(
                      alignment: Alignment.bottomRight,
                      children: [
                        CircleAvatar(
                          radius: 60,
                        ),
                        FloatingActionButton(
                          mini: true,
                          onPressed: () {},
                          child: Icon(Icons.add),
                        ),
                      ],
                    ),
                  ],
                ),
              ),
            ),
            Step(
              /*  state: initalStepperIndex <= 1
                  ? StepState.editing
                  : StepState.complete,*/
              state: StepState.indexed,
              isActive: initalStepperIndex >= 1,
              title: Text(
                "Name",
                style: fontStyle,
              ),
              content: Form(
                child: Container(
                  child: Column(
                    children: [
                      SizedBox(
                        height: 20,
                      ),
                      TextFormField(
                        onTap: () {},
                        decoration: const InputDecoration(
                          prefixIcon: Icon(
                            Icons.person,
                            color: Colors.grey,
                          ),
                          labelText: 'User name',
                        ),
                      ),
                    ],
                  ),
                ),
              ),
            ),
            Step(
              // state: initalStepperIndex <= 2
              //     ? StepState.editing
              //     : StepState.complete,
              isActive: initalStepperIndex >= 2,
              title: Text(
                "Phone",
                style: fontStyle,
              ),
              content: Column(
                children: [
                  SizedBox(
                    height: 20,
                  ),
                  TextFormField(
                    onTap: () {},
                    decoration: const InputDecoration(
                      prefixIcon: Icon(
                        Icons.phone,
                        color: Colors.grey,
                      ),
                      labelText: 'Phone',
                    ),
                  ),
                ],
              ),
            ),
            Step(
              // state: initalStepperIndex <= 3
              //     ? StepState.editing
              //     : StepState.complete,
              isActive: initalStepperIndex >= 3,
              title: Text(
                "Email",
                style: fontStyle,
              ),
              content: Column(
                children: [
                  SizedBox(
                    height: 20,
                  ),
                  TextFormField(
                    onTap: () {},
                    decoration: const InputDecoration(
                      prefixIcon: Icon(
                        Icons.phone,
                        color: Colors.grey,
                      ),
                      labelText: 'Phone',
                    ),
                  ),
                ],
              ),
            ),
            Step(
              // state: initalStepperIndex <= 4
              //     ? StepState.editing
              //     : StepState.complete,
              isActive: initalStepperIndex >= 4,
              title: Text(
                "DOB",
                style: fontStyle,
              ),
              content: Column(
                children: [
                  SizedBox(
                    height: 20,
                  ),
                  TextFormField(
                    onTap: () {},
                    decoration: const InputDecoration(
                      prefixIcon: Icon(
                        Icons.date_range,
                        color: Colors.grey,
                      ),
                      labelText: 'Enter Date of Birth',
                    ),
                  ),
                ],
              ),
            ),
            Step(
              // state: initalStepperIndex <= 5
              //     ? StepState.editing
              //     : StepState.complete,
              isActive: initalStepperIndex >= 5,
              title: Text(
                "Gender",
                style: fontStyle,
              ),
              content: Column(
                children: [
                  SizedBox(
                    height: 20,
                  ),
                  TextFormField(
                    onTap: () {},
                    decoration: const InputDecoration(
                      prefixIcon: Icon(
                        Icons.transgender,
                        color: Colors.grey,
                      ),
                      labelText: 'Enter Gender',
                    ),
                  ),
                ],
              ),
            ),
            Step(
              // state: initalStepperIndex <= 6
              //     ? StepState.editing
              //     : StepState.complete,
              isActive: initalStepperIndex >= 6,
              title: Text(
                "Current Location",
                style: fontStyle,
              ),
              content: Column(
                children: [
                  SizedBox(
                    height: 20,
                  ),
                  TextFormField(
                    onTap: () {},
                    decoration: const InputDecoration(
                      prefixIcon: Icon(
                        Icons.location_on_rounded,
                        color: Colors.grey,
                      ),
                      labelText: 'Enter Current Location',
                    ),
                  ),
                ],
              ),
            ),
            Step(
              // state: initalStepperIndex <= 7
              //     ? StepState.editing
              //     : StepState.complete,
              isActive: initalStepperIndex >= 7,
              title: Text(
                "Nationalities",
                style: fontStyle,
              ),
              content: Column(
                children: [
                  SizedBox(
                    height: 20,
                  ),
                  TextFormField(
                    onTap: () {},
                    decoration: const InputDecoration(
                      prefixIcon: Icon(
                        Icons.flag,
                        color: Colors.grey,
                      ),
                      labelText: 'Enter Nationalities',
                    ),
                  ),
                ],
              ),
            ),
            Step(
              // state: initalStepperIndex <= 8
              //     ? StepState.editing
              //     : StepState.complete,
              isActive: initalStepperIndex >= 8,
              title: Text(
                "Religion",
                style: fontStyle,
              ),
              content: Column(
                children: [
                  SizedBox(
                    height: 20,
                  ),
                  TextFormField(
                    onTap: () {},
                    decoration: const InputDecoration(
                      prefixIcon: Icon(
                        Icons.add,
                        color: Colors.grey,
                      ),
                      labelText: 'Enter Religion',
                    ),
                  ),
                ],
              ),
            ),
            Step(
              // state: initalStepperIndex <= 9
              //     ? StepState.editing
              //     : StepState.complete,
              isActive: initalStepperIndex >= 9,
              title: Text(
                "Languages",
                style: fontStyle,
              ),
              content: Column(
                children: [
                  SizedBox(
                    height: 20,
                  ),
                  TextFormField(
                    onTap: () {},
                    decoration: const InputDecoration(
                      prefixIcon: Icon(
                        Icons.language,
                        color: Colors.grey,
                      ),
                      labelText: 'Enter Languages',
                    ),
                  ),
                ],
              ),
            ),
            Step(
              // state: initalStepperIndex <= 10
              //     ? StepState.editing
              //     : StepState.complete,
              isActive: initalStepperIndex >= 10,

              title: Text(
                "Biography",
                style: fontStyle,
              ),
              content: Column(
                children: [
                  SizedBox(
                    height: 20,
                  ),
                  TextFormField(
                    onTap: () {},
                    decoration: const InputDecoration(
                      prefixIcon: Icon(
                        Icons.date_range,
                        color: Colors.grey,
                      ),
                      labelText: 'Enter Biography',
                    ),
                  ),
                ],
              ),
            ),
            Step(
              // state: initalStepperIndex <= 10
              //     ? StepState.editing
              //     : StepState.complete,
              isActive: initalStepperIndex >= 11,
              title: Text(
                "Education",
                style: fontStyle,
              ),
              content: Column(
                children: [
                  SizedBox(
                    height: 20,
                  ),
                  TextFormField(
                    onTap: () {},
                    decoration: const InputDecoration(
                      prefixIcon: Icon(
                        Icons.cast_for_education,
                        color: Colors.grey,
                      ),
                      labelText: 'Enter Education',
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
