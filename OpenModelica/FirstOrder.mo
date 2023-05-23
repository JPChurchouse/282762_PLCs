model FirstOrder
  Modelica.Blocks.Continuous.Integrator integrator annotation(
    Placement(visible = true, transformation(origin = {14, -2}, extent = {{-10, -10}, {10, 10}}, rotation = 0)));
  Modelica.Blocks.Math.Add add(k2 = -1)  annotation(
    Placement(visible = true, transformation(origin = {-14, -2}, extent = {{-10, -10}, {10, 10}}, rotation = 0)));
  Modelica.Blocks.Sources.Constant const annotation(
    Placement(visible = true, transformation(origin = {-74, 4}, extent = {{-10, -10}, {10, 10}}, rotation = 0)));
  Modelica.Blocks.Math.Gain gain annotation(
    Placement(visible = true, transformation(origin = {18, -38}, extent = {{10, -10}, {-10, 10}}, rotation = 0)));
  Modelica.Blocks.Interfaces.RealOutput y annotation(
    Placement(visible = true, transformation(origin = {88, -2}, extent = {{-10, -10}, {10, 10}}, rotation = 0), iconTransformation(origin = {64, 2}, extent = {{-10, -10}, {10, 10}}, rotation = 0)));
equation
  connect(const.y, add.u1) annotation(
    Line(points = {{-63, 4}, {-26, 4}}, color = {0, 0, 127}));
  connect(gain.y, add.u2) annotation(
    Line(points = {{7, -38}, {-40, -38}, {-40, -8.75}, {-26, -8.75}, {-26, -8}}, color = {0, 0, 127}));
  connect(add.y, integrator.u) annotation(
    Line(points = {{-3, -2}, {2, -2}}, color = {0, 0, 127}));
  connect(integrator.y, y) annotation(
    Line(points = {{25, -2}, {88, -2}}, color = {0, 0, 127}));
  connect(integrator.y, gain.u) annotation(
    Line(points = {{38, -2}, {50, -2}, {50, -38}, {30, -38}}, color = {0, 0, 127}));
  annotation(
    uses(Modelica(version = "4.0.0")));
end FirstOrder;
