//ApiServices List
import 'dart:convert';

const String BASE_URL = "https://customerapproval.marutisuzuki.com/";
const String APP_ENV = "dev"; //liv //uat
const String CMS_PATH = APP_ENV=='liv' ? BASE_URL+'mtab/' : BASE_URL+'mtab_qa/';

displayLogs(var body, var response){
  print('API-Request:: ${response.request.toString()}');
  print('API-Inputs:: ${jsonEncode(body)}');
  print('API-Headers:: ${response.request?.headers.toString()}');
  print('API-Status:: ${response.statusCode.toString()}');
  print('API-Response:: ${response.body.toString()}');
}

const String PullAllConfig = CMS_PATH+"Sync/PullAllConfiguration";

