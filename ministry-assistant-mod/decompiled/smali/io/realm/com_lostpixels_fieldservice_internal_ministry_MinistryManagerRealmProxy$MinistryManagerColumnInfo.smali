.class final Lio/realm/com_lostpixels_fieldservice_internal_ministry_MinistryManagerRealmProxy$MinistryManagerColumnInfo;
.super Lio/realm/internal/ColumnInfo;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lio/realm/com_lostpixels_fieldservice_internal_ministry_MinistryManagerRealmProxy;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = "MinistryManagerColumnInfo"
.end annotation


# instance fields
.field citiesColKey:J

.field idColKey:J

.field mCitiesDateColKey:J

.field mScripturesDateColKey:J

.field mSuburbDateColKey:J

.field scripturesColKey:J

.field suburbsColKey:J


# direct methods
.method constructor <init>(Lio/realm/internal/OsSchemaInfo;)V
    .locals 2

    const/4 v0, 0x7

    .line 55
    invoke-direct {p0, v0}, Lio/realm/internal/ColumnInfo;-><init>(I)V

    .line 56
    const-string v0, "MinistryManager"

    invoke-virtual {p1, v0}, Lio/realm/internal/OsSchemaInfo;->getObjectSchemaInfo(Ljava/lang/String;)Lio/realm/internal/OsObjectSchemaInfo;

    move-result-object p1

    .line 57
    const-string v0, "suburbs"

    invoke-virtual {p0, v0, v0, p1}, Lio/realm/internal/ColumnInfo;->addColumnDetails(Ljava/lang/String;Ljava/lang/String;Lio/realm/internal/OsObjectSchemaInfo;)J

    move-result-wide v0

    iput-wide v0, p0, Lio/realm/com_lostpixels_fieldservice_internal_ministry_MinistryManagerRealmProxy$MinistryManagerColumnInfo;->suburbsColKey:J

    .line 58
    const-string v0, "cities"

    invoke-virtual {p0, v0, v0, p1}, Lio/realm/internal/ColumnInfo;->addColumnDetails(Ljava/lang/String;Ljava/lang/String;Lio/realm/internal/OsObjectSchemaInfo;)J

    move-result-wide v0

    iput-wide v0, p0, Lio/realm/com_lostpixels_fieldservice_internal_ministry_MinistryManagerRealmProxy$MinistryManagerColumnInfo;->citiesColKey:J

    .line 59
    const-string v0, "scriptures"

    invoke-virtual {p0, v0, v0, p1}, Lio/realm/internal/ColumnInfo;->addColumnDetails(Ljava/lang/String;Ljava/lang/String;Lio/realm/internal/OsObjectSchemaInfo;)J

    move-result-wide v0

    iput-wide v0, p0, Lio/realm/com_lostpixels_fieldservice_internal_ministry_MinistryManagerRealmProxy$MinistryManagerColumnInfo;->scripturesColKey:J

    .line 60
    const-string v0, "id"

    invoke-virtual {p0, v0, v0, p1}, Lio/realm/internal/ColumnInfo;->addColumnDetails(Ljava/lang/String;Ljava/lang/String;Lio/realm/internal/OsObjectSchemaInfo;)J

    move-result-wide v0

    iput-wide v0, p0, Lio/realm/com_lostpixels_fieldservice_internal_ministry_MinistryManagerRealmProxy$MinistryManagerColumnInfo;->idColKey:J

    .line 61
    const-string v0, "mSuburbDate"

    invoke-virtual {p0, v0, v0, p1}, Lio/realm/internal/ColumnInfo;->addColumnDetails(Ljava/lang/String;Ljava/lang/String;Lio/realm/internal/OsObjectSchemaInfo;)J

    move-result-wide v0

    iput-wide v0, p0, Lio/realm/com_lostpixels_fieldservice_internal_ministry_MinistryManagerRealmProxy$MinistryManagerColumnInfo;->mSuburbDateColKey:J

    .line 62
    const-string v0, "mCitiesDate"

    invoke-virtual {p0, v0, v0, p1}, Lio/realm/internal/ColumnInfo;->addColumnDetails(Ljava/lang/String;Ljava/lang/String;Lio/realm/internal/OsObjectSchemaInfo;)J

    move-result-wide v0

    iput-wide v0, p0, Lio/realm/com_lostpixels_fieldservice_internal_ministry_MinistryManagerRealmProxy$MinistryManagerColumnInfo;->mCitiesDateColKey:J

    .line 63
    const-string v0, "mScripturesDate"

    invoke-virtual {p0, v0, v0, p1}, Lio/realm/internal/ColumnInfo;->addColumnDetails(Ljava/lang/String;Ljava/lang/String;Lio/realm/internal/OsObjectSchemaInfo;)J

    move-result-wide v0

    iput-wide v0, p0, Lio/realm/com_lostpixels_fieldservice_internal_ministry_MinistryManagerRealmProxy$MinistryManagerColumnInfo;->mScripturesDateColKey:J

    return-void
