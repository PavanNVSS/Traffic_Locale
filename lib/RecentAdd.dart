import 'package:Traffic_Locale/NavBar.dart';
import 'package:Traffic_Locale/home_page.dart';
import 'package:Traffic_Locale/widgets/card_widget.dart';
import 'package:Traffic_Locale/widgets/form_widget.dart';
import 'package:flutter/material.dart';
import 'models/task.dart';

class RecentPage extends StatefulWidget {
  const RecentPage({Key? key}) : super(key: key);

  @override
  State<RecentPage> createState() => _HomePageState();
}

class _HomePageState extends State<RecentPage> {
  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    final newList = listTask.where((element) => element.isDone).toList();
    return Scaffold(
        drawer: const NavBar(),
        appBar: AppBar(
        title: const Text('Recently added'),
        ),
        body: SizedBox(

        width: size.width,
        height: size.height,
        child: Stack(
          children: [
            Positioned(
              child: Container(
                width: size.width,
                height: size.height / 3,
                decoration: const BoxDecoration(
                  borderRadius: BorderRadius.horizontal(
                    left: Radius.circular(10),
                    right: Radius.circular(10),
                  ),
                  gradient: LinearGradient(
                    colors: [
                      Color(0xff8d70fe),
                      Color(0xff2da9ef),
                    ],
                    begin: Alignment.centerRight,
                    end: Alignment.centerLeft,
                  ),
                ),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: const [
                    SizedBox(
                      height: 60,
                    ),
                    SizedBox(
                      height: 16,
                    ),
                    Center(
                      child: Text('Recent: ',
                        style: TextStyle(
                            color: Colors.white70,
                            fontSize: 52,
                            fontWeight: FontWeight.w800),
                      ),
                    )
                  ],
                ),
              ),
            ),
            Positioned(
              top: size.height / 4.5,
              left: 16,
              child: Container(
                width: size.width - 32,
                height: size.height / 1.4,
                decoration: const BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.horizontal(
                    left: Radius.circular(10),
                    right: Radius.circular(10),
                  ),
                ),
                child: Padding(
                  padding: const EdgeInsets.all(8),
                  child: ListView.separated(
                    padding: const EdgeInsets.only(
                      top: 8,
                    ),
                    itemBuilder: (context, index) {
                      return CardWidget(
                        task: newList[index],
                      );
                    },
                    itemCount: newList.length,
                    separatorBuilder: (context, index) {
                      return const SizedBox(
                        height: 4,
                      );
                    },
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
      bottomNavigationBar: BottomAppBar(
        color: const Color.fromARGB(255, 46, 157, 221),
        shape: const CircularNotchedRectangle(),
        notchMargin: 8,
        child: Row(
          mainAxisSize: MainAxisSize.max,
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: [
            IconButton(
              onPressed: () {
                Navigator.of(context).push(
                  MaterialPageRoute(
                    builder: (_) {
                      return const HomePage();
                    },
                  ),
                );
              },
              icon: const Icon(
                Icons.list_alt_outlined,
                color: Colors.white,
                size: 28,
              ),
            ),
            IconButton(
              onPressed: () {},
              icon: const Icon(
                Icons.archive_rounded,
                color: Colors.white,
                size: 28,
              ),
            ),
          ],
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          showDialog(
              context: context,
              builder: (context) {
                return const FormWidget();
              });
        },
        backgroundColor: const Color(0xff2da9ef),
        foregroundColor: const Color(0xffffffff),
        child: const Icon(
          Icons.add,
          size: 36,
        ),
      ),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
    );
  }
}