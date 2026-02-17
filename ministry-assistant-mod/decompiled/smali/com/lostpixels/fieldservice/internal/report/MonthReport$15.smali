.class Lcom/lostpixels/fieldservice/internal/report/MonthReport$15;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/lostpixels/fieldservice/realm/RealmHelper$Writer;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/lostpixels/fieldservice/internal/report/MonthReport;->addToDailyList(Lcom/lostpixels/fieldservice/internal/report/ServiceSession;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/lostpixels/fieldservice/internal/report/MonthReport;

.field final synthetic val$session:Lcom/lostpixels/fieldservice/internal/report/ServiceSession;


# direct methods
.method constructor <init>(Lcom/lostpixels/fieldservice/internal/report/MonthReport;Lcom/lostpixels/fieldservice/internal/report/ServiceSession;)V
    .locals 0

    .line 708
    iput-object p1, p0, Lcom/lostpixels/fieldservice/internal/report/MonthReport$15;->this$0:Lcom/lostpixels/fieldservice/internal/report/MonthReport;

    iput-object p2, p0, Lcom/lostpixels/fieldservice/internal/report/MonthReport$15;->val$session:Lcom/lostpixels/fieldservice/internal/report/ServiceSession;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public write()V
    .locals 6

    .line 711
    invoke-static {}, Lcom/lostpixels/fieldservice/internal/report/ServiceReportManager;->getThreeLastMonthStartDate()Ljava/util/Calendar;

    move-result-object v0

    .line 712
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v1

    .line 713
    iget-object v2, p0, Lcom/lostpixels/fieldservice/internal/report/MonthReport$15;->val$session:Lcom/lostpixels/fieldservice/internal/report/ServiceSession;

    invoke-virtual {v2}, Lcom/lostpixels/fieldservice/internal/report/ServiceSession;->getDate()Ljava/util/Date;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/Calendar;->setTime(Ljava/util/Date;)V

    .line 715
    invoke-virtual {v0, v1}, Ljava/util/Calendar;->before(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 716
    iget-object v0, p0, Lcom/lostpixels/fieldservice/internal/report/MonthReport$15;->this$0:Lcom/lostpixels/fieldservice/internal/report/MonthReport;

    invoke-virtual {v0}, Lcom/lostpixels/fieldservice/internal/report/MonthReport;->realmGet$mlstDailyItems()Lio/realm/RealmList;

    move-result-object v0

    if-nez v0, :cond_0

    .line 717
    iget-object v0, p0, Lcom/lostpixels/fieldservice/internal/report/MonthReport$15;->this$0:Lcom/lostpixels/fieldservice/internal/report/MonthReport;

    new-instance v1, Lio/realm/RealmList;

    invoke-direct {v1}, Lio/realm/RealmList;-><init>()V

    invoke-virtual {v0, v1}, Lcom/lostpixels/fieldservice/internal/report/MonthReport;->realmSet$mlstDailyItems(Lio/realm/RealmList;)V

    .line 718
    :cond_0
    iget-object v0, p0, Lcom/lostpixels/fieldservice/internal/report/MonthReport$15;->this$0:Lcom/lostpixels/fieldservice/internal/report/MonthReport;

    invoke-virtual {v0}, Lcom/lostpixels/fieldservice/internal/report/MonthReport;->realmGet$mlstDailyItems()Lio/realm/RealmList;

    move-result-object v0

    monitor-enter v0

    .line 720
    :try_start_0
    iget-object v1, p0, Lcom/lostpixels/fieldservice/internal/report/MonthReport$15;->this$0:Lcom/lostpixels/fieldservice/internal/report/MonthReport;

    invoke-virtual {v1}, Lcom/lostpixels/fieldservice/internal/report/MonthReport;->realmGet$mlstDailyItems()Lio/realm/RealmList;

    move-result-object v1

    invoke-virtual {v1}, Lio/realm/RealmList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/lostpixels/fieldservice/internal/report/ServiceSession;

    .line 721
    iget-object v3, p0, Lcom/lostpixels/fieldservice/internal/report/MonthReport$15;->this$0:Lcom/lostpixels/fieldservice/internal/report/MonthReport;

    iget-object v4, p0, Lcom/lostpixels/fieldservice/internal/report/MonthReport$15;->val$session:Lcom/lostpixels/fieldservice/internal/report/ServiceSession;

    invoke-virtual {v4}, Lcom/lostpixels/fieldservice/internal/report/ServiceSession;->getDate()Ljava/util/Date;

    move-result-object v4

    invoke-static {v4}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    invoke-virtual {v2}, Lcom/lostpixels/fieldservice/internal/report/ServiceSession;->getDate()Ljava/util/Date;

    move-result-object v5

    invoke-static {v5}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    invoke-static {v3, v4, v5}, Lcom/lostpixels/fieldservice/internal/report/MonthReport;->-$$Nest$misDateEqual(Lcom/lostpixels/fieldservice/internal/report/MonthReport;Ljava/util/Date;Ljava/util/Date;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 722
    iget-object v1, p0, Lcom/lostpixels/fieldservice/internal/report/MonthReport$15;->val$session:Lcom/lostpixels/fieldservice/internal/report/ServiceSession;

    invoke-virtual {v2, v1}, Lcom/lostpixels/fieldservice/internal/report/ServiceSession;->add(Lcom/lostpixels/fieldservice/internal/report/ServiceSession;)Lcom/lostpixels/fieldservice/internal/report/ServiceSession;

    goto :goto_0

    :catchall_0
    move-exception v1

    goto :goto_1

    .line 729
    :cond_2
    iget-object v1, p0, Lcom/lostpixels/fieldservice/internal/report/MonthReport$15;->this$0:Lcom/lostpixels/fieldservice/internal/report/MonthReport;

    invoke-virtual {v1}, Lcom/lostpixels/fieldservice/internal/report/MonthReport;->realmGet$mlstDailyItems()Lio/realm/RealmList;

    move-result-object v1

    new-instance v2, Lcom/lostpixels/fieldservice/internal/report/ServiceSession;

    iget-object v3, p0, Lcom/lostpixels/fieldservice/internal/report/MonthReport$15;->val$session:Lcom/lostpixels/fieldservice/internal/report/ServiceSession;

    invoke-direct {v2, v3}, Lcom/lostpixels/fieldservice/internal/report/ServiceSession;-><init>(Lcom/lostpixels/fieldservice/internal/report/ServiceSession;)V

    invoke-virtual {v1, v2}, Lio/realm/RealmList;->add(Ljava/lang/Object;)Z

    .line 731
    iget-object v1, p0, Lcom/lostpixels/fieldservice/internal/report/MonthReport$15;->this$0:Lcom/lostpixels/fieldservice/internal/report/MonthReport;

    invoke-virtual {v1}, Lcom/lostpixels/fieldservice/internal/report/MonthReport;->realmGet$mlstDailyItems()Lio/realm/RealmList;

    move-result-object v1

    new-instance v2, Lcom/lostpixels/fieldservice/utils/comparators/SessionDateCompare;

    invoke-direct {v2}, Lcom/lostpixels/fieldservice/utils/comparators/SessionDateCompare;-><init>()V

    invoke-static {v1, v2}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    .line 733
    :goto_0
    monitor-exit v0

    return-void

    :goto_1
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1

    :cond_3
    return-void
.end method
