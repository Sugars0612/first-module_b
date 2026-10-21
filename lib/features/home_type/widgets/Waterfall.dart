import 'package:flutter/cupertino.dart';
import 'package:flutter/rendering.dart';

class Waterfall extends MultiChildRenderObjectWidget {
  const Waterfall({
    super.key,
    required super.children
  });

  @override
  RenderObject createRenderObject(BuildContext context) {
    // TODO: implement createRenderObject
    return RenderWaterfall();
  }


}

class WaterfallParentData extends ContainerBoxParentData<RenderBox> {

}

class RenderWaterfall extends RenderBox
  with ContainerRenderObjectMixin<RenderBox, WaterfallParentData>,
  RenderBoxContainerDefaultsMixin<RenderBox, WaterfallParentData> {

  @override
  void setupParentData(RenderBox child) {
    if (child.parentData is! WaterfallParentData) {
      child.parentData = WaterfallParentData();
    }
  }

  @override
  void performLayout() {
    // 父组件给的约束
    final double width = constraints.maxWidth;
    final double spacing = 10;
    final double columnWidth = (width - spacing) / 2;

    double column0Height = 0;
    double column1Height = 0;
    int column = 0;
    RenderBox? child = firstChild;

    while (child != null) {
      // 让子组件根据约束算出自己的大小
      child.layout(
          BoxConstraints(
            minWidth: columnWidth,
            maxWidth: columnWidth
        ),parentUsesSize: true
      );


      if (column0Height <= column1Height) {
        column = 0;
      } else {
        column = 1;
      }

      double x;
      if (column == 0) {
        x = 0;
      } else {
        x = columnWidth + spacing;
      }

      double y;
      if (column == 0) {
        y = column0Height;
      } else {
        y = column1Height;
      }

      // 告诉父亲怎么约束子 就是具体放的位置
      final parentData = child?.parentData as WaterfallParentData;
      parentData.offset = Offset(x, y);


      // 当前 child放好 更新列高度
      if (column == 0) {
        column0Height += child!.size.height + spacing;
      } else {
        column1Height += child!.size.height + spacing;
      }

      child = childAfter(child);

    }


    double height;
    if (column0Height > column1Height) {
      height = column0Height;
    } else {
      height = column1Height;
    }

    size = Size(width, height);
  }

  @override
  void paint(PaintingContext context, Offset offset) {
    // TODO: implement paint
    defaultPaint(context, offset);
  }
}
