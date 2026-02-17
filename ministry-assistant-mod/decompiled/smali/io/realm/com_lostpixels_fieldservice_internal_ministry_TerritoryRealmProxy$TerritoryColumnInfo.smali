.class final Lio/realm/com_lostpixels_fieldservice_internal_ministry_TerritoryRealmProxy$TerritoryColumnInfo;
.super Lio/realm/internal/ColumnInfo;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lio/realm/com_lostpixels_fieldservice_internal_ministry_TerritoryRealmProxy;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = "TerritoryColumnInfo"
.end annotation


# instance fields
.field cityColKey:J

.field dateCreatedColKey:J

.field disableOldTerrMsgColKey:J

.field idColKey:J

.field isHiddenColKey:J

.field isReturnedColKey:J

.field lastUpdatedColKey:J

.field nameColKey:J

.field noteColKey:J

.field oldTerritoryDlgDisplayedColKey:J

.field regionColKey:J

.field shouldSortColKey:J

.field streetsColKey:J

.field territoryBorderColKey:J

.field territoryCardPathColKey:J

.field urlToTerritoryColKey:J


# direct methods
.method constructor <init>(Lio/realm/internal/OsSchemaInfo;)V
    .locals 2

    const/16 v0, 0x10

    .line 64
    invoke-direct {p0, v0}, Lio/realm/internal/ColumnInfo;-><init>(I)V

    .line 65
    const-string v0, "Territory"

    invoke-virtual {p1, v0}, Lio/realm/internal/OsSchemaInfo;->getObjectSchemaInfo(Ljava/lang/String;)Lio/realm/internal/OsObjectSchemaInfo;

    move-result-object p1

    .line 66
    const-string v0, "name"

    invoke-virtual {p0, v0, v0, p1}, Lio/realm/internal/ColumnInfo;->addColumnDetails(Ljava/lang/String;Ljava/lang/String;Lio/realm/internal/OsObjectSchemaInfo;)J

    move-result-wide v0

    iput-wide v0, p0, Lio/realm/com_lostpixels_fieldservice_internal_ministry_TerritoryRealmProxy$TerritoryColumnInfo;->nameColKey:J

    .line 67
    const-string v0, "region"

    invoke-virtual {p0, v0, v0, p1}, Lio/realm/internal/ColumnInfo;->addColumnDetails(Ljava/lang/String;Ljava/lang/String;Lio/realm/internal/OsObjectSchemaInfo;)J

    move-result-wide v0

    iput-wide v0, p0, Lio/realm/com_lostpixels_fieldservice_internal_ministry_TerritoryRealmProxy$TerritoryColumnInfo;->regionColKey:J

    .line 68
    const-string v0, "city"

    invoke-virtual {p0, v0, v0, p1}, Lio/realm/internal/ColumnInfo;->addColumnDetails(Ljava/lang/String;Ljava/lang/String;Lio/realm/internal/OsObjectSchemaInfo;)J

    move-result-wide v0

    iput-wide v0, p0, Lio/realm/com_lostpixels_fieldservice_internal_ministry_TerritoryRealmProxy$TerritoryColumnInfo;->cityColKey:J

    .line 69
    const-string v0, "territoryCardPath"

    invoke-virtual {p0, v0, v0, p1}, Lio/realm/internal/ColumnInfo;->addColumnDetails(Ljava/lang/String;Ljava/lang/String;Lio/realm/internal/OsObjectSchemaInfo;)J

    move-result-wide v0

    iput-wide v0, p0, Lio/realm/com_lostpixels_fieldservice_internal_ministry_TerritoryRealmProxy$TerritoryColumnInfo;->territoryCardPathColKey:J

    .line 70
    const-string v0, "dateCreated"

    invoke-virtual {p0, v0, v0, p1}, Lio/realm/internal/ColumnInfo;->addColumnDetails(Ljava/lang/String;Ljava/lang/String;Lio/realm/internal/OsObjectSchemaInfo;)J

    move-result-wide v0

    iput-wide v0, p0, Lio/realm/com_lostpixels_fieldservice_internal_ministry_TerritoryRealmProxy$TerritoryColumnInfo;->dateCreatedColKey:J

    .line 71
    const-string v0, "lastUpdated"

    invoke-virtual {p0, v0, v0, p1}, Lio/realm/internal/ColumnInfo;->addColumnDetails(Ljava/lang/String;Ljava/lang/String;Lio/realm/internal/OsObjectSchemaInfo;)J

    move-result-wide v0

    iput-wide v0, p0, Lio/realm/com_lostpixels_fieldservice_internal_ministry_TerritoryRealmProxy$TerritoryColumnInfo;->lastUpdatedColKey:J

    .line 72
    const-string v0, "shouldSort"

    invoke-virtual {p0, v0, v0, p1}, Lio/realm/internal/ColumnInfo;->addColumnDetails(Ljava/lang/String;Ljava/lang/String;Lio/realm/internal/OsObjectSchemaInfo;)J

    move-result-wide v0

    iput-wide v0, p0, Lio/realm/com_lostpixels_fieldservice_internal_ministry_TerritoryRealmProxy$TerritoryColumnInfo;->shouldSortColKey:J

    .line 73
    const-string v0, "streets"

    invoke-virtual {p0, v0, v0, p1}, Lio/realm/internal/ColumnInfo;->addColumnDetails(Ljava/lang/String;Ljava/lang/String;Lio/realm/internal/OsObjectSchemaInfo;)J

    move-result-wide v0

    iput-wide v0, p0, Lio/realm/com_lostpixels_fieldservice_internal_ministry_TerritoryRealmProxy$TerritoryColumnInfo;->streetsColKey:J

    .line 74
    const-string v0, "id"

    invoke-virtual {p0, v0, v0, p1}, Lio/realm/internal/ColumnInfo;->addColumnDetails(Ljava/lang/String;Ljava/lang/String;Lio/realm/internal/OsObjectSchemaInfo;)J

    move-result-wide v0

    iput-wide v0, p0, Lio/realm/com_lostpixels_fieldservice_internal_ministry_TerritoryRealmProxy$TerritoryColumnInfo;->idColKey:J

    .line 75
    const-string v0, "disableOldTerrMsg"

    invoke-virtual {p0, v0, v0, p1}, Lio/realm/internal/ColumnInfo;->addColumnDetails(Ljava/lang/String;Ljava/lang/String;Lio/realm/internal/OsObjectSchemaInfo;)J

    move-result-wide v0

    iput-wide v0, p0, Lio/realm/com_lostpixels_fieldservice_internal_ministry_TerritoryRealmProxy$TerritoryColumnInfo;->disableOldTerrMsgColKey:J

    .line 76
    const-string v0, "oldTerritoryDlgDisplayed"

    invoke-virtual {p0, v0, v0, p1}, Lio/realm/internal/ColumnInfo;->addColumnDetails(Ljava/lang/String;Ljava/lang/String;Lio/realm/internal/OsObjectSchemaInfo;)J

    move-result-wide v0

    iput-wide v0, p0, Lio/realm/com_lostpixels_fieldservice_internal_ministry_TerritoryRealmProxy$TerritoryColumnInfo;->oldTerritoryDlgDisplayedColKey:J

    .line 77
    const-string v0, "isHidden"

    invoke-virtual {p0, v0, v0, p1}, Lio/realm/internal/ColumnInfo;->addColumnDetails(Ljava/lang/String;Ljava/lang/String;Lio/realm/internal/OsObjectSchemaInfo;)J

    move-result-wide v0

    iput-wide v0, p0, Lio/realm/com_lostpixels_fieldservice_internal_ministry_TerritoryRealmProxy$TerritoryColumnInfo;->isHiddenColKey:J

    .line 78
    const-string v0, "isReturned"

    invoke-virtual {p0, v0, v0, p1}, Lio/realm/internal/ColumnInfo;->addColumnDetails(Ljava/lang/String;Ljava/lang/String;Lio/realm/internal/OsObjectSchemaInfo;)J

    move-result-wide v0

    iput-wide v0, p0, Lio/realm/com_lostpixels_fieldservice_internal_ministry_TerritoryRealmProxy$TerritoryColumnInfo;->isReturnedColKey:J

    .line 79
    const-string v0, "note"

    invoke-virtual {p0, v0, v0, p1}, Lio/realm/internal/ColumnInfo;->addColumnDetails(Ljava/lang/String;Ljava/lang/String;Lio/realm/internal/OsObjectSchemaInfo;)J

    move-result-wide v0

    iput-wide v0, p0, Lio/realm/com_lostpixels_fieldservice_internal_ministry_TerritoryRealmProxy$TerritoryColumnInfo;->noteColKey:J

    .line 80
    const-string v0, "territoryBorder"

    invoke-virtual {p0, v0, v0, p1}, Lio/realm/internal/ColumnInfo;->addColumnDetails(Ljava/lang/String;Ljava/lang/String;Lio/realm/internal/OsObjectSchemaInfo;)J

    move-result-wide v0

    iput-wide v0, p0, Lio/realm/com_lostpixels_fieldservice_internal_ministry_TerritoryRealmProxy$TerritoryColumnInfo;->territoryBorderColKey:J

    .line 81
    const-string v0, "urlToTerritory"

    invoke-virtual {p0, v0, v0, p1}, Lio/realm/internal/ColumnInfo;->addColumnDetails(Ljava/lang/String;Ljava/lang/String;Lio/realm/internal/OsObjectSchemaInfo;)J

    move-result-wide v0

    iput-wide v0, p0, Lio/realm/com_lostpixels_fieldservice_internal_ministry_TerritoryRealmProxy$TerritoryColumnInfo;->urlToTerritoryColKey:J

    return-void
