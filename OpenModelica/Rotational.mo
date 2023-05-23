model Rotational
  Modelica.Mechanics.Rotational.Components.Fixed fixed annotation(
    Placement(visible = true, transformation(origin = {-154, -22}, extent = {{-10, -10}, {10, 10}}, rotation = 0)));
  Modelica.Mechanics.Rotational.Components.Inertia inertia(J = 10)  annotation(
    Placement(visible = true, transformation(origin = {-96, 2}, extent = {{-10, -10}, {10, 10}}, rotation = 0)));
  Modelica.Mechanics.Rotational.Components.Inertia inertia1(J = 10)  annotation(
    Placement(visible = true, transformation(origin = {0, 2}, extent = {{-10, -10}, {10, 10}}, rotation = 0)));
  Modelica.Mechanics.Rotational.Components.Damper damper(d = 20)  annotation(
    Placement(visible = true, transformation(origin = {-132, 2}, extent = {{-10, -10}, {10, 10}}, rotation = 0)));
  Modelica.Mechanics.Rotational.Components.Damper damper1(d = 20)  annotation(
    Placement(visible = true, transformation(origin = {76, 2}, extent = {{-10, -10}, {10, 10}}, rotation = 0)));
  Modelica.Mechanics.Rotational.Components.Spring spring(c = 30)  annotation(
    Placement(visible = true, transformation(origin = {-46, 2}, extent = {{-10, -10}, {10, 10}}, rotation = 0)));
  Modelica.Mechanics.Rotational.Sources.Torque torque annotation(
    Placement(visible = true, transformation(origin = {-136, 44}, extent = {{-10, -10}, {10, 10}}, rotation = 0)));
  Modelica.Mechanics.Rotational.Sensors.AngleSensor angleSensor annotation(
    Placement(visible = true, transformation(origin = {-62, -46}, extent = {{-10, -10}, {10, 10}}, rotation = 0)));
  Modelica.Mechanics.Rotational.Sensors.AngleSensor angleSensor1 annotation(
    Placement(visible = true, transformation(origin = {46, -48}, extent = {{-10, -10}, {10, 10}}, rotation = 0)));
  Modelica.Blocks.Interfaces.RealOutput y annotation(
    Placement(visible = true, transformation(origin = {-28, -46}, extent = {{-10, -10}, {10, 10}}, rotation = 0), iconTransformation(origin = {-28, -46}, extent = {{-10, -10}, {10, 10}}, rotation = 0)));
  Modelica.Blocks.Interfaces.RealOutput y1 annotation(
    Placement(visible = true, transformation(origin = {80, -48}, extent = {{-10, -10}, {10, 10}}, rotation = 0), iconTransformation(origin = {136, -46}, extent = {{-10, -10}, {10, 10}}, rotation = 0)));
  Modelica.Blocks.Sources.Step step(height = 1000)  annotation(
    Placement(visible = true, transformation(origin = {-170, 44}, extent = {{-10, -10}, {10, 10}}, rotation = 0)));
equation
  connect(damper.flange_a, fixed.flange) annotation(
    Line(points = {{-142, 2}, {-154, 2}, {-154, -22}}));
  connect(damper.flange_b, inertia.flange_a) annotation(
    Line(points = {{-122, 2}, {-106, 2}}));
  connect(inertia.flange_b, spring.flange_a) annotation(
    Line(points = {{-86, 2}, {-56, 2}}));
  connect(spring.flange_b, inertia1.flange_a) annotation(
    Line(points = {{-36, 2}, {-10, 2}}));
  connect(inertia1.flange_b, damper1.flange_a) annotation(
    Line(points = {{10, 2}, {66, 2}}));
  connect(angleSensor1.phi, y1) annotation(
    Line(points = {{57, -48}, {80, -48}}, color = {0, 0, 127}));
  connect(angleSensor.phi, y) annotation(
    Line(points = {{-51, -46}, {-28, -46}}, color = {0, 0, 127}));
  connect(inertia.flange_b, angleSensor.flange) annotation(
    Line(points = {{-86, 2}, {-72, 2}, {-72, -46}}));
  connect(inertia1.flange_b, angleSensor1.flange) annotation(
    Line(points = {{10, 2}, {36, 2}, {36, -48}}));
  connect(inertia.flange_a, torque.flange) annotation(
    Line(points = {{-106, 2}, {-110, 2}, {-110, 44}, {-126, 44}}));
  connect(step.y, torque.tau) annotation(
    Line(points = {{-158, 44}, {-148, 44}}, color = {0, 0, 127}));
  connect(damper1.flange_b, fixed.flange) annotation(
    Line(points = {{86, 2}, {124, 2}, {124, -22}, {-154, -22}}));
  annotation(
    Diagram(coordinateSystem(extent = {{-200, -100}, {200, 100}})),
    Icon(coordinateSystem(extent = {{-200, -100}, {200, 100}})),
    version = "",
    uses(Modelica(version = "4.0.0")));
end Rotational;
