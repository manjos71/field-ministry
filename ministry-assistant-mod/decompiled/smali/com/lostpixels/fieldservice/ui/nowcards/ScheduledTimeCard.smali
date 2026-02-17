.class public Lcom/lostpixels/fieldservice/ui/nowcards/ScheduledTimeCard;
.super Lcom/fima/cardsui/objects/RecyclableCard;
.source "SourceFile"


# instance fields
.field final bIsHhmm:Z

.field final bSyncReport:Z

.field context:Landroid/content/Context;

.field final hoursLeftText:Ljava/lang/String;

.field final hoursSoFar:Ljava/lang/String;

.field final timeScheduled:D


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;DZZ)V
    .locals 1

    const/4 v0, 0x0

    .line 34
    invoke-direct {p0, p1, p2, v0}, Lcom/fima/cardsui/objects/RecyclableCard;-><init>(Ljava/lang/String;Ljava/lang/String;I)V

    .line 35
    iput-wide p5, p0, Lcom/lostpixels/fieldservice/ui/nowcards/ScheduledTimeCard;->timeScheduled:D

    .line 36
    iput-object p3, p0, Lcom/lostpixels/fieldservice/ui/nowcards/ScheduledTimeCard;->hoursLeftText:Ljava/lang/String;

    .line 37
    iput-boolean p7, p0, Lcom/lostpixels/fieldservice/ui/nowcards/ScheduledTimeCard;->bIsHhmm:Z

    .line 38
    iput-object p4, p0, Lcom/lostpixels/fieldservice/ui/nowcards/ScheduledTimeCard;->hoursSoFar:Ljava/lang/String;

    .line 39
    iput-boolean p8, p0, Lcom/lostpixels/fieldservice/ui/nowcards/ScheduledTimeCard;->bSyncReport:Z

    return-void
.end method

