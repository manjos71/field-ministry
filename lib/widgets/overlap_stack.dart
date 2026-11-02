import 'dart:math' as math;
import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';

/// Um widget que empilha e sobrepõe verticalmente seus filhos, criando
/// o efeito de cartas / fichas sobrepostas (deck/stack), com suporte a
/// elevar a carta ativa para a sobreposição máxima (topo da pilha).
class OverlapStack extends MultiChildRenderObjectWidget {
  final double overlap;
  final int? activeIndex;

  const OverlapStack({
    super.key,
    this.overlap = 12.0,
    this.activeIndex,
    required super.children,
  });

  @override
  RenderOverlapStack createRenderObject(BuildContext context) {
    return RenderOverlapStack(
      overlap: overlap,
      activeIndex: activeIndex,
    );
  }

  @override
  void updateRenderObject(
      BuildContext context, RenderOverlapStack renderObject) {
    renderObject
      ..overlap = overlap
      ..activeIndex = activeIndex;
  }
}

class OverlapStackParentData extends ContainerBoxParentData<RenderBox> {}

class RenderOverlapStack extends RenderBox
    with
        ContainerRenderObjectMixin<RenderBox, OverlapStackParentData>,
        RenderBoxContainerDefaultsMixin<RenderBox, OverlapStackParentData> {
  double _overlap;
  int? _activeIndex;

  RenderOverlapStack({
    double overlap = 12.0,
    int? activeIndex,
  })  : _overlap = overlap,
        _activeIndex = activeIndex;

  double get overlap => _overlap;

  set overlap(double value) {
    if (_overlap != value) {
      _overlap = value;
      markNeedsLayout();
    }
  }

  int? get activeIndex => _activeIndex;

  set activeIndex(int? value) {
    if (_activeIndex != value) {
      _activeIndex = value;
      markNeedsPaint();
    }
  }

  @override
  void setupParentData(RenderBox child) {
    if (child.parentData is! OverlapStackParentData) {
      child.parentData = OverlapStackParentData();
    }
  }

  @override
  void performLayout() {
    double currentY = 0.0;
    double maxWidth = 0.0;

    RenderBox? child = firstChild;
    while (child != null) {
      child.layout(
        BoxConstraints(
          minWidth: constraints.minWidth,
          maxWidth: constraints.maxWidth,
        ),
        parentUsesSize: true,
      );
      final childParentData = child.parentData! as OverlapStackParentData;
      childParentData.offset = Offset(0, currentY);

      maxWidth = math.max(maxWidth, child.size.width);
      currentY += child.size.height - _overlap;

      child = childParentData.nextSibling;
    }

    if (firstChild != null) {
      currentY += _overlap;
    }

    size = constraints.constrain(Size(maxWidth, math.max(0.0, currentY)));
  }

  @override
  bool hitTestChildren(BoxHitTestResult result, {required Offset position}) {
    if (_activeIndex == null) {
      return defaultHitTestChildren(result, position: position);
    }

    // 1. Prioriza a carta ativa que está desenhada por cima (sobreposição assumida)
    int index = 0;
    RenderBox? activeChild;
    OverlapStackParentData? activeParentData;

    RenderBox? child = firstChild;
    while (child != null) {
      if (index == _activeIndex) {
        activeChild = child;
        activeParentData = child.parentData! as OverlapStackParentData;
        break;
      }
      child = (child.parentData! as OverlapStackParentData).nextSibling;
      index++;
    }

    if (activeChild != null && activeParentData != null) {
      final isHit = result.addWithPaintOffset(
        offset: activeParentData.offset,
        position: position,
        hitTest: (BoxHitTestResult result, Offset transformed) {
          assert(transformed == position - activeParentData!.offset);
          return activeChild!.hitTest(result, position: transformed);
        },
      );
      if (isHit) return true;
    }

    // 2. Se a carta ativa não capturou, testa as outras de trás para frente
    child = lastChild;
    index = childCount - 1;
    while (child != null) {
      final childParentData = child.parentData! as OverlapStackParentData;
      if (index != _activeIndex) {
        final isHit = result.addWithPaintOffset(
          offset: childParentData.offset,
          position: position,
          hitTest: (BoxHitTestResult result, Offset transformed) {
            assert(transformed == position - childParentData.offset);
            return child!.hitTest(result, position: transformed);
          },
        );
        if (isHit) return true;
      }
      child = childParentData.previousSibling;
      index--;
    }

    return false;
  }

  @override
  void paint(PaintingContext context, Offset offset) {
    if (_activeIndex == null) {
      defaultPaint(context, offset);
      return;
    }

    RenderBox? activeChild;
    OverlapStackParentData? activeParentData;

    // Pinta primeiro todos os filhos exceto o ativo
    int index = 0;
    RenderBox? child = firstChild;
    while (child != null) {
      final childParentData = child.parentData! as OverlapStackParentData;
      if (index == _activeIndex) {
        activeChild = child;
        activeParentData = childParentData;
      } else {
        context.paintChild(child, childParentData.offset + offset);
      }
      child = childParentData.nextSibling;
      index++;
    }

    // Pinta o filho ativo por último para que ele fique 100% sobreposto
    if (activeChild != null && activeParentData != null) {
      context.paintChild(activeChild, activeParentData.offset + offset);
    }
  }
}
