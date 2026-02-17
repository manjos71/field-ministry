.class final Lio/realm/com_lostpixels_fieldservice_internal_report_ServiceSessionRealmProxy$ServiceSessionColumnInfo;
.super Lio/realm/internal/ColumnInfo;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lio/realm/com_lostpixels_fieldservice_internal_report_ServiceSessionRealmProxy;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = "ServiceSessionColumnInfo"
.end annotation


# instance fields
.field bookletsColKey:J

.field booksColKey:J

.field commentColKey:J

.field custom1ColKey:J

.field custom2ColKey:J

.field custom3ColKey:J

.field dateColKey:J

.field doneMinistryColKey:J

.field dvdsColKey:J

.field magazinesColKey:J

.field mileageKilometersColKey:J

.field minutesColKey:J

.field rbcMinutesColKey:J

.field retVisitsColKey:J

.field studiesColKey:J

.field studyPersonsColKey:J

.field tractsColKey:J

.field videoShowingsColKey:J


# direct methods
.method constructor <init>(Lio/realm/internal/OsSchemaInfo;)V
    .locals 2

    const/16 v0, 0x12

    .line 66
    invoke-direct {p0, v0}, Lio/realm/internal/ColumnInfo;-><init>(I)V

    .line 67
    const-string v0, "ServiceSession"

    invoke-virtual {p1, v0}, Lio/realm/internal/OsSchemaInfo;->getObjectSchemaInfo(Ljava/lang/String;)Lio/realm/internal/OsObjectSchemaInfo;

    move-result-object p1

    .line 68
    const-string v0, "minutes"

    invoke-virtual {p0, v0, v0, p1}, Lio/realm/internal/ColumnInfo;->addColumnDetails(Ljava/lang/String;Ljava/lang/String;Lio/realm/internal/OsObjectSchemaInfo;)J

    move-result-wide v0

    iput-wide v0, p0, Lio/realm/com_lostpixels_fieldservice_internal_report_ServiceSessionRealmProxy$ServiceSessionColumnInfo;->minutesColKey:J

    .line 69
    const-string v0, "rbcMinutes"

    invoke-virtual {p0, v0, v0, p1}, Lio/realm/internal/ColumnInfo;->addColumnDetails(Ljava/lang/String;Ljava/lang/String;Lio/realm/internal/OsObjectSchemaInfo;)J

    move-result-wide v0

    iput-wide v0, p0, Lio/realm/com_lostpixels_fieldservice_internal_report_ServiceSessionRealmProxy$ServiceSessionColumnInfo;->rbcMinutesColKey:J

    .line 70
    const-string v0, "magazines"

    invoke-virtual {p0, v0, v0, p1}, Lio/realm/internal/ColumnInfo;->addColumnDetails(Ljava/lang/String;Ljava/lang/String;Lio/realm/internal/OsObjectSchemaInfo;)J

    move-result-wide v0

    iput-wide v0, p0, Lio/realm/com_lostpixels_fieldservice_internal_report_ServiceSessionRealmProxy$ServiceSessionColumnInfo;->magazinesColKey:J

    .line 71
    const-string v0, "booklets"

    invoke-virtual {p0, v0, v0, p1}, Lio/realm/internal/ColumnInfo;->addColumnDetails(Ljava/lang/String;Ljava/lang/String;Lio/realm/internal/OsObjectSchemaInfo;)J

    move-result-wide v0

    iput-wide v0, p0, Lio/realm/com_lostpixels_fieldservice_internal_report_ServiceSessionRealmProxy$ServiceSessionColumnInfo;->bookletsColKey:J

    .line 72
    const-string v0, "books"

    invoke-virtual {p0, v0, v0, p1}, Lio/realm/internal/ColumnInfo;->addColumnDetails(Ljava/lang/String;Ljava/lang/String;Lio/realm/internal/OsObjectSchemaInfo;)J

    move-result-wide v0

    iput-wide v0, p0, Lio/realm/com_lostpixels_fieldservice_internal_report_ServiceSessionRealmProxy$ServiceSessionColumnInfo;->booksColKey:J

    .line 73
    const-string v0, "tracts"

    invoke-virtual {p0, v0, v0, p1}, Lio/realm/internal/ColumnInfo;->addColumnDetails(Ljava/lang/String;Ljava/lang/String;Lio/realm/internal/OsObjectSchemaInfo;)J

    move-result-wide v0

    iput-wide v0, p0, Lio/realm/com_lostpixels_fieldservice_internal_report_ServiceSessionRealmProxy$ServiceSessionColumnInfo;->tractsColKey:J

    .line 74
    const-string v0, "mileageKilometers"

    invoke-virtual {p0, v0, v0, p1}, Lio/realm/internal/ColumnInfo;->addColumnDetails(Ljava/lang/String;Ljava/lang/String;Lio/realm/internal/OsObjectSchemaInfo;)J

    move-result-wide v0

    iput-wide v0, p0, Lio/realm/com_lostpixels_fieldservice_internal_report_ServiceSessionRealmProxy$ServiceSessionColumnInfo;->mileageKilometersColKey:J

    .line 75
    const-string v0, "retVisits"

    invoke-virtual {p0, v0, v0, p1}, Lio/realm/internal/ColumnInfo;->addColumnDetails(Ljava/lang/String;Ljava/lang/String;Lio/realm/internal/OsObjectSchemaInfo;)J

    move-result-wide v0

    iput-wide v0, p0, Lio/realm/com_lostpixels_fieldservice_internal_report_ServiceSessionRealmProxy$ServiceSessionColumnInfo;->retVisitsColKey:J

    .line 76
    const-string v0, "studies"

    invoke-virtual {p0, v0, v0, p1}, Lio/realm/internal/ColumnInfo;->addColumnDetails(Ljava/lang/String;Ljava/lang/String;Lio/realm/internal/OsObjectSchemaInfo;)J

    move-result-wide v0

    iput-wide v0, p0, Lio/realm/com_lostpixels_fieldservice_internal_report_ServiceSessionRealmProxy$ServiceSessionColumnInfo;->studiesColKey:J

    .line 77
    const-string v0, "studyPersons"

    invoke-virtual {p0, v0, v0, p1}, Lio/realm/internal/ColumnInfo;->addColumnDetails(Ljava/lang/String;Ljava/lang/String;Lio/realm/internal/OsObjectSchemaInfo;)J

    move-result-wide v0

    iput-wide v0, p0, Lio/realm/com_lostpixels_fieldservice_internal_report_ServiceSessionRealmProxy$ServiceSessionColumnInfo;->studyPersonsColKey:J

    .line 78
    const-string v0, "dvds"

    invoke-virtual {p0, v0, v0, p1}, Lio/realm/internal/ColumnInfo;->addColumnDetails(Ljava/lang/String;Ljava/lang/String;Lio/realm/internal/OsObjectSchemaInfo;)J

    move-result-wide v0

    iput-wide v0, p0, Lio/realm/com_lostpixels_fieldservice_internal_report_ServiceSessionRealmProxy$ServiceSessionColumnInfo;->dvdsColKey:J

    .line 79
    const-string v0, "videoShowings"

    invoke-virtual {p0, v0, v0, p1}, Lio/realm/internal/ColumnInfo;->addColumnDetails(Ljava/lang/String;Ljava/lang/String;Lio/realm/internal/OsObjectSchemaInfo;)J

    move-result-wide v0

    iput-wide v0, p0, Lio/realm/com_lostpixels_fieldservice_internal_report_ServiceSessionRealmProxy$ServiceSessionColumnInfo;->videoShowingsColKey:J

    .line 80
    const-string v0, "date"

    invoke-virtual {p0, v0, v0, p1}, Lio/realm/internal/ColumnInfo;->addColumnDetails(Ljava/lang/String;Ljava/lang/String;Lio/realm/internal/OsObjectSchemaInfo;)J

    move-result-wide v0

    iput-wide v0, p0, Lio/realm/com_lostpixels_fieldservice_internal_report_ServiceSessionRealmProxy$ServiceSessionColumnInfo;->dateColKey:J

    .line 81
    const-string v0, "comment"

    invoke-virtual {p0, v0, v0, p1}, Lio/realm/internal/ColumnInfo;->addColumnDetails(Ljava/lang/String;Ljava/lang/String;Lio/realm/internal/OsObjectSchemaInfo;)J

    move-result-wide v0

    iput-wide v0, p0, Lio/realm/com_lostpixels_fieldservice_internal_report_ServiceSessionRealmProxy$ServiceSessionColumnInfo;->commentColKey:J

    .line 82
    const-string v0, "custom1"

    invoke-virtual {p0, v0, v0, p1}, Lio/realm/internal/ColumnInfo;->addColumnDetails(Ljava/lang/String;Ljava/lang/String;Lio/realm/internal/OsObjectSchemaInfo;)J

    move-result-wide v0

    iput-wide v0, p0, Lio/realm/com_lostpixels_fieldservice_internal_report_ServiceSessionRealmProxy$ServiceSessionColumnInfo;->custom1ColKey:J

    .line 83
    const-string v0, "custom2"

    invoke-virtual {p0, v0, v0, p1}, Lio/realm/internal/ColumnInfo;->addColumnDetails(Ljava/lang/String;Ljava/lang/String;Lio/realm/internal/OsObjectSchemaInfo;)J

    move-result-wide v0

    iput-wide v0, p0, Lio/realm/com_lostpixels_fieldservice_internal_report_ServiceSessionRealmProxy$ServiceSessionColumnInfo;->custom2ColKey:J

    .line 84
    const-string v0, "custom3"

    invoke-virtual {p0, v0, v0, p1}, Lio/realm/internal/ColumnInfo;->addColumnDetails(Ljava/lang/String;Ljava/lang/String;Lio/realm/internal/OsObjectSchemaInfo;)J

    move-result-wide v0

    iput-wide v0, p0, Lio/realm/com_lostpixels_fieldservice_internal_report_ServiceSessionRealmProxy$ServiceSessionColumnInfo;->custom3ColKey:J

    .line 85
    const-string v0, "doneMinistry"

    invoke-virtual {p0, v0, v0, p1}, Lio/realm/internal/ColumnInfo;->addColumnDetails(Ljava/lang/String;Ljava/lang/String;Lio/realm/internal/OsObjectSchemaInfo;)J

    move-result-wide v0

    iput-wide v0, p0, Lio/realm/com_lostpixels_fieldservice_internal_report_ServiceSessionRealmProxy$ServiceSessionColumnInfo;->doneMinistryColKey:J

    return-void