.method private getHoursDoneSoFar()Ljava/lang/String;
    .locals 13

    .line 114
    new-instance v0, Ljava/util/Date;

    invoke-direct {v0}, Ljava/util/Date;-><init>()V

    .line 115
    invoke-static {}, Lio/realm/Realm;->getDefaultInstance()Lio/realm/Realm;

    move-result-object v1

    .line 116
    invoke-static {v1}, Lcom/lostpixels/fieldservice/internal/report/ServiceReportManager;->getInstance(Lio/realm/Realm;)Lcom/lostpixels/fieldservice/internal/report/ServiceReportManager;

    move-result-object v2

    invoke-virtual {v2, v1, v0}, Lcom/lostpixels/fieldservice/internal/report/ServiceReportManager;->getServiceYear(Lio/realm/Realm;Ljava/util/Date;)Lcom/lostpixels/fieldservice/internal/report/YearReport;

    move-result-object v2

    invoke-virtual {v2, v0}, Lcom/lostpixels/fieldservice/internal/report/YearReport;->getMonth(Ljava/util/Date;)Lcom/lostpixels/fieldservice/internal/report/ServiceSession;

    move-result-object v2

    .line 117
    new-instance v3, Lcom/lostpixels/fieldservice/internal/report/Time;

    invoke-virtual {v2}, Lcom/lostpixels/fieldservice/internal/report/ServiceSession;->getHours()Lcom/lostpixels/fieldservice/internal/report/Time;

    move-result-object v4

    invoke-virtual {v4}, Lcom/lostpixels/fieldservice/internal/report/Time;->getTime()I

    move-result v4

    invoke-virtual {v2}, Lcom/lostpixels/fieldservice/internal/report/ServiceSession;->getRbcHours()Lcom/lostpixels/fieldservice/internal/report/Time;

    move-result-object v2

    invoke-virtual {v2}, Lcom/lostpixels/fieldservice/internal/report/Time;->getTime()I

    move-result v2

    add-int/2addr v4, v2

    invoke-direct {v3, v4}, Lcom/lostpixels/fieldservice/internal/report/Time;-><init>(I)V

    .line 120
    iget-object v2, p0, Lcom/lostpixels/fieldservice/ui/nowcards/ScheduledTimeCard;->context:Landroid/content/Context;

    const-string v4, "MyPrefsSettings"

    const/4 v5, 0x0

    invoke-virtual {v2, v4, v5}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v2

    .line 121
    const-string v4, "ServiceTimer"

    const-wide/16 v6, 0x0

    invoke-interface {v2, v4, v6, v7}, Landroid/content/SharedPreferences;->getLong(Ljava/lang/String;J)J

    move-result-wide v8

    .line 122
    const-string v4, "PauseTimer"

    invoke-interface {v2, v4, v6, v7}, Landroid/content/SharedPreferences;->getLong(Ljava/lang/String;J)J

    move-result-wide v10

    cmp-long v2, v8, v6

    if-eqz v2, :cond_1

    cmp-long v2, v10, v6

    if-lez v2, :cond_0

    sub-long/2addr v10, v8

    goto :goto_0

    .line 130
    :cond_0
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v6

    sub-long v10, v6, v8

    :goto_0
    const-wide/32 v6, 0xea60

    .line 131
    div-long/2addr v10, v6

    long-to-int v2, v10

    .line 133
    new-instance v4, Lcom/lostpixels/fieldservice/internal/report/Time;

    invoke-direct {v4, v2}, Lcom/lostpixels/fieldservice/internal/report/Time;-><init>(I)V

    .line 134
    invoke-virtual {v3, v4}, Lcom/lostpixels/fieldservice/internal/report/Time;->add(Lcom/lostpixels/fieldservice/internal/report/Time;)Lcom/lostpixels/fieldservice/internal/report/Time;

    .line 137
    :cond_1
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v2

    const/4 v4, 0x5

    .line 138
    invoke-virtual {v2, v4}, Ljava/util/Calendar;->get(I)I

    move-result v6

    .line 141
    invoke-static {v0}, Lcom/lostpixels/fieldservice/internal/report/ServiceReportManager;->date2ServiceYearInt(Ljava/util/Date;)I

    move-result v0

    const/4 v7, 0x1

    const-wide/16 v8, 0x0

    const/4 v10, 0x1

    :goto_1
    if-gt v10, v6, :cond_2

    .line 143
    invoke-virtual {v2, v4, v10}, Ljava/util/Calendar;->set(II)V

    .line 144
    invoke-static {v1}, Lcom/lostpixels/fieldservice/internal/report/MinistryPlannerManager;->getInstance(Lio/realm/Realm;)Lcom/lostpixels/fieldservice/internal/report/MinistryPlannerManager;

    move-result-object v11

    invoke-virtual {v11, v0, v2}, Lcom/lostpixels/fieldservice/internal/report/MinistryPlannerManager;->getTime(ILjava/util/Calendar;)Lcom/lostpixels/fieldservice/internal/report/MinistryPlannerItem;

    move-result-object v11

    invoke-virtual {v11}, Lcom/lostpixels/fieldservice/internal/report/MinistryPlannerItem;->getTime()F

    move-result v11

    float-to-double v11, v11

    add-double/2addr v8, v11

    add-int/lit8 v10, v10, 0x1

    goto :goto_1

    .line 147
    :cond_2
    invoke-virtual {v1}, Lio/realm/Realm;->close()V

    .line 148
    new-instance v0, Lcom/lostpixels/fieldservice/internal/report/Time;

    invoke-direct {v0, v8, v9}, Lcom/lostpixels/fieldservice/internal/report/Time;-><init>(D)V

    .line 149
    invoke-virtual {v0}, Lcom/lostpixels/fieldservice/internal/report/Time;->getTime()I

    move-result v1

    if-lez v1, :cond_3

    .line 150
    iget-object v1, p0, Lcom/lostpixels/fieldservice/ui/nowcards/ScheduledTimeCard;->hoursSoFar:Ljava/lang/String;

    iget-boolean v2, p0, Lcom/lostpixels/fieldservice/ui/nowcards/ScheduledTimeCard;->bIsHhmm:Z

    invoke-static {v3, v2, v2}, Lcom/lostpixels/fieldservice/internal/report/Time;->timeToString(Lcom/lostpixels/fieldservice/internal/report/Time;ZZ)Ljava/lang/String;

    move-result-object v2

    iget-boolean v3, p0, Lcom/lostpixels/fieldservice/ui/nowcards/ScheduledTimeCard;->bIsHhmm:Z

    invoke-static {v0, v3, v3}, Lcom/lostpixels/fieldservice/internal/report/Time;->timeToString(Lcom/lostpixels/fieldservice/internal/report/Time;ZZ)Ljava/lang/String;

    move-result-object v0

    const/4 v3, 0x2

    new-array v3, v3, [Ljava/lang/Object;

    aput-object v2, v3, v5

    aput-object v0, v3, v7

    invoke-static {v1, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 152
    :cond_3
    const-string v0, "0"

    return-object v0
.end method

.method private getHoursLeft()Ljava/lang/String;
    .locals 10

    .line 75
    new-instance v0, Ljava/util/Date;

    invoke-direct {v0}, Ljava/util/Date;-><init>()V

    .line 76
    invoke-static {}, Lio/realm/Realm;->getDefaultInstance()Lio/realm/Realm;

    move-result-object v1

    .line 77
    invoke-static {v1}, Lcom/lostpixels/fieldservice/internal/report/ServiceReportManager;->getInstance(Lio/realm/Realm;)Lcom/lostpixels/fieldservice/internal/report/ServiceReportManager;

    move-result-object v2

    invoke-virtual {v2, v1, v0}, Lcom/lostpixels/fieldservice/internal/report/ServiceReportManager;->getLastThreeMonthSession(Lio/realm/Realm;Ljava/util/Date;)Lcom/lostpixels/fieldservice/internal/report/ServiceSession;

    move-result-object v0

    if-nez v0, :cond_0

    .line 79
    new-instance v0, Lcom/lostpixels/fieldservice/internal/report/ServiceSession;

    invoke-direct {v0}, Lcom/lostpixels/fieldservice/internal/report/ServiceSession;-><init>()V

    .line 80
    :cond_0
    invoke-virtual {v0}, Lcom/lostpixels/fieldservice/internal/report/ServiceSession;->getHours()Lcom/lostpixels/fieldservice/internal/report/Time;

    move-result-object v2

    .line 81
    invoke-virtual {v0}, Lcom/lostpixels/fieldservice/internal/report/ServiceSession;->getRbcHours()Lcom/lostpixels/fieldservice/internal/report/Time;

    move-result-object v0

    invoke-virtual {v2, v0}, Lcom/lostpixels/fieldservice/internal/report/Time;->add(Lcom/lostpixels/fieldservice/internal/report/Time;)Lcom/lostpixels/fieldservice/internal/report/Time;

    .line 84
    iget-object v0, p0, Lcom/lostpixels/fieldservice/ui/nowcards/ScheduledTimeCard;->context:Landroid/content/Context;

    const-string v3, "MyPrefsSettings"

    const/4 v4, 0x0

    invoke-virtual {v0, v3, v4}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    .line 85
    const-string v3, "ServiceTimer"

    const-wide/16 v4, 0x0

    invoke-interface {v0, v3, v4, v5}, Landroid/content/SharedPreferences;->getLong(Ljava/lang/String;J)J

    move-result-wide v6

    .line 86
    const-string v3, "PauseTimer"

    invoke-interface {v0, v3, v4, v5}, Landroid/content/SharedPreferences;->getLong(Ljava/lang/String;J)J

    move-result-wide v8

    cmp-long v0, v6, v4

    if-eqz v0, :cond_2

    cmp-long v0, v8, v4

    if-lez v0, :cond_1

    sub-long/2addr v8, v6

    goto :goto_0

    .line 94
    :cond_1
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v3

    sub-long v8, v3, v6

    :goto_0
    const-wide/32 v3, 0xea60

    .line 95
    div-long/2addr v8, v3

    long-to-int v0, v8

    .line 97
    new-instance v3, Lcom/lostpixels/fieldservice/internal/report/Time;

    invoke-direct {v3, v0}, Lcom/lostpixels/fieldservice/internal/report/Time;-><init>(I)V

    .line 98
    invoke-virtual {v2, v3}, Lcom/lostpixels/fieldservice/internal/report/Time;->add(Lcom/lostpixels/fieldservice/internal/report/Time;)Lcom/lostpixels/fieldservice/internal/report/Time;

    .line 100
    :cond_2
    new-instance v0, Lcom/lostpixels/fieldservice/internal/report/Time;

    iget-wide v3, p0, Lcom/lostpixels/fieldservice/ui/nowcards/ScheduledTimeCard;->timeScheduled:D

    invoke-direct {v0, v3, v4}, Lcom/lostpixels/fieldservice/internal/report/Time;-><init>(D)V

    .line 101
    invoke-virtual {v0, v2}, Lcom/lostpixels/fieldservice/internal/report/Time;->substract(Lcom/lostpixels/fieldservice/internal/report/Time;)Lcom/lostpixels/fieldservice/internal/report/Time;

    .line 103
    invoke-virtual {v1}, Lio/realm/Realm;->close()V

    .line 105
    invoke-virtual {v0}, Lcom/lostpixels/fieldservice/internal/report/Time;->getTime()I

    move-result v1

    if-lez v1, :cond_3

    .line 106
    iget-boolean v1, p0, Lcom/lostpixels/fieldservice/ui/nowcards/ScheduledTimeCard;->bIsHhmm:Z

    invoke-static {v0, v1, v1}, Lcom/lostpixels/fieldservice/internal/report/Time;->timeToString(Lcom/lostpixels/fieldservice/internal/report/Time;ZZ)Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 108
    :cond_3
    const-string v0, "0"

    return-object v0
.end method


# virtual methods
.method protected applyTo(Landroid/view/View;)V
    .locals 7

    .line 44
    const-string v0, "Error formatting text!"

    const v1, 0x7f0905a0

    invoke-virtual {p1, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iget-object v2, p0, Lcom/fima/cardsui/objects/AbstractCard;->title:Ljava/lang/String;

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    const v1, 0x7f090598

    .line 45
    invoke-virtual {p1, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    new-instance v2, Lcom/lostpixels/fieldservice/internal/report/Time;

    iget-wide v3, p0, Lcom/lostpixels/fieldservice/ui/nowcards/ScheduledTimeCard;->timeScheduled:D

    invoke-direct {v2, v3, v4}, Lcom/lostpixels/fieldservice/internal/report/Time;-><init>(D)V

    iget-boolean v3, p0, Lcom/lostpixels/fieldservice/ui/nowcards/ScheduledTimeCard;->bIsHhmm:Z

    invoke-static {v2, v3, v3}, Lcom/lostpixels/fieldservice/internal/report/Time;->timeToString(Lcom/lostpixels/fieldservice/internal/report/Time;ZZ)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    const v1, 0x7f0901b3

    .line 46
    invoke-virtual {p1, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iget-object v2, p0, Lcom/fima/cardsui/objects/AbstractCard;->desc:Ljava/lang/String;

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 48
    invoke-direct {p0}, Lcom/lostpixels/fieldservice/ui/nowcards/ScheduledTimeCard;->getHoursLeft()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    const v3, 0x7f090256

    .line 50
    :try_start_0
    invoke-virtual {p1, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/TextView;

    iget-object v5, p0, Lcom/lostpixels/fieldservice/ui/nowcards/ScheduledTimeCard;->hoursLeftText:Ljava/lang/String;

    const/4 v6, 0x1

    new-array v6, v6, [Ljava/lang/Object;

    aput-object v1, v6, v2

    invoke-static {v5, v6}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v4, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 52
    :catch_0
    invoke-virtual {p1, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 56
    :goto_0
    iget-boolean v1, p0, Lcom/lostpixels/fieldservice/ui/nowcards/ScheduledTimeCard;->bSyncReport:Z

    const v3, 0x7f090257

    if-nez v1, :cond_0

    .line 58
    :try_start_1
    invoke-virtual {p1, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    invoke-virtual {v1, v2}, Landroid/view/View;->setVisibility(I)V

    .line 59
    invoke-direct {p0}, Lcom/lostpixels/fieldservice/ui/nowcards/ScheduledTimeCard;->getHoursDoneSoFar()Ljava/lang/String;

    move-result-object v1

    .line 60
    invoke-virtual {p1, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    invoke-virtual {v2, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_1

    .line 62
    :catch_1
    invoke-virtual {p1, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/TextView;

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_1

    .line 65
    :cond_0
    invoke-virtual {p1, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    const/16 v0, 0x8

    invoke-virtual {p1, v0}, Landroid/view/View;->setVisibility(I)V

    :goto_1
    return-void
.end method

.method public getCardContent(Landroid/content/Context;)Landroid/view/View;
    .locals 0

    .line 157
    iput-object p1, p0, Lcom/lostpixels/fieldservice/ui/nowcards/ScheduledTimeCard;->context:Landroid/content/Context;

    .line 158
    invoke-super {p0, p1}, Lcom/fima/cardsui/objects/RecyclableCard;->getCardContent(Landroid/content/Context;)Landroid/view/View;

    move-result-object p1

    return-object p1
.end method

.method protected getCardLayoutId()I
    .locals 1

    const v0, 0x7f0c0051

    return v0
.end method

.method public getView(Landroid/content/Context;)Landroid/view/View;
    .locals 0

    .line 163
    iput-object p1, p0, Lcom/lostpixels/fieldservice/ui/nowcards/ScheduledTimeCard;->context:Landroid/content/Context;

    .line 164
    invoke-super {p0, p1}, Lcom/fima/cardsui/objects/Card;->getView(Landroid/content/Context;)Landroid/view/View;

    move-result-object p1

    return-object p1
.end method
