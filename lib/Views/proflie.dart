import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'Components/account_detail.dart';

class Profile extends StatelessWidget {
  const Profile({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.fromLTRB(0, 0, 0, 50),
      child: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            const AccountDetail(),
            Padding(
              padding: const EdgeInsets.fromLTRB(10, 0, 10, 5),
              child: Card(
                elevation: 0,
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(10.0),
                  side: const BorderSide(
                    color: Color.fromARGB(255, 129, 129, 129),
                    width: 1.0,
                  ),
                ),
                child: SizedBox(
                  height: 50,
                  child: ListTile(
                    dense: true,
                    minVerticalPadding: 0,
                    contentPadding: const EdgeInsets.fromLTRB(15, 8, 8, 0),
                    visualDensity:
                        const VisualDensity(horizontal: 0, vertical: -4),
                    leading: const Icon(Icons.help_rounded,
                        color: Color.fromRGBO(160, 160, 160, 1)),
                    title: Text(
                      'ศูนย์ความช่วยเหลือ',
                      style: GoogleFonts.itim(
                          textStyle: const TextStyle(fontSize: 12)),
                    ),
                    trailing: const Icon(Icons.arrow_forward_ios_rounded,
                        color: Color.fromRGBO(160, 160, 160, 1)),
                  ),
                ),
              ),
            ),
            SizedBox(
              height: 60,
              width: 150,
              child: ElevatedButton(
                onPressed: () {},
                style: ElevatedButton.styleFrom(
                  backgroundColor: const Color(0xFFAA0000),
                ),
                child: Text(
                  'ออกจากระบบ',
                  style: GoogleFonts.itim(
                    textStyle:
                        const TextStyle(fontSize: 14, color: Colors.white),
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}