.end method


# virtual methods
.method protected final copy(Lio/realm/internal/ColumnInfo;Lio/realm/internal/ColumnInfo;)V
    .locals 2

    .line 100
    check-cast p1, Lio/realm/com_lostpixels_fieldservice_internal_report_ServiceSessionRealmProxy$ServiceSessionColumnInfo;

    .line 101
    check-cast p2, Lio/realm/com_lostpixels_fieldservice_internal_report_ServiceSessionRealmProxy$ServiceSessionColumnInfo;

    .line 102
    iget-wide v0, p1, Lio/realm/com_lostpixels_fieldservice_internal_report_ServiceSessionRealmProxy$ServiceSessionColumnInfo;->minutesColKey:J

    iput-wide v0, p2, Lio/realm/com_lostpixels_fieldservice_internal_report_ServiceSessionRealmProxy$ServiceSessionColumnInfo;->minutesColKey:J

    .line 103
    iget-wide v0, p1, Lio/realm/com_lostpixels_fieldservice_internal_report_ServiceSessionRealmProxy$ServiceSessionColumnInfo;->rbcMinutesColKey:J

    iput-wide v0, p2, Lio/realm/com_lostpixels_fieldservice_internal_report_ServiceSessionRealmProxy$ServiceSessionColumnInfo;->rbcMinutesColKey:J

    .line 104
    iget-wide v0, p1, Lio/realm/com_lostpixels_fieldservice_internal_report_ServiceSessionRealmProxy$ServiceSessionColumnInfo;->magazinesColKey:J

    iput-wide v0, p2, Lio/realm/com_lostpixels_fieldservice_internal_report_ServiceSessionRealmProxy$ServiceSessionColumnInfo;->magazinesColKey:J

    .line 105
    iget-wide v0, p1, Lio/realm/com_lostpixels_fieldservice_internal_report_ServiceSessionRealmProxy$ServiceSessionColumnInfo;->bookletsColKey:J

    iput-wide v0, p2, Lio/realm/com_lostpixels_fieldservice_internal_report_ServiceSessionRealmProxy$ServiceSessionColumnInfo;->bookletsColKey:J

    .line 106
    iget-wide v0, p1, Lio/realm/com_lostpixels_fieldservice_internal_report_ServiceSessionRealmProxy$ServiceSessionColumnInfo;->booksColKey:J

    iput-wide v0, p2, Lio/realm/com_lostpixels_fieldservice_internal_report_ServiceSessionRealmProxy$ServiceSessionColumnInfo;->booksColKey:J

    .line 107
    iget-wide v0, p1, Lio/realm/com_lostpixels_fieldservice_internal_report_ServiceSessionRealmProxy$ServiceSessionColumnInfo;->tractsColKey:J

    iput-wide v0, p2, Lio/realm/com_lostpixels_fieldservice_internal_report_ServiceSessionRealmProxy$ServiceSessionColumnInfo;->tractsColKey:J

    .line 108
    iget-wide v0, p1, Lio/realm/com_lostpixels_fieldservice_internal_report_ServiceSessionRealmProxy$ServiceSessionColumnInfo;->mileageKilometersColKey:J

    iput-wide v0, p2, Lio/realm/com_lostpixels_fieldservice_internal_report_ServiceSessionRealmProxy$ServiceSessionColumnInfo;->mileageKilometersColKey:J

    .line 109
    iget-wide v0, p1, Lio/realm/com_lostpixels_fieldservice_internal_report_ServiceSessionRealmProxy$ServiceSessionColumnInfo;->retVisitsColKey:J

    iput-wide v0, p2, Lio/realm/com_lostpixels_fieldservice_internal_report_ServiceSessionRealmProxy$ServiceSessionColumnInfo;->retVisitsColKey:J

    .line 110
    iget-wide v0, p1, Lio/realm/com_lostpixels_fieldservice_internal_report_ServiceSessionRealmProxy$ServiceSessionColumnInfo;->studiesColKey:J

    iput-wide v0, p2, Lio/realm/com_lostpixels_fieldservice_internal_report_ServiceSessionRealmProxy$ServiceSessionColumnInfo;->studiesColKey:J

    .line 111
    iget-wide v0, p1, Lio/realm/com_lostpixels_fieldservice_internal_report_ServiceSessionRealmProxy$ServiceSessionColumnInfo;->studyPersonsColKey:J

    iput-wide v0, p2, Lio/realm/com_lostpixels_fieldservice_internal_report_ServiceSessionRealmProxy$ServiceSessionColumnInfo;->studyPersonsColKey:J

    .line 112
    iget-wide v0, p1, Lio/realm/com_lostpixels_fieldservice_internal_report_ServiceSessionRealmProxy$ServiceSessionColumnInfo;->dvdsColKey:J

    iput-wide v0, p2, Lio/realm/com_lostpixels_fieldservice_internal_report_ServiceSessionRealmProxy$ServiceSessionColumnInfo;->dvdsColKey:J

    .line 113
    iget-wide v0, p1, Lio/realm/com_lostpixels_fieldservice_internal_report_ServiceSessionRealmProxy$ServiceSessionColumnInfo;->videoShowingsColKey:J

    iput-wide v0, p2, Lio/realm/com_lostpixels_fieldservice_internal_report_ServiceSessionRealmProxy$ServiceSessionColumnInfo;->videoShowingsColKey:J

    .line 114
    iget-wide v0, p1, Lio/realm/com_lostpixels_fieldservice_internal_report_ServiceSessionRealmProxy$ServiceSessionColumnInfo;->dateColKey:J

    iput-wide v0, p2, Lio/realm/com_lostpixels_fieldservice_internal_report_ServiceSessionRealmProxy$ServiceSessionColumnInfo;->dateColKey:J

    .line 115
    iget-wide v0, p1, Lio/realm/com_lostpixels_fieldservice_internal_report_ServiceSessionRealmProxy$ServiceSessionColumnInfo;->commentColKey:J

    iput-wide v0, p2, Lio/realm/com_lostpixels_fieldservice_internal_report_ServiceSessionRealmProxy$ServiceSessionColumnInfo;->commentColKey:J

    .line 116
    iget-wide v0, p1, Lio/realm/com_lostpixels_fieldservice_internal_report_ServiceSessionRealmProxy$ServiceSessionColumnInfo;->custom1ColKey:J

    iput-wide v0, p2, Lio/realm/com_lostpixels_fieldservice_internal_report_ServiceSessionRealmProxy$ServiceSessionColumnInfo;->custom1ColKey:J

    .line 117
    iget-wide v0, p1, Lio/realm/com_lostpixels_fieldservice_internal_report_ServiceSessionRealmProxy$ServiceSessionColumnInfo;->custom2ColKey:J

    iput-wide v0, p2, Lio/realm/com_lostpixels_fieldservice_internal_report_ServiceSessionRealmProxy$ServiceSessionColumnInfo;->custom2ColKey:J

    .line 118
    iget-wide v0, p1, Lio/realm/com_lostpixels_fieldservice_internal_report_ServiceSessionRealmProxy$ServiceSessionColumnInfo;->custom3ColKey:J

    iput-wide v0, p2, Lio/realm/com_lostpixels_fieldservice_internal_report_ServiceSessionRealmProxy$ServiceSessionColumnInfo;->custom3ColKey:J

    .line 119
    iget-wide v0, p1, Lio/realm/com_lostpixels_fieldservice_internal_report_ServiceSessionRealmProxy$ServiceSessionColumnInfo;->doneMinistryColKey:J

    iput-wide v0, p2, Lio/realm/com_lostpixels_fieldservice_internal_report_ServiceSessionRealmProxy$ServiceSessionColumnInfo;->doneMinistryColKey:J

    return-void
.end method
