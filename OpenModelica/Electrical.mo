model Electrical
  Modelica.Electrical.Analog.Basic.Ground ground annotation(
    Placement(visible = true, transformation(origin = {-118, -30}, extent = {{-10, -10}, {10, 10}}, rotation = 0)));
  Modelica.Electrical.Analog.Basic.Resistor resistor(R = 1e3)  annotation(
    Placement(visible = true, transformation(origin = {-94, 38}, extent = {{-10, -10}, {10, 10}}, rotation = 0)));
  Modelica.Electrical.Analog.Basic.Capacitor capacitor(C = 1e-3)  annotation(
    Placement(visible = true, transformation(origin = {-64, 10}, extent = {{10, -10}, {-10, 10}}, rotation = 90)));
  Modelica.Electrical.Analog.Basic.Resistor resistor1(R = 1e3)  annotation(
    Placement(visible = true, transformation(origin = {-32, 38}, extent = {{-10, -10}, {10, 10}}, rotation = 0)));
  Modelica.Electrical.Analog.Basic.Capacitor capacitor1(C = 1e-3)  annotation(
    Placement(visible = true, transformation(origin = {-4, 10}, extent = {{10, -10}, {-10, 10}}, rotation = 90)));
  Modelica.Electrical.Analog.Sensors.VoltageSensor voltageSensor annotation(
    Placement(visible = true, transformation(origin = {66, 6}, extent = {{10, -10}, {-10, 10}}, rotation = 90)));
  Modelica.Blocks.Sources.Step step(height = 24)  annotation(
    Placement(visible = true, transformation(origin = {-168, 8}, extent = {{-10, -10}, {10, 10}}, rotation = 0)));
  Modelica.Blocks.Interfaces.RealOutput y annotation(
    Placement(visible = true, transformation(origin = {102, 6}, extent = {{-10, -10}, {10, 10}}, rotation = 0), iconTransformation(origin = {112, -62}, extent = {{-10, -10}, {10, 10}}, rotation = 0)));
  Modelica.Electrical.Analog.Sources.SignalVoltage signalVoltage annotation(
    Placement(visible = true, transformation(origin = {-118, 8}, extent = {{10, -10}, {-10, 10}}, rotation = 90)));
equation
  connect(signalVoltage.n, ground.p) annotation(
    Line(points = {{-118, -2}, {-118, -20}}, color = {0, 0, 255}));
  connect(signalVoltage.p, resistor.p) annotation(
    Line(points = {{-118, 18}, {-118, 38}, {-104, 38}}, color = {0, 0, 255}));
  connect(resistor1.p, resistor.n) annotation(
    Line(points = {{-42, 38}, {-84, 38}}, color = {0, 0, 255}));
  connect(resistor1.n, capacitor1.p) annotation(
    Line(points = {{-22, 38}, {-4, 38}, {-4, 20}}, color = {0, 0, 255}));
  connect(ground.p, capacitor1.n) annotation(
    Line(points = {{-118, -20}, {-4, -20}, {-4, 0}}, color = {0, 0, 255}));
  connect(capacitor.n, ground.p) annotation(
    Line(points = {{-64, 0}, {-64, -20}, {-118, -20}}, color = {0, 0, 255}));
  connect(resistor.n, capacitor.p) annotation(
    Line(points = {{-84, 38}, {-64, 38}, {-64, 20}}, color = {0, 0, 255}));
  connect(voltageSensor.p, resistor1.n) annotation(
    Line(points = {{66, 16}, {66, 38}, {-22, 38}}, color = {0, 0, 255}));
  connect(voltageSensor.n, ground.p) annotation(
    Line(points = {{66, -4}, {66, -20}, {-118, -20}}, color = {0, 0, 255}));
  connect(voltageSensor.v, y) annotation(
    Line(points = {{78, 6}, {102, 6}}, color = {0, 0, 127}));
  connect(signalVoltage.v, step.y) annotation(
    Line(points = {{-130, 8}, {-156, 8}}, color = {0, 0, 127}));

annotation(
    Diagram(coordinateSystem(extent = {{-200, -100}, {200, 100}})),
    Icon(coordinateSystem(extent = {{-200, -100}, {200, 100}})),
    version = "",
    uses(Modelica(version = "4.0.0")));
end Electrical;
