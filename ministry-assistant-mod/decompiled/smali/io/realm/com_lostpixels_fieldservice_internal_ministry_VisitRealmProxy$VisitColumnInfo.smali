.class final Lio/realm/com_lostpixels_fieldservice_internal_ministry_VisitRealmProxy$VisitColumnInfo;
.super Lio/realm/internal/ColumnInfo;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lio/realm/com_lostpixels_fieldservice_internal_ministry_VisitRealmProxy;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = "VisitColumnInfo"
.end annotation


# instance fields
.field cellNumberColKey:J

.field commentColKey:J

.field dateColKey:J

.field floorNumberColKey:J

.field houseHolderColKey:J

.field idColKey:J

.field interestedColKey:J

.field latitudeColKey:J

.field locationIdFromTerritoryHelperColKey:J

.field locationIdHashColKey:J

.field longitudeColKey:J

.field nameColKey:J

.field numVisitsColKey:J

.field parentRefColKey:J

.field phoneNumberColKey:J

.field syncDateColKey:J

.field visitTypeColKey:J

.field visitTypeListColKey:J


# direct methods
.method constructor <init>(Lio/realm/internal/OsSchemaInfo;)V
    .locals 2

    const/16 v0, 0x12

    .line 66
    invoke-direct {p0, v0}, Lio/realm/internal/ColumnInfo;-><init>(I)V

    .line 67
    const-string v0, "Visit"

    invoke-virtual {p1, v0}, Lio/realm/internal/OsSchemaInfo;->getObjectSchemaInfo(Ljava/lang/String;)Lio/realm/internal/OsObjectSchemaInfo;

    move-result-object p1

    .line 68
    const-string v0, "houseHolder"

    invoke-virtual {p0, v0, v0, p1}, Lio/realm/internal/ColumnInfo;->addColumnDetails(Ljava/lang/String;Ljava/lang/String;Lio/realm/internal/OsObjectSchemaInfo;)J

    move-result-wide v0

    iput-wide v0, p0, Lio/realm/com_lostpixels_fieldservice_internal_ministry_VisitRealmProxy$VisitColumnInfo;->houseHolderColKey:J

    .line 69
    const-string v0, "interested"

    invoke-virtual {p0, v0, v0, p1}, Lio/realm/internal/ColumnInfo;->addColumnDetails(Ljava/lang/String;Ljava/lang/String;Lio/realm/internal/OsObjectSchemaInfo;)J

    move-result-wide v0

    iput-wide v0, p0, Lio/realm/com_lostpixels_fieldservice_internal_ministry_VisitRealmProxy$VisitColumnInfo;->interestedColKey:J

    .line 70
    const-string v0, "name"

    invoke-virtual {p0, v0, v0, p1}, Lio/realm/internal/ColumnInfo;->addColumnDetails(Ljava/lang/String;Ljava/lang/String;Lio/realm/internal/OsObjectSchemaInfo;)J

    move-result-wide v0

    iput-wide v0, p0, Lio/realm/com_lostpixels_fieldservice_internal_ministry_VisitRealmProxy$VisitColumnInfo;->nameColKey:J

    .line 71
    const-string v0, "date"

    invoke-virtual {p0, v0, v0, p1}, Lio/realm/internal/ColumnInfo;->addColumnDetails(Ljava/lang/String;Ljava/lang/String;Lio/realm/internal/OsObjectSchemaInfo;)J

    move-result-wide v0

    iput-wide v0, p0, Lio/realm/com_lostpixels_fieldservice_internal_ministry_VisitRealmProxy$VisitColumnInfo;->dateColKey:J

    .line 72
    const-string v0, "syncDate"

    invoke-virtual {p0, v0, v0, p1}, Lio/realm/internal/ColumnInfo;->addColumnDetails(Ljava/lang/String;Ljava/lang/String;Lio/realm/internal/OsObjectSchemaInfo;)J

    move-result-wide v0

    iput-wide v0, p0, Lio/realm/com_lostpixels_fieldservice_internal_ministry_VisitRealmProxy$VisitColumnInfo;->syncDateColKey:J

    .line 73
    const-string v0, "visitType"

    invoke-virtual {p0, v0, v0, p1}, Lio/realm/internal/ColumnInfo;->addColumnDetails(Ljava/lang/String;Ljava/lang/String;Lio/realm/internal/OsObjectSchemaInfo;)J

    move-result-wide v0

    iput-wide v0, p0, Lio/realm/com_lostpixels_fieldservice_internal_ministry_VisitRealmProxy$VisitColumnInfo;->visitTypeColKey:J

    .line 74
    const-string v0, "floorNumber"

    invoke-virtual {p0, v0, v0, p1}, Lio/realm/internal/ColumnInfo;->addColumnDetails(Ljava/lang/String;Ljava/lang/String;Lio/realm/internal/OsObjectSchemaInfo;)J

    move-result-wide v0

    iput-wide v0, p0, Lio/realm/com_lostpixels_fieldservice_internal_ministry_VisitRealmProxy$VisitColumnInfo;->floorNumberColKey:J

    .line 75
    const-string v0, "parentRef"

    invoke-virtual {p0, v0, v0, p1}, Lio/realm/internal/ColumnInfo;->addColumnDetails(Ljava/lang/String;Ljava/lang/String;Lio/realm/internal/OsObjectSchemaInfo;)J

    move-result-wide v0

    iput-wide v0, p0, Lio/realm/com_lostpixels_fieldservice_internal_ministry_VisitRealmProxy$VisitColumnInfo;->parentRefColKey:J

    .line 76
    const-string v0, "id"

    invoke-virtual {p0, v0, v0, p1}, Lio/realm/internal/ColumnInfo;->addColumnDetails(Ljava/lang/String;Ljava/lang/String;Lio/realm/internal/OsObjectSchemaInfo;)J

    move-result-wide v0

    iput-wide v0, p0, Lio/realm/com_lostpixels_fieldservice_internal_ministry_VisitRealmProxy$VisitColumnInfo;->idColKey:J

    .line 77
    const-string v0, "locationIdFromTerritoryHelper"

    invoke-virtual {p0, v0, v0, p1}, Lio/realm/internal/ColumnInfo;->addColumnDetails(Ljava/lang/String;Ljava/lang/String;Lio/realm/internal/OsObjectSchemaInfo;)J

    move-result-wide v0

    iput-wide v0, p0, Lio/realm/com_lostpixels_fieldservice_internal_ministry_VisitRealmProxy$VisitColumnInfo;->locationIdFromTerritoryHelperColKey:J

    .line 78
    const-string v0, "locationIdHash"

    invoke-virtual {p0, v0, v0, p1}, Lio/realm/internal/ColumnInfo;->addColumnDetails(Ljava/lang/String;Ljava/lang/String;Lio/realm/internal/OsObjectSchemaInfo;)J

    move-result-wide v0

    iput-wide v0, p0, Lio/realm/com_lostpixels_fieldservice_internal_ministry_VisitRealmProxy$VisitColumnInfo;->locationIdHashColKey:J

    .line 79
    const-string v0, "latitude"

    invoke-virtual {p0, v0, v0, p1}, Lio/realm/internal/ColumnInfo;->addColumnDetails(Ljava/lang/String;Ljava/lang/String;Lio/realm/internal/OsObjectSchemaInfo;)J

    move-result-wide v0

    iput-wide v0, p0, Lio/realm/com_lostpixels_fieldservice_internal_ministry_VisitRealmProxy$VisitColumnInfo;->latitudeColKey:J

    .line 80
    const-string v0, "longitude"

    invoke-virtual {p0, v0, v0, p1}, Lio/realm/internal/ColumnInfo;->addColumnDetails(Ljava/lang/String;Ljava/lang/String;Lio/realm/internal/OsObjectSchemaInfo;)J

    move-result-wide v0

    iput-wide v0, p0, Lio/realm/com_lostpixels_fieldservice_internal_ministry_VisitRealmProxy$VisitColumnInfo;->longitudeColKey:J

    .line 81
    const-string v0, "numVisits"

    invoke-virtual {p0, v0, v0, p1}, Lio/realm/internal/ColumnInfo;->addColumnDetails(Ljava/lang/String;Ljava/lang/String;Lio/realm/internal/OsObjectSchemaInfo;)J

    move-result-wide v0

    iput-wide v0, p0, Lio/realm/com_lostpixels_fieldservice_internal_ministry_VisitRealmProxy$VisitColumnInfo;->numVisitsColKey:J

    .line 82
    const-string v0, "comment"

    invoke-virtual {p0, v0, v0, p1}, Lio/realm/internal/ColumnInfo;->addColumnDetails(Ljava/lang/String;Ljava/lang/String;Lio/realm/internal/OsObjectSchemaInfo;)J

    move-result-wide v0

    iput-wide v0, p0, Lio/realm/com_lostpixels_fieldservice_internal_ministry_VisitRealmProxy$VisitColumnInfo;->commentColKey:J

    .line 83
    const-string v0, "phoneNumber"

    invoke-virtual {p0, v0, v0, p1}, Lio/realm/internal/ColumnInfo;->addColumnDetails(Ljava/lang/String;Ljava/lang/String;Lio/realm/internal/OsObjectSchemaInfo;)J

    move-result-wide v0

    iput-wide v0, p0, Lio/realm/com_lostpixels_fieldservice_internal_ministry_VisitRealmProxy$VisitColumnInfo;->phoneNumberColKey:J

    .line 84
    const-string v0, "cellNumber"

    invoke-virtual {p0, v0, v0, p1}, Lio/realm/internal/ColumnInfo;->addColumnDetails(Ljava/lang/String;Ljava/lang/String;Lio/realm/internal/OsObjectSchemaInfo;)J

    move-result-wide v0

    iput-wide v0, p0, Lio/realm/com_lostpixels_fieldservice_internal_ministry_VisitRealmProxy$VisitColumnInfo;->cellNumberColKey:J

    .line 85
    const-string v0, "visitTypeList"

    invoke-virtual {p0, v0, v0, p1}, Lio/realm/internal/ColumnInfo;->addColumnDetails(Ljava/lang/String;Ljava/lang/String;Lio/realm/internal/OsObjectSchemaInfo;)J

    move-result-wide v0

    iput-wide v0, p0, Lio/realm/com_lostpixels_fieldservice_internal_ministry_VisitRealmProxy$VisitColumnInfo;->visitTypeListColKey:J

    return-void
