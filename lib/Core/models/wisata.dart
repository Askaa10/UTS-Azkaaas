part of "model.dart";

DataWisata dataWisataFromJson(String str) =>
    DataWisata.fromJson(json.decode(str));

String dataWisataToJson(DataWisata data) => json.encode(data.toJson());

class DataWisata {
  List<DetailWisata> data;

  DataWisata({
    required this.data,
  });

  factory DataWisata.fromJson(Map<String, dynamic> json) => DataWisata(
        data: List<DetailWisata>.from(
            json["data"].map((x) => DetailWisata.fromJson(x))),
      );

  Map<String, dynamic> toJson() => {
        "data": List<dynamic>.from(data.map((x) => x.toJson())),
      };
}

class DetailWisata {
  int idWisata;
  String namaWisata;
  String gambarWisata;
  int hargaWisata;
  double ratingWisata;
  String lokasiWisata;
  String deskripsi;
  int isFav;
  String gallery;
  int idCategory;
  DateTime createAt;
  DateTime updateAt;

  DetailWisata({
    required this.idWisata,
    required this.namaWisata,
    required this.gambarWisata,
    required this.hargaWisata,
    required this.ratingWisata,
    required this.lokasiWisata,
    required this.deskripsi,
    required this.isFav,
    required this.gallery,
    required this.idCategory,
    required this.createAt,
    required this.updateAt,
  });

  factory DetailWisata.fromJson(Map<String, dynamic> json) => DetailWisata(
        idWisata: json["idWisata"] ?? 0,
        namaWisata: json["namaWisata"] ?? '',
        gambarWisata: json["gambarWisata"] ?? '',
        hargaWisata: json["hargaWisata"] ?? 0,
        ratingWisata: (json["ratingWisata"] ?? 0).toDouble(),
        lokasiWisata: json["lokasiWisata"] ?? '',
        deskripsi: json["deskripsi"] ?? '',
        isFav: json["isFav"] ?? 0,
        gallery: json["Gallery"] ?? '',
        idCategory: json["idCategory"] ?? 0,
        createAt: json["createAt"] != null
            ? DateTime.parse(json["createAt"])
            : DateTime.now(),
        updateAt: json["updateAt"] != null
            ? DateTime.parse(json["updateAt"])
            : DateTime.now(),
      );

  Map<String, dynamic> toJson() => {
        "idwisata": idWisata,
        "namaWisata": namaWisata,
        "gambarWisata": gambarWisata,
        "hargaWisata": hargaWisata,
        "ratingWisata": ratingWisata,
        "lokasiwisata": lokasiWisata,
        "deskripsi": deskripsi,
        "isFav": isFav,
        "Gallery": gallery,
        "idCategory": idCategory,
        "createAt": createAt.toIso8601String(),
        "updateAt": updateAt.toIso8601String(),
      };
}
