// import 'dart:async';
// import 'package:flutter/material.dart';
// import 'package:google_maps_flutter/google_maps_flutter.dart';
//
// class MapScreen extends StatefulWidget {
//   const MapScreen({super.key});
//
//   @override
//   State<MapScreen> createState() => _MapScreenState();
// }
//
// class _MapScreenState extends State<MapScreen> {
//   final Completer<GoogleMapController> _controller = Completer();
//
//   final LatLng startPoint = LatLng(18.483885988244648, 73.80957361382127);
//   final LatLng endPoint = LatLng(18.49979280493689, 73.78891716603192);
//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(body: GoogleMap(initialCameraPosition: CameraPosition(target: startPoint)));
//   }
// }
