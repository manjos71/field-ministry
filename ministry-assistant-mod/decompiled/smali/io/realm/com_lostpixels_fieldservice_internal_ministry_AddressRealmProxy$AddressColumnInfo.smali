.class final Lio/realm/com_lostpixels_fieldservice_internal_ministry_AddressRealmProxy$AddressColumnInfo;
.super Lio/realm/internal/ColumnInfo;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lio/realm/com_lostpixels_fieldservice_internal_ministry_AddressRealmProxy;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = "AddressColumnInfo"
.end annotation


# instance fields
.field addressTypeColKey:J

.field dateColKey:J

.field idColKey:J

.field nameColKey:J

.field visitsListColKey:J


# direct methods
.method constructor <init>(Lio/realm/internal/OsSchemaInfo;)V
    .locals 2

    const/4 v0, 0x5

    .line 53
    invoke-direct {p0, v0}, Lio/realm/internal/ColumnInfo;-><init>(I)V

    .line 54
    const-string v0, "Address"

    invoke-virtual {p1, v0}, Lio/realm/internal/OsSchemaInfo;->getObjectSchemaInfo(Ljava/lang/String;)Lio/realm/internal/OsObjectSchemaInfo;

    move-result-object p1

    .line 55
    const-string v0, "visitsList"

    invoke-virtual {p0, v0, v0, p1}, Lio/realm/internal/ColumnInfo;->addColumnDetails(Ljava/lang/String;Ljava/lang/String;Lio/realm/internal/OsObjectSchemaInfo;)J

    move-result-wide v0

    iput-wide v0, p0, Lio/realm/com_lostpixels_fieldservice_internal_ministry_AddressRealmProxy$AddressColumnInfo;->visitsListColKey:J

    .line 56
    const-string v0, "name"

    invoke-virtual {p0, v0, v0, p1}, Lio/realm/internal/ColumnInfo;->addColumnDetails(Ljava/lang/String;Ljava/lang/String;Lio/realm/internal/OsObjectSchemaInfo;)J

    move-result-wide v0

    iput-wide v0, p0, Lio/realm/com_lostpixels_fieldservice_internal_ministry_AddressRealmProxy$AddressColumnInfo;->nameColKey:J

    .line 57
    const-string v0, "date"

    invoke-virtual {p0, v0, v0, p1}, Lio/realm/internal/ColumnInfo;->addColumnDetails(Ljava/lang/String;Ljava/lang/String;Lio/realm/internal/OsObjectSchemaInfo;)J

    move-result-wide v0

    iput-wide v0, p0, Lio/realm/com_lostpixels_fieldservice_internal_ministry_AddressRealmProxy$AddressColumnInfo;->dateColKey:J

    .line 58
    const-string v0, "id"

    invoke-virtual {p0, v0, v0, p1}, Lio/realm/internal/ColumnInfo;->addColumnDetails(Ljava/lang/String;Ljava/lang/String;Lio/realm/internal/OsObjectSchemaInfo;)J

    move-result-wide v0

    iput-wide v0, p0, Lio/realm/com_lostpixels_fieldservice_internal_ministry_AddressRealmProxy$AddressColumnInfo;->idColKey:J

    .line 59
    const-string v0, "addressType"

    invoke-virtual {p0, v0, v0, p1}, Lio/realm/internal/ColumnInfo;->addColumnDetails(Ljava/lang/String;Ljava/lang/String;Lio/realm/internal/OsObjectSchemaInfo;)J

    move-result-wide v0

    iput-wide v0, p0, Lio/realm/com_lostpixels_fieldservice_internal_ministry_AddressRealmProxy$AddressColumnInfo;->addressTypeColKey:J

    return-void
.end method


# virtual methods
.method protected final copy(Lio/realm/internal/ColumnInfo;Lio/realm/internal/ColumnInfo;)V
    .locals 2

    .line 74
    check-cast p1, Lio/realm/com_lostpixels_fieldservice_internal_ministry_AddressRealmProxy$AddressColumnInfo;

    .line 75
    check-cast p2, Lio/realm/com_lostpixels_fieldservice_internal_ministry_AddressRealmProxy$AddressColumnInfo;

    .line 76
    iget-wide v0, p1, Lio/realm/com_lostpixels_fieldservice_internal_ministry_AddressRealmProxy$AddressColumnInfo;->visitsListColKey:J

    iput-wide v0, p2, Lio/realm/com_lostpixels_fieldservice_internal_ministry_AddressRealmProxy$AddressColumnInfo;->visitsListColKey:J

    .line 77
    iget-wide v0, p1, Lio/realm/com_lostpixels_fieldservice_internal_ministry_AddressRealmProxy$AddressColumnInfo;->nameColKey:J

    iput-wide v0, p2, Lio/realm/com_lostpixels_fieldservice_internal_ministry_AddressRealmProxy$AddressColumnInfo;->nameColKey:J

    .line 78
    iget-wide v0, p1, Lio/realm/com_lostpixels_fieldservice_internal_ministry_AddressRealmProxy$AddressColumnInfo;->dateColKey:J

    iput-wide v0, p2, Lio/realm/com_lostpixels_fieldservice_internal_ministry_AddressRealmProxy$AddressColumnInfo;->dateColKey:J

    .line 79
    iget-wide v0, p1, Lio/realm/com_lostpixels_fieldservice_internal_ministry_AddressRealmProxy$AddressColumnInfo;->idColKey:J

    iput-wide v0, p2, Lio/realm/com_lostpixels_fieldservice_internal_ministry_AddressRealmProxy$AddressColumnInfo;->idColKey:J

    .line 80
    iget-wide v0, p1, Lio/realm/com_lostpixels_fieldservice_internal_ministry_AddressRealmProxy$AddressColumnInfo;->addressTypeColKey:J

    iput-wide v0, p2, Lio/realm/com_lostpixels_fieldservice_internal_ministry_AddressRealmProxy$AddressColumnInfo;->addressTypeColKey:J

    return-void
.end method
