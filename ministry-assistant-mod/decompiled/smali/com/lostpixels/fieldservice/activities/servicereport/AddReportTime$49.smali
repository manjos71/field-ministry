.class Lcom/lostpixels/fieldservice/activities/servicereport/AddReportTime$49;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnClickListener;


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

    .line 803
    iput-object p1, p0, Lcom/lostpixels/fieldservice/activities/servicereport/AddReportTime$49;->this$0:Lcom/lostpixels/fieldservice/activities/servicereport/AddReportTime;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 1

    .line 806
    iget-object p1, p0, Lcom/lostpixels/fieldservice/activities/servicereport/AddReportTime$49;->this$0:Lcom/lostpixels/fieldservice/activities/servicereport/AddReportTime;

    invoke-static {p1}, Lcom/lostpixels/fieldservice/activities/servicereport/AddReportTime;->-$$Nest$fgetmedtCustom2(Lcom/lostpixels/fieldservice/activities/servicereport/AddReportTime;)Landroid/widget/EditText;

    move-result-object v0

    invoke-static {p1, v0}, Lcom/lostpixels/fieldservice/activities/servicereport/AddReportTime;->-$$Nest$maddEdit(Lcom/lostpixels/fieldservice/activities/servicereport/AddReportTime;Landroid/widget/EditText;)V

    return-void
.end method
