.class Lcom/lostpixels/fieldservice/ui/FlowTextView$Line;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/lostpixels/fieldservice/ui/FlowTextView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "Line"
.end annotation


# instance fields
.field public leftBound:F

.field public rightBound:F

.field final synthetic this$0:Lcom/lostpixels/fieldservice/ui/FlowTextView;


# direct methods
.method private constructor <init>(Lcom/lostpixels/fieldservice/ui/FlowTextView;)V
    .locals 0

    .line 739
    iput-object p1, p0, Lcom/lostpixels/fieldservice/ui/FlowTextView$Line;->this$0:Lcom/lostpixels/fieldservice/ui/FlowTextView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/lostpixels/fieldservice/ui/FlowTextView;Lcom/lostpixels/fieldservice/ui/FlowTextView-IA;)V
    .locals 0

    .line 0
    invoke-direct {p0, p1}, Lcom/lostpixels/fieldservice/ui/FlowTextView$Line;-><init>(Lcom/lostpixels/fieldservice/ui/FlowTextView;)V

    return-void
.end method
