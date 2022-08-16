import 'package:avatar_glow/avatar_glow.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class HomeScreen extends StatefulWidget {
  HomeScreen({Key? key}) : super(key: key);

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color.fromARGB(137, 8, 4, 4),
      body: Stack(
        children: [
          Positioned.fill(
            child: Image.network(
              'https://static.vecteezy.com/system/resources/thumbnails/002/019/067/small_2x/dark-world-map-animate-background-free-video.jpg',
              fit: BoxFit.cover,
            ),
          ),
          Scaffold(
            backgroundColor: Colors.transparent,
            appBar: AppBar(
              backgroundColor: Colors.transparent,
              leading: const Icon(
                Icons.apps,
                size: 30.0,
              ),
              actions: [
                IconButton(
                  onPressed: () {},
                  icon: Image.asset(
                    'assets/filter.png',
                    color: Colors.white,
                  ),
                ),
              ],
            ),
            body: Center(
              child: Column(
                children: [
                  SizedBox(
                    height: 100.h,
                  ),
                  ClipRRect(
                    borderRadius: BorderRadius.circular(20.0),
                    child: Container(
                      height: 50.h,
                      width: 220.w,
                      color: Colors.white.withOpacity(0.3),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          const Icon(
                            Icons.security,
                            color: Colors.white,
                          ),
                          SizedBox(
                            width: 5.w,
                          ),
                          const Text(
                            'Connection protected',
                            style: TextStyle(
                              color: Colors.white,
                              fontWeight: FontWeight.bold,
                            ),
                          )
                        ],
                      ),
                    ),
                  ),
                  SizedBox(
                    height: 50.h,
                  ),
                  AvatarGlow(
                    glowColor: Colors.blue,
                    endRadius: 90.0,
                    duration: Duration(milliseconds: 2000),
                    repeat: true,
                    showTwoGlows: true,
                    repeatPauseDuration: Duration(milliseconds: 100),
                    child: CircleAvatar(
                      backgroundColor: Colors.white,
                      radius: 50.0.r,
                      child: CircleAvatar(
                        radius: 45.r,
                        backgroundColor: Colors.grey,
                        child: const Icon(
                          Icons.power_settings_new,
                          size: 40.0,
                          color: Colors.white,
                        ),
                      ),
                    ),
                  ),
                  SizedBox(
                    height: 50.h,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      const CircleAvatar(
                        radius: 4.0,
                        backgroundColor: Colors.green,
                      ),
                      SizedBox(
                        width: 5.w,
                      ),
                      const Text(
                        'Connected',
                        style: TextStyle(color: Colors.white),
                      )
                    ],
                  ),
                  SizedBox(
                    height: 20.h,
                  ),
                  const Text(
                    '01 : 30 : 22',
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: 30.0,
                    ),
                  ),
                  SizedBox(
                    height: 40.h,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      const Icon(
                        Icons.downloading_outlined,
                        color: Colors.white,
                        size: 30.0,
                      ),
                      SizedBox(
                        width: 20.w,
                      ),
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            'Download',
                            style: TextStyle(
                              color: Colors.grey,
                              fontSize: 18.sp,
                            ),
                          ),
                          SizedBox(
                            height: 10.0.h,
                          ),
                          Text(
                            '65.5KB/s',
                            style: TextStyle(
                              color: Colors.white,
                              fontSize: 24.sp,
                            ),
                          )
                        ],
                      ),
                      SizedBox(
                        width: 50.w,
                      ),
                      const Icon(
                        Icons.upload,
                        color: Colors.white,
                        size: 30.0,
                      ),
                      SizedBox(
                        width: 20.w,
                      ),
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            'Upload',
                            style: TextStyle(
                              color: Colors.grey,
                              fontSize: 18.sp,
                            ),
                          ),
                          SizedBox(
                            height: 10.0.h,
                          ),
                          Text(
                            '33.5KB/s',
                            style: TextStyle(
                              color: Colors.white,
                              fontSize: 24.sp,
                            ),
                          )
                        ],
                      ),
                    ],
                  )
                ],
              ),
            ),
            bottomNavigationBar: ClipRRect(
              borderRadius: const BorderRadius.only(
                topLeft: Radius.circular(
                  20.0,
                ),
                topRight: Radius.circular(
                  20.0,
                ),
              ),
              child: Container(
                height: 100.h,
                color: Color.fromARGB(255, 26, 30, 30),
                child: ListTile(
                  leading: Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: ClipRRect(
                      borderRadius: BorderRadius.circular(10.0),
                      child: Image.network(
                        'https://m.media-amazon.com/images/I/51X6xInWHcL._AC_SX466_.jpg',
                      ),
                    ),
                  ),
                  title: Text(
                    'United States',
                    style: TextStyle(color: Colors.white, fontSize: 18.sp),
                  ),
                  subtitle: const Text(
                    'Washington DC',
                    style: TextStyle(
                      color: Colors.white60,
                    ),
                  ),
                  trailing: const Text(
                    'Change',
                    style: TextStyle(
                      color: Colors.blue,
                    ),
                  ),
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
