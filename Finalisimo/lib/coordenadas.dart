import 'package:flutter/material.dart';
import 'package:geolocator/geolocator.dart';

class Coordenadas extends StatefulWidget {
  const Coordenadas({Key? key}) : super(key: key);

  @override
  State<Coordenadas> createState() => _CoordenadasState();
}

class _CoordenadasState extends State<Coordenadas> {
  String? _currentAddress;
  Position? _currentPosition;

  Future<bool> _handleLocationPermission() async {
    bool serviceEnabled;
    LocationPermission permission;

    serviceEnabled = await Geolocator.isLocationServiceEnabled();
    if (!serviceEnabled) {
      ScaffoldMessenger.of(context).showSnackBar(const SnackBar(
          content: Text(
              'Los servicios de ubicación están deshabilitados. Habilite los servicios')));
      return false;
    }
    permission = await Geolocator.checkPermission();
    if (permission == LocationPermission.denied) {
      permission = await Geolocator.requestPermission();
      if (permission == LocationPermission.denied) {
        ScaffoldMessenger.of(context).showSnackBar(
            const SnackBar(content: Text('Los permisos de ubicación están denegados')));
        return false;
      }
    }
    if (permission == LocationPermission.deniedForever) {
      ScaffoldMessenger.of(context).showSnackBar(const SnackBar(
          content: Text(
              'Los permisos de ubicación estan negados permanentemente, no podemos solicitar permisos.')));
      return false;
    }
    return true;
  }

  Future<void> _getCurrentPosition() async {
    final hasPermission = await _handleLocationPermission();

    if (!hasPermission) return;
    await Geolocator.getCurrentPosition(desiredAccuracy: LocationAccuracy.high)
        .then((Position position) {
      setState(() => _currentPosition = position);

    }).catchError((e) {
      debugPrint(e);
    });
  }



  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text("Ubicación")),
      body: SafeArea(
        child: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text('Latitud: ${_currentPosition?.latitude ?? ""}'),
              Text('Longitud: ${_currentPosition?.longitude ?? ""}'),
              const SizedBox(height: 32),
              ElevatedButton(
                onPressed: _getCurrentPosition,
                child: const Text("Obtener Ubicación"),
              )
            ],
          ),
        ),
      ),
    );
  }
}

