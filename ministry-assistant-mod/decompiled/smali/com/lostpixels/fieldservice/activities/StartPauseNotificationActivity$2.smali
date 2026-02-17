.class Lcom/lostpixels/fieldservice/activities/StartPauseNotificationActivity$2;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/lostpixels/fieldservice/activities/StartPauseNotificationActivity;->transferMinutes(Ljava/util/Date;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/lostpixels/fieldservice/activities/StartPauseNotificationActivity;

.field final synthetic val$date:Ljava/util/Date;

.field final synthetic val$fRemainQuarters:I

.field final synthetic val$minutes:I


# direct methods
.method constructor <init>(Lcom/lostpixels/fieldservice/activities/StartPauseNotificationActivity;IILjava/util/Date;)V
    .locals 0

    .line 296
    iput-object p1, p0, Lcom/lostpixels/fieldservice/activities/StartPauseNotificationActivity$2;->this$0:Lcom/lostpixels/fieldservice/activities/StartPauseNotificationActivity;

    iput p2, p0, Lcom/lostpixels/fieldservice/activities/StartPauseNotificationActivity$2;->val$fRemainQuarters:I

    iput p3, p0, Lcom/lostpixels/fieldservice/activities/StartPauseNotificationActivity$2;->val$minutes:I

    iput-object p4, p0, Lcom/lostpixels/fieldservice/activities/StartPauseNotificationActivity$2;->val$date:Ljava/util/Date;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 3

    .line 298
    new-instance p1, Lcom/lostpixels/fieldservice/internal/report/ServiceSession;

    invoke-direct {p1}, Lcom/lostpixels/fieldservice/internal/report/ServiceSession;-><init>()V

    .line 300
    new-instance p2, Lcom/lostpixels/fieldservice/internal/report/Time;

    iget v0, p0, Lcom/lostpixels/fieldservice/activities/StartPauseNotificationActivity$2;->val$minutes:I

    invoke-direct {p2, v0}, Lcom/lostpixels/fieldservice/internal/report/Time;-><init>(I)V

    invoke-virtual {p1, p2}, Lcom/lostpixels/fieldservice/internal/report/ServiceSession;->setHours(Lcom/lostpixels/fieldservice/internal/report/Time;)V

    .line 301
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object p2

    .line 302
    iget-object v0, p0, Lcom/lostpixels/fieldservice/activities/StartPauseNotificationActivity$2;->val$date:Ljava/util/Date;

    invoke-virtual {p2, v0}, Ljava/util/Calendar;->setTime(Ljava/util/Date;)V

    const/4 v0, 0x2

    const/4 v1, 0x1

    .line 303
    invoke-virtual {p2, v0, v1}, Ljava/util/Calendar;->add(II)V

    const/4 v0, 0x5

    .line 304
    invoke-virtual {p2, v0, v1}, Ljava/util/Calendar;->set(II)V

    .line 305
    invoke-virtual {p2}, Ljava/util/Calendar;->getTime()Ljava/util/Date;

    move-result-object p2

    .line 306
    invoke-virtual {p1, p2}, Lcom/lostpixels/fieldservice/internal/report/ServiceSession;->setDate(Ljava/util/Date;)V

    .line 307
    iget-object v0, p0, Lcom/lostpixels/fieldservice/activities/StartPauseNotificationActivity$2;->this$0:Lcom/lostpixels/fieldservice/activities/StartPauseNotificationActivity;

    invoke-static {v0}, Lcom/lostpixels/fieldservice/activities/StartPauseNotificationActivity;->access$100(Lcom/lostpixels/fieldservice/activities/StartPauseNotificationActivity;)Lio/realm/Realm;

    move-result-object v0

    invoke-static {v0}, Lcom/lostpixels/fieldservice/internal/report/ServiceReportManager;->getInstance(Lio/realm/Realm;)Lcom/lostpixels/fieldservice/internal/report/ServiceReportManager;

    move-result-object v0

    iget-object v2, p0, Lcom/lostpixels/fieldservice/activities/StartPauseNotificationActivity$2;->this$0:Lcom/lostpixels/fieldservice/activities/StartPauseNotificationActivity;

    invoke-static {v2}, Lcom/lostpixels/fieldservice/activities/StartPauseNotificationActivity;->access$000(Lcom/lostpixels/fieldservice/activities/StartPauseNotificationActivity;)Lio/realm/Realm;

    move-result-object v2

    invoke-virtual {v0, v2, p2}, Lcom/lostpixels/fieldservice/internal/report/ServiceReportManager;->getServiceYear(Lio/realm/Realm;Ljava/util/Date;)Lcom/lostpixels/fieldservice/internal/report/YearReport;

    move-result-object p2

    invoke-virtual {p2, p1}, Lcom/lostpixels/fieldservice/internal/report/YearReport;->addServiceSession(Lcom/lostpixels/fieldservice/internal/report/ServiceSession;)V

    .line 311
    iget-object p1, p0, Lcom/lostpixels/fieldservice/activities/StartPauseNotificationActivity$2;->this$0:Lcom/lostpixels/fieldservice/activities/StartPauseNotificationActivity;

    const p2, 0x7f120123

    invoke-virtual {p1, p2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p1

    iget p2, p0, Lcom/lostpixels/fieldservice/activities/StartPauseNotificationActivity$2;->val$minutes:I

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    new-array v0, v1, [Ljava/lang/Object;

    const/4 v1, 0x0

    aput-object p2, v0, v1

    invoke-static {p1, v0}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    .line 312
    iget-object p2, p0, Lcom/lostpixels/fieldservice/activities/StartPauseNotificationActivity$2;->this$0:Lcom/lostpixels/fieldservice/activities/StartPauseNotificationActivity;

    invoke-static {p2}, Lcom/lostpixels/fieldservice/activities/StartPauseNotificationActivity;->access$300(Lcom/lostpixels/fieldservice/activities/StartPauseNotificationActivity;)Lio/realm/Realm;

    move-result-object p2

    invoke-static {p2}, Lcom/lostpixels/fieldservice/internal/report/ServiceReportManager;->getInstance(Lio/realm/Realm;)Lcom/lostpixels/fieldservice/internal/report/ServiceReportManager;

    move-result-object p2

    iget-object v0, p0, Lcom/lostpixels/fieldservice/activities/StartPauseNotificationActivity$2;->this$0:Lcom/lostpixels/fieldservice/activities/StartPauseNotificationActivity;

    invoke-static {v0}, Lcom/lostpixels/fieldservice/activities/StartPauseNotificationActivity;->access$200(Lcom/lostpixels/fieldservice/activities/StartPauseNotificationActivity;)Lio/realm/Realm;

    move-result-object v0

    iget-object v2, p0, Lcom/lostpixels/fieldservice/activities/StartPauseNotificationActivity$2;->val$date:Ljava/util/Date;

    invoke-virtual {p2, v0, v2}, Lcom/lostpixels/fieldservice/internal/report/ServiceReportManager;->getServiceYear(Lio/realm/Realm;Ljava/util/Date;)Lcom/lostpixels/fieldservice/internal/report/YearReport;

    move-result-object p2

    iget-object v0, p0, Lcom/lostpixels/fieldservice/activities/StartPauseNotificationActivity$2;->val$date:Ljava/util/Date;

    invoke-virtual {p2, v0}, Lcom/lostpixels/fieldservice/internal/report/YearReport;->getMonthReport(Ljava/util/Date;)Lcom/lostpixels/fieldservice/internal/report/MonthReport;

    move-result-object p2

    invoke-static {p2}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 313
    invoke-virtual {p2, p1, v1}, Lcom/lostpixels/fieldservice/internal/report/MonthReport;->transferMinutes(Ljava/lang/String;Z)V

    .line 314
    iget-object p2, p0, Lcom/lostpixels/fieldservice/activities/StartPauseNotificationActivity$2;->this$0:Lcom/lostpixels/fieldservice/activities/StartPauseNotificationActivity;

    invoke-static {p2, p1, v1}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object p1

    invoke-virtual {p1}, Landroid/widget/Toast;->show()V

    .line 315
    iget-object p1, p0, Lcom/lostpixels/fieldservice/activities/StartPauseNotificationActivity$2;->this$0:Lcom/lostpixels/fieldservice/activities/StartPauseNotificationActivity;

    invoke-static {p1}, Lcom/lostpixels/fieldservice/helpfunctions/HelpFunctions;->updateReportWidget(Landroid/content/Context;)V

    .line 316
    iget-object p1, p0, Lcom/lostpixels/fieldservice/activities/StartPauseNotificationActivity$2;->this$0:Lcom/lostpixels/fieldservice/activities/StartPauseNotificationActivity;

    invoke-virtual {p1}, Landroid/app/Activity;->finish()V

    return-void
.end method
