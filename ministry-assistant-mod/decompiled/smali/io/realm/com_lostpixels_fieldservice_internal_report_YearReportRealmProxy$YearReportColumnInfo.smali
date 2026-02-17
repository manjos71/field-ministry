.class final Lio/realm/com_lostpixels_fieldservice_internal_report_YearReportRealmProxy$YearReportColumnInfo;
.super Lio/realm/internal/ColumnInfo;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lio/realm/com_lostpixels_fieldservice_internal_report_YearReportRealmProxy;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = "YearReportColumnInfo"
.end annotation


# instance fields
.field infirmPioneerColKey:J

.field mLastModifiedColKey:J

.field mePioneerColKey:J

.field miFirstPioneerMonthColKey:J

.field miYearColKey:J

.field mlstMonthsColKey:J


# direct methods
.method constructor <init>(Lio/realm/internal/OsSchemaInfo;)V
    .locals 2

    const/4 v0, 0x6

    .line 54
    invoke-direct {p0, v0}, Lio/realm/internal/ColumnInfo;-><init>(I)V

    .line 55
    const-string v0, "YearReport"

    invoke-virtual {p1, v0}, Lio/realm/internal/OsSchemaInfo;->getObjectSchemaInfo(Ljava/lang/String;)Lio/realm/internal/OsObjectSchemaInfo;

    move-result-object p1

    .line 56
    const-string v0, "mePioneer"

    invoke-virtual {p0, v0, v0, p1}, Lio/realm/internal/ColumnInfo;->addColumnDetails(Ljava/lang/String;Ljava/lang/String;Lio/realm/internal/OsObjectSchemaInfo;)J

    move-result-wide v0

    iput-wide v0, p0, Lio/realm/com_lostpixels_fieldservice_internal_report_YearReportRealmProxy$YearReportColumnInfo;->mePioneerColKey:J

    .line 57
    const-string v0, "miFirstPioneerMonth"

    invoke-virtual {p0, v0, v0, p1}, Lio/realm/internal/ColumnInfo;->addColumnDetails(Ljava/lang/String;Ljava/lang/String;Lio/realm/internal/OsObjectSchemaInfo;)J

    move-result-wide v0

    iput-wide v0, p0, Lio/realm/com_lostpixels_fieldservice_internal_report_YearReportRealmProxy$YearReportColumnInfo;->miFirstPioneerMonthColKey:J

    .line 58
    const-string v0, "miYear"

    invoke-virtual {p0, v0, v0, p1}, Lio/realm/internal/ColumnInfo;->addColumnDetails(Ljava/lang/String;Ljava/lang/String;Lio/realm/internal/OsObjectSchemaInfo;)J

    move-result-wide v0

    iput-wide v0, p0, Lio/realm/com_lostpixels_fieldservice_internal_report_YearReportRealmProxy$YearReportColumnInfo;->miYearColKey:J

    .line 59
    const-string v0, "infirmPioneer"

    invoke-virtual {p0, v0, v0, p1}, Lio/realm/internal/ColumnInfo;->addColumnDetails(Ljava/lang/String;Ljava/lang/String;Lio/realm/internal/OsObjectSchemaInfo;)J

    move-result-wide v0

    iput-wide v0, p0, Lio/realm/com_lostpixels_fieldservice_internal_report_YearReportRealmProxy$YearReportColumnInfo;->infirmPioneerColKey:J

    .line 60
    const-string v0, "mlstMonths"

    invoke-virtual {p0, v0, v0, p1}, Lio/realm/internal/ColumnInfo;->addColumnDetails(Ljava/lang/String;Ljava/lang/String;Lio/realm/internal/OsObjectSchemaInfo;)J

    move-result-wide v0

    iput-wide v0, p0, Lio/realm/com_lostpixels_fieldservice_internal_report_YearReportRealmProxy$YearReportColumnInfo;->mlstMonthsColKey:J

    .line 61
    const-string v0, "mLastModified"

    invoke-virtual {p0, v0, v0, p1}, Lio/realm/internal/ColumnInfo;->addColumnDetails(Ljava/lang/String;Ljava/lang/String;Lio/realm/internal/OsObjectSchemaInfo;)J

    move-result-wide v0

    iput-wide v0, p0, Lio/realm/com_lostpixels_fieldservice_internal_report_YearReportRealmProxy$YearReportColumnInfo;->mLastModifiedColKey:J

    return-void
.end method


# virtual methods
.method protected final copy(Lio/realm/internal/ColumnInfo;Lio/realm/internal/ColumnInfo;)V
    .locals 2

    .line 76
    check-cast p1, Lio/realm/com_lostpixels_fieldservice_internal_report_YearReportRealmProxy$YearReportColumnInfo;

    .line 77
    check-cast p2, Lio/realm/com_lostpixels_fieldservice_internal_report_YearReportRealmProxy$YearReportColumnInfo;

    .line 78
    iget-wide v0, p1, Lio/realm/com_lostpixels_fieldservice_internal_report_YearReportRealmProxy$YearReportColumnInfo;->mePioneerColKey:J

    iput-wide v0, p2, Lio/realm/com_lostpixels_fieldservice_internal_report_YearReportRealmProxy$YearReportColumnInfo;->mePioneerColKey:J

    .line 79
    iget-wide v0, p1, Lio/realm/com_lostpixels_fieldservice_internal_report_YearReportRealmProxy$YearReportColumnInfo;->miFirstPioneerMonthColKey:J

    iput-wide v0, p2, Lio/realm/com_lostpixels_fieldservice_internal_report_YearReportRealmProxy$YearReportColumnInfo;->miFirstPioneerMonthColKey:J

    .line 80
    iget-wide v0, p1, Lio/realm/com_lostpixels_fieldservice_internal_report_YearReportRealmProxy$YearReportColumnInfo;->miYearColKey:J

    iput-wide v0, p2, Lio/realm/com_lostpixels_fieldservice_internal_report_YearReportRealmProxy$YearReportColumnInfo;->miYearColKey:J

    .line 81
    iget-wide v0, p1, Lio/realm/com_lostpixels_fieldservice_internal_report_YearReportRealmProxy$YearReportColumnInfo;->infirmPioneerColKey:J

    iput-wide v0, p2, Lio/realm/com_lostpixels_fieldservice_internal_report_YearReportRealmProxy$YearReportColumnInfo;->infirmPioneerColKey:J

    .line 82
    iget-wide v0, p1, Lio/realm/com_lostpixels_fieldservice_internal_report_YearReportRealmProxy$YearReportColumnInfo;->mlstMonthsColKey:J

    iput-wide v0, p2, Lio/realm/com_lostpixels_fieldservice_internal_report_YearReportRealmProxy$YearReportColumnInfo;->mlstMonthsColKey:J

    .line 83
    iget-wide v0, p1, Lio/realm/com_lostpixels_fieldservice_internal_report_YearReportRealmProxy$YearReportColumnInfo;->mLastModifiedColKey:J

    iput-wide v0, p2, Lio/realm/com_lostpixels_fieldservice_internal_report_YearReportRealmProxy$YearReportColumnInfo;->mLastModifiedColKey:J

    return-void
.end method
