.class public abstract Lcom/lostpixels/fieldservice/utils/ReportUtils;
.super Ljava/lang/Object;
.source "SourceFile"


# direct methods
.method public static sendOnlyBeenOutInMinistry(Lcom/lostpixels/fieldservice/internal/report/YearReport;Lcom/lostpixels/fieldservice/internal/report/MonthReport;)Z
    .locals 3

    .line 57
    invoke-virtual {p1}, Lcom/lostpixels/fieldservice/internal/report/MonthReport;->isAuxiliry()Z

    move-result v0

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-nez v0, :cond_1

    .line 58
    invoke-virtual {p0}, Lcom/lostpixels/fieldservice/internal/report/YearReport;->isPioneer()Z

    move-result v0

    if-nez v0, :cond_1

    .line 59
    invoke-virtual {p0}, Lcom/lostpixels/fieldservice/internal/report/YearReport;->isMissionary()Z

    move-result v0

    if-nez v0, :cond_1

    .line 60
    invoke-virtual {p0}, Lcom/lostpixels/fieldservice/internal/report/YearReport;->isSpecialPioneer()Z

    move-result v0

    if-nez v0, :cond_1

    .line 61
    invoke-virtual {p0}, Lcom/lostpixels/fieldservice/internal/report/YearReport;->isCircuitOversser()Z

    move-result p0

    if-eqz p0, :cond_0

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 p0, 0x1

    .line 62
    :goto_1
    invoke-virtual {p1}, Lcom/lostpixels/fieldservice/internal/report/MonthReport;->getMonthReport()Lcom/lostpixels/fieldservice/internal/report/ServiceSession;

    move-result-object p1

    if-nez p0, :cond_2

    .line 64
    invoke-virtual {p1}, Lcom/lostpixels/fieldservice/internal/report/ServiceSession;->isBeforeOctober2023()Z

    move-result p0

    if-nez p0, :cond_2

    return v1

    :cond_2
    return v2
.end method

