import 'package:awesome_dialog/awesome_dialog.dart';
import 'package:flutter/material.dart';
import 'MyDrawer.dart';
import 'package:geolocator/geolocator.dart';
import 'package:geocoding/geocoding.dart';

class MyGeoLocaator extends StatefulWidget {
  MyGeoLocaator({Key? key}) : super(key: key);

  @override
  State<MyGeoLocaator> createState() => _MyGeoLocaatorState();
}

class _MyGeoLocaatorState extends State<MyGeoLocaator> {
  List<Placemark> placemarks = [];

  Future<List<Placemark>> get_placemarks_list(lat, long) async {
    List<Placemark> _placemarks = await placemarkFromCoordinates(lat, long);
    // List<Placemark> _placemarks = await placemarkFromCoordinates(52.2165157, 6.9437819);
    print(_placemarks);
    return _placemarks;
  }

  Future<Position> _determinePosition() async {
    bool serviceEnabled;
    LocationPermission permission;

    // Test if location services are enabled.
    serviceEnabled = await Geolocator.isLocationServiceEnabled();
    if (!serviceEnabled) {
      AwesomeDialog(
        context: context,
        dialogType: DialogType.warning,
        headerAnimationLoop: false,
        animType: AnimType.bottomSlide,
        title: 'Warning',
        desc: 'Your location not enable',
        buttonsTextStyle: const TextStyle(color: Colors.black),
        showCloseIcon: true,
        btnCancelOnPress: () {},
        btnOkOnPress: () {},
      ).show();
    }

    permission = await Geolocator.checkPermission();
    if (permission == LocationPermission.denied) {
      permission = await Geolocator.requestPermission();
      if (permission == LocationPermission.denied) {
        // Permissions are denied, next time you could try
        // requesting permissions again (this is also where
        // Android's shouldShowRequestPermissionRationale
        // returned true. According to Android guidelines
        // your App should show an explanatory UI now.
        return Future.error('Location permissions are denied');
      }
    }

    if (permission == LocationPermission.deniedForever) {
      // Permissions are denied forever, handle appropriately.
      return Future.error(
          'Location permissions are permanently denied, we cannot request permissions.');
    }

    // When we reach here, permissions are granted and we can
    // continue accessing the position of the device.
    return await Geolocator.getCurrentPosition();
  }

  Position latlng = new Position(
      longitude: 0.0,
      latitude: 0,
      timestamp: DateTime.now(),
      accuracy: 0.0,
      altitude: 0.0,
      heading: 0.0,
      speed: 0.0,
      speedAccuracy: 0.0);

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    _determinePosition().then((value) {
      print(value);
      setState(() {
        latlng = value;
      });
    }).then((value) {
      get_placemarks_list(latlng.latitude, latlng.longitude).then((value3) {
        setState(() {
          placemarks = value3;
        });
      });
    });
    _determinePosition().then((value) {
      print(value);
      setState(() {
        latlng = value;
      });
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text("GeoLocaator"),
        ),
        drawer: MyDrawer(),
        body: Container(
            child: Column(
          children: [
            Text("lat is ${latlng?.latitude}"),
            Text("long is ${latlng?.longitude}"),
            Text("altitude is ${latlng?.altitude}"),
            ElevatedButton(
                onPressed: () async{
                  print("_placemarks");
                  // List<Placemark> _placemarks = await placemarkFromCoordinates(52.2165157, 6.9437819);
                  // print("_placemarks");
                  // print(_placemarks);
                  get_placemarks_list(latlng.latitude, latlng.longitude)
                      .then((value) {
                    setState(() {
                      placemarks = value;
                      print(value);
                    });
                  });
                },
                child: (Text("getplacemarks "))),

            Container(
              height: 200,
              child: ListView.builder(
                itemCount: placemarks.length,

                  itemBuilder: (context, i) {
                    return ListTile(
                      title: Text("${placemarks[i].name} " + "${placemarks[i].subLocality} "),
                      subtitle: Text("${placemarks[i].country}"),
                      trailing: Text("${placemarks[i].administrativeArea}"),
                      leading: Text("${placemarks[i].subAdministrativeArea}"),
                    );
                  }),
            ),

          ],
        )));
  }
}
