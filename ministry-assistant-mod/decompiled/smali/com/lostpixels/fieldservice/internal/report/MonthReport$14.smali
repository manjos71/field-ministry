.class Lcom/lostpixels/fieldservice/internal/report/MonthReport$14;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/lostpixels/fieldservice/realm/RealmHelper$Writer;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/lostpixels/fieldservice/internal/report/MonthReport;->removeFromDailyList(Lcom/lostpixels/fieldservice/internal/report/ServiceSession;)V
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

    .line 680
    iput-object p1, p0, Lcom/lostpixels/fieldservice/internal/report/MonthReport$14;->this$0:Lcom/lostpixels/fieldservice/internal/report/MonthReport;

    iput-object p2, p0, Lcom/lostpixels/fieldservice/internal/report/MonthReport$14;->val$session:Lcom/lostpixels/fieldservice/internal/report/ServiceSession;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public write()V
    .locals 5

    .line 683
    iget-object v0, p0, Lcom/lostpixels/fieldservice/internal/report/MonthReport$14;->this$0:Lcom/lostpixels/fieldservice/internal/report/MonthReport;

    invoke-virtual {v0}, Lcom/lostpixels/fieldservice/internal/report/MonthReport;->realmGet$mlstDailyItems()Lio/realm/RealmList;

    move-result-object v0

    if-eqz v0, :cond_4

    .line 684
    new-instance v0, Lcom/lostpixels/fieldservice/utils/comparators/SessionDateCompare;

    invoke-direct {v0}, Lcom/lostpixels/fieldservice/utils/comparators/SessionDateCompare;-><init>()V

    .line 686
    iget-object v1, p0, Lcom/lostpixels/fieldservice/internal/report/MonthReport$14;->this$0:Lcom/lostpixels/fieldservice/internal/report/MonthReport;

    invoke-virtual {v1}, Lcom/lostpixels/fieldservice/internal/report/MonthReport;->realmGet$mlstDailyItems()Lio/realm/RealmList;

    move-result-object v1

    monitor-enter v1

    const/4 v2, 0x0

    .line 687
    :goto_0
    :try_start_0
    iget-object v3, p0, Lcom/lostpixels/fieldservice/internal/report/MonthReport$14;->this$0:Lcom/lostpixels/fieldservice/internal/report/MonthReport;

    invoke-virtual {v3}, Lcom/lostpixels/fieldservice/internal/report/MonthReport;->realmGet$mlstDailyItems()Lio/realm/RealmList;

    move-result-object v3

    invoke-virtual {v3}, Lio/realm/RealmList;->size()I

    move-result v3

    if-ge v2, v3, :cond_1

    .line 688
    iget-object v3, p0, Lcom/lostpixels/fieldservice/internal/report/MonthReport$14;->val$session:Lcom/lostpixels/fieldservice/internal/report/ServiceSession;

    iget-object v4, p0, Lcom/lostpixels/fieldservice/internal/report/MonthReport$14;->this$0:Lcom/lostpixels/fieldservice/internal/report/MonthReport;

    invoke-virtual {v4}, Lcom/lostpixels/fieldservice/internal/report/MonthReport;->realmGet$mlstDailyItems()Lio/realm/RealmList;

    move-result-object v4

    invoke-virtual {v4, v2}, Lio/realm/RealmList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/lostpixels/fieldservice/internal/report/ServiceSession;

    invoke-static {v4}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    invoke-virtual {v0, v3, v4}, Lcom/lostpixels/fieldservice/utils/comparators/SessionDateCompare;->compare(Lcom/lostpixels/fieldservice/internal/report/ServiceSession;Lcom/lostpixels/fieldservice/internal/report/ServiceSession;)I

    move-result v3

    if-nez v3, :cond_0

    goto :goto_1

    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :catchall_0
    move-exception v0

    goto :goto_3

    :cond_1
    const/4 v2, -0x1

    :goto_1
    if-ltz v2, :cond_3

    .line 696
    iget-object v0, p0, Lcom/lostpixels/fieldservice/internal/report/MonthReport$14;->this$0:Lcom/lostpixels/fieldservice/internal/report/MonthReport;

    invoke-virtual {v0}, Lio/realm/RealmObject;->isManaged()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 697
    iget-object v0, p0, Lcom/lostpixels/fieldservice/internal/report/MonthReport$14;->this$0:Lcom/lostpixels/fieldservice/internal/report/MonthReport;

    invoke-virtual {v0}, Lcom/lostpixels/fieldservice/internal/report/MonthReport;->realmGet$mlstDailyItems()Lio/realm/RealmList;

    move-result-object v0

    invoke-virtual {v0, v2}, Lio/realm/RealmList;->deleteFromRealm(I)V

    goto :goto_2

    .line 699
    :cond_2
    iget-object v0, p0, Lcom/lostpixels/fieldservice/internal/report/MonthReport$14;->this$0:Lcom/lostpixels/fieldservice/internal/report/MonthReport;

    invoke-virtual {v0}, Lcom/lostpixels/fieldservice/internal/report/MonthReport;->realmGet$mlstDailyItems()Lio/realm/RealmList;

    move-result-object v0

    invoke-virtual {v0, v2}, Lio/realm/RealmList;->remove(I)Ljava/lang/Object;

    .line 701
    :cond_3
    :goto_2
    monitor-exit v1

    return-void

    :goto_3
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0

    :cond_4
    return-void
.end method
