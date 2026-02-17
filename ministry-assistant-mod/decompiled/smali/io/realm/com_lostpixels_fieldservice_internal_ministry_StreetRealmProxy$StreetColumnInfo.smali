.class final Lio/realm/com_lostpixels_fieldservice_internal_ministry_StreetRealmProxy$StreetColumnInfo;
.super Lio/realm/internal/ColumnInfo;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lio/realm/com_lostpixels_fieldservice_internal_ministry_StreetRealmProxy;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = "StreetColumnInfo"
.end annotation


# instance fields
.field addressesColKey:J

.field dateColKey:J

.field eShowAddressColKey:J

.field idColKey:J

.field isAreaColKey:J

.field nameColKey:J


# direct methods
.method constructor <init>(Lio/realm/internal/OsSchemaInfo;)V
    .locals 2

    const/4 v0, 0x6

    .line 54
    invoke-direct {p0, v0}, Lio/realm/internal/ColumnInfo;-><init>(I)V

    .line 55
    const-string v0, "Street"

    invoke-virtual {p1, v0}, Lio/realm/internal/OsSchemaInfo;->getObjectSchemaInfo(Ljava/lang/String;)Lio/realm/internal/OsObjectSchemaInfo;

    move-result-object p1

    .line 56
    const-string v0, "name"

    invoke-virtual {p0, v0, v0, p1}, Lio/realm/internal/ColumnInfo;->addColumnDetails(Ljava/lang/String;Ljava/lang/String;Lio/realm/internal/OsObjectSchemaInfo;)J

    move-result-wide v0

    iput-wide v0, p0, Lio/realm/com_lostpixels_fieldservice_internal_ministry_StreetRealmProxy$StreetColumnInfo;->nameColKey:J

    .line 57
    const-string v0, "isArea"

    invoke-virtual {p0, v0, v0, p1}, Lio/realm/internal/ColumnInfo;->addColumnDetails(Ljava/lang/String;Ljava/lang/String;Lio/realm/internal/OsObjectSchemaInfo;)J

    move-result-wide v0

    iput-wide v0, p0, Lio/realm/com_lostpixels_fieldservice_internal_ministry_StreetRealmProxy$StreetColumnInfo;->isAreaColKey:J

    .line 58
    const-string v0, "addresses"

    invoke-virtual {p0, v0, v0, p1}, Lio/realm/internal/ColumnInfo;->addColumnDetails(Ljava/lang/String;Ljava/lang/String;Lio/realm/internal/OsObjectSchemaInfo;)J

    move-result-wide v0

    iput-wide v0, p0, Lio/realm/com_lostpixels_fieldservice_internal_ministry_StreetRealmProxy$StreetColumnInfo;->addressesColKey:J

    .line 59
    const-string v0, "id"

    invoke-virtual {p0, v0, v0, p1}, Lio/realm/internal/ColumnInfo;->addColumnDetails(Ljava/lang/String;Ljava/lang/String;Lio/realm/internal/OsObjectSchemaInfo;)J

    move-result-wide v0

    iput-wide v0, p0, Lio/realm/com_lostpixels_fieldservice_internal_ministry_StreetRealmProxy$StreetColumnInfo;->idColKey:J

    .line 60
    const-string v0, "date"

    invoke-virtual {p0, v0, v0, p1}, Lio/realm/internal/ColumnInfo;->addColumnDetails(Ljava/lang/String;Ljava/lang/String;Lio/realm/internal/OsObjectSchemaInfo;)J

    move-result-wide v0

    iput-wide v0, p0, Lio/realm/com_lostpixels_fieldservice_internal_ministry_StreetRealmProxy$StreetColumnInfo;->dateColKey:J

    .line 61
    const-string v0, "eShowAddress"

    invoke-virtual {p0, v0, v0, p1}, Lio/realm/internal/ColumnInfo;->addColumnDetails(Ljava/lang/String;Ljava/lang/String;Lio/realm/internal/OsObjectSchemaInfo;)J

    move-result-wide v0

    iput-wide v0, p0, Lio/realm/com_lostpixels_fieldservice_internal_ministry_StreetRealmProxy$StreetColumnInfo;->eShowAddressColKey:J

    return-void
.end method


# virtual methods
.method protected final copy(Lio/realm/internal/ColumnInfo;Lio/realm/internal/ColumnInfo;)V
    .locals 2

    .line 76
    check-cast p1, Lio/realm/com_lostpixels_fieldservice_internal_ministry_StreetRealmProxy$StreetColumnInfo;

    .line 77
    check-cast p2, Lio/realm/com_lostpixels_fieldservice_internal_ministry_StreetRealmProxy$StreetColumnInfo;

    .line 78
    iget-wide v0, p1, Lio/realm/com_lostpixels_fieldservice_internal_ministry_StreetRealmProxy$StreetColumnInfo;->nameColKey:J

    iput-wide v0, p2, Lio/realm/com_lostpixels_fieldservice_internal_ministry_StreetRealmProxy$StreetColumnInfo;->nameColKey:J

    .line 79
    iget-wide v0, p1, Lio/realm/com_lostpixels_fieldservice_internal_ministry_StreetRealmProxy$StreetColumnInfo;->isAreaColKey:J

    iput-wide v0, p2, Lio/realm/com_lostpixels_fieldservice_internal_ministry_StreetRealmProxy$StreetColumnInfo;->isAreaColKey:J

    .line 80
    iget-wide v0, p1, Lio/realm/com_lostpixels_fieldservice_internal_ministry_StreetRealmProxy$StreetColumnInfo;->addressesColKey:J

    iput-wide v0, p2, Lio/realm/com_lostpixels_fieldservice_internal_ministry_StreetRealmProxy$StreetColumnInfo;->addressesColKey:J

    .line 81
    iget-wide v0, p1, Lio/realm/com_lostpixels_fieldservice_internal_ministry_StreetRealmProxy$StreetColumnInfo;->idColKey:J

    iput-wide v0, p2, Lio/realm/com_lostpixels_fieldservice_internal_ministry_StreetRealmProxy$StreetColumnInfo;->idColKey:J

    .line 82
    iget-wide v0, p1, Lio/realm/com_lostpixels_fieldservice_internal_ministry_StreetRealmProxy$StreetColumnInfo;->dateColKey:J

    iput-wide v0, p2, Lio/realm/com_lostpixels_fieldservice_internal_ministry_StreetRealmProxy$StreetColumnInfo;->dateColKey:J

    .line 83
    iget-wide v0, p1, Lio/realm/com_lostpixels_fieldservice_internal_ministry_StreetRealmProxy$StreetColumnInfo;->eShowAddressColKey:J

    iput-wide v0, p2, Lio/realm/com_lostpixels_fieldservice_internal_ministry_StreetRealmProxy$StreetColumnInfo;->eShowAddressColKey:J

    return-void
.end method
