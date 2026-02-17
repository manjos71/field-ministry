.class final Lio/realm/com_lostpixels_fieldservice_internal_report_ServiceReportManagerRealmProxy$ServiceReportManagerColumnInfo;
.super Lio/realm/internal/ColumnInfo;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lio/realm/com_lostpixels_fieldservice_internal_report_ServiceReportManagerRealmProxy;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = "ServiceReportManagerColumnInfo"
.end annotation


# instance fields
.field customItem1CapsColKey:J

.field customItem1IsTimeColKey:J

.field customItem2CapsColKey:J

.field customItem2IsTimeColKey:J

.field customItem3CapsColKey:J

.field customItem3IsTimeColKey:J

.field idColKey:J

.field mCustom1ColKey:J

.field mCustom2ColKey:J

.field mCustom3ColKey:J

.field mCustomDateColKey:J

.field mlstServiceYearsColKey:J

.field usingCustom1ColKey:J

.field usingCustom2ColKey:J

.field usingCustom3ColKey:J


# direct methods
.method constructor <init>(Lio/realm/internal/OsSchemaInfo;)V
    .locals 2

    const/16 v0, 0xf

    .line 63
    invoke-direct {p0, v0}, Lio/realm/internal/ColumnInfo;-><init>(I)V

    .line 64
    const-string v0, "ServiceReportManager"

    invoke-virtual {p1, v0}, Lio/realm/internal/OsSchemaInfo;->getObjectSchemaInfo(Ljava/lang/String;)Lio/realm/internal/OsObjectSchemaInfo;

    move-result-object p1

    .line 65
    const-string v0, "id"

    invoke-virtual {p0, v0, v0, p1}, Lio/realm/internal/ColumnInfo;->addColumnDetails(Ljava/lang/String;Ljava/lang/String;Lio/realm/internal/OsObjectSchemaInfo;)J

    move-result-wide v0

    iput-wide v0, p0, Lio/realm/com_lostpixels_fieldservice_internal_report_ServiceReportManagerRealmProxy$ServiceReportManagerColumnInfo;->idColKey:J

    .line 66
    const-string v0, "mlstServiceYears"

    invoke-virtual {p0, v0, v0, p1}, Lio/realm/internal/ColumnInfo;->addColumnDetails(Ljava/lang/String;Ljava/lang/String;Lio/realm/internal/OsObjectSchemaInfo;)J

    move-result-wide v0

    iput-wide v0, p0, Lio/realm/com_lostpixels_fieldservice_internal_report_ServiceReportManagerRealmProxy$ServiceReportManagerColumnInfo;->mlstServiceYearsColKey:J

    .line 67
    const-string v0, "mCustom1"

    invoke-virtual {p0, v0, v0, p1}, Lio/realm/internal/ColumnInfo;->addColumnDetails(Ljava/lang/String;Ljava/lang/String;Lio/realm/internal/OsObjectSchemaInfo;)J

    move-result-wide v0

    iput-wide v0, p0, Lio/realm/com_lostpixels_fieldservice_internal_report_ServiceReportManagerRealmProxy$ServiceReportManagerColumnInfo;->mCustom1ColKey:J

    .line 68
    const-string v0, "customItem1IsTime"

    invoke-virtual {p0, v0, v0, p1}, Lio/realm/internal/ColumnInfo;->addColumnDetails(Ljava/lang/String;Ljava/lang/String;Lio/realm/internal/OsObjectSchemaInfo;)J

    move-result-wide v0

    iput-wide v0, p0, Lio/realm/com_lostpixels_fieldservice_internal_report_ServiceReportManagerRealmProxy$ServiceReportManagerColumnInfo;->customItem1IsTimeColKey:J

    .line 69
    const-string v0, "customItem1Caps"

    invoke-virtual {p0, v0, v0, p1}, Lio/realm/internal/ColumnInfo;->addColumnDetails(Ljava/lang/String;Ljava/lang/String;Lio/realm/internal/OsObjectSchemaInfo;)J

    move-result-wide v0

    iput-wide v0, p0, Lio/realm/com_lostpixels_fieldservice_internal_report_ServiceReportManagerRealmProxy$ServiceReportManagerColumnInfo;->customItem1CapsColKey:J

    .line 70
    const-string v0, "usingCustom1"

    invoke-virtual {p0, v0, v0, p1}, Lio/realm/internal/ColumnInfo;->addColumnDetails(Ljava/lang/String;Ljava/lang/String;Lio/realm/internal/OsObjectSchemaInfo;)J

    move-result-wide v0

    iput-wide v0, p0, Lio/realm/com_lostpixels_fieldservice_internal_report_ServiceReportManagerRealmProxy$ServiceReportManagerColumnInfo;->usingCustom1ColKey:J

    .line 71
    const-string v0, "mCustom2"

    invoke-virtual {p0, v0, v0, p1}, Lio/realm/internal/ColumnInfo;->addColumnDetails(Ljava/lang/String;Ljava/lang/String;Lio/realm/internal/OsObjectSchemaInfo;)J

    move-result-wide v0

    iput-wide v0, p0, Lio/realm/com_lostpixels_fieldservice_internal_report_ServiceReportManagerRealmProxy$ServiceReportManagerColumnInfo;->mCustom2ColKey:J

    .line 72
    const-string v0, "customItem2Caps"

    invoke-virtual {p0, v0, v0, p1}, Lio/realm/internal/ColumnInfo;->addColumnDetails(Ljava/lang/String;Ljava/lang/String;Lio/realm/internal/OsObjectSchemaInfo;)J

    move-result-wide v0

    iput-wide v0, p0, Lio/realm/com_lostpixels_fieldservice_internal_report_ServiceReportManagerRealmProxy$ServiceReportManagerColumnInfo;->customItem2CapsColKey:J

    .line 73
    const-string v0, "usingCustom2"

    invoke-virtual {p0, v0, v0, p1}, Lio/realm/internal/ColumnInfo;->addColumnDetails(Ljava/lang/String;Ljava/lang/String;Lio/realm/internal/OsObjectSchemaInfo;)J

    move-result-wide v0

    iput-wide v0, p0, Lio/realm/com_lostpixels_fieldservice_internal_report_ServiceReportManagerRealmProxy$ServiceReportManagerColumnInfo;->usingCustom2ColKey:J

    .line 74
    const-string v0, "mCustom3"

    invoke-virtual {p0, v0, v0, p1}, Lio/realm/internal/ColumnInfo;->addColumnDetails(Ljava/lang/String;Ljava/lang/String;Lio/realm/internal/OsObjectSchemaInfo;)J

    move-result-wide v0

    iput-wide v0, p0, Lio/realm/com_lostpixels_fieldservice_internal_report_ServiceReportManagerRealmProxy$ServiceReportManagerColumnInfo;->mCustom3ColKey:J

    .line 75
    const-string v0, "customItem3Caps"

    invoke-virtual {p0, v0, v0, p1}, Lio/realm/internal/ColumnInfo;->addColumnDetails(Ljava/lang/String;Ljava/lang/String;Lio/realm/internal/OsObjectSchemaInfo;)J

    move-result-wide v0

    iput-wide v0, p0, Lio/realm/com_lostpixels_fieldservice_internal_report_ServiceReportManagerRealmProxy$ServiceReportManagerColumnInfo;->customItem3CapsColKey:J

    .line 76
    const-string v0, "usingCustom3"

    invoke-virtual {p0, v0, v0, p1}, Lio/realm/internal/ColumnInfo;->addColumnDetails(Ljava/lang/String;Ljava/lang/String;Lio/realm/internal/OsObjectSchemaInfo;)J

    move-result-wide v0

    iput-wide v0, p0, Lio/realm/com_lostpixels_fieldservice_internal_report_ServiceReportManagerRealmProxy$ServiceReportManagerColumnInfo;->usingCustom3ColKey:J

    .line 77
    const-string v0, "mCustomDate"

    invoke-virtual {p0, v0, v0, p1}, Lio/realm/internal/ColumnInfo;->addColumnDetails(Ljava/lang/String;Ljava/lang/String;Lio/realm/internal/OsObjectSchemaInfo;)J

    move-result-wide v0

    iput-wide v0, p0, Lio/realm/com_lostpixels_fieldservice_internal_report_ServiceReportManagerRealmProxy$ServiceReportManagerColumnInfo;->mCustomDateColKey:J

    .line 78
    const-string v0, "customItem2IsTime"

    invoke-virtual {p0, v0, v0, p1}, Lio/realm/internal/ColumnInfo;->addColumnDetails(Ljava/lang/String;Ljava/lang/String;Lio/realm/internal/OsObjectSchemaInfo;)J

    move-result-wide v0

    iput-wide v0, p0, Lio/realm/com_lostpixels_fieldservice_internal_report_ServiceReportManagerRealmProxy$ServiceReportManagerColumnInfo;->customItem2IsTimeColKey:J

    .line 79
    const-string v0, "customItem3IsTime"

    invoke-virtual {p0, v0, v0, p1}, Lio/realm/internal/ColumnInfo;->addColumnDetails(Ljava/lang/String;Ljava/lang/String;Lio/realm/internal/OsObjectSchemaInfo;)J

    move-result-wide v0

    iput-wide v0, p0, Lio/realm/com_lostpixels_fieldservice_internal_report_ServiceReportManagerRealmProxy$ServiceReportManagerColumnInfo;->customItem3IsTimeColKey:J

    return-void
