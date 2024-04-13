# get_proj

A new Flutter project.

## Getting Started

This project is a starting point for a Flutter application.

A few resources to get you started if this is your first Flutter project:

- [Lab: Write your first Flutter app](https://docs.flutter.dev/get-started/codelab)
- [Cookbook: Useful Flutter samples](https://docs.flutter.dev/cookbook)

For help getting started with Flutter development, view the
[online documentation](https://docs.flutter.dev/), which offers tutorials,
samples, guidance on mobile development, and a full API reference.

## Widgets Types

- visible (content)
- invisibel (layouts)
- built-in

## Steps

### Step 1

- handle main
- create splash

### Step 2

- splash design
- splash widgets tree


```dart
Container singleLesson({required String image}) {
    return Container(
        decoration: BoxDecoration(
          color: white,
          borderRadius: BorderRadius.circular(10)
        ),
        padding: const EdgeInsets.all(20),
        width: 200,
        child: Column(
          children: [
            Image.asset(image),
            const SizedBox(height: 20,),
            const Text('لوحة المفاتيح', style: TextStyle(
              fontSize: 20,
              fontWeight: FontWeight.bold
            ),),
            MaterialButton
            (onPressed: (){
              Get.toNamed('/lesson', arguments: {'txt': 'my text', 'icon': Icons.person});
            },
            color: mainColor,
            textColor: white,
            child: const Text('إضغط لدخول الدرس', style: TextStyle(
              fontSize: 15
            ),),
            )
          ],
        ),
      );
  }
  ```