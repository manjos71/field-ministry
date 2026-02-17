.class Lcom/lostpixels/fieldservice/helpfunctions/ProfileManager$2;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/lostpixels/fieldservice/realm/RealmHelper$Writer;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/lostpixels/fieldservice/helpfunctions/ProfileManager;->updateHourRequirement(Lio/realm/Realm;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic val$realm:Lio/realm/Realm;


# direct methods
.method constructor <init>(Lio/realm/Realm;)V
    .locals 0

    .line 278
    iput-object p1, p0, Lcom/lostpixels/fieldservice/helpfunctions/ProfileManager$2;->val$realm:Lio/realm/Realm;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public write()V
    .locals 12

    const/16 v0, 0x7e7

    const/16 v1, 0x7e7

    .line 284
    :goto_0
    iget-object v2, p0, Lcom/lostpixels/fieldservice/helpfunctions/ProfileManager$2;->val$realm:Lio/realm/Realm;

    invoke-static {v2}, Lcom/lostpixels/fieldservice/internal/report/ServiceReportManager;->getInstance(Lio/realm/Realm;)Lcom/lostpixels/fieldservice/internal/report/ServiceReportManager;

    move-result-object v2

    iget-object v3, p0, Lcom/lostpixels/fieldservice/helpfunctions/ProfileManager$2;->val$realm:Lio/realm/Realm;

    invoke-virtual {v2, v3, v1}, Lcom/lostpixels/fieldservice/internal/report/ServiceReportManager;->getServiceYear(Lio/realm/Realm;I)Lcom/lostpixels/fieldservice/internal/report/YearReport;

    move-result-object v2

    .line 285
    invoke-static {v2}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    invoke-virtual {v2}, Lcom/lostpixels/fieldservice/internal/report/YearReport;->isYearEmpty()Z

    move-result v3

    if-eqz v3, :cond_0

    return-void

    .line 288
    :cond_0
    invoke-virtual {v2}, Lcom/lostpixels/fieldservice/internal/report/YearReport;->isMissionary90()Z

    move-result v3

    const/4 v4, 0x0

    if-nez v3, :cond_6

    invoke-virtual {v2}, Lcom/lostpixels/fieldservice/internal/report/YearReport;->isSpecialPioneer90()Z

    move-result v3

    if-eqz v3, :cond_1

    goto :goto_3

    .line 290
    :cond_1
    invoke-virtual {v2}, Lcom/lostpixels/fieldservice/internal/report/YearReport;->isMissionary100()Z

    move-result v3

    if-nez v3, :cond_5

    invoke-virtual {v2}, Lcom/lostpixels/fieldservice/internal/report/YearReport;->isSpecialPioneer100()Z

    move-result v3

    if-eqz v3, :cond_2

    goto :goto_2

    .line 292
    :cond_2
    invoke-virtual {v2}, Lcom/lostpixels/fieldservice/internal/report/YearReport;->isPioneer()Z

    move-result v3

    if-nez v3, :cond_4

    invoke-virtual {v2}, Lcom/lostpixels/fieldservice/internal/report/YearReport;->isCircuitOversser()Z

    move-result v3

    if-eqz v3, :cond_3

    goto :goto_1

    :cond_3
    const/4 v3, 0x0

    goto :goto_4

    :cond_4
    :goto_1
    const/16 v3, 0x32

    goto :goto_4

    :cond_5
    :goto_2
    const/16 v3, 0x64

    goto :goto_4

    :cond_6
    :goto_3
    const/16 v3, 0x5a

    :goto_4
    const/4 v5, 0x1

    if-ne v1, v0, :cond_7

    const/4 v6, 0x7

    goto :goto_5

    :cond_7
    const/4 v6, 0x1

    .line 296
    :goto_5
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v7

    const/4 v8, 0x5

    .line 298
    invoke-virtual {v7, v8, v5}, Ljava/util/Calendar;->set(II)V

    .line 299
    invoke-static {v6}, Lcom/lostpixels/fieldservice/internal/report/ServiceReportManager;->serviceMonth2Month(I)I

    move-result v8

    sub-int/2addr v8, v5

    const/4 v9, 0x2

    invoke-virtual {v7, v9, v8}, Ljava/util/Calendar;->set(II)V

    if-le v6, v5, :cond_8

    move v8, v1

    goto :goto_6

    :cond_8
    add-int/lit8 v8, v1, -0x1

    .line 300
    :goto_6
    invoke-virtual {v7, v5, v8}, Ljava/util/Calendar;->set(II)V

    const/16 v8, 0xc

    if-lez v3, :cond_9

    :goto_7
    if-gt v6, v8, :cond_c

    .line 304
    invoke-static {v6}, Lcom/lostpixels/fieldservice/internal/report/ServiceReportManager;->serviceMonth2Month(I)I

    move-result v10

    invoke-virtual {v2, v10, v5}, Lcom/lostpixels/fieldservice/internal/report/YearReport;->getMonthGoal(IZ)Lcom/lostpixels/fieldservice/internal/report/ServiceSession;

    move-result-object v10

    new-instance v11, Lcom/lostpixels/fieldservice/internal/report/Time;

    invoke-direct {v11, v3, v4}, Lcom/lostpixels/fieldservice/internal/report/Time;-><init>(II)V

    invoke-virtual {v10, v11}, Lcom/lostpixels/fieldservice/internal/report/ServiceSession;->setHours(Lcom/lostpixels/fieldservice/internal/report/Time;)V

    .line 305
    invoke-static {v6}, Lcom/lostpixels/fieldservice/internal/report/ServiceReportManager;->serviceMonth2Month(I)I

    move-result v10

    invoke-virtual {v2, v10, v4}, Lcom/lostpixels/fieldservice/internal/report/YearReport;->getMonthGoal(IZ)Lcom/lostpixels/fieldservice/internal/report/ServiceSession;

    move-result-object v10

    invoke-virtual {v7}, Ljava/util/Calendar;->getTime()Ljava/util/Date;

    move-result-object v11

    invoke-virtual {v10, v11}, Lcom/lostpixels/fieldservice/internal/report/ServiceSession;->setDate(Ljava/util/Date;)V

    .line 306
    invoke-virtual {v7, v9, v5}, Ljava/util/Calendar;->add(II)V

    add-int/lit8 v6, v6, 0x1

    goto :goto_7

    :cond_9
    :goto_8
    if-gt v6, v8, :cond_c

    .line 310
    invoke-virtual {v7}, Ljava/util/Calendar;->getTime()Ljava/util/Date;

    move-result-object v2

    .line 311
    iget-object v3, p0, Lcom/lostpixels/fieldservice/helpfunctions/ProfileManager$2;->val$realm:Lio/realm/Realm;

    invoke-static {v3}, Lcom/lostpixels/fieldservice/internal/report/ServiceReportManager;->getInstance(Lio/realm/Realm;)Lcom/lostpixels/fieldservice/internal/report/ServiceReportManager;

    move-result-object v3

    iget-object v10, p0, Lcom/lostpixels/fieldservice/helpfunctions/ProfileManager$2;->val$realm:Lio/realm/Realm;

    invoke-virtual {v3, v10, v2}, Lcom/lostpixels/fieldservice/internal/report/ServiceReportManager;->getServiceYear(Lio/realm/Realm;Ljava/util/Date;)Lcom/lostpixels/fieldservice/internal/report/YearReport;

    move-result-object v3

    invoke-virtual {v3, v2}, Lcom/lostpixels/fieldservice/internal/report/YearReport;->isAuxiliary15(Ljava/util/Date;)Z

    move-result v3

    if-eqz v3, :cond_a

    .line 312
    iget-object v3, p0, Lcom/lostpixels/fieldservice/helpfunctions/ProfileManager$2;->val$realm:Lio/realm/Realm;

    invoke-static {v3}, Lcom/lostpixels/fieldservice/internal/report/ServiceReportManager;->getInstance(Lio/realm/Realm;)Lcom/lostpixels/fieldservice/internal/report/ServiceReportManager;

    move-result-object v3

    iget-object v10, p0, Lcom/lostpixels/fieldservice/helpfunctions/ProfileManager$2;->val$realm:Lio/realm/Realm;

    invoke-virtual {v3, v10, v2}, Lcom/lostpixels/fieldservice/internal/report/ServiceReportManager;->getServiceYear(Lio/realm/Realm;Ljava/util/Date;)Lcom/lostpixels/fieldservice/internal/report/YearReport;

    move-result-object v3

    invoke-virtual {v3, v2, v5}, Lcom/lostpixels/fieldservice/internal/report/YearReport;->getMonthGoal(Ljava/util/Date;Z)Lcom/lostpixels/fieldservice/internal/report/ServiceSession;

    move-result-object v3

    new-instance v10, Lcom/lostpixels/fieldservice/internal/report/Time;

    const/16 v11, 0xf

    invoke-direct {v10, v11, v4}, Lcom/lostpixels/fieldservice/internal/report/Time;-><init>(II)V

    invoke-virtual {v3, v10}, Lcom/lostpixels/fieldservice/internal/report/ServiceSession;->setHours(Lcom/lostpixels/fieldservice/internal/report/Time;)V

    .line 313
    iget-object v3, p0, Lcom/lostpixels/fieldservice/helpfunctions/ProfileManager$2;->val$realm:Lio/realm/Realm;

    invoke-static {v3}, Lcom/lostpixels/fieldservice/internal/report/ServiceReportManager;->getInstance(Lio/realm/Realm;)Lcom/lostpixels/fieldservice/internal/report/ServiceReportManager;

    move-result-object v3

    iget-object v10, p0, Lcom/lostpixels/fieldservice/helpfunctions/ProfileManager$2;->val$realm:Lio/realm/Realm;

    invoke-virtual {v3, v10, v2}, Lcom/lostpixels/fieldservice/internal/report/ServiceReportManager;->getServiceYear(Lio/realm/Realm;Ljava/util/Date;)Lcom/lostpixels/fieldservice/internal/report/YearReport;

    move-result-object v3

    invoke-virtual {v3, v2, v4}, Lcom/lostpixels/fieldservice/internal/report/YearReport;->getMonthGoal(Ljava/util/Date;Z)Lcom/lostpixels/fieldservice/internal/report/ServiceSession;

    move-result-object v3

    invoke-virtual {v3, v2}, Lcom/lostpixels/fieldservice/internal/report/ServiceSession;->setDate(Ljava/util/Date;)V

    goto :goto_9

    .line 314
    :cond_a
    iget-object v3, p0, Lcom/lostpixels/fieldservice/helpfunctions/ProfileManager$2;->val$realm:Lio/realm/Realm;

    invoke-static {v3}, Lcom/lostpixels/fieldservice/internal/report/ServiceReportManager;->getInstance(Lio/realm/Realm;)Lcom/lostpixels/fieldservice/internal/report/ServiceReportManager;

    move-result-object v3

    iget-object v10, p0, Lcom/lostpixels/fieldservice/helpfunctions/ProfileManager$2;->val$realm:Lio/realm/Realm;

    invoke-virtual {v3, v10, v2}, Lcom/lostpixels/fieldservice/internal/report/ServiceReportManager;->getServiceYear(Lio/realm/Realm;Ljava/util/Date;)Lcom/lostpixels/fieldservice/internal/report/YearReport;

    move-result-object v3

    invoke-virtual {v3, v2}, Lcom/lostpixels/fieldservice/internal/report/YearReport;->isAuxiliary30(Ljava/util/Date;)Z

    move-result v3

    if-eqz v3, :cond_b

    .line 315
    iget-object v3, p0, Lcom/lostpixels/fieldservice/helpfunctions/ProfileManager$2;->val$realm:Lio/realm/Realm;

    invoke-static {v3}, Lcom/lostpixels/fieldservice/internal/report/ServiceReportManager;->getInstance(Lio/realm/Realm;)Lcom/lostpixels/fieldservice/internal/report/ServiceReportManager;

    move-result-object v3

    iget-object v10, p0, Lcom/lostpixels/fieldservice/helpfunctions/ProfileManager$2;->val$realm:Lio/realm/Realm;

    invoke-virtual {v3, v10, v2}, Lcom/lostpixels/fieldservice/internal/report/ServiceReportManager;->getServiceYear(Lio/realm/Realm;Ljava/util/Date;)Lcom/lostpixels/fieldservice/internal/report/YearReport;

    move-result-object v3

    invoke-virtual {v3, v2, v5}, Lcom/lostpixels/fieldservice/internal/report/YearReport;->getMonthGoal(Ljava/util/Date;Z)Lcom/lostpixels/fieldservice/internal/report/ServiceSession;

    move-result-object v3

    new-instance v10, Lcom/lostpixels/fieldservice/internal/report/Time;

    const/16 v11, 0x1e

    invoke-direct {v10, v11, v4}, Lcom/lostpixels/fieldservice/internal/report/Time;-><init>(II)V

    invoke-virtual {v3, v10}, Lcom/lostpixels/fieldservice/internal/report/ServiceSession;->setHours(Lcom/lostpixels/fieldservice/internal/report/Time;)V

    .line 316
    iget-object v3, p0, Lcom/lostpixels/fieldservice/helpfunctions/ProfileManager$2;->val$realm:Lio/realm/Realm;

    invoke-static {v3}, Lcom/lostpixels/fieldservice/internal/report/ServiceReportManager;->getInstance(Lio/realm/Realm;)Lcom/lostpixels/fieldservice/internal/report/ServiceReportManager;

    move-result-object v3

    iget-object v10, p0, Lcom/lostpixels/fieldservice/helpfunctions/ProfileManager$2;->val$realm:Lio/realm/Realm;

    invoke-virtual {v3, v10, v2}, Lcom/lostpixels/fieldservice/internal/report/ServiceReportManager;->getServiceYear(Lio/realm/Realm;Ljava/util/Date;)Lcom/lostpixels/fieldservice/internal/report/YearReport;

    move-result-object v3

    invoke-virtual {v3, v2, v4}, Lcom/lostpixels/fieldservice/internal/report/YearReport;->getMonthGoal(Ljava/util/Date;Z)Lcom/lostpixels/fieldservice/internal/report/ServiceSession;

    move-result-object v3

    invoke-virtual {v3, v2}, Lcom/lostpixels/fieldservice/internal/report/ServiceSession;->setDate(Ljava/util/Date;)V

    .line 318
    :cond_b
    :goto_9
    invoke-virtual {v7, v9, v5}, Ljava/util/Calendar;->add(II)V

    add-int/lit8 v6, v6, 0x1

    goto/16 :goto_8

    :cond_c
    add-int/lit8 v1, v1, 0x1

    goto/16 :goto_0
.end method
