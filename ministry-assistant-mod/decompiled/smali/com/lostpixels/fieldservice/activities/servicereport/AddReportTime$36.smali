.class Lcom/lostpixels/fieldservice/activities/servicereport/AddReportTime$36;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnFocusChangeListener;


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

    .line 677
    iput-object p1, p0, Lcom/lostpixels/fieldservice/activities/servicereport/AddReportTime$36;->this$0:Lcom/lostpixels/fieldservice/activities/servicereport/AddReportTime;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onFocusChange(Landroid/view/View;Z)V
    .locals 0

    if-eqz p2, :cond_0

    .line 682
    iget-object p1, p0, Lcom/lostpixels/fieldservice/activities/servicereport/AddReportTime$36;->this$0:Lcom/lostpixels/fieldservice/activities/servicereport/AddReportTime;

    invoke-static {p1}, Lcom/lostpixels/fieldservice/activities/servicereport/AddReportTime;->-$$Nest$fgetmedtCustom1(Lcom/lostpixels/fieldservice/activities/servicereport/AddReportTime;)Landroid/widget/EditText;

    move-result-object p2

    invoke-static {p1, p2}, Lcom/lostpixels/fieldservice/activities/servicereport/AddReportTime;->-$$Nest$mshowKeyboard(Lcom/lostpixels/fieldservice/activities/servicereport/AddReportTime;Landroid/widget/EditText;)V

    :cond_0
    return-void
.end method