.end method


# virtual methods
.method protected final copy(Lio/realm/internal/ColumnInfo;Lio/realm/internal/ColumnInfo;)V
    .locals 2

    .line 78
    check-cast p1, Lio/realm/com_lostpixels_fieldservice_internal_ministry_MinistryManagerRealmProxy$MinistryManagerColumnInfo;

    .line 79
    check-cast p2, Lio/realm/com_lostpixels_fieldservice_internal_ministry_MinistryManagerRealmProxy$MinistryManagerColumnInfo;

    .line 80
    iget-wide v0, p1, Lio/realm/com_lostpixels_fieldservice_internal_ministry_MinistryManagerRealmProxy$MinistryManagerColumnInfo;->suburbsColKey:J

    iput-wide v0, p2, Lio/realm/com_lostpixels_fieldservice_internal_ministry_MinistryManagerRealmProxy$MinistryManagerColumnInfo;->suburbsColKey:J

    .line 81
    iget-wide v0, p1, Lio/realm/com_lostpixels_fieldservice_internal_ministry_MinistryManagerRealmProxy$MinistryManagerColumnInfo;->citiesColKey:J

    iput-wide v0, p2, Lio/realm/com_lostpixels_fieldservice_internal_ministry_MinistryManagerRealmProxy$MinistryManagerColumnInfo;->citiesColKey:J

    .line 82
    iget-wide v0, p1, Lio/realm/com_lostpixels_fieldservice_internal_ministry_MinistryManagerRealmProxy$MinistryManagerColumnInfo;->scripturesColKey:J

    iput-wide v0, p2, Lio/realm/com_lostpixels_fieldservice_internal_ministry_MinistryManagerRealmProxy$MinistryManagerColumnInfo;->scripturesColKey:J

    .line 83
    iget-wide v0, p1, Lio/realm/com_lostpixels_fieldservice_internal_ministry_MinistryManagerRealmProxy$MinistryManagerColumnInfo;->idColKey:J

    iput-wide v0, p2, Lio/realm/com_lostpixels_fieldservice_internal_ministry_MinistryManagerRealmProxy$MinistryManagerColumnInfo;->idColKey:J

    .line 84
    iget-wide v0, p1, Lio/realm/com_lostpixels_fieldservice_internal_ministry_MinistryManagerRealmProxy$MinistryManagerColumnInfo;->mSuburbDateColKey:J

    iput-wide v0, p2, Lio/realm/com_lostpixels_fieldservice_internal_ministry_MinistryManagerRealmProxy$MinistryManagerColumnInfo;->mSuburbDateColKey:J

    .line 85
    iget-wide v0, p1, Lio/realm/com_lostpixels_fieldservice_internal_ministry_MinistryManagerRealmProxy$MinistryManagerColumnInfo;->mCitiesDateColKey:J

    iput-wide v0, p2, Lio/realm/com_lostpixels_fieldservice_internal_ministry_MinistryManagerRealmProxy$MinistryManagerColumnInfo;->mCitiesDateColKey:J

    .line 86
    iget-wide v0, p1, Lio/realm/com_lostpixels_fieldservice_internal_ministry_MinistryManagerRealmProxy$MinistryManagerColumnInfo;->mScripturesDateColKey:J

    iput-wide v0, p2, Lio/realm/com_lostpixels_fieldservice_internal_ministry_MinistryManagerRealmProxy$MinistryManagerColumnInfo;->mScripturesDateColKey:J

    return-void
.end method
