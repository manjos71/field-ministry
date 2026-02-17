.class Lnet/simonvt/widget/NumberPicker$AdjustScrollerCommand;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lnet/simonvt/widget/NumberPicker;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "AdjustScrollerCommand"
.end annotation


# instance fields
.field final synthetic this$0:Lnet/simonvt/widget/NumberPicker;


# direct methods
.method constructor <init>(Lnet/simonvt/widget/NumberPicker;)V
    .locals 0

    .line 2054
    iput-object p1, p0, Lnet/simonvt/widget/NumberPicker$AdjustScrollerCommand;->this$0:Lnet/simonvt/widget/NumberPicker;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 7

    .line 2056
    iget-object v0, p0, Lnet/simonvt/widget/NumberPicker$AdjustScrollerCommand;->this$0:Lnet/simonvt/widget/NumberPicker;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lnet/simonvt/widget/NumberPicker;->access$1702(Lnet/simonvt/widget/NumberPicker;I)I

    .line 2057
    iget-object v0, p0, Lnet/simonvt/widget/NumberPicker$AdjustScrollerCommand;->this$0:Lnet/simonvt/widget/NumberPicker;

    invoke-static {v0}, Lnet/simonvt/widget/NumberPicker;->access$1800(Lnet/simonvt/widget/NumberPicker;)I

    move-result v0

    iget-object v1, p0, Lnet/simonvt/widget/NumberPicker$AdjustScrollerCommand;->this$0:Lnet/simonvt/widget/NumberPicker;

    invoke-static {v1}, Lnet/simonvt/widget/NumberPicker;->access$1900(Lnet/simonvt/widget/NumberPicker;)I

    move-result v1

    if-ne v0, v1, :cond_0

    .line 2058
    iget-object v0, p0, Lnet/simonvt/widget/NumberPicker$AdjustScrollerCommand;->this$0:Lnet/simonvt/widget/NumberPicker;

    invoke-static {v0}, Lnet/simonvt/widget/NumberPicker;->access$2000(Lnet/simonvt/widget/NumberPicker;)V

    .line 2059
    iget-object v0, p0, Lnet/simonvt/widget/NumberPicker$AdjustScrollerCommand;->this$0:Lnet/simonvt/widget/NumberPicker;

    invoke-static {v0}, Lnet/simonvt/widget/NumberPicker;->access$2100(Lnet/simonvt/widget/NumberPicker;)J

    move-result-wide v1

    invoke-static {v0, v1, v2}, Lnet/simonvt/widget/NumberPicker;->access$2200(Lnet/simonvt/widget/NumberPicker;J)V

    return-void

    .line 2063
    :cond_0
    iget-object v0, p0, Lnet/simonvt/widget/NumberPicker$AdjustScrollerCommand;->this$0:Lnet/simonvt/widget/NumberPicker;

    invoke-static {v0}, Lnet/simonvt/widget/NumberPicker;->access$1800(Lnet/simonvt/widget/NumberPicker;)I

    move-result v0

    iget-object v1, p0, Lnet/simonvt/widget/NumberPicker$AdjustScrollerCommand;->this$0:Lnet/simonvt/widget/NumberPicker;

    invoke-static {v1}, Lnet/simonvt/widget/NumberPicker;->access$1900(Lnet/simonvt/widget/NumberPicker;)I

    move-result v1

    sub-int/2addr v0, v1

    .line 2064
    invoke-static {v0}, Ljava/lang/Math;->abs(I)I

    move-result v1

    iget-object v2, p0, Lnet/simonvt/widget/NumberPicker$AdjustScrollerCommand;->this$0:Lnet/simonvt/widget/NumberPicker;

    invoke-static {v2}, Lnet/simonvt/widget/NumberPicker;->access$2300(Lnet/simonvt/widget/NumberPicker;)I

    move-result v2

    div-int/lit8 v2, v2, 0x2

    if-le v1, v2, :cond_2

    .line 2065
    iget-object v1, p0, Lnet/simonvt/widget/NumberPicker$AdjustScrollerCommand;->this$0:Lnet/simonvt/widget/NumberPicker;

    invoke-static {v1}, Lnet/simonvt/widget/NumberPicker;->access$2300(Lnet/simonvt/widget/NumberPicker;)I

    move-result v1

    if-lez v0, :cond_1

    neg-int v1, v1

    :cond_1
    add-int/2addr v0, v1

    :cond_2
    move v5, v0

    .line 2067
    iget-object v0, p0, Lnet/simonvt/widget/NumberPicker$AdjustScrollerCommand;->this$0:Lnet/simonvt/widget/NumberPicker;

    invoke-static {v0}, Lnet/simonvt/widget/NumberPicker;->access$2400(Lnet/simonvt/widget/NumberPicker;)Lnet/simonvt/widget/Scroller;

    move-result-object v1

    const/4 v4, 0x0

    const/16 v6, 0x320

    const/4 v2, 0x0

    const/4 v3, 0x0

    invoke-virtual/range {v1 .. v6}, Lnet/simonvt/widget/Scroller;->startScroll(IIIII)V

    .line 2068
    iget-object v0, p0, Lnet/simonvt/widget/NumberPicker$AdjustScrollerCommand;->this$0:Lnet/simonvt/widget/NumberPicker;

    invoke-virtual {v0}, Landroid/view/View;->invalidate()V

    return-void
.end method
