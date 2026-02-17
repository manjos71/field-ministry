.class Lcom/lostpixels/fieldservice/ui/FlowTextView$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnTouchListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/lostpixels/fieldservice/ui/FlowTextView;->init(Landroid/content/Context;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field distance:D

.field final synthetic this$0:Lcom/lostpixels/fieldservice/ui/FlowTextView;

.field x1:F

.field x2:F

.field y1:F

.field y2:F


# direct methods
.method constructor <init>(Lcom/lostpixels/fieldservice/ui/FlowTextView;)V
    .locals 2

    .line 124
    iput-object p1, p0, Lcom/lostpixels/fieldservice/ui/FlowTextView$1;->this$0:Lcom/lostpixels/fieldservice/ui/FlowTextView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-wide/16 v0, 0x0

    .line 126
    iput-wide v0, p0, Lcom/lostpixels/fieldservice/ui/FlowTextView$1;->distance:D

    return-void
.end method


# virtual methods
.method public onTouch(Landroid/view/View;Landroid/view/MotionEvent;)Z
    .locals 5

    .line 133
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getAction()I

    move-result p1

    if-nez p1, :cond_0

    const-wide/16 v0, 0x0

    .line 136
    iput-wide v0, p0, Lcom/lostpixels/fieldservice/ui/FlowTextView$1;->distance:D

    .line 137
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getX()F

    move-result v0

    iput v0, p0, Lcom/lostpixels/fieldservice/ui/FlowTextView$1;->x1:F

    .line 138
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getY()F

    move-result v0

    iput v0, p0, Lcom/lostpixels/fieldservice/ui/FlowTextView$1;->y1:F

    :cond_0
    const/4 v0, 0x2

    if-ne p1, v0, :cond_1

    .line 142
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getX()F

    move-result v0

    iput v0, p0, Lcom/lostpixels/fieldservice/ui/FlowTextView$1;->x2:F

    .line 143
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getY()F

    move-result v0

    iput v0, p0, Lcom/lostpixels/fieldservice/ui/FlowTextView$1;->y2:F

    .line 144
    iget v1, p0, Lcom/lostpixels/fieldservice/ui/FlowTextView$1;->x1:F

    iget v2, p0, Lcom/lostpixels/fieldservice/ui/FlowTextView$1;->y1:F

    iget v3, p0, Lcom/lostpixels/fieldservice/ui/FlowTextView$1;->x2:F

    invoke-static {v1, v2, v3, v0}, Lcom/lostpixels/fieldservice/ui/FlowTextView;->-$$Nest$smgetPointDistance(FFFF)D

    move-result-wide v0

    iput-wide v0, p0, Lcom/lostpixels/fieldservice/ui/FlowTextView$1;->distance:D

    .line 147
    :cond_1
    iget-wide v0, p0, Lcom/lostpixels/fieldservice/ui/FlowTextView$1;->distance:D

    const-wide/high16 v2, 0x4024000000000000L    # 10.0

    cmpg-double v4, v0, v2

    if-gez v4, :cond_3

    const/4 v0, 0x1

    if-ne p1, v0, :cond_2

    .line 151
    iget-object p1, p0, Lcom/lostpixels/fieldservice/ui/FlowTextView$1;->this$0:Lcom/lostpixels/fieldservice/ui/FlowTextView;

    invoke-virtual {p2}, Landroid/view/MotionEvent;->getX()F

    move-result v1

    invoke-virtual {p2}, Landroid/view/MotionEvent;->getY()F

    move-result p2

    invoke-static {p1, v1, p2}, Lcom/lostpixels/fieldservice/ui/FlowTextView;->-$$Nest$monClick(Lcom/lostpixels/fieldservice/ui/FlowTextView;FF)V

    :cond_2
    return v0

    :cond_3
    const/4 p1, 0x0

    return p1
.end method
