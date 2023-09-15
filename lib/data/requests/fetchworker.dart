import 'dart:convert';

import 'package:http/http.dart' as http;
import '../models/workermodels.dart';

Future<List<WorkerModel>> fetchWorkers() async {
  var endpoint = 'https://a0fa-197-43-75-68.ngrok-free.app/api/v1/workers';
  var response = await http.get(
    Uri.parse(endpoint),
  );
  var allWorkers = jsonDecode(response.body);
  var test = allWorkers['data'];

  List<WorkerModel> workerModel = [];
  for (var aWorker in test) {
    WorkerModel worker = WorkerModel.fromJson(aWorker);
    workerModel.add(worker);
  }
  return workerModel;
}

