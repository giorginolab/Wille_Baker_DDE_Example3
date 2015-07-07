within ;
model dde "An example of Wille and Baker"
  parameter Real a = 1;
  parameter Real b = 0.2;
  Real y1(start = 1);
  Real y2(start = 1);
  Real y3(start = 1);
equation
  // 3rd arg reqd by openmodelica
  // fixed=true reqd by openmodelica for warnings
  der(y1) = delay(y1, a, a);
  der(y2) = delay(y1, a, a) + delay(y2, b, a);
  der(y3) = y2;
  annotation(uses(Modelica(version = "3.2")), experiment(StopTime = 5), __Dymola_experimentSetupOutput);
end dde;

