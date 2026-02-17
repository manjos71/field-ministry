.class final Lio/realm/com_lostpixels_fieldservice_internal_report_MonthReportRealmProxy$MonthReportColumnInfo;
.super Lio/realm/internal/ColumnInfo;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lio/realm/com_lostpixels_fieldservice_internal_report_MonthReportRealmProxy;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = "MonthReportColumnInfo"
.end annotation


# instance fields
.field idColKey:J

.field mLastGoalModifiedColKey:J

.field mLastMonthModifiedColKey:J

.field mLastReportModifiedColKey:J

.field mLastSchoolModifiedColKey:J

.field mbHasBeenSentColKey:J

.field meProfileMonthColKey:J

.field mlstDailyItemsColKey:J

.field mlstSchoolInfoColKey:J

.field moMonthGoalColKey:J

.field moMonthReportColKey:J


# direct methods
.method constructor <init>(Lio/realm/internal/OsSchemaInfo;)V
    .locals 2

    const/16 v0, 0xb

    .line 59
    invoke-direct {p0, v0}, Lio/realm/internal/ColumnInfo;-><init>(I)V

    .line 60
    const-string v0, "MonthReport"

    invoke-virtual {p1, v0}, Lio/realm/internal/OsSchemaInfo;->getObjectSchemaInfo(Ljava/lang/String;)Lio/realm/internal/OsObjectSchemaInfo;

    move-result-object p1

    .line 61
    const-string v0, "moMonthReport"

    invoke-virtual {p0, v0, v0, p1}, Lio/realm/internal/ColumnInfo;->addColumnDetails(Ljava/lang/String;Ljava/lang/String;Lio/realm/internal/OsObjectSchemaInfo;)J

    move-result-wide v0

    iput-wide v0, p0, Lio/realm/com_lostpixels_fieldservice_internal_report_MonthReportRealmProxy$MonthReportColumnInfo;->moMonthReportColKey:J

    .line 62
    const-string v0, "mlstDailyItems"

    invoke-virtual {p0, v0, v0, p1}, Lio/realm/internal/ColumnInfo;->addColumnDetails(Ljava/lang/String;Ljava/lang/String;Lio/realm/internal/OsObjectSchemaInfo;)J

    move-result-wide v0

    iput-wide v0, p0, Lio/realm/com_lostpixels_fieldservice_internal_report_MonthReportRealmProxy$MonthReportColumnInfo;->mlstDailyItemsColKey:J

    .line 63
    const-string v0, "mLastReportModified"

    invoke-virtual {p0, v0, v0, p1}, Lio/realm/internal/ColumnInfo;->addColumnDetails(Ljava/lang/String;Ljava/lang/String;Lio/realm/internal/OsObjectSchemaInfo;)J

    move-result-wide v0

    iput-wide v0, p0, Lio/realm/com_lostpixels_fieldservice_internal_report_MonthReportRealmProxy$MonthReportColumnInfo;->mLastReportModifiedColKey:J

    .line 64
    const-string v0, "moMonthGoal"

    invoke-virtual {p0, v0, v0, p1}, Lio/realm/internal/ColumnInfo;->addColumnDetails(Ljava/lang/String;Ljava/lang/String;Lio/realm/internal/OsObjectSchemaInfo;)J

    move-result-wide v0

    iput-wide v0, p0, Lio/realm/com_lostpixels_fieldservice_internal_report_MonthReportRealmProxy$MonthReportColumnInfo;->moMonthGoalColKey:J

    .line 65
    const-string v0, "mLastGoalModified"

    invoke-virtual {p0, v0, v0, p1}, Lio/realm/internal/ColumnInfo;->addColumnDetails(Ljava/lang/String;Ljava/lang/String;Lio/realm/internal/OsObjectSchemaInfo;)J

    move-result-wide v0

    iput-wide v0, p0, Lio/realm/com_lostpixels_fieldservice_internal_report_MonthReportRealmProxy$MonthReportColumnInfo;->mLastGoalModifiedColKey:J

    .line 66
    const-string v0, "mLastMonthModified"

    invoke-virtual {p0, v0, v0, p1}, Lio/realm/internal/ColumnInfo;->addColumnDetails(Ljava/lang/String;Ljava/lang/String;Lio/realm/internal/OsObjectSchemaInfo;)J

    move-result-wide v0

    iput-wide v0, p0, Lio/realm/com_lostpixels_fieldservice_internal_report_MonthReportRealmProxy$MonthReportColumnInfo;->mLastMonthModifiedColKey:J

    .line 67
    const-string v0, "mlstSchoolInfo"

    invoke-virtual {p0, v0, v0, p1}, Lio/realm/internal/ColumnInfo;->addColumnDetails(Ljava/lang/String;Ljava/lang/String;Lio/realm/internal/OsObjectSchemaInfo;)J

    move-result-wide v0

    iput-wide v0, p0, Lio/realm/com_lostpixels_fieldservice_internal_report_MonthReportRealmProxy$MonthReportColumnInfo;->mlstSchoolInfoColKey:J

    .line 68
    const-string v0, "mLastSchoolModified"

    invoke-virtual {p0, v0, v0, p1}, Lio/realm/internal/ColumnInfo;->addColumnDetails(Ljava/lang/String;Ljava/lang/String;Lio/realm/internal/OsObjectSchemaInfo;)J

    move-result-wide v0

    iput-wide v0, p0, Lio/realm/com_lostpixels_fieldservice_internal_report_MonthReportRealmProxy$MonthReportColumnInfo;->mLastSchoolModifiedColKey:J

    .line 69
    const-string v0, "mbHasBeenSent"

    invoke-virtual {p0, v0, v0, p1}, Lio/realm/internal/ColumnInfo;->addColumnDetails(Ljava/lang/String;Ljava/lang/String;Lio/realm/internal/OsObjectSchemaInfo;)J

    move-result-wide v0

    iput-wide v0, p0, Lio/realm/com_lostpixels_fieldservice_internal_report_MonthReportRealmProxy$MonthReportColumnInfo;->mbHasBeenSentColKey:J

    .line 70
    const-string v0, "id"

    invoke-virtual {p0, v0, v0, p1}, Lio/realm/internal/ColumnInfo;->addColumnDetails(Ljava/lang/String;Ljava/lang/String;Lio/realm/internal/OsObjectSchemaInfo;)J

    move-result-wide v0

    iput-wide v0, p0, Lio/realm/com_lostpixels_fieldservice_internal_report_MonthReportRealmProxy$MonthReportColumnInfo;->idColKey:J

    .line 71
    const-string v0, "meProfileMonth"

    invoke-virtual {p0, v0, v0, p1}, Lio/realm/internal/ColumnInfo;->addColumnDetails(Ljava/lang/String;Ljava/lang/String;Lio/realm/internal/OsObjectSchemaInfo;)J

    move-result-wide v0

    iput-wide v0, p0, Lio/realm/com_lostpixels_fieldservice_internal_report_MonthReportRealmProxy$MonthReportColumnInfo;->meProfileMonthColKey:J

    return-void
