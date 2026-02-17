.class Lcom/lostpixels/fieldservice/activities/servicereport/AddReportTime$58;
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

    .line 955
    iput-object p1, p0, Lcom/lostpixels/fieldservice/activities/servicereport/AddReportTime$58;->this$0:Lcom/lostpixels/fieldservice/activities/servicereport/AddReportTime;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 0

    .line 958
    iget-object p1, p0, Lcom/lostpixels/fieldservice/activities/servicereport/AddReportTime$58;->this$0:Lcom/lostpixels/fieldservice/activities/servicereport/AddReportTime;

    invoke-virtual {p1}, Landroid/app/Activity;->finish()V

    return-void
.end method
