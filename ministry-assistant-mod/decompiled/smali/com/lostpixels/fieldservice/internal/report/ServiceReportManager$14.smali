.class Lcom/lostpixels/fieldservice/internal/report/ServiceReportManager$14;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/lostpixels/fieldservice/realm/RealmHelper$Writer;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/lostpixels/fieldservice/internal/report/ServiceReportManager;->merge(Lcom/fasterxml/jackson/core/JsonParser;)Z
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/lostpixels/fieldservice/internal/report/ServiceReportManager;

.field final synthetic val$rhs:Lcom/lostpixels/fieldservice/internal/report/ServiceReportManager;


# direct methods
.method constructor <init>(Lcom/lostpixels/fieldservice/internal/report/ServiceReportManager;Lcom/lostpixels/fieldservice/internal/report/ServiceReportManager;)V
    .locals 0

    .line 820
    iput-object p1, p0, Lcom/lostpixels/fieldservice/internal/report/ServiceReportManager$14;->this$0:Lcom/lostpixels/fieldservice/internal/report/ServiceReportManager;

    iput-object p2, p0, Lcom/lostpixels/fieldservice/internal/report/ServiceReportManager$14;->val$rhs:Lcom/lostpixels/fieldservice/internal/report/ServiceReportManager;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public write()V
    .locals 7

    .line 827
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 828
    invoke-static {}, Lcom/lostpixels/fieldservice/internal/report/ServiceReportManager;->getThreeLastMonthStartDate()Ljava/util/Calendar;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/Calendar;->getTime()Ljava/util/Date;

    move-result-object v1

    .line 829
    iget-object v2, p0, Lcom/lostpixels/fieldservice/internal/report/ServiceReportManager$14;->this$0:Lcom/lostpixels/fieldservice/internal/report/ServiceReportManager;

    invoke-virtual {v2}, Lcom/lostpixels/fieldservice/internal/report/ServiceReportManager;->realmGet$mlstServiceYears()Lio/realm/RealmList;

    move-result-object v2

    monitor-enter v2

    .line 830
    :try_start_0
    iget-object v3, p0, Lcom/lostpixels/fieldservice/internal/report/ServiceReportManager$14;->val$rhs:Lcom/lostpixels/fieldservice/internal/report/ServiceReportManager;

    invoke-virtual {v3}, Lcom/lostpixels/fieldservice/internal/report/ServiceReportManager;->realmGet$mlstServiceYears()Lio/realm/RealmList;

    move-result-object v3

    invoke-virtual {v3}, Lio/realm/RealmList;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_2

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/lostpixels/fieldservice/internal/report/YearReport;

    .line 832
    iget-object v5, p0, Lcom/lostpixels/fieldservice/internal/report/ServiceReportManager$14;->this$0:Lcom/lostpixels/fieldservice/internal/report/ServiceReportManager;

    invoke-virtual {v5}, Lcom/lostpixels/fieldservice/internal/report/ServiceReportManager;->realmGet$mlstServiceYears()Lio/realm/RealmList;

    move-result-object v5

    invoke-virtual {v5}, Lio/realm/RealmList;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :cond_0
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_1

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/lostpixels/fieldservice/internal/report/YearReport;

    .line 833
    invoke-virtual {v6, v4, v1}, Lcom/lostpixels/fieldservice/internal/report/YearReport;->merge(Lcom/lostpixels/fieldservice/internal/report/YearReport;Ljava/util/Date;)Z

    move-result v6

    if-eqz v6, :cond_0

    goto :goto_0

    :catchall_0
    move-exception v0

    goto/16 :goto_1

    .line 840
    :cond_1
    invoke-virtual {v0, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 844
    :cond_2
    iget-object v1, p0, Lcom/lostpixels/fieldservice/internal/report/ServiceReportManager$14;->this$0:Lcom/lostpixels/fieldservice/internal/report/ServiceReportManager;

    invoke-virtual {v1}, Lcom/lostpixels/fieldservice/internal/report/ServiceReportManager;->realmGet$mCustomDate()Ljava/util/Date;

    move-result-object v1

    if-eqz v1, :cond_3

    iget-object v1, p0, Lcom/lostpixels/fieldservice/internal/report/ServiceReportManager$14;->val$rhs:Lcom/lostpixels/fieldservice/internal/report/ServiceReportManager;

    invoke-virtual {v1}, Lcom/lostpixels/fieldservice/internal/report/ServiceReportManager;->realmGet$mCustomDate()Ljava/util/Date;

    move-result-object v1

    if-eqz v1, :cond_3

    iget-object v1, p0, Lcom/lostpixels/fieldservice/internal/report/ServiceReportManager$14;->this$0:Lcom/lostpixels/fieldservice/internal/report/ServiceReportManager;

    invoke-virtual {v1}, Lcom/lostpixels/fieldservice/internal/report/ServiceReportManager;->realmGet$mCustomDate()Ljava/util/Date;

    move-result-object v1

    iget-object v3, p0, Lcom/lostpixels/fieldservice/internal/report/ServiceReportManager$14;->val$rhs:Lcom/lostpixels/fieldservice/internal/report/ServiceReportManager;

    invoke-virtual {v3}, Lcom/lostpixels/fieldservice/internal/report/ServiceReportManager;->realmGet$mCustomDate()Ljava/util/Date;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/util/Date;->before(Ljava/util/Date;)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 845
    iget-object v1, p0, Lcom/lostpixels/fieldservice/internal/report/ServiceReportManager$14;->this$0:Lcom/lostpixels/fieldservice/internal/report/ServiceReportManager;

    iget-object v3, p0, Lcom/lostpixels/fieldservice/internal/report/ServiceReportManager$14;->val$rhs:Lcom/lostpixels/fieldservice/internal/report/ServiceReportManager;

    invoke-virtual {v3}, Lcom/lostpixels/fieldservice/internal/report/ServiceReportManager;->realmGet$mCustom1()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Lcom/lostpixels/fieldservice/internal/report/ServiceReportManager;->realmSet$mCustom1(Ljava/lang/String;)V

    .line 846
    iget-object v1, p0, Lcom/lostpixels/fieldservice/internal/report/ServiceReportManager$14;->this$0:Lcom/lostpixels/fieldservice/internal/report/ServiceReportManager;

    iget-object v3, p0, Lcom/lostpixels/fieldservice/internal/report/ServiceReportManager$14;->val$rhs:Lcom/lostpixels/fieldservice/internal/report/ServiceReportManager;

    invoke-virtual {v3}, Lcom/lostpixels/fieldservice/internal/report/ServiceReportManager;->realmGet$mCustom2()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Lcom/lostpixels/fieldservice/internal/report/ServiceReportManager;->realmSet$mCustom2(Ljava/lang/String;)V

    .line 847
    iget-object v1, p0, Lcom/lostpixels/fieldservice/internal/report/ServiceReportManager$14;->this$0:Lcom/lostpixels/fieldservice/internal/report/ServiceReportManager;

    iget-object v3, p0, Lcom/lostpixels/fieldservice/internal/report/ServiceReportManager$14;->val$rhs:Lcom/lostpixels/fieldservice/internal/report/ServiceReportManager;

    invoke-virtual {v3}, Lcom/lostpixels/fieldservice/internal/report/ServiceReportManager;->realmGet$mCustom3()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Lcom/lostpixels/fieldservice/internal/report/ServiceReportManager;->realmSet$mCustom3(Ljava/lang/String;)V

    .line 848
    iget-object v1, p0, Lcom/lostpixels/fieldservice/internal/report/ServiceReportManager$14;->this$0:Lcom/lostpixels/fieldservice/internal/report/ServiceReportManager;

    iget-object v3, p0, Lcom/lostpixels/fieldservice/internal/report/ServiceReportManager$14;->val$rhs:Lcom/lostpixels/fieldservice/internal/report/ServiceReportManager;

    invoke-virtual {v3}, Lcom/lostpixels/fieldservice/internal/report/ServiceReportManager;->realmGet$customItem1Caps()Z

    move-result v3

    invoke-virtual {v1, v3}, Lcom/lostpixels/fieldservice/internal/report/ServiceReportManager;->realmSet$customItem1Caps(Z)V

    .line 849
    iget-object v1, p0, Lcom/lostpixels/fieldservice/internal/report/ServiceReportManager$14;->this$0:Lcom/lostpixels/fieldservice/internal/report/ServiceReportManager;

    iget-object v3, p0, Lcom/lostpixels/fieldservice/internal/report/ServiceReportManager$14;->val$rhs:Lcom/lostpixels/fieldservice/internal/report/ServiceReportManager;

    invoke-virtual {v3}, Lcom/lostpixels/fieldservice/internal/report/ServiceReportManager;->realmGet$customItem2Caps()Z

    move-result v3

    invoke-virtual {v1, v3}, Lcom/lostpixels/fieldservice/internal/report/ServiceReportManager;->realmSet$customItem2Caps(Z)V

    .line 850
    iget-object v1, p0, Lcom/lostpixels/fieldservice/internal/report/ServiceReportManager$14;->this$0:Lcom/lostpixels/fieldservice/internal/report/ServiceReportManager;

    iget-object v3, p0, Lcom/lostpixels/fieldservice/internal/report/ServiceReportManager$14;->val$rhs:Lcom/lostpixels/fieldservice/internal/report/ServiceReportManager;

    invoke-virtual {v3}, Lcom/lostpixels/fieldservice/internal/report/ServiceReportManager;->realmGet$customItem3Caps()Z

    move-result v3

    invoke-virtual {v1, v3}, Lcom/lostpixels/fieldservice/internal/report/ServiceReportManager;->realmSet$customItem3Caps(Z)V

    .line 851
    iget-object v1, p0, Lcom/lostpixels/fieldservice/internal/report/ServiceReportManager$14;->this$0:Lcom/lostpixels/fieldservice/internal/report/ServiceReportManager;

    iget-object v3, p0, Lcom/lostpixels/fieldservice/internal/report/ServiceReportManager$14;->val$rhs:Lcom/lostpixels/fieldservice/internal/report/ServiceReportManager;

    invoke-virtual {v3}, Lcom/lostpixels/fieldservice/internal/report/ServiceReportManager;->realmGet$customItem1IsTime()Z

    move-result v3

    invoke-virtual {v1, v3}, Lcom/lostpixels/fieldservice/internal/report/ServiceReportManager;->realmSet$customItem1IsTime(Z)V

    .line 852
    iget-object v1, p0, Lcom/lostpixels/fieldservice/internal/report/ServiceReportManager$14;->this$0:Lcom/lostpixels/fieldservice/internal/report/ServiceReportManager;

    iget-object v3, p0, Lcom/lostpixels/fieldservice/internal/report/ServiceReportManager$14;->val$rhs:Lcom/lostpixels/fieldservice/internal/report/ServiceReportManager;

    invoke-virtual {v3}, Lcom/lostpixels/fieldservice/internal/report/ServiceReportManager;->realmGet$customItem2IsTime()Z

    move-result v3

    invoke-virtual {v1, v3}, Lcom/lostpixels/fieldservice/internal/report/ServiceReportManager;->realmSet$customItem2IsTime(Z)V

    .line 853
    iget-object v1, p0, Lcom/lostpixels/fieldservice/internal/report/ServiceReportManager$14;->this$0:Lcom/lostpixels/fieldservice/internal/report/ServiceReportManager;

    iget-object v3, p0, Lcom/lostpixels/fieldservice/internal/report/ServiceReportManager$14;->val$rhs:Lcom/lostpixels/fieldservice/internal/report/ServiceReportManager;

    invoke-virtual {v3}, Lcom/lostpixels/fieldservice/internal/report/ServiceReportManager;->realmGet$customItem3IsTime()Z

    move-result v3

    invoke-virtual {v1, v3}, Lcom/lostpixels/fieldservice/internal/report/ServiceReportManager;->realmSet$customItem3IsTime(Z)V

    .line 854
    iget-object v1, p0, Lcom/lostpixels/fieldservice/internal/report/ServiceReportManager$14;->this$0:Lcom/lostpixels/fieldservice/internal/report/ServiceReportManager;

    new-instance v3, Ljava/util/Date;

    iget-object v4, p0, Lcom/lostpixels/fieldservice/internal/report/ServiceReportManager$14;->val$rhs:Lcom/lostpixels/fieldservice/internal/report/ServiceReportManager;

    invoke-virtual {v4}, Lcom/lostpixels/fieldservice/internal/report/ServiceReportManager;->realmGet$mCustomDate()Ljava/util/Date;

    move-result-object v4

    invoke-virtual {v4}, Ljava/util/Date;->getTime()J

    move-result-wide v4

    invoke-direct {v3, v4, v5}, Ljava/util/Date;-><init>(J)V

    invoke-virtual {v1, v3}, Lcom/lostpixels/fieldservice/internal/report/ServiceReportManager;->realmSet$mCustomDate(Ljava/util/Date;)V

    .line 857
    :cond_3
    iget-object v1, p0, Lcom/lostpixels/fieldservice/internal/report/ServiceReportManager$14;->this$0:Lcom/lostpixels/fieldservice/internal/report/ServiceReportManager;

    invoke-virtual {v1}, Lcom/lostpixels/fieldservice/internal/report/ServiceReportManager;->realmGet$mlstServiceYears()Lio/realm/RealmList;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/util/AbstractCollection;->addAll(Ljava/util/Collection;)Z

    .line 858
    monitor-exit v2

    return-void

    :goto_1
    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method