.end method


# virtual methods
.method protected final copy(Lio/realm/internal/ColumnInfo;Lio/realm/internal/ColumnInfo;)V
    .locals 2

    .line 86
    check-cast p1, Lio/realm/com_lostpixels_fieldservice_internal_report_MonthReportRealmProxy$MonthReportColumnInfo;

    .line 87
    check-cast p2, Lio/realm/com_lostpixels_fieldservice_internal_report_MonthReportRealmProxy$MonthReportColumnInfo;

    .line 88
    iget-wide v0, p1, Lio/realm/com_lostpixels_fieldservice_internal_report_MonthReportRealmProxy$MonthReportColumnInfo;->moMonthReportColKey:J

    iput-wide v0, p2, Lio/realm/com_lostpixels_fieldservice_internal_report_MonthReportRealmProxy$MonthReportColumnInfo;->moMonthReportColKey:J

    .line 89
    iget-wide v0, p1, Lio/realm/com_lostpixels_fieldservice_internal_report_MonthReportRealmProxy$MonthReportColumnInfo;->mlstDailyItemsColKey:J

    iput-wide v0, p2, Lio/realm/com_lostpixels_fieldservice_internal_report_MonthReportRealmProxy$MonthReportColumnInfo;->mlstDailyItemsColKey:J

    .line 90
    iget-wide v0, p1, Lio/realm/com_lostpixels_fieldservice_internal_report_MonthReportRealmProxy$MonthReportColumnInfo;->mLastReportModifiedColKey:J

    iput-wide v0, p2, Lio/realm/com_lostpixels_fieldservice_internal_report_MonthReportRealmProxy$MonthReportColumnInfo;->mLastReportModifiedColKey:J

    .line 91
    iget-wide v0, p1, Lio/realm/com_lostpixels_fieldservice_internal_report_MonthReportRealmProxy$MonthReportColumnInfo;->moMonthGoalColKey:J

    iput-wide v0, p2, Lio/realm/com_lostpixels_fieldservice_internal_report_MonthReportRealmProxy$MonthReportColumnInfo;->moMonthGoalColKey:J

    .line 92
    iget-wide v0, p1, Lio/realm/com_lostpixels_fieldservice_internal_report_MonthReportRealmProxy$MonthReportColumnInfo;->mLastGoalModifiedColKey:J

    iput-wide v0, p2, Lio/realm/com_lostpixels_fieldservice_internal_report_MonthReportRealmProxy$MonthReportColumnInfo;->mLastGoalModifiedColKey:J

    .line 93
    iget-wide v0, p1, Lio/realm/com_lostpixels_fieldservice_internal_report_MonthReportRealmProxy$MonthReportColumnInfo;->mLastMonthModifiedColKey:J

    iput-wide v0, p2, Lio/realm/com_lostpixels_fieldservice_internal_report_MonthReportRealmProxy$MonthReportColumnInfo;->mLastMonthModifiedColKey:J

    .line 94
    iget-wide v0, p1, Lio/realm/com_lostpixels_fieldservice_internal_report_MonthReportRealmProxy$MonthReportColumnInfo;->mlstSchoolInfoColKey:J

    iput-wide v0, p2, Lio/realm/com_lostpixels_fieldservice_internal_report_MonthReportRealmProxy$MonthReportColumnInfo;->mlstSchoolInfoColKey:J

    .line 95
    iget-wide v0, p1, Lio/realm/com_lostpixels_fieldservice_internal_report_MonthReportRealmProxy$MonthReportColumnInfo;->mLastSchoolModifiedColKey:J

    iput-wide v0, p2, Lio/realm/com_lostpixels_fieldservice_internal_report_MonthReportRealmProxy$MonthReportColumnInfo;->mLastSchoolModifiedColKey:J

    .line 96
    iget-wide v0, p1, Lio/realm/com_lostpixels_fieldservice_internal_report_MonthReportRealmProxy$MonthReportColumnInfo;->mbHasBeenSentColKey:J

    iput-wide v0, p2, Lio/realm/com_lostpixels_fieldservice_internal_report_MonthReportRealmProxy$MonthReportColumnInfo;->mbHasBeenSentColKey:J

    .line 97
    iget-wide v0, p1, Lio/realm/com_lostpixels_fieldservice_internal_report_MonthReportRealmProxy$MonthReportColumnInfo;->idColKey:J

    iput-wide v0, p2, Lio/realm/com_lostpixels_fieldservice_internal_report_MonthReportRealmProxy$MonthReportColumnInfo;->idColKey:J

    .line 98
    iget-wide v0, p1, Lio/realm/com_lostpixels_fieldservice_internal_report_MonthReportRealmProxy$MonthReportColumnInfo;->meProfileMonthColKey:J

    iput-wide v0, p2, Lio/realm/com_lostpixels_fieldservice_internal_report_MonthReportRealmProxy$MonthReportColumnInfo;->meProfileMonthColKey:J

    return-void
.end method
