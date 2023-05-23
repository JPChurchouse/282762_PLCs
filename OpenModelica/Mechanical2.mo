model Mechanical2
  Modelica.Mechanics.Translational.Components.Fixed fixed annotation(
    Placement(visible = true, transformation(origin = {-80, -24}, extent = {{-10, -10}, {10, 10}}, rotation = 0)));
  Modelica.Mechanics.Translational.Components.Mass mass(m = 10)  annotation(
    Placement(visible = true, transformation(origin = {-36, 0}, extent = {{-10, -10}, {10, 10}}, rotation = 0)));
  Modelica.Mechanics.Translational.Components.Spring spring(c = 30)  annotation(
    Placement(visible = true, transformation(origin = {-8, 0}, extent = {{-10, -10}, {10, 10}}, rotation = 0)));
  Modelica.Mechanics.Translational.Components.Damper damper(d = 20)  annotation(
    Placement(visible = true, transformation(origin = {-62, 0}, extent = {{-10, -10}, {10, 10}}, rotation = 0)));
  Modelica.Mechanics.Translational.Components.Mass mass1(L = 10)  annotation(
    Placement(visible = true, transformation(origin = {18, 0}, extent = {{-10, -10}, {10, 10}}, rotation = 0)));
  Modelica.Mechanics.Translational.Sensors.PositionSensor positionSensor annotation(
    Placement(visible = true, transformation(origin = {8, -54}, extent = {{-10, -10}, {10, 10}}, rotation = 0)));
  Modelica.Mechanics.Translational.Sensors.PositionSensor positionSensor1 annotation(
    Placement(visible = true, transformation(origin = {44, -20}, extent = {{-10, -10}, {10, 10}}, rotation = 0)));
  Modelica.Mechanics.Translational.Sources.Force force annotation(
    Placement(visible = true, transformation(origin = {-8, 30}, extent = {{-10, -10}, {10, 10}}, rotation = 0)));
  Modelica.Blocks.Sources.Step step(height = 1000)  annotation(
    Placement(visible = true, transformation(origin = {-62, 30}, extent = {{-10, -10}, {10, 10}}, rotation = 0)));
  Modelica.Blocks.Interfaces.RealOutput y annotation(
    Placement(visible = true, transformation(origin = {38, -54}, extent = {{-10, -10}, {10, 10}}, rotation = 0), iconTransformation(origin = {14, 68}, extent = {{-10, -10}, {10, 10}}, rotation = 0)));
  Modelica.Blocks.Interfaces.RealOutput y1 annotation(
    Placement(visible = true, transformation(origin = {74, -20}, extent = {{-10, -10}, {10, 10}}, rotation = 0), iconTransformation(origin = {60, 44}, extent = {{-10, -10}, {10, 10}}, rotation = 0)));
equation
  connect(damper.flange_a, fixed.flange) annotation(
    Line(points = {{-72, 0}, {-80, 0}, {-80, -24}}, color = {0, 127, 0}));
  connect(mass1.flange_a, force.flange) annotation(
    Line(points = {{8, 0}, {8, 15}, {2, 15}, {2, 30}}, color = {0, 127, 0}));
  connect(step.y, force.f) annotation(
    Line(points = {{-51, 30}, {-21, 30}}, color = {0, 0, 127}));
  connect(positionSensor.flange, spring.flange_a) annotation(
    Line(points = {{-2, -54}, {-18, -54}, {-18, 0}}, color = {0, 127, 0}));
  connect(positionSensor1.flange, mass1.flange_b) annotation(
    Line(points = {{34, -20}, {34, -14}, {28, -14}, {28, 0}}, color = {0, 127, 0}));
  connect(positionSensor1.s, y1) annotation(
    Line(points = {{56, -20}, {74, -20}}, color = {0, 0, 127}));
  connect(positionSensor.s, y) annotation(
    Line(points = {{20, -54}, {38, -54}}, color = {0, 0, 127}));
  connect(damper.flange_b, mass.flange_a) annotation(
    Line(points = {{-52, 0}, {-46, 0}}, color = {0, 127, 0}));
  connect(mass.flange_b, spring.flange_a) annotation(
    Line(points = {{-26, 0}, {-18, 0}}, color = {0, 127, 0}));
  connect(mass1.flange_a, spring.flange_b) annotation(
    Line(points = {{8, 0}, {2, 0}}, color = {0, 127, 0}));
  connect(spring.flange_b, mass1.flange_a) annotation(
    Line(points = {{2, 0}, {8, 0}}, color = {0, 127, 0}));

annotation(
    uses(Modelica(version = "4.0.0")));
end Mechanical2;
