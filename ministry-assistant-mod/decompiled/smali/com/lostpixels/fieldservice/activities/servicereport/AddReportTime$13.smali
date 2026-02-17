.class Lcom/lostpixels/fieldservice/activities/servicereport/AddReportTime$13;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnTouchListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/lostpixels/fieldservice/activities/servicereport/AddReportTime;->onCreate(Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/lostpixels/fieldservice/activities/servicereport/AddReportTime;


# direct methods
.method constructor <init>(Lcom/lostpixels/fieldservice/activities/servicereport/AddReportTime;)V
    .locals 0

    .line 434
    iput-object p1, p0, Lcom/lostpixels/fieldservice/activities/servicereport/AddReportTime$13;->this$0:Lcom/lostpixels/fieldservice/activities/servicereport/AddReportTime;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onTouch(Landroid/view/View;Landroid/view/MotionEvent;)Z
    .locals 2

    .line 437
    check-cast p1, Landroid/widget/EditText;

    .line 438
    invoke-virtual {p1}, Landroid/widget/TextView;->getInputType()I

    move-result v0

    const/4 v1, 0x0

    .line 439
    invoke-virtual {p1, v1}, Landroid/widget/TextView;->setInputType(I)V

    .line 440
    invoke-virtual {p1, p2}, Landroid/view/View;->onTouchEvent(Landroid/view/MotionEvent;)Z

    .line 441
    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setInputType(I)V

    const/4 p1, 0x1

    return p1
.end method
