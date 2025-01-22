import 'package:flutter/material.dart';
import 'package:get/get.dart';

class InputTest extends StatefulWidget {
  const InputTest({super.key});

  @override
  _InputTestState createState() => _InputTestState();
}

class _InputTestState extends State<InputTest> {
  String enteredPin = ""; // Store the entered PIN
  final String correctPin = "123456"; // Correct PIN

  void onNumberPressed(String number) {
    if (enteredPin.length < 6) {
      setState(() {
        enteredPin += number;
      });

      if (enteredPin.length == 6) {
        // Check if PIN is correct
        if (enteredPin == correctPin) {
          Get.to(() => SuccessPage()); // Navigate to new page
        } else {
          // Reset PIN on failure
          setState(() {
            enteredPin = "";
          });
          Get.snackbar("Error", "Incorrect PIN. Try again!",
              backgroundColor: Colors.red, colorText: Colors.white);
        }
      }
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey,
      appBar: AppBar(),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          // OTP Display
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: List.generate(
              6,
              (index) {
                return Container(
                  width: 30,
                  height: 30,
                  margin: const EdgeInsets.all(6.0),
                  decoration: BoxDecoration(
                    border: Border.all(color: Colors.white),
                    borderRadius: BorderRadius.circular(100.0),
                    color: enteredPin.length > index
                        ? Colors.white
                        : Colors.transparent,
                  ),
                );
              },
            ),
          ),
          const SizedBox(height: 20.0),

          // Number Pad
          Container(
            padding: const EdgeInsets.symmetric(horizontal: 40),
            child: GridView.builder(
              shrinkWrap: true,
              gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                crossAxisCount: 3,
                mainAxisSpacing: 16,
                crossAxisSpacing: 32,
              ),
              itemCount: 12, // Includes numbers + delete button
              itemBuilder: (context, index) {
                if (index == 9) return const SizedBox.shrink();
                if (index == 10) return buildNumberButton("0");
                if (index == 11) {
                  return IconButton(
                    icon: Icon(Icons.backspace, color: Colors.white),
                    onPressed: () {
                      if (enteredPin.isNotEmpty) {
                        setState(() {
                          enteredPin =
                              enteredPin.substring(0, enteredPin.length - 1);
                        });
                      }
                    },
                  );
                }
                return buildNumberButton((index + 1).toString());
              },
            ),
          ),
        ],
      ),
    );
  }

  Widget buildNumberButton(String number) {
    return GestureDetector(
      onTap: () => onNumberPressed(number),
      child: Container(
        margin: const EdgeInsets.all(4),
        alignment: Alignment.center,
        decoration: BoxDecoration(
          border: Border.all(color: Colors.white),
          borderRadius: BorderRadius.circular(50.0),
        ),
        child: Text(
          number,
          style: const TextStyle(
              fontSize: 24, fontWeight: FontWeight.bold, color: Colors.white),
        ),
      ),
    );
  }
}

// Success Page
class SuccessPage extends StatelessWidget {
  const SuccessPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: Center(
        child: Text("Welcome! PIN correct.", style: TextStyle(fontSize: 24)),
      ),
    );
  }
}