.end method


# virtual methods
.method protected final copy(Lio/realm/internal/ColumnInfo;Lio/realm/internal/ColumnInfo;)V
    .locals 2

    .line 100
    check-cast p1, Lio/realm/com_lostpixels_fieldservice_internal_ministry_VisitRealmProxy$VisitColumnInfo;

    .line 101
    check-cast p2, Lio/realm/com_lostpixels_fieldservice_internal_ministry_VisitRealmProxy$VisitColumnInfo;

    .line 102
    iget-wide v0, p1, Lio/realm/com_lostpixels_fieldservice_internal_ministry_VisitRealmProxy$VisitColumnInfo;->houseHolderColKey:J

    iput-wide v0, p2, Lio/realm/com_lostpixels_fieldservice_internal_ministry_VisitRealmProxy$VisitColumnInfo;->houseHolderColKey:J

    .line 103
    iget-wide v0, p1, Lio/realm/com_lostpixels_fieldservice_internal_ministry_VisitRealmProxy$VisitColumnInfo;->interestedColKey:J

    iput-wide v0, p2, Lio/realm/com_lostpixels_fieldservice_internal_ministry_VisitRealmProxy$VisitColumnInfo;->interestedColKey:J

    .line 104
    iget-wide v0, p1, Lio/realm/com_lostpixels_fieldservice_internal_ministry_VisitRealmProxy$VisitColumnInfo;->nameColKey:J

    iput-wide v0, p2, Lio/realm/com_lostpixels_fieldservice_internal_ministry_VisitRealmProxy$VisitColumnInfo;->nameColKey:J

    .line 105
    iget-wide v0, p1, Lio/realm/com_lostpixels_fieldservice_internal_ministry_VisitRealmProxy$VisitColumnInfo;->dateColKey:J

    iput-wide v0, p2, Lio/realm/com_lostpixels_fieldservice_internal_ministry_VisitRealmProxy$VisitColumnInfo;->dateColKey:J

    .line 106
    iget-wide v0, p1, Lio/realm/com_lostpixels_fieldservice_internal_ministry_VisitRealmProxy$VisitColumnInfo;->syncDateColKey:J

    iput-wide v0, p2, Lio/realm/com_lostpixels_fieldservice_internal_ministry_VisitRealmProxy$VisitColumnInfo;->syncDateColKey:J

    .line 107
    iget-wide v0, p1, Lio/realm/com_lostpixels_fieldservice_internal_ministry_VisitRealmProxy$VisitColumnInfo;->visitTypeColKey:J

    iput-wide v0, p2, Lio/realm/com_lostpixels_fieldservice_internal_ministry_VisitRealmProxy$VisitColumnInfo;->visitTypeColKey:J

    .line 108
    iget-wide v0, p1, Lio/realm/com_lostpixels_fieldservice_internal_ministry_VisitRealmProxy$VisitColumnInfo;->floorNumberColKey:J

    iput-wide v0, p2, Lio/realm/com_lostpixels_fieldservice_internal_ministry_VisitRealmProxy$VisitColumnInfo;->floorNumberColKey:J

    .line 109
    iget-wide v0, p1, Lio/realm/com_lostpixels_fieldservice_internal_ministry_VisitRealmProxy$VisitColumnInfo;->parentRefColKey:J

    iput-wide v0, p2, Lio/realm/com_lostpixels_fieldservice_internal_ministry_VisitRealmProxy$VisitColumnInfo;->parentRefColKey:J

    .line 110
    iget-wide v0, p1, Lio/realm/com_lostpixels_fieldservice_internal_ministry_VisitRealmProxy$VisitColumnInfo;->idColKey:J

    iput-wide v0, p2, Lio/realm/com_lostpixels_fieldservice_internal_ministry_VisitRealmProxy$VisitColumnInfo;->idColKey:J

    .line 111
    iget-wide v0, p1, Lio/realm/com_lostpixels_fieldservice_internal_ministry_VisitRealmProxy$VisitColumnInfo;->locationIdFromTerritoryHelperColKey:J

    iput-wide v0, p2, Lio/realm/com_lostpixels_fieldservice_internal_ministry_VisitRealmProxy$VisitColumnInfo;->locationIdFromTerritoryHelperColKey:J

    .line 112
    iget-wide v0, p1, Lio/realm/com_lostpixels_fieldservice_internal_ministry_VisitRealmProxy$VisitColumnInfo;->locationIdHashColKey:J

    iput-wide v0, p2, Lio/realm/com_lostpixels_fieldservice_internal_ministry_VisitRealmProxy$VisitColumnInfo;->locationIdHashColKey:J

    .line 113
    iget-wide v0, p1, Lio/realm/com_lostpixels_fieldservice_internal_ministry_VisitRealmProxy$VisitColumnInfo;->latitudeColKey:J

    iput-wide v0, p2, Lio/realm/com_lostpixels_fieldservice_internal_ministry_VisitRealmProxy$VisitColumnInfo;->latitudeColKey:J

    .line 114
    iget-wide v0, p1, Lio/realm/com_lostpixels_fieldservice_internal_ministry_VisitRealmProxy$VisitColumnInfo;->longitudeColKey:J

    iput-wide v0, p2, Lio/realm/com_lostpixels_fieldservice_internal_ministry_VisitRealmProxy$VisitColumnInfo;->longitudeColKey:J

    .line 115
    iget-wide v0, p1, Lio/realm/com_lostpixels_fieldservice_internal_ministry_VisitRealmProxy$VisitColumnInfo;->numVisitsColKey:J

    iput-wide v0, p2, Lio/realm/com_lostpixels_fieldservice_internal_ministry_VisitRealmProxy$VisitColumnInfo;->numVisitsColKey:J

    .line 116
    iget-wide v0, p1, Lio/realm/com_lostpixels_fieldservice_internal_ministry_VisitRealmProxy$VisitColumnInfo;->commentColKey:J

    iput-wide v0, p2, Lio/realm/com_lostpixels_fieldservice_internal_ministry_VisitRealmProxy$VisitColumnInfo;->commentColKey:J

    .line 117
    iget-wide v0, p1, Lio/realm/com_lostpixels_fieldservice_internal_ministry_VisitRealmProxy$VisitColumnInfo;->phoneNumberColKey:J

    iput-wide v0, p2, Lio/realm/com_lostpixels_fieldservice_internal_ministry_VisitRealmProxy$VisitColumnInfo;->phoneNumberColKey:J

    .line 118
    iget-wide v0, p1, Lio/realm/com_lostpixels_fieldservice_internal_ministry_VisitRealmProxy$VisitColumnInfo;->cellNumberColKey:J

    iput-wide v0, p2, Lio/realm/com_lostpixels_fieldservice_internal_ministry_VisitRealmProxy$VisitColumnInfo;->cellNumberColKey:J

    .line 119
    iget-wide v0, p1, Lio/realm/com_lostpixels_fieldservice_internal_ministry_VisitRealmProxy$VisitColumnInfo;->visitTypeListColKey:J

    iput-wide v0, p2, Lio/realm/com_lostpixels_fieldservice_internal_ministry_VisitRealmProxy$VisitColumnInfo;->visitTypeListColKey:J

    return-void
.end method
