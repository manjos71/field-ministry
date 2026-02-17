.class Lcom/lostpixels/fieldservice/ui/FlowTextView$HtmlLink;
.super Lcom/lostpixels/fieldservice/ui/FlowTextView$HtmlObject;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/lostpixels/fieldservice/ui/FlowTextView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "HtmlLink"
.end annotation


# instance fields
.field public height:F

.field final synthetic this$0:Lcom/lostpixels/fieldservice/ui/FlowTextView;

.field public final url:Ljava/lang/String;

.field public width:F

.field public yOffset:F


# direct methods
.method public constructor <init>(Lcom/lostpixels/fieldservice/ui/FlowTextView;Ljava/lang/String;IIFLandroid/text/TextPaint;Ljava/lang/String;)V
    .locals 0

    .line 771
    iput-object p1, p0, Lcom/lostpixels/fieldservice/ui/FlowTextView$HtmlLink;->this$0:Lcom/lostpixels/fieldservice/ui/FlowTextView;

    .line 772
    invoke-direct/range {p0 .. p6}, Lcom/lostpixels/fieldservice/ui/FlowTextView$HtmlObject;-><init>(Lcom/lostpixels/fieldservice/ui/FlowTextView;Ljava/lang/String;IIFLandroid/text/TextPaint;)V

    move-object p1, p0

    .line 773
    iput-object p7, p1, Lcom/lostpixels/fieldservice/ui/FlowTextView$HtmlLink;->url:Ljava/lang/String;

    return-void
.end method