.end method


# virtual methods
.method protected final copy(Lio/realm/internal/ColumnInfo;Lio/realm/internal/ColumnInfo;)V
    .locals 2

    .line 94
    check-cast p1, Lio/realm/com_lostpixels_fieldservice_internal_report_ServiceReportManagerRealmProxy$ServiceReportManagerColumnInfo;

    .line 95
    check-cast p2, Lio/realm/com_lostpixels_fieldservice_internal_report_ServiceReportManagerRealmProxy$ServiceReportManagerColumnInfo;

    .line 96
    iget-wide v0, p1, Lio/realm/com_lostpixels_fieldservice_internal_report_ServiceReportManagerRealmProxy$ServiceReportManagerColumnInfo;->idColKey:J

    iput-wide v0, p2, Lio/realm/com_lostpixels_fieldservice_internal_report_ServiceReportManagerRealmProxy$ServiceReportManagerColumnInfo;->idColKey:J

    .line 97
    iget-wide v0, p1, Lio/realm/com_lostpixels_fieldservice_internal_report_ServiceReportManagerRealmProxy$ServiceReportManagerColumnInfo;->mlstServiceYearsColKey:J

    iput-wide v0, p2, Lio/realm/com_lostpixels_fieldservice_internal_report_ServiceReportManagerRealmProxy$ServiceReportManagerColumnInfo;->mlstServiceYearsColKey:J

    .line 98
    iget-wide v0, p1, Lio/realm/com_lostpixels_fieldservice_internal_report_ServiceReportManagerRealmProxy$ServiceReportManagerColumnInfo;->mCustom1ColKey:J

    iput-wide v0, p2, Lio/realm/com_lostpixels_fieldservice_internal_report_ServiceReportManagerRealmProxy$ServiceReportManagerColumnInfo;->mCustom1ColKey:J

    .line 99
    iget-wide v0, p1, Lio/realm/com_lostpixels_fieldservice_internal_report_ServiceReportManagerRealmProxy$ServiceReportManagerColumnInfo;->customItem1IsTimeColKey:J

    iput-wide v0, p2, Lio/realm/com_lostpixels_fieldservice_internal_report_ServiceReportManagerRealmProxy$ServiceReportManagerColumnInfo;->customItem1IsTimeColKey:J

    .line 100
    iget-wide v0, p1, Lio/realm/com_lostpixels_fieldservice_internal_report_ServiceReportManagerRealmProxy$ServiceReportManagerColumnInfo;->customItem1CapsColKey:J

    iput-wide v0, p2, Lio/realm/com_lostpixels_fieldservice_internal_report_ServiceReportManagerRealmProxy$ServiceReportManagerColumnInfo;->customItem1CapsColKey:J

    .line 101
    iget-wide v0, p1, Lio/realm/com_lostpixels_fieldservice_internal_report_ServiceReportManagerRealmProxy$ServiceReportManagerColumnInfo;->usingCustom1ColKey:J

    iput-wide v0, p2, Lio/realm/com_lostpixels_fieldservice_internal_report_ServiceReportManagerRealmProxy$ServiceReportManagerColumnInfo;->usingCustom1ColKey:J

    .line 102
    iget-wide v0, p1, Lio/realm/com_lostpixels_fieldservice_internal_report_ServiceReportManagerRealmProxy$ServiceReportManagerColumnInfo;->mCustom2ColKey:J

    iput-wide v0, p2, Lio/realm/com_lostpixels_fieldservice_internal_report_ServiceReportManagerRealmProxy$ServiceReportManagerColumnInfo;->mCustom2ColKey:J

    .line 103
    iget-wide v0, p1, Lio/realm/com_lostpixels_fieldservice_internal_report_ServiceReportManagerRealmProxy$ServiceReportManagerColumnInfo;->customItem2CapsColKey:J

    iput-wide v0, p2, Lio/realm/com_lostpixels_fieldservice_internal_report_ServiceReportManagerRealmProxy$ServiceReportManagerColumnInfo;->customItem2CapsColKey:J

    .line 104
    iget-wide v0, p1, Lio/realm/com_lostpixels_fieldservice_internal_report_ServiceReportManagerRealmProxy$ServiceReportManagerColumnInfo;->usingCustom2ColKey:J

    iput-wide v0, p2, Lio/realm/com_lostpixels_fieldservice_internal_report_ServiceReportManagerRealmProxy$ServiceReportManagerColumnInfo;->usingCustom2ColKey:J

    .line 105
    iget-wide v0, p1, Lio/realm/com_lostpixels_fieldservice_internal_report_ServiceReportManagerRealmProxy$ServiceReportManagerColumnInfo;->mCustom3ColKey:J

    iput-wide v0, p2, Lio/realm/com_lostpixels_fieldservice_internal_report_ServiceReportManagerRealmProxy$ServiceReportManagerColumnInfo;->mCustom3ColKey:J

    .line 106
    iget-wide v0, p1, Lio/realm/com_lostpixels_fieldservice_internal_report_ServiceReportManagerRealmProxy$ServiceReportManagerColumnInfo;->customItem3CapsColKey:J

    iput-wide v0, p2, Lio/realm/com_lostpixels_fieldservice_internal_report_ServiceReportManagerRealmProxy$ServiceReportManagerColumnInfo;->customItem3CapsColKey:J

    .line 107
    iget-wide v0, p1, Lio/realm/com_lostpixels_fieldservice_internal_report_ServiceReportManagerRealmProxy$ServiceReportManagerColumnInfo;->usingCustom3ColKey:J

    iput-wide v0, p2, Lio/realm/com_lostpixels_fieldservice_internal_report_ServiceReportManagerRealmProxy$ServiceReportManagerColumnInfo;->usingCustom3ColKey:J

    .line 108
    iget-wide v0, p1, Lio/realm/com_lostpixels_fieldservice_internal_report_ServiceReportManagerRealmProxy$ServiceReportManagerColumnInfo;->mCustomDateColKey:J

    iput-wide v0, p2, Lio/realm/com_lostpixels_fieldservice_internal_report_ServiceReportManagerRealmProxy$ServiceReportManagerColumnInfo;->mCustomDateColKey:J

    .line 109
    iget-wide v0, p1, Lio/realm/com_lostpixels_fieldservice_internal_report_ServiceReportManagerRealmProxy$ServiceReportManagerColumnInfo;->customItem2IsTimeColKey:J

    iput-wide v0, p2, Lio/realm/com_lostpixels_fieldservice_internal_report_ServiceReportManagerRealmProxy$ServiceReportManagerColumnInfo;->customItem2IsTimeColKey:J

    .line 110
    iget-wide v0, p1, Lio/realm/com_lostpixels_fieldservice_internal_report_ServiceReportManagerRealmProxy$ServiceReportManagerColumnInfo;->customItem3IsTimeColKey:J

    iput-wide v0, p2, Lio/realm/com_lostpixels_fieldservice_internal_report_ServiceReportManagerRealmProxy$ServiceReportManagerColumnInfo;->customItem3IsTimeColKey:J

    return-void
.end method