.method public static shareToHourglass(Landroid/content/Context;Lcom/lostpixels/fieldservice/internal/report/ServiceSession;Ljava/util/Calendar;Z)Landroid/content/Intent;
    .locals 5

    .line 69
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 70
    const-string v1, "android.intent.action.VIEW"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 72
    invoke-virtual {p1}, Lcom/lostpixels/fieldservice/internal/report/ServiceSession;->getHours()Lcom/lostpixels/fieldservice/internal/report/Time;

    move-result-object v1

    invoke-virtual {v1}, Lcom/lostpixels/fieldservice/internal/report/Time;->getTime()I

    move-result v1

    const/4 v2, 0x1

    if-nez v1, :cond_0

    .line 73
    invoke-virtual {p1}, Lcom/lostpixels/fieldservice/internal/report/ServiceSession;->getDoneMinistry()Z

    move-result v3

    if-eqz v3, :cond_0

    const/4 v1, 0x1

    .line 75
    :cond_0
    const-string v3, "hourglassfsreports://app.hourglass-app.com"

    invoke-static {v3}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v3

    invoke-virtual {v0, v3}, Landroid/content/Intent;->setData(Landroid/net/Uri;)Landroid/content/Intent;

    .line 76
    invoke-virtual {p2, v2}, Ljava/util/Calendar;->get(I)I

    move-result v3

    invoke-static {v3}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v3

    const-string v4, "year"

    invoke-virtual {v0, v4, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const/4 v3, 0x2

    .line 77
    invoke-virtual {p2, v3}, Ljava/util/Calendar;->get(I)I

    move-result p2

    add-int/2addr p2, v2

    invoke-static {p2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object p2

    const-string v2, "month"

    invoke-virtual {v0, v2, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 78
    const-string p2, "minutes"

    invoke-static {v1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, p2, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 89
    invoke-virtual {p1}, Lcom/lostpixels/fieldservice/internal/report/ServiceSession;->getStudyPersons()I

    move-result p2

    invoke-virtual {p1}, Lcom/lostpixels/fieldservice/internal/report/ServiceSession;->getAddedStudies()I

    move-result v1

    add-int/2addr p2, v1

    invoke-static {p2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object p2

    const-string v1, "studies"

    invoke-virtual {v0, v1, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 90
    invoke-virtual {p1}, Lcom/lostpixels/fieldservice/internal/report/ServiceSession;->getRbcHours()Lcom/lostpixels/fieldservice/internal/report/Time;

    move-result-object p2

    invoke-virtual {p2}, Lcom/lostpixels/fieldservice/internal/report/Time;->getTime()I

    move-result p2

    if-lez p2, :cond_1

    .line 91
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1}, Lcom/lostpixels/fieldservice/internal/report/ServiceSession;->getRbcHours()Lcom/lostpixels/fieldservice/internal/report/Time;

    move-result-object p1

    invoke-static {p1, p3, p3}, Lcom/lostpixels/fieldservice/internal/report/Time;->timeToString(Lcom/lostpixels/fieldservice/internal/report/Time;ZZ)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, " "

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const p1, 0x7f1204a3

    invoke-virtual {p0, p1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string p1, "remarks"

    invoke-virtual {v0, p1, p0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    :cond_1
    return-object v0
.end method

.method public static shareToNwPublisher(Landroid/content/Context;Lcom/lostpixels/fieldservice/internal/report/ServiceSession;Lcom/lostpixels/fieldservice/internal/report/MonthReport;Lcom/lostpixels/fieldservice/internal/report/ServiceReportManager;)Landroid/content/Intent;
    .locals 6

    .line 98
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 99
    const-string v1, "android.intent.action.SEND"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 101
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 102
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    .line 103
    invoke-virtual {p1}, Lcom/lostpixels/fieldservice/internal/report/ServiceSession;->getHours()Lcom/lostpixels/fieldservice/internal/report/Time;

    move-result-object v3

    invoke-virtual {v3}, Lcom/lostpixels/fieldservice/internal/report/Time;->getTime()I

    move-result v3

    const-string v4, "sharedInMinistry=true"

    if-lez v3, :cond_0

    .line 104
    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 106
    const-string v3, ":hours="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 107
    invoke-virtual {p1}, Lcom/lostpixels/fieldservice/internal/report/ServiceSession;->getHours()Lcom/lostpixels/fieldservice/internal/report/Time;

    move-result-object v3

    invoke-virtual {v3}, Lcom/lostpixels/fieldservice/internal/report/Time;->getHours()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    goto :goto_0

    .line 108
    :cond_0
    invoke-virtual {p1}, Lcom/lostpixels/fieldservice/internal/report/ServiceSession;->getDoneMinistry()Z

    move-result v3

    if-eqz v3, :cond_1

    .line 109
    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_0

    .line 111
    :cond_1
    const-string v3, "sharedInMinistry=false"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 113
    :goto_0
    invoke-virtual {p1}, Lcom/lostpixels/fieldservice/internal/report/ServiceSession;->getStudyPersons()I

    move-result v3

    invoke-virtual {p1}, Lcom/lostpixels/fieldservice/internal/report/ServiceSession;->getAddedStudies()I

    move-result v4

    add-int/2addr v3, v4

    if-lez v3, :cond_2

    .line 114
    const-string v3, ":bibleStudies="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 115
    invoke-virtual {p1}, Lcom/lostpixels/fieldservice/internal/report/ServiceSession;->getStudyPersons()I

    move-result v3

    invoke-virtual {p1}, Lcom/lostpixels/fieldservice/internal/report/ServiceSession;->getAddedStudies()I

    move-result v4

    add-int/2addr v3, v4

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 118
    :cond_2
    invoke-virtual {p1}, Lcom/lostpixels/fieldservice/internal/report/ServiceSession;->getRbcHours()Lcom/lostpixels/fieldservice/internal/report/Time;

    move-result-object v3

    invoke-virtual {v3}, Lcom/lostpixels/fieldservice/internal/report/Time;->getHours()I

    move-result v3

    .line 119
    invoke-virtual {p1}, Lcom/lostpixels/fieldservice/internal/report/ServiceSession;->getRbcHours()Lcom/lostpixels/fieldservice/internal/report/Time;

    move-result-object v4

    invoke-virtual {v4}, Lcom/lostpixels/fieldservice/internal/report/Time;->getTime()I

    move-result v4

    const-string v5, "+"

    if-lez v4, :cond_4

    .line 120
    invoke-virtual {p2}, Lcom/lostpixels/fieldservice/internal/report/MonthReport;->isBethelite()Z

    move-result v4

    if-eqz v4, :cond_3

    const v4, 0x7f1201df

    .line 121
    invoke-virtual {p0, v4}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_1

    :cond_3
    const v4, 0x7f1204a3

    .line 123
    invoke-virtual {p0, v4}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 124
    :goto_1
    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Lcom/lostpixels/fieldservice/internal/report/ServiceSession;->getRbcHours()Lcom/lostpixels/fieldservice/internal/report/Time;

    move-result-object v4

    invoke-virtual {v4}, Lcom/lostpixels/fieldservice/internal/report/Time;->getHours()I

    move-result v4

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 127
    :cond_4
    invoke-virtual {p3}, Lcom/lostpixels/fieldservice/internal/report/ServiceReportManager;->isUsingCustom1()Z

    move-result v4

    if-eqz v4, :cond_7

    .line 128
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->length()I

    move-result v4

    if-lez v4, :cond_5

    .line 129
    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 130
    :cond_5
    invoke-virtual {p3}, Lcom/lostpixels/fieldservice/internal/report/ServiceReportManager;->getCustom1()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 131
    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 132
    invoke-virtual {p3}, Lcom/lostpixels/fieldservice/internal/report/ServiceReportManager;->isCustomItem1IsTime()Z

    move-result v4

    if-eqz v4, :cond_6

    .line 133
    invoke-virtual {p1}, Lcom/lostpixels/fieldservice/internal/report/ServiceSession;->getCustom1Time()Lcom/lostpixels/fieldservice/internal/report/Time;

    move-result-object v4

    invoke-virtual {v4}, Lcom/lostpixels/fieldservice/internal/report/Time;->getHours()I

    move-result v4

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    goto :goto_2

    .line 135
    :cond_6
    invoke-virtual {p1}, Lcom/lostpixels/fieldservice/internal/report/ServiceSession;->getCustom1()I

    move-result v4

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 138
    :cond_7
    :goto_2
    invoke-virtual {p3}, Lcom/lostpixels/fieldservice/internal/report/ServiceReportManager;->isUsingCustom2()Z

    move-result v4

    if-eqz v4, :cond_a

    .line 139
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->length()I

    move-result v4

    if-lez v4, :cond_8

    .line 140
    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 141
    :cond_8
    invoke-virtual {p3}, Lcom/lostpixels/fieldservice/internal/report/ServiceReportManager;->getCustom2()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 142
    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 143
    invoke-virtual {p3}, Lcom/lostpixels/fieldservice/internal/report/ServiceReportManager;->isCustomItem2IsTime()Z

    move-result v4

    if-eqz v4, :cond_9

    .line 144
    invoke-virtual {p1}, Lcom/lostpixels/fieldservice/internal/report/ServiceSession;->getCustom2Time()Lcom/lostpixels/fieldservice/internal/report/Time;

    move-result-object v4

    invoke-virtual {v4}, Lcom/lostpixels/fieldservice/internal/report/Time;->getHours()I

    move-result v4

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    goto :goto_3

    .line 146
    :cond_9
    invoke-virtual {p1}, Lcom/lostpixels/fieldservice/internal/report/ServiceSession;->getCustom2()I

    move-result v4

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 149
    :cond_a
    :goto_3
    invoke-virtual {p3}, Lcom/lostpixels/fieldservice/internal/report/ServiceReportManager;->isUsingCustom3()Z

    move-result v4

    if-eqz v4, :cond_d

    .line 150
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->length()I

    move-result v4

    if-lez v4, :cond_b

    .line 151
    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 152
    :cond_b
    invoke-virtual {p3}, Lcom/lostpixels/fieldservice/internal/report/ServiceReportManager;->getCustom3()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 153
    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 154
    invoke-virtual {p3}, Lcom/lostpixels/fieldservice/internal/report/ServiceReportManager;->isCustomItem3IsTime()Z

    move-result p3

    if-eqz p3, :cond_c

    .line 155
    invoke-virtual {p1}, Lcom/lostpixels/fieldservice/internal/report/ServiceSession;->getCustom3Time()Lcom/lostpixels/fieldservice/internal/report/Time;

    move-result-object p1

    invoke-virtual {p1}, Lcom/lostpixels/fieldservice/internal/report/Time;->getHours()I

    move-result p1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    goto :goto_4

    .line 157
    :cond_c
    invoke-virtual {p1}, Lcom/lostpixels/fieldservice/internal/report/ServiceSession;->getCustom3()I

    move-result p1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 161
    :cond_d
    :goto_4
    invoke-virtual {p2}, Lcom/lostpixels/fieldservice/internal/report/MonthReport;->getSchoolInfoItem()Lio/realm/RealmList;

    move-result-object p1

    if-eqz p1, :cond_f

    .line 162
    invoke-interface {p1}, Ljava/util/List;->isEmpty()Z

    move-result p2

    if-nez p2, :cond_f

    .line 163
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_5
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result p2

    if-eqz p2, :cond_f

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lcom/lostpixels/fieldservice/internal/report/SchoolInfoItem;

    .line 164
    invoke-virtual {p2}, Lcom/lostpixels/fieldservice/internal/report/SchoolInfoItem;->realmGet$miHours()I

    move-result p3

    add-int/2addr v3, p3

    .line 165
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->length()I

    move-result p3

    if-lez p3, :cond_e

    .line 166
    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 167
    :cond_e
    invoke-virtual {p2}, Lcom/lostpixels/fieldservice/internal/report/SchoolInfoItem;->realmGet$msName()Ljava/lang/String;

    move-result-object p3

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Lcom/lostpixels/fieldservice/internal/report/SchoolInfoItem;->realmGet$miHours()I

    move-result p2

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    goto :goto_5

    :cond_f
    if-lez v3, :cond_10

    .line 172
    const-string p1, ":credit="

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 173
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 174
    const-string p1, ":remarks="

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 175
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string p2, "[^A-Za-z0-9]"

    invoke-virtual {p1, p2, v5}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 178
    :cond_10
    const-string p1, "android.intent.extra.TEXT"

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {v0, p1, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 179
    const-string p1, "text/plain"

    invoke-virtual {v0, p1}, Landroid/content/Intent;->setType(Ljava/lang/String;)Landroid/content/Intent;

    .line 182
    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object p0

    const/4 p1, 0x0

    invoke-virtual {p0, v0, p1}, Landroid/content/pm/PackageManager;->queryIntentActivities(Landroid/content/Intent;I)Ljava/util/List;

    move-result-object p0

    .line 183
    invoke-interface {p0}, Ljava/util/List;->isEmpty()Z

    move-result p1

    if-nez p1, :cond_12

    .line 184
    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :cond_11
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result p1

    if-eqz p1, :cond_12

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/content/pm/ResolveInfo;

    .line 185
    iget-object p2, p1, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object p2, p2, Landroid/content/pm/ActivityInfo;->packageName:Ljava/lang/String;

    invoke-virtual {p2}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object p2

    const-string p3, "com.jwscheduler.jws"

    invoke-virtual {p2, p3}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result p2

    if-eqz p2, :cond_11

    .line 186
    iget-object p0, p1, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object p0, p0, Landroid/content/pm/ActivityInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v0, p0}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    :cond_12
    return-object v0
.end method

.method public static showOnlyBeenOutInMinistryMonth(ILcom/lostpixels/fieldservice/internal/report/YearReport;Lcom/lostpixels/fieldservice/internal/report/MonthReport;Lcom/lostpixels/fieldservice/internal/report/ServiceReportManager;Ljava/util/Date;)Z
    .locals 3

    .line 35
    invoke-virtual {p2}, Lcom/lostpixels/fieldservice/internal/report/MonthReport;->isAuxiliry()Z

    move-result v0

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-nez v0, :cond_1

    .line 36
    invoke-virtual {p1}, Lcom/lostpixels/fieldservice/internal/report/YearReport;->isPioneer()Z

    move-result v0

    if-nez v0, :cond_1

    .line 37
    invoke-virtual {p1}, Lcom/lostpixels/fieldservice/internal/report/YearReport;->isMissionary()Z

    move-result v0

    if-nez v0, :cond_1

    .line 38
    invoke-virtual {p1}, Lcom/lostpixels/fieldservice/internal/report/YearReport;->isSpecialPioneer()Z

    move-result v0

    if-nez v0, :cond_1

    .line 39
    invoke-virtual {p1}, Lcom/lostpixels/fieldservice/internal/report/YearReport;->isCircuitOversser()Z

    move-result p1

    if-eqz p1, :cond_0

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 p1, 0x1

    .line 40
    :goto_1
    invoke-virtual {p2}, Lcom/lostpixels/fieldservice/internal/report/MonthReport;->getMonthReport()Lcom/lostpixels/fieldservice/internal/report/ServiceSession;

    move-result-object v0

    .line 41
    invoke-virtual {p2}, Lcom/lostpixels/fieldservice/internal/report/MonthReport;->getMonthGoal()Lcom/lostpixels/fieldservice/internal/report/ServiceSession;

    move-result-object p2

    .line 42
    invoke-virtual {p3}, Lcom/lostpixels/fieldservice/internal/report/ServiceReportManager;->isAnyCustomItemTime()Z

    move-result p3

    if-eqz p3, :cond_3

    .line 43
    invoke-virtual {v0}, Lcom/lostpixels/fieldservice/internal/report/ServiceSession;->getCustom1()I

    move-result p3

    if-gtz p3, :cond_2

    invoke-virtual {v0}, Lcom/lostpixels/fieldservice/internal/report/ServiceSession;->getCustom2()I

    move-result p3

    if-gtz p3, :cond_2

    invoke-virtual {v0}, Lcom/lostpixels/fieldservice/internal/report/ServiceSession;->getCustom3()I

    move-result p3

    if-lez p3, :cond_3

    :cond_2
    const/4 p3, 0x1

    goto :goto_2

    :cond_3
    const/4 p3, 0x0

    :goto_2
    if-nez p0, :cond_4

    if-nez p1, :cond_4

    .line 47
    invoke-virtual {p2}, Lcom/lostpixels/fieldservice/internal/report/ServiceSession;->getHours()Lcom/lostpixels/fieldservice/internal/report/Time;

    move-result-object p0

    invoke-virtual {p0}, Lcom/lostpixels/fieldservice/internal/report/Time;->getTime()I

    move-result p0

    if-nez p0, :cond_4

    if-nez p3, :cond_4

    .line 50
    invoke-static {p4}, Lcom/lostpixels/fieldservice/internal/report/ServiceSession;->isBeforeOctober2023(Ljava/util/Date;)Z

    move-result p0

    if-nez p0, :cond_4

    return v1

    :cond_4
    return v2
.end method
