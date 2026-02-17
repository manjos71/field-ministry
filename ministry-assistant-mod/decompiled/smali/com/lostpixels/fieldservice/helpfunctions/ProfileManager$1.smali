.class Lcom/lostpixels/fieldservice/helpfunctions/ProfileManager$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/lostpixels/fieldservice/realm/RealmHelper$Writer;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/lostpixels/fieldservice/helpfunctions/ProfileManager;->setProfile(Lio/realm/Realm;Ljava/util/Calendar;IZ)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic val$cal:Ljava/util/Calendar;

.field final synthetic val$infirmPioneer:Z

.field final synthetic val$profileType:I

.field final synthetic val$realm:Lio/realm/Realm;


# direct methods
.method constructor <init>(Ljava/util/Calendar;ILio/realm/Realm;Z)V
    .locals 0

    .line 149
    iput-object p1, p0, Lcom/lostpixels/fieldservice/helpfunctions/ProfileManager$1;->val$cal:Ljava/util/Calendar;

    iput p2, p0, Lcom/lostpixels/fieldservice/helpfunctions/ProfileManager$1;->val$profileType:I

    iput-object p3, p0, Lcom/lostpixels/fieldservice/helpfunctions/ProfileManager$1;->val$realm:Lio/realm/Realm;

    iput-boolean p4, p0, Lcom/lostpixels/fieldservice/helpfunctions/ProfileManager$1;->val$infirmPioneer:Z

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public write()V
    .locals 10

    .line 152
    iget-object v0, p0, Lcom/lostpixels/fieldservice/helpfunctions/ProfileManager$1;->val$cal:Ljava/util/Calendar;

    invoke-virtual {v0}, Ljava/util/Calendar;->getTime()Ljava/util/Date;

    move-result-object v0

    .line 154
    iget v1, p0, Lcom/lostpixels/fieldservice/helpfunctions/ProfileManager$1;->val$profileType:I

    const/16 v2, 0x32

    const/4 v3, 0x3

    const/16 v4, 0xc

    const/4 v5, 0x2

    const/4 v6, 0x0

    const/4 v7, 0x1

    packed-switch v1, :pswitch_data_0

    goto/16 :goto_8

    .line 186
    :pswitch_0
    iget-object v1, p0, Lcom/lostpixels/fieldservice/helpfunctions/ProfileManager$1;->val$realm:Lio/realm/Realm;

    invoke-static {v1}, Lcom/lostpixels/fieldservice/internal/report/ServiceReportManager;->getInstance(Lio/realm/Realm;)Lcom/lostpixels/fieldservice/internal/report/ServiceReportManager;

    move-result-object v1

    iget-object v2, p0, Lcom/lostpixels/fieldservice/helpfunctions/ProfileManager$1;->val$realm:Lio/realm/Realm;

    invoke-virtual {v1, v2, v0}, Lcom/lostpixels/fieldservice/internal/report/ServiceReportManager;->getServiceYear(Lio/realm/Realm;Ljava/util/Date;)Lcom/lostpixels/fieldservice/internal/report/YearReport;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/lostpixels/fieldservice/internal/report/YearReport;->getMonthReport(Ljava/util/Date;)Lcom/lostpixels/fieldservice/internal/report/MonthReport;

    move-result-object v0

    invoke-static {v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    invoke-virtual {v0, v6}, Lcom/lostpixels/fieldservice/internal/report/MonthReport;->setMonthProfile(I)V

    return-void

    .line 183
    :pswitch_1
    iget-object v1, p0, Lcom/lostpixels/fieldservice/helpfunctions/ProfileManager$1;->val$realm:Lio/realm/Realm;

    invoke-static {v1}, Lcom/lostpixels/fieldservice/internal/report/ServiceReportManager;->getInstance(Lio/realm/Realm;)Lcom/lostpixels/fieldservice/internal/report/ServiceReportManager;

    move-result-object v1

    iget-object v2, p0, Lcom/lostpixels/fieldservice/helpfunctions/ProfileManager$1;->val$realm:Lio/realm/Realm;

    invoke-virtual {v1, v2, v0}, Lcom/lostpixels/fieldservice/internal/report/ServiceReportManager;->getServiceYear(Lio/realm/Realm;Ljava/util/Date;)Lcom/lostpixels/fieldservice/internal/report/YearReport;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/lostpixels/fieldservice/internal/report/YearReport;->getMonthReport(Ljava/util/Date;)Lcom/lostpixels/fieldservice/internal/report/MonthReport;

    move-result-object v0

    invoke-static {v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    invoke-virtual {v0, v3}, Lcom/lostpixels/fieldservice/internal/report/MonthReport;->setMonthProfile(I)V

    return-void

    .line 260
    :pswitch_2
    iget-object v1, p0, Lcom/lostpixels/fieldservice/helpfunctions/ProfileManager$1;->val$cal:Ljava/util/Calendar;

    invoke-virtual {v1, v5}, Ljava/util/Calendar;->get(I)I

    move-result v1

    add-int/2addr v1, v7

    .line 261
    iget-object v3, p0, Lcom/lostpixels/fieldservice/helpfunctions/ProfileManager$1;->val$realm:Lio/realm/Realm;

    invoke-static {v3}, Lcom/lostpixels/fieldservice/internal/report/ServiceReportManager;->getInstance(Lio/realm/Realm;)Lcom/lostpixels/fieldservice/internal/report/ServiceReportManager;

    move-result-object v3

    iget-object v8, p0, Lcom/lostpixels/fieldservice/helpfunctions/ProfileManager$1;->val$realm:Lio/realm/Realm;

    invoke-virtual {v3, v8, v0}, Lcom/lostpixels/fieldservice/internal/report/ServiceReportManager;->getServiceYear(Lio/realm/Realm;Ljava/util/Date;)Lcom/lostpixels/fieldservice/internal/report/YearReport;

    move-result-object v0

    .line 262
    invoke-virtual {v0, v1}, Lcom/lostpixels/fieldservice/internal/report/YearReport;->setCircuitOversser(I)V

    .line 264
    invoke-static {v1}, Lcom/lostpixels/fieldservice/internal/report/ServiceReportManager;->month2ServiceMonth(I)I

    move-result v1

    :goto_0
    if-gt v1, v4, :cond_4

    .line 265
    invoke-static {v1}, Lcom/lostpixels/fieldservice/internal/report/ServiceReportManager;->serviceMonth2Month(I)I

    move-result v3

    invoke-virtual {v0, v3, v7}, Lcom/lostpixels/fieldservice/internal/report/YearReport;->getMonthGoal(IZ)Lcom/lostpixels/fieldservice/internal/report/ServiceSession;

    move-result-object v3

    new-instance v8, Lcom/lostpixels/fieldservice/internal/report/Time;

    invoke-direct {v8, v2, v6}, Lcom/lostpixels/fieldservice/internal/report/Time;-><init>(II)V

    invoke-virtual {v3, v8}, Lcom/lostpixels/fieldservice/internal/report/ServiceSession;->setHours(Lcom/lostpixels/fieldservice/internal/report/Time;)V

    .line 266
    invoke-static {v1}, Lcom/lostpixels/fieldservice/internal/report/ServiceReportManager;->serviceMonth2Month(I)I

    move-result v3

    invoke-virtual {v0, v3, v6}, Lcom/lostpixels/fieldservice/internal/report/YearReport;->getMonthGoal(IZ)Lcom/lostpixels/fieldservice/internal/report/ServiceSession;

    move-result-object v3

    iget-object v8, p0, Lcom/lostpixels/fieldservice/helpfunctions/ProfileManager$1;->val$cal:Ljava/util/Calendar;

    invoke-virtual {v8}, Ljava/util/Calendar;->getTime()Ljava/util/Date;

    move-result-object v8

    invoke-virtual {v3, v8}, Lcom/lostpixels/fieldservice/internal/report/ServiceSession;->setDate(Ljava/util/Date;)V

    .line 267
    invoke-static {v1}, Lcom/lostpixels/fieldservice/internal/report/ServiceReportManager;->serviceMonth2Month(I)I

    move-result v3

    invoke-virtual {v0, v3}, Lcom/lostpixels/fieldservice/internal/report/YearReport;->getMonthReport(I)Lcom/lostpixels/fieldservice/internal/report/MonthReport;

    move-result-object v3

    invoke-static {v3}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    invoke-virtual {v3, v6}, Lcom/lostpixels/fieldservice/internal/report/MonthReport;->setMonthProfile(I)V

    .line 268
    iget-object v3, p0, Lcom/lostpixels/fieldservice/helpfunctions/ProfileManager$1;->val$cal:Ljava/util/Calendar;

    invoke-virtual {v3, v5, v7}, Ljava/util/Calendar;->add(II)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 167
    :pswitch_3
    iget-object v1, p0, Lcom/lostpixels/fieldservice/helpfunctions/ProfileManager$1;->val$realm:Lio/realm/Realm;

    iget-object v2, p0, Lcom/lostpixels/fieldservice/helpfunctions/ProfileManager$1;->val$cal:Ljava/util/Calendar;

    invoke-static {v1, v2}, Lcom/lostpixels/fieldservice/helpfunctions/ProfileManager;->removeOldProfile(Lio/realm/Realm;Ljava/util/Calendar;)V

    .line 170
    iget-object v1, p0, Lcom/lostpixels/fieldservice/helpfunctions/ProfileManager$1;->val$cal:Ljava/util/Calendar;

    invoke-virtual {v1, v5}, Ljava/util/Calendar;->get(I)I

    move-result v1

    add-int/2addr v1, v7

    .line 171
    iget-object v2, p0, Lcom/lostpixels/fieldservice/helpfunctions/ProfileManager$1;->val$realm:Lio/realm/Realm;

    invoke-static {v2}, Lcom/lostpixels/fieldservice/internal/report/ServiceReportManager;->getInstance(Lio/realm/Realm;)Lcom/lostpixels/fieldservice/internal/report/ServiceReportManager;

    move-result-object v2

    iget-object v6, p0, Lcom/lostpixels/fieldservice/helpfunctions/ProfileManager$1;->val$realm:Lio/realm/Realm;

    invoke-virtual {v2, v6, v0}, Lcom/lostpixels/fieldservice/internal/report/ServiceReportManager;->getServiceYear(Lio/realm/Realm;Ljava/util/Date;)Lcom/lostpixels/fieldservice/internal/report/YearReport;

    move-result-object v2

    .line 172
    invoke-virtual {v2}, Lcom/lostpixels/fieldservice/internal/report/YearReport;->firstPioneerMonth()I

    move-result v2

    .line 171
    invoke-static {v2}, Lcom/lostpixels/fieldservice/internal/report/ServiceReportManager;->month2ServiceMonth(I)I

    move-result v2

    .line 172
    invoke-static {v1}, Lcom/lostpixels/fieldservice/internal/report/ServiceReportManager;->month2ServiceMonth(I)I

    move-result v1

    if-gt v2, v1, :cond_0

    .line 173
    iget-object v1, p0, Lcom/lostpixels/fieldservice/helpfunctions/ProfileManager$1;->val$realm:Lio/realm/Realm;

    invoke-static {v1}, Lcom/lostpixels/fieldservice/internal/report/ServiceReportManager;->getInstance(Lio/realm/Realm;)Lcom/lostpixels/fieldservice/internal/report/ServiceReportManager;

    move-result-object v1

    iget-object v2, p0, Lcom/lostpixels/fieldservice/helpfunctions/ProfileManager$1;->val$realm:Lio/realm/Realm;

    invoke-virtual {v1, v2, v0}, Lcom/lostpixels/fieldservice/internal/report/ServiceReportManager;->getServiceYear(Lio/realm/Realm;Ljava/util/Date;)Lcom/lostpixels/fieldservice/internal/report/YearReport;

    move-result-object v1

    invoke-virtual {v1}, Lcom/lostpixels/fieldservice/internal/report/YearReport;->setPublisher()V

    .line 176
    :cond_0
    iget-object v1, p0, Lcom/lostpixels/fieldservice/helpfunctions/ProfileManager$1;->val$cal:Ljava/util/Calendar;

    invoke-virtual {v1, v5}, Ljava/util/Calendar;->get(I)I

    move-result v1

    add-int/2addr v1, v7

    .line 177
    iget-object v2, p0, Lcom/lostpixels/fieldservice/helpfunctions/ProfileManager$1;->val$realm:Lio/realm/Realm;

    invoke-static {v2}, Lcom/lostpixels/fieldservice/internal/report/ServiceReportManager;->getInstance(Lio/realm/Realm;)Lcom/lostpixels/fieldservice/internal/report/ServiceReportManager;

    move-result-object v2

    iget-object v5, p0, Lcom/lostpixels/fieldservice/helpfunctions/ProfileManager$1;->val$realm:Lio/realm/Realm;

    invoke-virtual {v2, v5, v0}, Lcom/lostpixels/fieldservice/internal/report/ServiceReportManager;->getServiceYear(Lio/realm/Realm;Ljava/util/Date;)Lcom/lostpixels/fieldservice/internal/report/YearReport;

    move-result-object v0

    .line 178
    invoke-static {v1}, Lcom/lostpixels/fieldservice/internal/report/ServiceReportManager;->month2ServiceMonth(I)I

    move-result v1

    :goto_1
    if-gt v1, v4, :cond_4

    .line 179
    invoke-static {v1}, Lcom/lostpixels/fieldservice/internal/report/ServiceReportManager;->serviceMonth2Month(I)I

    move-result v2

    invoke-virtual {v0, v2}, Lcom/lostpixels/fieldservice/internal/report/YearReport;->getMonthReport(I)Lcom/lostpixels/fieldservice/internal/report/MonthReport;

    move-result-object v2

    invoke-static {v2}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    invoke-virtual {v2, v3}, Lcom/lostpixels/fieldservice/internal/report/MonthReport;->setMonthProfile(I)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 245
    :pswitch_4
    iget-object v1, p0, Lcom/lostpixels/fieldservice/helpfunctions/ProfileManager$1;->val$cal:Ljava/util/Calendar;

    invoke-virtual {v1, v5}, Ljava/util/Calendar;->get(I)I

    move-result v1

    add-int/2addr v1, v7

    .line 246
    iget-object v2, p0, Lcom/lostpixels/fieldservice/helpfunctions/ProfileManager$1;->val$realm:Lio/realm/Realm;

    invoke-static {v2}, Lcom/lostpixels/fieldservice/internal/report/ServiceReportManager;->getInstance(Lio/realm/Realm;)Lcom/lostpixels/fieldservice/internal/report/ServiceReportManager;

    move-result-object v2

    iget-object v3, p0, Lcom/lostpixels/fieldservice/helpfunctions/ProfileManager$1;->val$realm:Lio/realm/Realm;

    invoke-virtual {v2, v3, v0}, Lcom/lostpixels/fieldservice/internal/report/ServiceReportManager;->getServiceYear(Lio/realm/Realm;Ljava/util/Date;)Lcom/lostpixels/fieldservice/internal/report/YearReport;

    move-result-object v0

    .line 247
    iget v2, p0, Lcom/lostpixels/fieldservice/helpfunctions/ProfileManager$1;->val$profileType:I

    const/4 v3, 0x5

    if-ne v2, v3, :cond_1

    .line 248
    invoke-virtual {v0, v6, v1}, Lcom/lostpixels/fieldservice/internal/report/YearReport;->setSpecial(ZI)V

    goto :goto_2

    .line 250
    :cond_1
    invoke-virtual {v0, v6, v1}, Lcom/lostpixels/fieldservice/internal/report/YearReport;->setMissionay(ZI)V

    .line 252
    :goto_2
    invoke-static {v1}, Lcom/lostpixels/fieldservice/internal/report/ServiceReportManager;->month2ServiceMonth(I)I

    move-result v1

    :goto_3
    if-gt v1, v4, :cond_4

    .line 253
    invoke-static {v1}, Lcom/lostpixels/fieldservice/internal/report/ServiceReportManager;->serviceMonth2Month(I)I

    move-result v2

    invoke-virtual {v0, v2, v7}, Lcom/lostpixels/fieldservice/internal/report/YearReport;->getMonthGoal(IZ)Lcom/lostpixels/fieldservice/internal/report/ServiceSession;

    move-result-object v2

    new-instance v3, Lcom/lostpixels/fieldservice/internal/report/Time;

    const/16 v8, 0x64

    invoke-direct {v3, v8, v6}, Lcom/lostpixels/fieldservice/internal/report/Time;-><init>(II)V

    invoke-virtual {v2, v3}, Lcom/lostpixels/fieldservice/internal/report/ServiceSession;->setHours(Lcom/lostpixels/fieldservice/internal/report/Time;)V

    .line 254
    invoke-static {v1}, Lcom/lostpixels/fieldservice/internal/report/ServiceReportManager;->serviceMonth2Month(I)I

    move-result v2

    invoke-virtual {v0, v2, v6}, Lcom/lostpixels/fieldservice/internal/report/YearReport;->getMonthGoal(IZ)Lcom/lostpixels/fieldservice/internal/report/ServiceSession;

    move-result-object v2

    iget-object v3, p0, Lcom/lostpixels/fieldservice/helpfunctions/ProfileManager$1;->val$cal:Ljava/util/Calendar;

    invoke-virtual {v3}, Ljava/util/Calendar;->getTime()Ljava/util/Date;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/lostpixels/fieldservice/internal/report/ServiceSession;->setDate(Ljava/util/Date;)V

    .line 255
    invoke-static {v1}, Lcom/lostpixels/fieldservice/internal/report/ServiceReportManager;->serviceMonth2Month(I)I

    move-result v2

    invoke-virtual {v0, v2}, Lcom/lostpixels/fieldservice/internal/report/YearReport;->getMonthReport(I)Lcom/lostpixels/fieldservice/internal/report/MonthReport;

    move-result-object v2

    invoke-static {v2}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    invoke-virtual {v2, v6}, Lcom/lostpixels/fieldservice/internal/report/MonthReport;->setMonthProfile(I)V

    .line 256
    iget-object v2, p0, Lcom/lostpixels/fieldservice/helpfunctions/ProfileManager$1;->val$cal:Ljava/util/Calendar;

    invoke-virtual {v2, v5, v7}, Ljava/util/Calendar;->add(II)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_3

    .line 229
    :pswitch_5
    iget-object v1, p0, Lcom/lostpixels/fieldservice/helpfunctions/ProfileManager$1;->val$cal:Ljava/util/Calendar;

    invoke-virtual {v1, v5}, Ljava/util/Calendar;->get(I)I

    move-result v1

    add-int/2addr v1, v7

    .line 230
    iget-object v2, p0, Lcom/lostpixels/fieldservice/helpfunctions/ProfileManager$1;->val$realm:Lio/realm/Realm;

    invoke-static {v2}, Lcom/lostpixels/fieldservice/internal/report/ServiceReportManager;->getInstance(Lio/realm/Realm;)Lcom/lostpixels/fieldservice/internal/report/ServiceReportManager;

    move-result-object v2

    iget-object v3, p0, Lcom/lostpixels/fieldservice/helpfunctions/ProfileManager$1;->val$realm:Lio/realm/Realm;

    invoke-virtual {v2, v3, v0}, Lcom/lostpixels/fieldservice/internal/report/ServiceReportManager;->getServiceYear(Lio/realm/Realm;Ljava/util/Date;)Lcom/lostpixels/fieldservice/internal/report/YearReport;

    move-result-object v0

    .line 231
    iget v2, p0, Lcom/lostpixels/fieldservice/helpfunctions/ProfileManager$1;->val$profileType:I

    const/4 v3, 0x4

    if-ne v2, v3, :cond_2

    .line 232
    invoke-virtual {v0, v7, v1}, Lcom/lostpixels/fieldservice/internal/report/YearReport;->setSpecial(ZI)V

    goto :goto_4

    .line 234
    :cond_2
    invoke-virtual {v0, v7, v1}, Lcom/lostpixels/fieldservice/internal/report/YearReport;->setMissionay(ZI)V

    .line 236
    :goto_4
    invoke-static {v1}, Lcom/lostpixels/fieldservice/internal/report/ServiceReportManager;->month2ServiceMonth(I)I

    move-result v1

    :goto_5
    if-gt v1, v4, :cond_4

    .line 237
    invoke-static {v1}, Lcom/lostpixels/fieldservice/internal/report/ServiceReportManager;->serviceMonth2Month(I)I

    move-result v2

    invoke-virtual {v0, v2, v7}, Lcom/lostpixels/fieldservice/internal/report/YearReport;->getMonthGoal(IZ)Lcom/lostpixels/fieldservice/internal/report/ServiceSession;

    move-result-object v2

    new-instance v3, Lcom/lostpixels/fieldservice/internal/report/Time;

    const/16 v8, 0x5a

    invoke-direct {v3, v8, v6}, Lcom/lostpixels/fieldservice/internal/report/Time;-><init>(II)V

    invoke-virtual {v2, v3}, Lcom/lostpixels/fieldservice/internal/report/ServiceSession;->setHours(Lcom/lostpixels/fieldservice/internal/report/Time;)V

    .line 238
    invoke-static {v1}, Lcom/lostpixels/fieldservice/internal/report/ServiceReportManager;->serviceMonth2Month(I)I

    move-result v2

    invoke-virtual {v0, v2, v6}, Lcom/lostpixels/fieldservice/internal/report/YearReport;->getMonthGoal(IZ)Lcom/lostpixels/fieldservice/internal/report/ServiceSession;

    move-result-object v2

    iget-object v3, p0, Lcom/lostpixels/fieldservice/helpfunctions/ProfileManager$1;->val$cal:Ljava/util/Calendar;

    invoke-virtual {v3}, Ljava/util/Calendar;->getTime()Ljava/util/Date;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/lostpixels/fieldservice/internal/report/ServiceSession;->setDate(Ljava/util/Date;)V

    .line 239
    invoke-static {v1}, Lcom/lostpixels/fieldservice/internal/report/ServiceReportManager;->serviceMonth2Month(I)I

    move-result v2

    invoke-virtual {v0, v2}, Lcom/lostpixels/fieldservice/internal/report/YearReport;->getMonthReport(I)Lcom/lostpixels/fieldservice/internal/report/MonthReport;

    move-result-object v2

    invoke-static {v2}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    invoke-virtual {v2, v6}, Lcom/lostpixels/fieldservice/internal/report/MonthReport;->setMonthProfile(I)V

    .line 240
    iget-object v2, p0, Lcom/lostpixels/fieldservice/helpfunctions/ProfileManager$1;->val$cal:Ljava/util/Calendar;

    invoke-virtual {v2, v5, v7}, Ljava/util/Calendar;->add(II)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_5

    .line 215
    :pswitch_6
    iget-object v1, p0, Lcom/lostpixels/fieldservice/helpfunctions/ProfileManager$1;->val$cal:Ljava/util/Calendar;

    invoke-virtual {v1, v5}, Ljava/util/Calendar;->get(I)I

    move-result v1

    add-int/2addr v1, v7

    .line 216
    iget-object v3, p0, Lcom/lostpixels/fieldservice/helpfunctions/ProfileManager$1;->val$realm:Lio/realm/Realm;

    invoke-static {v3}, Lcom/lostpixels/fieldservice/internal/report/ServiceReportManager;->getInstance(Lio/realm/Realm;)Lcom/lostpixels/fieldservice/internal/report/ServiceReportManager;

    move-result-object v3

    iget-object v8, p0, Lcom/lostpixels/fieldservice/helpfunctions/ProfileManager$1;->val$realm:Lio/realm/Realm;

    invoke-virtual {v3, v8, v0}, Lcom/lostpixels/fieldservice/internal/report/ServiceReportManager;->getServiceYear(Lio/realm/Realm;Ljava/util/Date;)Lcom/lostpixels/fieldservice/internal/report/YearReport;

    move-result-object v0

    .line 217
    invoke-virtual {v0, v1}, Lcom/lostpixels/fieldservice/internal/report/YearReport;->setPioneer(I)V

    .line 218
    iget-boolean v3, p0, Lcom/lostpixels/fieldservice/helpfunctions/ProfileManager$1;->val$infirmPioneer:Z

    invoke-virtual {v0, v3}, Lcom/lostpixels/fieldservice/internal/report/YearReport;->setInfirmPioneer(Z)V

    .line 220
    invoke-static {v1}, Lcom/lostpixels/fieldservice/internal/report/ServiceReportManager;->month2ServiceMonth(I)I

    move-result v1

    :goto_6
    if-gt v1, v4, :cond_4

    .line 221
    invoke-static {v1}, Lcom/lostpixels/fieldservice/internal/report/ServiceReportManager;->serviceMonth2Month(I)I

    move-result v3

    invoke-virtual {v0, v3, v7}, Lcom/lostpixels/fieldservice/internal/report/YearReport;->getMonthGoal(IZ)Lcom/lostpixels/fieldservice/internal/report/ServiceSession;

    move-result-object v3

    new-instance v8, Lcom/lostpixels/fieldservice/internal/report/Time;

    iget-boolean v9, p0, Lcom/lostpixels/fieldservice/helpfunctions/ProfileManager$1;->val$infirmPioneer:Z

    if-eqz v9, :cond_3

    const/4 v9, 0x0

    goto :goto_7

    :cond_3
    const/16 v9, 0x32

    :goto_7
    invoke-direct {v8, v9, v6}, Lcom/lostpixels/fieldservice/internal/report/Time;-><init>(II)V

    invoke-virtual {v3, v8}, Lcom/lostpixels/fieldservice/internal/report/ServiceSession;->setHours(Lcom/lostpixels/fieldservice/internal/report/Time;)V

    .line 222
    invoke-static {v1}, Lcom/lostpixels/fieldservice/internal/report/ServiceReportManager;->serviceMonth2Month(I)I

    move-result v3

    invoke-virtual {v0, v3, v6}, Lcom/lostpixels/fieldservice/internal/report/YearReport;->getMonthGoal(IZ)Lcom/lostpixels/fieldservice/internal/report/ServiceSession;

    move-result-object v3

    iget-object v8, p0, Lcom/lostpixels/fieldservice/helpfunctions/ProfileManager$1;->val$cal:Ljava/util/Calendar;

    invoke-virtual {v8}, Ljava/util/Calendar;->getTime()Ljava/util/Date;

    move-result-object v8

    invoke-virtual {v3, v8}, Lcom/lostpixels/fieldservice/internal/report/ServiceSession;->setDate(Ljava/util/Date;)V

    .line 223
    invoke-static {v1}, Lcom/lostpixels/fieldservice/internal/report/ServiceReportManager;->serviceMonth2Month(I)I

    move-result v3

    invoke-virtual {v0, v3}, Lcom/lostpixels/fieldservice/internal/report/YearReport;->getMonthReport(I)Lcom/lostpixels/fieldservice/internal/report/MonthReport;

    move-result-object v3

    invoke-static {v3}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    invoke-virtual {v3, v6}, Lcom/lostpixels/fieldservice/internal/report/MonthReport;->setMonthProfile(I)V

    .line 224
    iget-object v3, p0, Lcom/lostpixels/fieldservice/helpfunctions/ProfileManager$1;->val$cal:Ljava/util/Calendar;

    invoke-virtual {v3, v5, v7}, Ljava/util/Calendar;->add(II)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_6

    .line 189
    :pswitch_7
    iget-object v1, p0, Lcom/lostpixels/fieldservice/helpfunctions/ProfileManager$1;->val$realm:Lio/realm/Realm;

    iget-object v2, p0, Lcom/lostpixels/fieldservice/helpfunctions/ProfileManager$1;->val$cal:Ljava/util/Calendar;

    invoke-static {v1, v2}, Lcom/lostpixels/fieldservice/helpfunctions/ProfileManager;->removeOldProfile(Lio/realm/Realm;Ljava/util/Calendar;)V

    .line 190
    iget-object v1, p0, Lcom/lostpixels/fieldservice/helpfunctions/ProfileManager$1;->val$realm:Lio/realm/Realm;

    invoke-static {v1}, Lcom/lostpixels/fieldservice/internal/report/ServiceReportManager;->getInstance(Lio/realm/Realm;)Lcom/lostpixels/fieldservice/internal/report/ServiceReportManager;

    move-result-object v1

    iget-object v2, p0, Lcom/lostpixels/fieldservice/helpfunctions/ProfileManager$1;->val$realm:Lio/realm/Realm;

    invoke-virtual {v1, v2, v0}, Lcom/lostpixels/fieldservice/internal/report/ServiceReportManager;->getServiceYear(Lio/realm/Realm;Ljava/util/Date;)Lcom/lostpixels/fieldservice/internal/report/YearReport;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/lostpixels/fieldservice/internal/report/YearReport;->getMonthReport(Ljava/util/Date;)Lcom/lostpixels/fieldservice/internal/report/MonthReport;

    move-result-object v1

    invoke-static {v1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    invoke-virtual {v1, v7}, Lcom/lostpixels/fieldservice/internal/report/MonthReport;->setMonthProfile(I)V

    .line 192
    iget-object v1, p0, Lcom/lostpixels/fieldservice/helpfunctions/ProfileManager$1;->val$realm:Lio/realm/Realm;

    invoke-static {v1}, Lcom/lostpixels/fieldservice/internal/report/ServiceReportManager;->getInstance(Lio/realm/Realm;)Lcom/lostpixels/fieldservice/internal/report/ServiceReportManager;

    move-result-object v1

    iget-object v2, p0, Lcom/lostpixels/fieldservice/helpfunctions/ProfileManager$1;->val$realm:Lio/realm/Realm;

    invoke-virtual {v1, v2, v0}, Lcom/lostpixels/fieldservice/internal/report/ServiceReportManager;->getServiceYear(Lio/realm/Realm;Ljava/util/Date;)Lcom/lostpixels/fieldservice/internal/report/YearReport;

    move-result-object v1

    invoke-virtual {v1, v0, v7}, Lcom/lostpixels/fieldservice/internal/report/YearReport;->getMonthGoal(Ljava/util/Date;Z)Lcom/lostpixels/fieldservice/internal/report/ServiceSession;

    move-result-object v1

    new-instance v2, Lcom/lostpixels/fieldservice/internal/report/Time;

    const/16 v3, 0x1e

    invoke-direct {v2, v3, v6}, Lcom/lostpixels/fieldservice/internal/report/Time;-><init>(II)V

    invoke-virtual {v1, v2}, Lcom/lostpixels/fieldservice/internal/report/ServiceSession;->setHours(Lcom/lostpixels/fieldservice/internal/report/Time;)V

    .line 193
    iget-object v1, p0, Lcom/lostpixels/fieldservice/helpfunctions/ProfileManager$1;->val$realm:Lio/realm/Realm;

    invoke-static {v1}, Lcom/lostpixels/fieldservice/internal/report/ServiceReportManager;->getInstance(Lio/realm/Realm;)Lcom/lostpixels/fieldservice/internal/report/ServiceReportManager;

    move-result-object v1

    iget-object v2, p0, Lcom/lostpixels/fieldservice/helpfunctions/ProfileManager$1;->val$realm:Lio/realm/Realm;

    invoke-virtual {v1, v2, v0}, Lcom/lostpixels/fieldservice/internal/report/ServiceReportManager;->getServiceYear(Lio/realm/Realm;Ljava/util/Date;)Lcom/lostpixels/fieldservice/internal/report/YearReport;

    move-result-object v1

    invoke-virtual {v1, v0, v6}, Lcom/lostpixels/fieldservice/internal/report/YearReport;->getMonthGoal(Ljava/util/Date;Z)Lcom/lostpixels/fieldservice/internal/report/ServiceSession;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/lostpixels/fieldservice/internal/report/ServiceSession;->setDate(Ljava/util/Date;)V

    .line 196
    iget-object v1, p0, Lcom/lostpixels/fieldservice/helpfunctions/ProfileManager$1;->val$cal:Ljava/util/Calendar;

    invoke-virtual {v1, v5}, Ljava/util/Calendar;->get(I)I

    move-result v1

    add-int/2addr v1, v7

    .line 197
    iget-object v2, p0, Lcom/lostpixels/fieldservice/helpfunctions/ProfileManager$1;->val$realm:Lio/realm/Realm;

    invoke-static {v2}, Lcom/lostpixels/fieldservice/internal/report/ServiceReportManager;->getInstance(Lio/realm/Realm;)Lcom/lostpixels/fieldservice/internal/report/ServiceReportManager;

    move-result-object v2

    iget-object v3, p0, Lcom/lostpixels/fieldservice/helpfunctions/ProfileManager$1;->val$realm:Lio/realm/Realm;

    invoke-virtual {v2, v3, v0}, Lcom/lostpixels/fieldservice/internal/report/ServiceReportManager;->getServiceYear(Lio/realm/Realm;Ljava/util/Date;)Lcom/lostpixels/fieldservice/internal/report/YearReport;

    move-result-object v2

    .line 198
    invoke-virtual {v2}, Lcom/lostpixels/fieldservice/internal/report/YearReport;->firstPioneerMonth()I

    move-result v2

    .line 197
    invoke-static {v2}, Lcom/lostpixels/fieldservice/internal/report/ServiceReportManager;->month2ServiceMonth(I)I

    move-result v2

    .line 198
    invoke-static {v1}, Lcom/lostpixels/fieldservice/internal/report/ServiceReportManager;->month2ServiceMonth(I)I

    move-result v1

    if-gt v2, v1, :cond_4

    .line 199
    iget-object v1, p0, Lcom/lostpixels/fieldservice/helpfunctions/ProfileManager$1;->val$realm:Lio/realm/Realm;

    invoke-static {v1}, Lcom/lostpixels/fieldservice/internal/report/ServiceReportManager;->getInstance(Lio/realm/Realm;)Lcom/lostpixels/fieldservice/internal/report/ServiceReportManager;

    move-result-object v1

    iget-object v2, p0, Lcom/lostpixels/fieldservice/helpfunctions/ProfileManager$1;->val$realm:Lio/realm/Realm;

    invoke-virtual {v1, v2, v0}, Lcom/lostpixels/fieldservice/internal/report/ServiceReportManager;->getServiceYear(Lio/realm/Realm;Ljava/util/Date;)Lcom/lostpixels/fieldservice/internal/report/YearReport;

    move-result-object v0

    invoke-virtual {v0}, Lcom/lostpixels/fieldservice/internal/report/YearReport;->setPublisher()V

    return-void

    .line 202
    :pswitch_8
    iget-object v1, p0, Lcom/lostpixels/fieldservice/helpfunctions/ProfileManager$1;->val$realm:Lio/realm/Realm;

    iget-object v2, p0, Lcom/lostpixels/fieldservice/helpfunctions/ProfileManager$1;->val$cal:Ljava/util/Calendar;

    invoke-static {v1, v2}, Lcom/lostpixels/fieldservice/helpfunctions/ProfileManager;->removeOldProfile(Lio/realm/Realm;Ljava/util/Calendar;)V

    .line 203
    iget-object v1, p0, Lcom/lostpixels/fieldservice/helpfunctions/ProfileManager$1;->val$realm:Lio/realm/Realm;

    invoke-static {v1}, Lcom/lostpixels/fieldservice/internal/report/ServiceReportManager;->getInstance(Lio/realm/Realm;)Lcom/lostpixels/fieldservice/internal/report/ServiceReportManager;

    move-result-object v1

    iget-object v2, p0, Lcom/lostpixels/fieldservice/helpfunctions/ProfileManager$1;->val$realm:Lio/realm/Realm;

    invoke-virtual {v1, v2, v0}, Lcom/lostpixels/fieldservice/internal/report/ServiceReportManager;->getServiceYear(Lio/realm/Realm;Ljava/util/Date;)Lcom/lostpixels/fieldservice/internal/report/YearReport;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/lostpixels/fieldservice/internal/report/YearReport;->getMonthReport(Ljava/util/Date;)Lcom/lostpixels/fieldservice/internal/report/MonthReport;

    move-result-object v1

    invoke-static {v1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    invoke-virtual {v1, v5}, Lcom/lostpixels/fieldservice/internal/report/MonthReport;->setMonthProfile(I)V

    .line 205
    iget-object v1, p0, Lcom/lostpixels/fieldservice/helpfunctions/ProfileManager$1;->val$realm:Lio/realm/Realm;

    invoke-static {v1}, Lcom/lostpixels/fieldservice/internal/report/ServiceReportManager;->getInstance(Lio/realm/Realm;)Lcom/lostpixels/fieldservice/internal/report/ServiceReportManager;

    move-result-object v1

    iget-object v2, p0, Lcom/lostpixels/fieldservice/helpfunctions/ProfileManager$1;->val$realm:Lio/realm/Realm;

    invoke-virtual {v1, v2, v0}, Lcom/lostpixels/fieldservice/internal/report/ServiceReportManager;->getServiceYear(Lio/realm/Realm;Ljava/util/Date;)Lcom/lostpixels/fieldservice/internal/report/YearReport;

    move-result-object v1

    invoke-virtual {v1, v0, v7}, Lcom/lostpixels/fieldservice/internal/report/YearReport;->getMonthGoal(Ljava/util/Date;Z)Lcom/lostpixels/fieldservice/internal/report/ServiceSession;

    move-result-object v1

    new-instance v2, Lcom/lostpixels/fieldservice/internal/report/Time;

    const/16 v3, 0xf

    invoke-direct {v2, v3, v6}, Lcom/lostpixels/fieldservice/internal/report/Time;-><init>(II)V

    invoke-virtual {v1, v2}, Lcom/lostpixels/fieldservice/internal/report/ServiceSession;->setHours(Lcom/lostpixels/fieldservice/internal/report/Time;)V

    .line 206
    iget-object v1, p0, Lcom/lostpixels/fieldservice/helpfunctions/ProfileManager$1;->val$realm:Lio/realm/Realm;

    invoke-static {v1}, Lcom/lostpixels/fieldservice/internal/report/ServiceReportManager;->getInstance(Lio/realm/Realm;)Lcom/lostpixels/fieldservice/internal/report/ServiceReportManager;

    move-result-object v1

    iget-object v2, p0, Lcom/lostpixels/fieldservice/helpfunctions/ProfileManager$1;->val$realm:Lio/realm/Realm;

    invoke-virtual {v1, v2, v0}, Lcom/lostpixels/fieldservice/internal/report/ServiceReportManager;->getServiceYear(Lio/realm/Realm;Ljava/util/Date;)Lcom/lostpixels/fieldservice/internal/report/YearReport;

    move-result-object v1

    invoke-virtual {v1, v0, v6}, Lcom/lostpixels/fieldservice/internal/report/YearReport;->getMonthGoal(Ljava/util/Date;Z)Lcom/lostpixels/fieldservice/internal/report/ServiceSession;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/lostpixels/fieldservice/internal/report/ServiceSession;->setDate(Ljava/util/Date;)V

    .line 209
    iget-object v1, p0, Lcom/lostpixels/fieldservice/helpfunctions/ProfileManager$1;->val$cal:Ljava/util/Calendar;

    invoke-virtual {v1, v5}, Ljava/util/Calendar;->get(I)I

    move-result v1

    add-int/2addr v1, v7

    .line 210
    iget-object v2, p0, Lcom/lostpixels/fieldservice/helpfunctions/ProfileManager$1;->val$realm:Lio/realm/Realm;

    invoke-static {v2}, Lcom/lostpixels/fieldservice/internal/report/ServiceReportManager;->getInstance(Lio/realm/Realm;)Lcom/lostpixels/fieldservice/internal/report/ServiceReportManager;

    move-result-object v2

    iget-object v3, p0, Lcom/lostpixels/fieldservice/helpfunctions/ProfileManager$1;->val$realm:Lio/realm/Realm;

    invoke-virtual {v2, v3, v0}, Lcom/lostpixels/fieldservice/internal/report/ServiceReportManager;->getServiceYear(Lio/realm/Realm;Ljava/util/Date;)Lcom/lostpixels/fieldservice/internal/report/YearReport;

    move-result-object v2

    .line 211
    invoke-virtual {v2}, Lcom/lostpixels/fieldservice/internal/report/YearReport;->firstPioneerMonth()I

    move-result v2

    .line 210
    invoke-static {v2}, Lcom/lostpixels/fieldservice/internal/report/ServiceReportManager;->month2ServiceMonth(I)I

    move-result v2

    .line 211
    invoke-static {v1}, Lcom/lostpixels/fieldservice/internal/report/ServiceReportManager;->month2ServiceMonth(I)I

    move-result v1

    if-gt v2, v1, :cond_4

    .line 212
    iget-object v1, p0, Lcom/lostpixels/fieldservice/helpfunctions/ProfileManager$1;->val$realm:Lio/realm/Realm;

    invoke-static {v1}, Lcom/lostpixels/fieldservice/internal/report/ServiceReportManager;->getInstance(Lio/realm/Realm;)Lcom/lostpixels/fieldservice/internal/report/ServiceReportManager;

    move-result-object v1

    iget-object v2, p0, Lcom/lostpixels/fieldservice/helpfunctions/ProfileManager$1;->val$realm:Lio/realm/Realm;

    invoke-virtual {v1, v2, v0}, Lcom/lostpixels/fieldservice/internal/report/ServiceReportManager;->getServiceYear(Lio/realm/Realm;Ljava/util/Date;)Lcom/lostpixels/fieldservice/internal/report/YearReport;

    move-result-object v0

    invoke-virtual {v0}, Lcom/lostpixels/fieldservice/internal/report/YearReport;->setPublisher()V

    return-void

    .line 156
    :pswitch_9
    iget-object v1, p0, Lcom/lostpixels/fieldservice/helpfunctions/ProfileManager$1;->val$realm:Lio/realm/Realm;

    iget-object v2, p0, Lcom/lostpixels/fieldservice/helpfunctions/ProfileManager$1;->val$cal:Ljava/util/Calendar;

    invoke-static {v1, v2}, Lcom/lostpixels/fieldservice/helpfunctions/ProfileManager;->removeOldProfile(Lio/realm/Realm;Ljava/util/Calendar;)V

    .line 157
    iget-object v1, p0, Lcom/lostpixels/fieldservice/helpfunctions/ProfileManager$1;->val$realm:Lio/realm/Realm;

    invoke-static {v1}, Lcom/lostpixels/fieldservice/internal/report/ServiceReportManager;->getInstance(Lio/realm/Realm;)Lcom/lostpixels/fieldservice/internal/report/ServiceReportManager;

    move-result-object v1

    iget-object v2, p0, Lcom/lostpixels/fieldservice/helpfunctions/ProfileManager$1;->val$realm:Lio/realm/Realm;

    invoke-virtual {v1, v2, v0}, Lcom/lostpixels/fieldservice/internal/report/ServiceReportManager;->getServiceYear(Lio/realm/Realm;Ljava/util/Date;)Lcom/lostpixels/fieldservice/internal/report/YearReport;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/lostpixels/fieldservice/internal/report/YearReport;->getMonthReport(Ljava/util/Date;)Lcom/lostpixels/fieldservice/internal/report/MonthReport;

    move-result-object v1

    invoke-static {v1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    invoke-virtual {v1, v6}, Lcom/lostpixels/fieldservice/internal/report/MonthReport;->setMonthProfile(I)V

    .line 159
    iget-object v1, p0, Lcom/lostpixels/fieldservice/helpfunctions/ProfileManager$1;->val$cal:Ljava/util/Calendar;

    invoke-virtual {v1, v5}, Ljava/util/Calendar;->get(I)I

    move-result v1

    add-int/2addr v1, v7

    .line 160
    iget-object v2, p0, Lcom/lostpixels/fieldservice/helpfunctions/ProfileManager$1;->val$realm:Lio/realm/Realm;

    invoke-static {v2}, Lcom/lostpixels/fieldservice/internal/report/ServiceReportManager;->getInstance(Lio/realm/Realm;)Lcom/lostpixels/fieldservice/internal/report/ServiceReportManager;

    move-result-object v2

    iget-object v3, p0, Lcom/lostpixels/fieldservice/helpfunctions/ProfileManager$1;->val$realm:Lio/realm/Realm;

    invoke-virtual {v2, v3, v0}, Lcom/lostpixels/fieldservice/internal/report/ServiceReportManager;->getServiceYear(Lio/realm/Realm;Ljava/util/Date;)Lcom/lostpixels/fieldservice/internal/report/YearReport;

    move-result-object v2

    .line 161
    invoke-virtual {v2}, Lcom/lostpixels/fieldservice/internal/report/YearReport;->firstPioneerMonth()I

    move-result v2

    .line 160
    invoke-static {v2}, Lcom/lostpixels/fieldservice/internal/report/ServiceReportManager;->month2ServiceMonth(I)I

    move-result v2

    .line 162
    invoke-static {v1}, Lcom/lostpixels/fieldservice/internal/report/ServiceReportManager;->month2ServiceMonth(I)I

    move-result v1

    if-gt v2, v1, :cond_4

    .line 164
    iget-object v1, p0, Lcom/lostpixels/fieldservice/helpfunctions/ProfileManager$1;->val$realm:Lio/realm/Realm;

    invoke-static {v1}, Lcom/lostpixels/fieldservice/internal/report/ServiceReportManager;->getInstance(Lio/realm/Realm;)Lcom/lostpixels/fieldservice/internal/report/ServiceReportManager;

    move-result-object v1

    iget-object v2, p0, Lcom/lostpixels/fieldservice/helpfunctions/ProfileManager$1;->val$realm:Lio/realm/Realm;

    invoke-virtual {v1, v2, v0}, Lcom/lostpixels/fieldservice/internal/report/ServiceReportManager;->getServiceYear(Lio/realm/Realm;Ljava/util/Date;)Lcom/lostpixels/fieldservice/internal/report/YearReport;

    move-result-object v0

    invoke-virtual {v0}, Lcom/lostpixels/fieldservice/internal/report/YearReport;->setPublisher()V

    :cond_4
    :goto_8
    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_9
        :pswitch_8
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
        :pswitch_5
        :pswitch_4
    .end packed-switch
.end method
