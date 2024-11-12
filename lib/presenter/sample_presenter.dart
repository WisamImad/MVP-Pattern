import 'package:mvp_pattern/model/sample_model.dart';
import 'package:mvp_pattern/view/interface_class.dart';

class SamplePresenter{
  late SampleModel _sampleModel;
  late InterfaceClass _interfaceClass;

  SamplePresenter(InterfaceClass sampleView){
    _sampleModel = SampleModel();
    _interfaceClass = sampleView;
  }

  void add(a,b){
    double result = _sampleModel.addition(a, b);
    _interfaceClass.updateViewResult(result);
  }
  void sub(a,b){
    double result = _sampleModel.subtraction(a, b);
    _interfaceClass.updateViewResult(result);
  }
  void multi(a,b){
    double result = _sampleModel.multiplication(a, b);
    _interfaceClass.updateViewResult(result);
  }
  void div(a,b){
    double result = _sampleModel.division(a, b);
    _interfaceClass.updateViewResult(result);
  }
}