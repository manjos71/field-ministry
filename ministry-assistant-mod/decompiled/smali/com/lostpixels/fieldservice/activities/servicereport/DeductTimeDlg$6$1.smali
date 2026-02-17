.class Lcom/lostpixels/fieldservice/activities/servicereport/DeductTimeDlg$6$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/lostpixels/fieldservice/realm/RealmHelper$Writer;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/lostpixels/fieldservice/activities/servicereport/DeductTimeDlg$6;->onClick(Landroid/content/DialogInterface;I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/lostpixels/fieldservice/activities/servicereport/DeductTimeDlg$6;


# direct methods
.method constructor <init>(Lcom/lostpixels/fieldservice/activities/servicereport/DeductTimeDlg$6;)V
    .locals 0

    .line 149
    iput-object p1, p0, Lcom/lostpixels/fieldservice/activities/servicereport/DeductTimeDlg$6$1;->this$1:Lcom/lostpixels/fieldservice/activities/servicereport/DeductTimeDlg$6;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public write()V
    .locals 6

    .line 152
    iget-object v0, p0, Lcom/lostpixels/fieldservice/activities/servicereport/DeductTimeDlg$6$1;->this$1:Lcom/lostpixels/fieldservice/activities/servicereport/DeductTimeDlg$6;

    iget-object v0, v0, Lcom/lostpixels/fieldservice/activities/servicereport/DeductTimeDlg$6;->this$0:Lcom/lostpixels/fieldservice/activities/servicereport/DeductTimeDlg;

    invoke-static {v0}, Lcom/lostpixels/fieldservice/activities/servicereport/DeductTimeDlg;->access$100(Lcom/lostpixels/fieldservice/activities/servicereport/DeductTimeDlg;)Lio/realm/Realm;

    move-result-object v0

    invoke-static {v0}, Lcom/lostpixels/fieldservice/internal/report/ServiceReportManager;->getInstance(Lio/realm/Realm;)Lcom/lostpixels/fieldservice/internal/report/ServiceReportManager;

    move-result-object v0

    iget-object v1, p0, Lcom/lostpixels/fieldservice/activities/servicereport/DeductTimeDlg$6$1;->this$1:Lcom/lostpixels/fieldservice/activities/servicereport/DeductTimeDlg$6;

    iget-object v1, v1, Lcom/lostpixels/fieldservice/activities/servicereport/DeductTimeDlg$6;->this$0:Lcom/lostpixels/fieldservice/activities/servicereport/DeductTimeDlg;

    invoke-static {v1}, Lcom/lostpixels/fieldservice/activities/servicereport/DeductTimeDlg;->access$000(Lcom/lostpixels/fieldservice/activities/servicereport/DeductTimeDlg;)Lio/realm/Realm;

    move-result-object v1

    iget-object v2, p0, Lcom/lostpixels/fieldservice/activities/servicereport/DeductTimeDlg$6$1;->this$1:Lcom/lostpixels/fieldservice/activities/servicereport/DeductTimeDlg$6;

    iget-object v2, v2, Lcom/lostpixels/fieldservice/activities/servicereport/DeductTimeDlg$6;->val$date:Ljava/util/Date;

    invoke-virtual {v0, v1, v2}, Lcom/lostpixels/fieldservice/internal/report/ServiceReportManager;->getServiceYear(Lio/realm/Realm;Ljava/util/Date;)Lcom/lostpixels/fieldservice/internal/report/YearReport;

    move-result-object v0

    iget-object v1, p0, Lcom/lostpixels/fieldservice/activities/servicereport/DeductTimeDlg$6$1;->this$1:Lcom/lostpixels/fieldservice/activities/servicereport/DeductTimeDlg$6;

    iget-object v1, v1, Lcom/lostpixels/fieldservice/activities/servicereport/DeductTimeDlg$6;->val$date:Ljava/util/Date;

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Lcom/lostpixels/fieldservice/internal/report/YearReport;->getMonthGoal(Ljava/util/Date;Z)Lcom/lostpixels/fieldservice/internal/report/ServiceSession;

    move-result-object v0

    .line 153
    invoke-virtual {v0}, Lcom/lostpixels/fieldservice/internal/report/ServiceSession;->getHours()Lcom/lostpixels/fieldservice/internal/report/Time;

    move-result-object v1

    invoke-virtual {v1}, Lcom/lostpixels/fieldservice/internal/report/Time;->toDouble()D

    move-result-wide v1

    iget-object v3, p0, Lcom/lostpixels/fieldservice/activities/servicereport/DeductTimeDlg$6$1;->this$1:Lcom/lostpixels/fieldservice/activities/servicereport/DeductTimeDlg$6;

    iget v3, v3, Lcom/lostpixels/fieldservice/activities/servicereport/DeductTimeDlg$6;->val$hours:I

    int-to-double v3, v3

    cmpl-double v5, v1, v3

    if-lez v5, :cond_0

    .line 154
    new-instance v1, Lcom/lostpixels/fieldservice/internal/report/Time;

    invoke-virtual {v0}, Lcom/lostpixels/fieldservice/internal/report/ServiceSession;->getHours()Lcom/lostpixels/fieldservice/internal/report/Time;

    move-result-object v2

    invoke-virtual {v2}, Lcom/lostpixels/fieldservice/internal/report/Time;->toDouble()D

    move-result-wide v2

    iget-object v4, p0, Lcom/lostpixels/fieldservice/activities/servicereport/DeductTimeDlg$6$1;->this$1:Lcom/lostpixels/fieldservice/activities/servicereport/DeductTimeDlg$6;

    iget v4, v4, Lcom/lostpixels/fieldservice/activities/servicereport/DeductTimeDlg$6;->val$hours:I

    int-to-double v4, v4

    sub-double/2addr v2, v4

    invoke-direct {v1, v2, v3}, Lcom/lostpixels/fieldservice/internal/report/Time;-><init>(D)V

    invoke-virtual {v0, v1}, Lcom/lostpixels/fieldservice/internal/report/ServiceSession;->setHours(Lcom/lostpixels/fieldservice/internal/report/Time;)V

    return-void

    .line 156
    :cond_0
    new-instance v1, Lcom/lostpixels/fieldservice/internal/report/Time;

    const/4 v2, 0x0

    invoke-direct {v1, v2}, Lcom/lostpixels/fieldservice/internal/report/Time;-><init>(I)V

    invoke-virtual {v0, v1}, Lcom/lostpixels/fieldservice/internal/report/ServiceSession;->setHours(Lcom/lostpixels/fieldservice/internal/report/Time;)V

    return-void
.end method
