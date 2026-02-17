.class Lcom/lostpixels/fieldservice/ui/FlowTextView$HtmlObject;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/lostpixels/fieldservice/ui/FlowTextView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "HtmlObject"
.end annotation


# instance fields
.field public final content:Ljava/lang/String;

.field public final end:I

.field public final paint:Landroid/text/TextPaint;

.field public recycle:Z

.field public final start:I

.field final synthetic this$0:Lcom/lostpixels/fieldservice/ui/FlowTextView;

.field public xOffset:F


# direct methods
.method public constructor <init>(Lcom/lostpixels/fieldservice/ui/FlowTextView;Ljava/lang/String;IIFLandroid/text/TextPaint;)V
    .locals 0

    .line 754
    iput-object p1, p0, Lcom/lostpixels/fieldservice/ui/FlowTextView$HtmlObject;->this$0:Lcom/lostpixels/fieldservice/ui/FlowTextView;

    .line 755
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 p1, 0x0

    .line 751
    iput-boolean p1, p0, Lcom/lostpixels/fieldservice/ui/FlowTextView$HtmlObject;->recycle:Z

    .line 756
    iput-object p2, p0, Lcom/lostpixels/fieldservice/ui/FlowTextView$HtmlObject;->content:Ljava/lang/String;

    .line 757
    iput p3, p0, Lcom/lostpixels/fieldservice/ui/FlowTextView$HtmlObject;->start:I

    .line 758
    iput p4, p0, Lcom/lostpixels/fieldservice/ui/FlowTextView$HtmlObject;->end:I

    .line 759
    iput p5, p0, Lcom/lostpixels/fieldservice/ui/FlowTextView$HtmlObject;->xOffset:F

    .line 760
    iput-object p6, p0, Lcom/lostpixels/fieldservice/ui/FlowTextView$HtmlObject;->paint:Landroid/text/TextPaint;

    return-void
.end method
