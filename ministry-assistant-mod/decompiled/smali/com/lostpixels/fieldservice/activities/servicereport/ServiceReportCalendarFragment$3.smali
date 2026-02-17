.class Lcom/lostpixels/fieldservice/activities/servicereport/ServiceReportCalendarFragment$3;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/lostpixels/fieldservice/activities/servicereport/ServiceReportCalendarFragment;->updateCalendar()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/lostpixels/fieldservice/activities/servicereport/ServiceReportCalendarFragment;


# direct methods
.method constructor <init>(Lcom/lostpixels/fieldservice/activities/servicereport/ServiceReportCalendarFragment;)V
    .locals 0

    .line 190
    iput-object p1, p0, Lcom/lostpixels/fieldservice/activities/servicereport/ServiceReportCalendarFragment$3;->this$0:Lcom/lostpixels/fieldservice/activities/servicereport/ServiceReportCalendarFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private updateUI()V
    .locals 2

    .line 193
    iget-object v0, p0, Lcom/lostpixels/fieldservice/activities/servicereport/ServiceReportCalendarFragment$3;->this$0:Lcom/lostpixels/fieldservice/activities/servicereport/ServiceReportCalendarFragment;

    invoke-static {v0}, Lcom/lostpixels/fieldservice/activities/servicereport/ServiceReportCalendarFragment;->-$$Nest$fgetupdater(Lcom/lostpixels/fieldservice/activities/servicereport/ServiceReportCalendarFragment;)Ljava/lang/Thread;

    move-result-object v0

    invoke-static {v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    invoke-virtual {v0}, Ljava/lang/Thread;->isInterrupted()Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    .line 196
    :cond_0
    iget-object v0, p0, Lcom/lostpixels/fieldservice/activities/servicereport/ServiceReportCalendarFragment$3;->this$0:Lcom/lostpixels/fieldservice/activities/servicereport/ServiceReportCalendarFragment;

    invoke-virtual {v0}, Landroidx/fragment/app/Fragment;->requireActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v0

    new-instance v1, Lcom/lostpixels/fieldservice/activities/servicereport/ServiceReportCalendarFragment$3$1;

    invoke-direct {v1, p0}, Lcom/lostpixels/fieldservice/activities/servicereport/ServiceReportCalendarFragment$3$1;-><init>(Lcom/lostpixels/fieldservice/activities/servicereport/ServiceReportCalendarFragment$3;)V

    invoke-virtual {v0, v1}, Landroid/app/Activity;->runOnUiThread(Ljava/lang/Runnable;)V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 11

    .line 208
    invoke-static {}, Lio/realm/Realm;->getDefaultInstance()Lio/realm/Realm;

    move-result-object v0

    .line 210
    :try_start_0
    invoke-static {v0}, Lcom/lostpixels/fieldservice/internal/report/ServiceReportManager;->getInstance(Lio/realm/Realm;)Lcom/lostpixels/fieldservice/internal/report/ServiceReportManager;

    move-result-object v1

    .line 211
    invoke-virtual {v1, v0}, Lcom/lostpixels/fieldservice/internal/report/ServiceReportManager;->getLastThreeMonths(Lio/realm/Realm;)Ljava/util/List;

    move-result-object v2

    .line 213
    invoke-virtual {v1}, Lcom/lostpixels/fieldservice/internal/report/ServiceReportManager;->isCustomItem1IsTime()Z

    move-result v3

    .line 214
    invoke-virtual {v1}, Lcom/lostpixels/fieldservice/internal/report/ServiceReportManager;->isCustomItem2IsTime()Z

    move-result v4

    .line 215
    invoke-virtual {v1}, Lcom/lostpixels/fieldservice/internal/report/ServiceReportManager;->isCustomItem3IsTime()Z

    move-result v1

    .line 217
    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_0
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_6

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/lostpixels/fieldservice/internal/report/ServiceSession;

    .line 218
    invoke-virtual {v5}, Lcom/lostpixels/fieldservice/internal/report/ServiceSession;->getHours()Lcom/lostpixels/fieldservice/internal/report/Time;

    move-result-object v6

    invoke-virtual {v6}, Lcom/lostpixels/fieldservice/internal/report/Time;->getTime()I

    move-result v6

    invoke-virtual {v5}, Lcom/lostpixels/fieldservice/internal/report/ServiceSession;->getRbcHours()Lcom/lostpixels/fieldservice/internal/report/Time;

    move-result-object v7

    invoke-virtual {v7}, Lcom/lostpixels/fieldservice/internal/report/Time;->getTime()I

    move-result v7

    add-int/2addr v6, v7

    if-eqz v3, :cond_1

    .line 220
    invoke-virtual {v5}, Lcom/lostpixels/fieldservice/internal/report/ServiceSession;->getCustom1()I

    move-result v7

    add-int/2addr v6, v7

    goto :goto_1

    :catchall_0
    move-exception v1

    goto/16 :goto_3

    :cond_1
    :goto_1
    if-eqz v4, :cond_2

    .line 222
    invoke-virtual {v5}, Lcom/lostpixels/fieldservice/internal/report/ServiceSession;->getCustom2()I

    move-result v7

    add-int/2addr v6, v7

    :cond_2
    if-eqz v1, :cond_3

    .line 224
    invoke-virtual {v5}, Lcom/lostpixels/fieldservice/internal/report/ServiceSession;->getCustom3()I

    move-result v7

    add-int/2addr v6, v7

    :cond_3
    if-gtz v6, :cond_5

    .line 225
    invoke-virtual {v5}, Lcom/lostpixels/fieldservice/internal/report/ServiceSession;->getDoneMinistry()Z

    move-result v7

    if-nez v7, :cond_4

    invoke-virtual {v5}, Lcom/lostpixels/fieldservice/internal/report/ServiceSession;->getComment()Ljava/lang/String;

    move-result-object v7

    if-eqz v7, :cond_4

    invoke-virtual {v5}, Lcom/lostpixels/fieldservice/internal/report/ServiceSession;->getComment()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/String;->isEmpty()Z

    move-result v7

    if-nez v7, :cond_4

    goto :goto_2

    .line 227
    :cond_4
    invoke-virtual {v5}, Lcom/lostpixels/fieldservice/internal/report/ServiceSession;->getDoneMinistry()Z

    move-result v6

    if-eqz v6, :cond_0

    .line 228
    iget-object v6, p0, Lcom/lostpixels/fieldservice/activities/servicereport/ServiceReportCalendarFragment$3;->this$0:Lcom/lostpixels/fieldservice/activities/servicereport/ServiceReportCalendarFragment;

    invoke-static {v6}, Lcom/lostpixels/fieldservice/activities/servicereport/ServiceReportCalendarFragment;->-$$Nest$fgetcalendar(Lcom/lostpixels/fieldservice/activities/servicereport/ServiceReportCalendarFragment;)Lcom/squareup/timessquare/CalendarPickerView;

    move-result-object v6

    invoke-virtual {v5}, Lcom/lostpixels/fieldservice/internal/report/ServiceSession;->getDate()Ljava/util/Date;

    move-result-object v5

    const-string v7, "\u2713"

    const/4 v8, 0x1

    invoke-virtual {v6, v5, v7, v8}, Lcom/squareup/timessquare/CalendarPickerView;->setCheckOnDate(Ljava/util/Date;Ljava/lang/String;Z)Z

    goto :goto_0

    .line 226
    :cond_5
    :goto_2
    iget-object v7, p0, Lcom/lostpixels/fieldservice/activities/servicereport/ServiceReportCalendarFragment$3;->this$0:Lcom/lostpixels/fieldservice/activities/servicereport/ServiceReportCalendarFragment;

    invoke-static {v7}, Lcom/lostpixels/fieldservice/activities/servicereport/ServiceReportCalendarFragment;->-$$Nest$fgetcalendar(Lcom/lostpixels/fieldservice/activities/servicereport/ServiceReportCalendarFragment;)Lcom/squareup/timessquare/CalendarPickerView;

    move-result-object v7

    invoke-virtual {v5}, Lcom/lostpixels/fieldservice/internal/report/ServiceSession;->getDate()Ljava/util/Date;

    move-result-object v5

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    new-instance v9, Lcom/lostpixels/fieldservice/internal/report/Time;

    invoke-direct {v9, v6}, Lcom/lostpixels/fieldservice/internal/report/Time;-><init>(I)V

    iget-object v6, p0, Lcom/lostpixels/fieldservice/activities/servicereport/ServiceReportCalendarFragment$3;->this$0:Lcom/lostpixels/fieldservice/activities/servicereport/ServiceReportCalendarFragment;

    invoke-static {v6}, Lcom/lostpixels/fieldservice/activities/servicereport/ServiceReportCalendarFragment;->-$$Nest$fgetmbIsHhmm(Lcom/lostpixels/fieldservice/activities/servicereport/ServiceReportCalendarFragment;)Z

    move-result v6

    iget-object v10, p0, Lcom/lostpixels/fieldservice/activities/servicereport/ServiceReportCalendarFragment$3;->this$0:Lcom/lostpixels/fieldservice/activities/servicereport/ServiceReportCalendarFragment;

    invoke-static {v10}, Lcom/lostpixels/fieldservice/activities/servicereport/ServiceReportCalendarFragment;->-$$Nest$fgetmbIsHhmm(Lcom/lostpixels/fieldservice/activities/servicereport/ServiceReportCalendarFragment;)Z

    move-result v10

    invoke-static {v9, v6, v10}, Lcom/lostpixels/fieldservice/internal/report/Time;->timeToString(Lcom/lostpixels/fieldservice/internal/report/Time;ZZ)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v8, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v6, "h"

    invoke-virtual {v8, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    const/4 v8, 0x0

    invoke-virtual {v7, v5, v6, v8}, Lcom/squareup/timessquare/CalendarPickerView;->setTextOnDate(Ljava/util/Date;Ljava/lang/String;Z)Z

    goto/16 :goto_0

    .line 232
    :cond_6
    invoke-direct {p0}, Lcom/lostpixels/fieldservice/activities/servicereport/ServiceReportCalendarFragment$3;->updateUI()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 234
    invoke-virtual {v0}, Lio/realm/Realm;->close()V

    return-void

    :goto_3
    invoke-virtual {v0}, Lio/realm/Realm;->close()V

    .line 235
    throw v1
.end method
