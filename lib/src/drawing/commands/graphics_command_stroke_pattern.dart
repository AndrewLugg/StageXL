part of stagexl.drawing;

class _GraphicsCommandStrokePattern extends GraphicsCommandStroke {

  final GraphicsPattern pattern;

  _GraphicsCommandStrokePattern(
      GraphicsPattern pattern, num lineWidth, String lineJoin, String lineCap) :
        super (lineWidth, lineJoin, lineCap),  pattern = pattern;

  @override
  void updateContext(GraphicsContext context) {
    context.strokePattern(pattern, lineWidth, lineJoin, lineCap);
  }

  /*
  @override
  void drawCanvas(CanvasRenderingContext2D context) {
    context.strokeStyle = pattern.getCanvasPattern(context);
    context.lineWidth = lineWidth;
    context.lineJoin = lineJoin;
    context.lineCap = lineCap;

    var matrix = pattern.matrix;

    if (matrix != null) {
      context.save();
      context.transform(matrix.a, matrix.b, matrix.c, matrix.d, matrix.tx, matrix.ty);
      context.stroke();
      context.restore();
    } else {
      context.stroke();
    }
  }
  */
}
