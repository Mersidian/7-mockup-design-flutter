import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import '../../Controllers/account_controller.dart';

class AccountDetail extends StatelessWidget {
  const AccountDetail({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: Padding(
        padding: const EdgeInsets.only(top:10),
        child: ListView.builder(
          itemCount: 1,
          itemBuilder: (context, index) {
            return Column(
              children: [
                Image.asset(
                  account[index].img,
                  height: 220,
                  width: 320,
                ),
                Padding(
                  padding: const EdgeInsets.all(10.0),
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
                      width: 600,
                      height: 200,
                      child: Column(
                        children: [
                          ListTile(
                            dense: true,
                            minVerticalPadding: 0,
                            contentPadding:
                                const EdgeInsets.fromLTRB(15, 0, 8, 0),
                            visualDensity: const VisualDensity(
                                horizontal: 0, vertical: -4),
                            leading: const Icon(Icons.account_circle),
                            title: Text(
                              account[index].name,
                              style: GoogleFonts.itim(
                                  textStyle: const TextStyle(
                                fontSize: 15,
                              )),
                            ),
                            subtitle: Text(
                              'ชื่อ-สกุล',
                              style: GoogleFonts.itim(
                                  textStyle: const TextStyle(
                                      fontSize: 14,
                                      color: Color.fromRGBO(126, 126, 126, 1))),
                            ),
                          ),
                          ListTile(
                            dense: true,
                            minVerticalPadding: 0,
                            contentPadding:
                                const EdgeInsets.fromLTRB(15, 0, 8, 0),
                            visualDensity: const VisualDensity(
                                horizontal: 0, vertical: -4),
                            leading: const Icon(Icons.home_rounded),
                            title: Text(
                              account[index].address,
                              style: GoogleFonts.itim(
                                  textStyle: const TextStyle(
                                fontSize: 15,
                              )),
                            ),
                            subtitle: Text(
                              'ที่อยู่',
                              style: GoogleFonts.itim(
                                  textStyle: const TextStyle(
                                      fontSize: 14,
                                      color: Color.fromRGBO(126, 126, 126, 1))),
                            ),
                          ),
                          ListTile(
                            dense: true,
                            minVerticalPadding: 0,
                            contentPadding:
                                const EdgeInsets.fromLTRB(15, 0, 8, 0),
                            visualDensity: const VisualDensity(
                                horizontal: 0, vertical: -4),
                            leading: const Icon(Icons.phone),
                            title: Text(
                              account[index].phone,
                              style: GoogleFonts.itim(
                                  textStyle: const TextStyle(
                                fontSize: 15,
                              )),
                            ),
                            subtitle: Text(
                              'เบอร์โทร',
                              style: GoogleFonts.itim(
                                  textStyle: const TextStyle(
                                      fontSize: 14,
                                      color: Color.fromRGBO(126, 126, 126, 1))),
                            ),
                          ),
                          ListTile(
                            dense: true,
                            minVerticalPadding: 0,
                            contentPadding:
                                const EdgeInsets.fromLTRB(15, 0, 8, 0),
                            visualDensity: const VisualDensity(
                                horizontal: 0, vertical: -4),
                            leading: const Icon(Icons.email_rounded),
                            title: Text(
                              account[index].email,
                              style: GoogleFonts.itim(
                                  textStyle: const TextStyle(
                                fontSize: 15,
                              )),
                            ),
                            subtitle: Text(
                              'อีเมล',
                              style: GoogleFonts.itim(
                                  textStyle: const TextStyle(
                                      fontSize: 14,
                                      color: Color.fromRGBO(126, 126, 126, 1))),
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                ),
              ],
            );
          }
        ),
      ),
    );
  }
}
