import 'package:flutter/material.dart';
import 'package:google_maps_flutter/google_maps_flutter.dart';
import 'package:location/location.dart';

class MapPage extends StatefulWidget {
  const MapPage({Key? key}) : super(key: key);

  @override
  _MapPageState createState() => _MapPageState();
}

class _MapPageState extends State<MapPage> {
  late GoogleMapController _mapController;
  Location _location = Location();
  LatLng? _currentLocation;

  @override
  void initState() {
    super.initState();
  }

  void _getLocation() async {
    try {
      final locationData = await _location.getLocation();
      setState(() {
        _currentLocation =
            LatLng(locationData.latitude!, locationData.longitude!);
      });
    } catch (e) {
      print('Failed to get current location: $e');
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Map Page'),
      ),
      body: Stack(
        children: [
          GoogleMap(
            initialCameraPosition: CameraPosition(
              target: _currentLocation ?? const LatLng(37.422131, -122.084801),
              zoom: 10.0,
            ),
            onMapCreated: (controller) {
              _mapController = controller;
            },
            markers: _currentLocation != null
                ? {
                    Marker(
                      markerId: MarkerId('current_location'),
                      position: _currentLocation!,
                      icon: BitmapDescriptor.defaultMarkerWithHue(
                          BitmapDescriptor.hueAzure),
                    ),
                  }
                : {},
          ),
          Positioned(
            bottom: 16.0,
            right: 16.0,
            child: FloatingActionButton(
              onPressed: _getLocation,
              child: const Icon(Icons.add_location),
            ),
          ),
        ],
      ),
    );
  }
}