.end method


# virtual methods
.method protected final copy(Lio/realm/internal/ColumnInfo;Lio/realm/internal/ColumnInfo;)V
    .locals 2

    .line 96
    check-cast p1, Lio/realm/com_lostpixels_fieldservice_internal_ministry_TerritoryRealmProxy$TerritoryColumnInfo;

    .line 97
    check-cast p2, Lio/realm/com_lostpixels_fieldservice_internal_ministry_TerritoryRealmProxy$TerritoryColumnInfo;

    .line 98
    iget-wide v0, p1, Lio/realm/com_lostpixels_fieldservice_internal_ministry_TerritoryRealmProxy$TerritoryColumnInfo;->nameColKey:J

    iput-wide v0, p2, Lio/realm/com_lostpixels_fieldservice_internal_ministry_TerritoryRealmProxy$TerritoryColumnInfo;->nameColKey:J

    .line 99
    iget-wide v0, p1, Lio/realm/com_lostpixels_fieldservice_internal_ministry_TerritoryRealmProxy$TerritoryColumnInfo;->regionColKey:J

    iput-wide v0, p2, Lio/realm/com_lostpixels_fieldservice_internal_ministry_TerritoryRealmProxy$TerritoryColumnInfo;->regionColKey:J

    .line 100
    iget-wide v0, p1, Lio/realm/com_lostpixels_fieldservice_internal_ministry_TerritoryRealmProxy$TerritoryColumnInfo;->cityColKey:J

    iput-wide v0, p2, Lio/realm/com_lostpixels_fieldservice_internal_ministry_TerritoryRealmProxy$TerritoryColumnInfo;->cityColKey:J

    .line 101
    iget-wide v0, p1, Lio/realm/com_lostpixels_fieldservice_internal_ministry_TerritoryRealmProxy$TerritoryColumnInfo;->territoryCardPathColKey:J

    iput-wide v0, p2, Lio/realm/com_lostpixels_fieldservice_internal_ministry_TerritoryRealmProxy$TerritoryColumnInfo;->territoryCardPathColKey:J

    .line 102
    iget-wide v0, p1, Lio/realm/com_lostpixels_fieldservice_internal_ministry_TerritoryRealmProxy$TerritoryColumnInfo;->dateCreatedColKey:J

    iput-wide v0, p2, Lio/realm/com_lostpixels_fieldservice_internal_ministry_TerritoryRealmProxy$TerritoryColumnInfo;->dateCreatedColKey:J

    .line 103
    iget-wide v0, p1, Lio/realm/com_lostpixels_fieldservice_internal_ministry_TerritoryRealmProxy$TerritoryColumnInfo;->lastUpdatedColKey:J

    iput-wide v0, p2, Lio/realm/com_lostpixels_fieldservice_internal_ministry_TerritoryRealmProxy$TerritoryColumnInfo;->lastUpdatedColKey:J

    .line 104
    iget-wide v0, p1, Lio/realm/com_lostpixels_fieldservice_internal_ministry_TerritoryRealmProxy$TerritoryColumnInfo;->shouldSortColKey:J

    iput-wide v0, p2, Lio/realm/com_lostpixels_fieldservice_internal_ministry_TerritoryRealmProxy$TerritoryColumnInfo;->shouldSortColKey:J

    .line 105
    iget-wide v0, p1, Lio/realm/com_lostpixels_fieldservice_internal_ministry_TerritoryRealmProxy$TerritoryColumnInfo;->streetsColKey:J

    iput-wide v0, p2, Lio/realm/com_lostpixels_fieldservice_internal_ministry_TerritoryRealmProxy$TerritoryColumnInfo;->streetsColKey:J

    .line 106
    iget-wide v0, p1, Lio/realm/com_lostpixels_fieldservice_internal_ministry_TerritoryRealmProxy$TerritoryColumnInfo;->idColKey:J

    iput-wide v0, p2, Lio/realm/com_lostpixels_fieldservice_internal_ministry_TerritoryRealmProxy$TerritoryColumnInfo;->idColKey:J

    .line 107
    iget-wide v0, p1, Lio/realm/com_lostpixels_fieldservice_internal_ministry_TerritoryRealmProxy$TerritoryColumnInfo;->disableOldTerrMsgColKey:J

    iput-wide v0, p2, Lio/realm/com_lostpixels_fieldservice_internal_ministry_TerritoryRealmProxy$TerritoryColumnInfo;->disableOldTerrMsgColKey:J

    .line 108
    iget-wide v0, p1, Lio/realm/com_lostpixels_fieldservice_internal_ministry_TerritoryRealmProxy$TerritoryColumnInfo;->oldTerritoryDlgDisplayedColKey:J

    iput-wide v0, p2, Lio/realm/com_lostpixels_fieldservice_internal_ministry_TerritoryRealmProxy$TerritoryColumnInfo;->oldTerritoryDlgDisplayedColKey:J

    .line 109
    iget-wide v0, p1, Lio/realm/com_lostpixels_fieldservice_internal_ministry_TerritoryRealmProxy$TerritoryColumnInfo;->isHiddenColKey:J

    iput-wide v0, p2, Lio/realm/com_lostpixels_fieldservice_internal_ministry_TerritoryRealmProxy$TerritoryColumnInfo;->isHiddenColKey:J

    .line 110
    iget-wide v0, p1, Lio/realm/com_lostpixels_fieldservice_internal_ministry_TerritoryRealmProxy$TerritoryColumnInfo;->isReturnedColKey:J

    iput-wide v0, p2, Lio/realm/com_lostpixels_fieldservice_internal_ministry_TerritoryRealmProxy$TerritoryColumnInfo;->isReturnedColKey:J

    .line 111
    iget-wide v0, p1, Lio/realm/com_lostpixels_fieldservice_internal_ministry_TerritoryRealmProxy$TerritoryColumnInfo;->noteColKey:J

    iput-wide v0, p2, Lio/realm/com_lostpixels_fieldservice_internal_ministry_TerritoryRealmProxy$TerritoryColumnInfo;->noteColKey:J

    .line 112
    iget-wide v0, p1, Lio/realm/com_lostpixels_fieldservice_internal_ministry_TerritoryRealmProxy$TerritoryColumnInfo;->territoryBorderColKey:J

    iput-wide v0, p2, Lio/realm/com_lostpixels_fieldservice_internal_ministry_TerritoryRealmProxy$TerritoryColumnInfo;->territoryBorderColKey:J

    .line 113
    iget-wide v0, p1, Lio/realm/com_lostpixels_fieldservice_internal_ministry_TerritoryRealmProxy$TerritoryColumnInfo;->urlToTerritoryColKey:J

    iput-wide v0, p2, Lio/realm/com_lostpixels_fieldservice_internal_ministry_TerritoryRealmProxy$TerritoryColumnInfo;->urlToTerritoryColKey:J

    return-void
.end method
