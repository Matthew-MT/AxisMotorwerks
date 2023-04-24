import "package:flutter/material.dart";
import "package:google_maps_flutter/google_maps_flutter.dart";

class GoogleMaps extends StatefulWidget {
  const GoogleMaps({super.key});

  @override
  State<GoogleMaps> createState() => _GoogleMapsState();
}

class _GoogleMapsState extends State<GoogleMaps> {
  late GoogleMapController mapController;
  final List<Marker> _markers = [];
  bool viewMap = true;

  @override
  void initState() {
    super.initState();
    _markers.add(
      const Marker(
        markerId: MarkerId("Axis MotorWerks"),
        position: LatLng(45.521563, -122.677433),
        infoWindow: InfoWindow(title: "Come see us!"),
      ),
    );
    if(_markers.isNotEmpty) {
      setState(() {
        viewMap = true;
      });
    }
  }

  void _onMapCreated(GoogleMapController controller) {
    mapController = controller;
  }

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: viewMap
      ? SizedBox(
        height: 300,
        width: MediaQuery.of(context).size.width,
        child: GoogleMap(
          onMapCreated: _onMapCreated,
          initialCameraPosition: const CameraPosition(
            target: LatLng(45.521563, -122.677433),
            zoom: 11.0,
          ),
          markers: Set<Marker>.of(_markers),
        ),
      )
      : const Center(
        child: Text("No map to display"),
      ),
    );
  }
}