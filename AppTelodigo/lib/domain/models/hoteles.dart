class Hoteles {
  final String nombre;
  final String tipoEspacio;

  Hoteles({
    required this.nombre,
    required this.tipoEspacio,
  });

  factory Hoteles.desdeDoc(Map<String, dynamic> data) {
    return Hoteles(
      nombre: data['nombre'] ?? '',
      tipoEspacio: data['tipoEspacio'] ?? '',
    );
  }

  Map<String, dynamic> toJson() => {
        "nombre": nombre,
        "tipoEspacio": tipoEspacio
      };
}
