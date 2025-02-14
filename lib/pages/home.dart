import 'package:flutter/material.dart';

import 'package:translator/constants/AppColors.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  TextEditingController _controller = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.background,
      appBar: _getBar(),
      body: SafeArea(
        child: _getHomeBody(),
      ),
    );
  }

  Widget _getHomeBody() {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 10, vertical: 10),
      child: Column(
        children: [
          _languagesRow(),
          SizedBox(height: 20),
          _textTranslate(),
          SizedBox(height: 20),
          Container(
            width: double.maxFinite,
            height: 200,
            child: Text(
              "سلام",
              style: TextStyle(
                fontSize: 17,
                color: AppColors.texts,
              ),
            ),
            padding: EdgeInsets.symmetric(vertical: 20, horizontal: 20),
            decoration: BoxDecoration(
              color: AppColors.elements,
              borderRadius: BorderRadius.circular(12),
            ),
          ),
        ],
      ),
    );
  }

  Container _textTranslate() {
    return Container(
      width: double.maxFinite,
      padding: EdgeInsets.symmetric(vertical: 10, horizontal: 20),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(12),
        border: Border.all(color: Colors.grey, width: 0.5),
      ),
      child: Column(
        children: [
          Row(
            mainAxisSize: MainAxisSize.max,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Expanded(
                child: TextField(
                  controller: _controller,
                  decoration: InputDecoration(
                    hintText: "Write text to translate.",
                    hintStyle: TextStyle(color: AppColors.secondTexts),
                    border: InputBorder.none,
                  ),
                  style: TextStyle(color: AppColors.texts),
                  cursorColor: AppColors.others,
                  minLines: 5,
                  maxLines: double.maxFinite.toInt(),
                ),
              ),
              GestureDetector(
                onTap: () {
                  setState(() {
                    _controller.text = "";
                  });
                },
                child: Icon(Icons.close_rounded, color: AppColors.texts),
              )
            ],
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.end,
            children: [
              _translateBtn(),
            ],
          ),
        ],
      ),
    );
  }

  ElevatedButton _translateBtn() {
    return ElevatedButton(
      onPressed: () {},
      style: ElevatedButton.styleFrom(
        backgroundColor: AppColors.others,
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(5),
        ),
        foregroundColor: AppColors.texts,
      ),
      child: Text("Translate"),
    );
  }

  Row _languagesRow() {
    return Row(
      mainAxisSize: MainAxisSize.max,
      mainAxisAlignment: MainAxisAlignment.spaceAround,
      children: [
        _langBtn("First Lang", true),
        IconButton(
          onPressed: () {},
          icon: Icon(Icons.compare_arrows_rounded),
          color: AppColors.others,
        ),
        _langBtn("Second Lang", false),
      ],
    );
  }

  Container _langBtn(String title, bool isFirstLanguage) {
    return Container(
      width: 160,
      height: 45,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(20),
        color: AppColors.elements,
      ),
      child: Center(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 12),
          child: Row(
            children: [
              Text(
                "$title",
                style: TextStyle(
                  color: Colors.white,
                ),
              ),
              Spacer(),
              Icon(
                Icons.arrow_drop_down,
                color: Colors.white,
              ),
            ],
          ),
        ),
      ),
    );
  }

  AppBar _getBar() {
    return AppBar(
      elevation: 0,
      title: Text(
        "Translator Application",
        style: TextStyle(
          fontSize: 18,
          fontWeight: FontWeight.bold,
          color: Colors.white,
        ),
      ),
      centerTitle: true,
      backgroundColor: AppColors.elements,
    );
  }
}
