.class Lcom/lostpixels/fieldservice/activities/servicereport/AddReportTime$4;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/lostpixels/fieldservice/ui/TimeInputFilter$OnErrorListener;


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

    .line 340
    iput-object p1, p0, Lcom/lostpixels/fieldservice/activities/servicereport/AddReportTime$4;->this$0:Lcom/lostpixels/fieldservice/activities/servicereport/AddReportTime;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onNegativeButton()V
    .locals 1

    .line 343
    iget-object v0, p0, Lcom/lostpixels/fieldservice/activities/servicereport/AddReportTime$4;->this$0:Lcom/lostpixels/fieldservice/activities/servicereport/AddReportTime;

    invoke-static {v0}, Lcom/lostpixels/fieldservice/activities/servicereport/AddReportTime;->-$$Nest$mshowEditHelp(Lcom/lostpixels/fieldservice/activities/servicereport/AddReportTime;)V

    return-void
.end method
