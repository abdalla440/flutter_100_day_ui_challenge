
class TravelDataModel {
  final String startCity;
  final String startCityAbbrev;
  final String destinationCity;
  final String destinationCityAbbrev;
  final String flightNumber;
  final String passengerName;
  final String seatNumber;
  final DateTime date;
  final String gate;

  TravelDataModel({
    required this.startCity,
    required this.startCityAbbrev,
    required this.destinationCity,
    required this.destinationCityAbbrev,
    required this.flightNumber,
    required this.passengerName,
    required this.seatNumber,
    required this.date,
    required this.gate,
  });

  factory TravelDataModel.fromJson(Map<String, dynamic> json) {
    return TravelDataModel(
      startCity: json['StartCity'],
      startCityAbbrev: json['StartCityAbbrev'],
      destinationCity: json['destinationCity'],
      destinationCityAbbrev: json['destinationCityAbbrev'],
      flightNumber: json['flightNumber'],
      passengerName: json['passengerName'],
      seatNumber: json['seatNumber'],
      date: DateTime.parse(json['Date']),
      gate: json['gate'],
    );
  }
}