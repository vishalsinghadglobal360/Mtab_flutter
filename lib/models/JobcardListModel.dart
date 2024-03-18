

class JobCardListModel {
  final String games_name;
  final String open_time;
  final String close_time;
  final String market_status;
  final String game_status;
  final String open_pana;
  final String close_pana;
  final String open_digit;
  final String close_digit;

  JobCardListModel({
    required this.games_name,
    required this.open_time,
    required this.close_time,
    required this.market_status,
    required this.game_status,
    required this.open_pana,
    required this.close_pana,
    required this.open_digit,
    required this.close_digit,

  });

  factory JobCardListModel.fromJson(Map<String, dynamic> json) {
    return JobCardListModel(
      games_name: json['games_name'],
      open_time: json['open_time'],
      close_time: json['close_time'],
      market_status: json['market_status'],
      game_status: json['game_status'],
      open_pana: json['open_pana'],
      close_pana: json['close_pana'],
      open_digit: json['open_digit'],
      close_digit: json['close_digit'],
    );
  }
}