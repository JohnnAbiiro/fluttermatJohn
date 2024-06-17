import 'package:flutter/material.dart';
import 'pages/formclass.dart';
import 'pages/dropdownclass.dart';
import 'pages/checkboxclass.dart';
import 'pages/radiobuttonclass.dart';
void main() {
  runApp( MyApp());
}
 class MyApp extends StatefulWidget {
   const MyApp({super.key});

   @override
   State<MyApp> createState() => _MyAppState();
 }

 class _MyAppState extends State<MyApp> {
     final TextEditingController emailT =TextEditingController ();
     String cText ='';
     String? selectedValue;
     void callBack(String vtext) {
       setState(() {
         cText = vtext;
       });
       print(cText) ;
     }

     void dropdownCallback(String? value) {
       setState(() {
         selectedValue = value;
       });
       print(selectedValue);
     }

   @override
   Widget build(BuildContext context) {
     return  MaterialApp(
       home: Scaffold(
         body: Container(
              width: double.infinity,
              child: Form(
                  child:Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      buildermethod(
                        labelText: 'email',
                         hintText: 'Enter Email',
                          emailText: emailT ,
                          callbackFunction: callBack ,
                          autofocus: true,
                          obscureText: false,
                         keyboardType: TextInputType.emailAddress,
                        textCapitalization:TextCapitalization.sentences ,
                        autocorrect: false,
                        textAlign: TextAlign.start,
                        borderRadius: 11.0,
                        enabledBorderColor: Colors.black,
                        enabledBorderWidth: 1,
                        focusedBorderColor: Colors.red,
                        focusedBorderWidth: 1,
                      ),
                      buildermethod(
                        labelText: 'email',
                        hintText: 'Enter Email',
                        emailText: emailT ,
                        callbackFunction: callBack ,
                        autofocus: true,
                        obscureText: false,
                        keyboardType: TextInputType.emailAddress,
                        textCapitalization:TextCapitalization.sentences ,
                        autocorrect: false,
                        textAlign: TextAlign.start,
                        borderRadius: 11.0,
                        enabledBorderColor: Colors.black,
                        enabledBorderWidth: 1,
                        focusedBorderColor: Colors.red,
                        focusedBorderWidth: 1,
                      ),

                      DropdownBuilderMethod(
                        labelText: 'Select Option',
                        hintText: 'Choose one',
                        items: ['Option 1', 'Option 2', 'Option 3'],
                        selectedValue: selectedValue,
                        callbackFunction: dropdownCallback,
                        borderRadius: 11.0,
                        enabledBorderColor: Colors.black,
                        enabledBorderWidth: 1,
                        focusedBorderColor: Colors.red,
                        focusedBorderWidth: 1,
                      ),

                      Center(
                        child: CheckboxButton(
                          labelText: 'Accept Terms',
                          initialValue: false,
                          onChanged: (bool? value) {
                            print('Checkbox value: $value');
                          },
                          labelStyle: TextStyle(fontSize: 18.0),
                          activeColor: Colors.green,
                          checkColor: Colors.white,
                          borderColor: Colors.black,
                          borderRadius: 12.0,
                          borderWidth: 1.5,
                        ),
                      ),

                      CheckboxButton(
                        labelText: 'Accept Terms',
                        initialValue: false,
                        onChanged: (bool? value) {
                          print('Checkbox value: $value');
                        },
                        labelStyle: TextStyle(fontSize: 18.0),
                        activeColor: Colors.green,
                        checkColor: Colors.white,
                        borderColor: Colors.black,
                        borderRadius: 12.0,
                        borderWidth: 1.5,
                      ),

                Center(
                  child: RadioButtonGroup(
                    groupLabel: 'Choose an option',
                    options: ['Option 1', 'Option 2', 'Option 3'],
                    callbackFunction: (selectedOption) {
                      print('Selected option: $selectedOption');
                    },
                  ),
                  ),


                      Padding(
                        padding: EdgeInsets.all(8.0),
                        child: InkWell(
                          onTap: (){
                            print('Save successfully');
                          },
                          child: Container(
                            width: 150,
                            height: 80,
                            decoration: BoxDecoration(
                              border: Border.all(color: Colors.black, width: 2.0), // Adding a border with color and width
                              borderRadius: BorderRadius.circular(12.0),   // Adding border radius for rounded corners
                              color: Colors.green,
                            ),
                            child:  Center(       // Centering the text inside the container
                              child: Text(
                                'Login'+cText,
                                style: const TextStyle(
                                  fontSize: 18,
                                  fontStyle: FontStyle.normal,
                                  color: Colors.white,     // Adding text color for better visibility
                                ),
                              ),
                            ),
                          ),
                        ),
                      ),
                    ],
                  ),

              ),
         ),
       ),
     );
   }
 }
