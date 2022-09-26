import 'package:belajar_yuk/constants/r.dart';
import 'package:belajar_yuk/view/main_page.dart';
import 'package:flutter/material.dart';

import 'login_page.dart';

class RegisterPage extends StatefulWidget {
  const RegisterPage({super.key});

  static String route = "register_page";

  @override
  State<RegisterPage> createState() => _RegisterPageState();
}

enum Gender { lakilaki, perempuan }

class _RegisterPageState extends State<RegisterPage> {
  String gender = "Laki-laki";
  List<String> kelas = ["10", "11", "12"];
  String selectedKelas = "11";

  final emailController = TextEditingController();

  onTapGender(Gender genderInput) {
    if (genderInput == Gender.lakilaki) {
      gender = "Laki-laki";
    } else {
      gender = "Perempuan";
    }
    setState(() {});
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xffF0F3F5),
      appBar: AppBar(
        elevation: 0,
        backgroundColor: Colors.white,
        iconTheme: const IconThemeData(color: Colors.black),
        title: const Text(
          "Yuk isi data diri!",
          style: TextStyle(
              fontSize: 18, fontWeight: FontWeight.w700, color: Colors.black),
        ),
      ),
      bottomNavigationBar: SafeArea(
        child: Padding(
          padding: const EdgeInsets.only(bottom: 27),
          child: ButtonLogin(
                    onTap: () {
                      print(emailController.text);
                      Navigator.of(context).pushNamedAndRemoveUntil(MainPage.route, (context) => false);
                    },
                    backgroundColor: R.colors.primary,
                    child: Text(
                      R.strings.daftar,
                      style: TextStyle(
                          fontSize: 14,
                          fontWeight: FontWeight.w700,
                          color: Colors.white),
                    ),
                    borderColor: R.colors.primary,
                  ),
        ),
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(20.0),
          child: Column(
            children: [
              RegisterTextField(
                controller: emailController,
                title: "Email",
                hintText: "Email",
              ),
              const RegisterTextField(
                title: "Nama Lengkap",
                hintText: "Contoh: Halim Teguh Saputro",
              ),
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  const Text(
                    "Jenis Kelamin",
                    style: TextStyle(fontSize: 16, fontWeight: FontWeight.w600),
                  ),
                  Row(
                    children: [
                      Expanded(
                        child: Padding(
                          padding: const EdgeInsets.symmetric(horizontal: 8.0),
                          child: ElevatedButton(
                              style: ElevatedButton.styleFrom(
                                  backgroundColor: gender == "Laki-laki"
                                      ? R.colors.primary
                                      : Colors.white,
                                  elevation: 0,
                                  shape: RoundedRectangleBorder(
                                      borderRadius: BorderRadius.circular(8),
                                      side: BorderSide(
                                          color: R.colors.greyBorder))),
                              onPressed: () {
                                onTapGender(Gender.lakilaki);
                              },
                              child: Text(
                                "Laki-laki",
                                style: TextStyle(
                                    color: gender == "Laki-laki"
                                        ? Colors.white
                                        : R.colors.blackGenderText,
                                    fontSize: 14,
                                    fontWeight: FontWeight.w600),
                              )),
                        ),
                      ),
                      Expanded(
                        child: Padding(
                          padding: const EdgeInsets.symmetric(horizontal: 8.0),
                          child: ElevatedButton(
                              style: ElevatedButton.styleFrom(
                                  backgroundColor: gender == "Perempuan"
                                      ? R.colors.primary
                                      : Colors.white,
                                  elevation: 0,
                                  shape: RoundedRectangleBorder(
                                      borderRadius: BorderRadius.circular(8),
                                      side: BorderSide(
                                          color: R.colors.greyBorder))),
                              onPressed: () {
                                onTapGender(Gender.perempuan);
                              },
                              child: Text(
                                "Perempuan",
                                style: TextStyle(
                                    color: gender == "Perempuan"
                                        ? Colors.white
                                        : R.colors.blackGenderText,
                                    fontSize: 14,
                                    fontWeight: FontWeight.w600),
                              )),
                        ),
                      ),
                    ],
                  )
                ],
              ),
              const SizedBox(
                height: 24,
              ),
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  const Text(
                    "Kelas",
                    style: TextStyle(fontSize: 16, fontWeight: FontWeight.w600),
                  ),
                  const SizedBox(
                    height: 4,
                  ),
                  Container(
                    width: double.infinity,
                    padding: EdgeInsets.symmetric(horizontal: 14),
                    decoration: BoxDecoration(
                        color: Colors.white,
                        borderRadius: BorderRadius.circular(8),
                        border: Border.all(color: R.colors.greyBorder)),
                    child: DropdownButtonHideUnderline(
                      child: DropdownButton<String>(
                          value: selectedKelas,
                          items: kelas
                              .map((e) => DropdownMenuItem<String>(
                                  child: Text(e), value: e))
                              .toList(),
                          onChanged: (String? val) {
                            selectedKelas = val!;
                            setState(() {});
                          }),
                    ),
                  ),
                ],
              ),
              const SizedBox(
                height: 24,
              ),
              const RegisterTextField(
                title: "Nama Sekolah",
                hintText: "Nama Sekolah",
              ),
              // const Spacer(),
              
            ],
          ),
        ),
      ),
    );
  }
}

class RegisterTextField extends StatelessWidget {
  const RegisterTextField({
    Key? key,
    required this.title,
    required this.hintText, this.controller,
  }) : super(key: key);
  final String title;
  final String hintText;
  final TextEditingController? controller;

  @override
  Widget build(BuildContext context) {
    return Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
      Text(
        title,
        style: const TextStyle(fontSize: 16, fontWeight: FontWeight.w600),
      ),
      const SizedBox(
        height: 5,
      ),
      Container(
        padding: const EdgeInsets.symmetric(horizontal: 14),
        decoration: BoxDecoration(
            color: Colors.white,
            borderRadius: BorderRadius.circular(8),
            border: Border.all(color: R.colors.greyBorder)),
        child: TextField(
          controller: controller,
          decoration: InputDecoration(
              border: InputBorder.none,
              hintText: hintText,
              hintStyle: TextStyle(color: R.colors.greyHintText)),
        ),
      ),
      const SizedBox(
        height: 24,
      )
    ]);
  }
}
