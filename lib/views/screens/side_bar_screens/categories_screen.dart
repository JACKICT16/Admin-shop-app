import 'package:flutter/material.dart';

class CategoriesScreen extends StatelessWidget {
  static const String routeName = '\CategoriesScreen';

  final GlobalKey<FormState> _FromKey = GlobalKey<FormState>();

  uploadCategory() {
    if (_FromKey.currentState!.validate()) {
      print('Good Guy');
    } else {
      print('OH  Bad Guy');
    }
  }

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
        child: Form(
      key: _FromKey,
      child: Column(
        children: [
          Container(
            alignment: Alignment.topLeft,
            padding: const EdgeInsets.all(10),
            child: const Text(
              'Category',
              style: TextStyle(
                fontWeight: FontWeight.w700,
                fontSize: 36,
              ),
            ),
          ),
          Divider(
            color: Colors.grey,
          ),
          Row(
            children: [
              Padding(
                padding: const EdgeInsets.all(14.0),
                child: Column(
                  children: [
                    Container(
                      height: 140,
                      width: 140,
                      decoration: BoxDecoration(
                        color: Colors.grey.shade500,
                        border: Border.all(color: Colors.grey.shade800),
                        borderRadius: BorderRadius.circular(10),
                      ),
                      child: Center(
                        child: Text('Category'),
                      ), //ถ้า_image ไม่เป็นค่าว่าง ' ? ' สัญลักณ์นี้แค่ทำงานตามเงื่อนไขและคืนค่า เป็นจริงหรือเท็จแล้วส่งค่าอะไรให้ (ตัวดำเนินการทางตรรกะนี้ใช้ในการตรวจสอบเงื่อนไขและทำงานตามเงื่อนไขนั้น ๆ)
                    ),
                    SizedBox(
                      height: 20,
                    ),
                    ElevatedButton(
                      style: ElevatedButton.styleFrom(
                          primary: Colors.yellow.shade900),
                      onPressed: () {},
                      child: Text('Upload Images'),
                    ),
                  ],
                ),
              ),
              Flexible(
                child: SizedBox(
                  width: 175,
                  child: TextFormField(
                    validator: (value) {
                      if (value!.isEmpty) {
                        return 'Please Category Name Must not Be Empty';
                      } else {
                        null;
                      }
                    },
                    decoration: InputDecoration(
                      labelText: 'Enter Category Name',
                      hintText: 'Enter Category Name',
                    ),
                  ),
                ),
              ),
              SizedBox(
                width: 30,
              ),
              ElevatedButton(
                style:
                    ElevatedButton.styleFrom(primary: Colors.yellow.shade900),
                onPressed: () {
                  uploadCategory();
                },
                child: Text('Save'),
              ),
            ],
          ),
        ],
      ),
    ));
  }
}
