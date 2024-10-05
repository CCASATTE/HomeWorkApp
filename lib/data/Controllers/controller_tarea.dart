import 'package:myapp/data/Model/tarea.dart';

class ControllerTarea {
  List<Tarea> tareas = [];

  void inicializarTareas() {
    tareas.clear();
    tareas.add(Tarea(
        id: 1,
        titulo: "Primera Tarea",
        descripcion: "Crear una plataforma en flutter",
        fecha:
            '${DateTime.now().day}/${DateTime.now().month}/${DateTime.now().year}',
        completada: true));
  }

  List<Tarea> obtenerTares() {
    return tareas;
  }
}
