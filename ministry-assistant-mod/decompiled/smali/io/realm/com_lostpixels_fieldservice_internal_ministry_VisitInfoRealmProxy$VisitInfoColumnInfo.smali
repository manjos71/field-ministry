.class final Lio/realm/com_lostpixels_fieldservice_internal_ministry_VisitInfoRealmProxy$VisitInfoColumnInfo;
.super Lio/realm/internal/ColumnInfo;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lio/realm/com_lostpixels_fieldservice_internal_ministry_VisitInfoRealmProxy;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = "VisitInfoColumnInfo"
.end annotation


# instance fields
.field ageColKey:J

.field countStudyColKey:J

.field infoColKey:J

.field moviesColKey:J

.field nextTimeColKey:J

.field publicationsColKey:J

.field scripturesColKey:J

.field typeColKey:J

.field visitDateColKey:J

.field visitTypeColKey:J


# direct methods
.method constructor <init>(Lio/realm/internal/OsSchemaInfo;)V
    .locals 2

    const/16 v0, 0xa

    .line 58
    invoke-direct {p0, v0}, Lio/realm/internal/ColumnInfo;-><init>(I)V

    .line 59
    const-string v0, "VisitInfo"

    invoke-virtual {p1, v0}, Lio/realm/internal/OsSchemaInfo;->getObjectSchemaInfo(Ljava/lang/String;)Lio/realm/internal/OsObjectSchemaInfo;

    move-result-object p1

    .line 60
    const-string v0, "info"

    invoke-virtual {p0, v0, v0, p1}, Lio/realm/internal/ColumnInfo;->addColumnDetails(Ljava/lang/String;Ljava/lang/String;Lio/realm/internal/OsObjectSchemaInfo;)J

    move-result-wide v0

    iput-wide v0, p0, Lio/realm/com_lostpixels_fieldservice_internal_ministry_VisitInfoRealmProxy$VisitInfoColumnInfo;->infoColKey:J

    .line 61
    const-string v0, "visitDate"

    invoke-virtual {p0, v0, v0, p1}, Lio/realm/internal/ColumnInfo;->addColumnDetails(Ljava/lang/String;Ljava/lang/String;Lio/realm/internal/OsObjectSchemaInfo;)J

    move-result-wide v0

    iput-wide v0, p0, Lio/realm/com_lostpixels_fieldservice_internal_ministry_VisitInfoRealmProxy$VisitInfoColumnInfo;->visitDateColKey:J

    .line 62
    const-string v0, "scriptures"

    invoke-virtual {p0, v0, v0, p1}, Lio/realm/internal/ColumnInfo;->addColumnDetails(Ljava/lang/String;Ljava/lang/String;Lio/realm/internal/OsObjectSchemaInfo;)J

    move-result-wide v0

    iput-wide v0, p0, Lio/realm/com_lostpixels_fieldservice_internal_ministry_VisitInfoRealmProxy$VisitInfoColumnInfo;->scripturesColKey:J

    .line 63
    const-string v0, "publications"

    invoke-virtual {p0, v0, v0, p1}, Lio/realm/internal/ColumnInfo;->addColumnDetails(Ljava/lang/String;Ljava/lang/String;Lio/realm/internal/OsObjectSchemaInfo;)J

    move-result-wide v0

    iput-wide v0, p0, Lio/realm/com_lostpixels_fieldservice_internal_ministry_VisitInfoRealmProxy$VisitInfoColumnInfo;->publicationsColKey:J

    .line 64
    const-string v0, "movies"

    invoke-virtual {p0, v0, v0, p1}, Lio/realm/internal/ColumnInfo;->addColumnDetails(Ljava/lang/String;Ljava/lang/String;Lio/realm/internal/OsObjectSchemaInfo;)J

    move-result-wide v0

    iput-wide v0, p0, Lio/realm/com_lostpixels_fieldservice_internal_ministry_VisitInfoRealmProxy$VisitInfoColumnInfo;->moviesColKey:J

    .line 65
    const-string v0, "nextTime"

    invoke-virtual {p0, v0, v0, p1}, Lio/realm/internal/ColumnInfo;->addColumnDetails(Ljava/lang/String;Ljava/lang/String;Lio/realm/internal/OsObjectSchemaInfo;)J

    move-result-wide v0

    iput-wide v0, p0, Lio/realm/com_lostpixels_fieldservice_internal_ministry_VisitInfoRealmProxy$VisitInfoColumnInfo;->nextTimeColKey:J

    .line 66
    const-string v0, "type"

    invoke-virtual {p0, v0, v0, p1}, Lio/realm/internal/ColumnInfo;->addColumnDetails(Ljava/lang/String;Ljava/lang/String;Lio/realm/internal/OsObjectSchemaInfo;)J

    move-result-wide v0

    iput-wide v0, p0, Lio/realm/com_lostpixels_fieldservice_internal_ministry_VisitInfoRealmProxy$VisitInfoColumnInfo;->typeColKey:J

    .line 67
    const-string v0, "visitType"

    invoke-virtual {p0, v0, v0, p1}, Lio/realm/internal/ColumnInfo;->addColumnDetails(Ljava/lang/String;Ljava/lang/String;Lio/realm/internal/OsObjectSchemaInfo;)J

    move-result-wide v0

    iput-wide v0, p0, Lio/realm/com_lostpixels_fieldservice_internal_ministry_VisitInfoRealmProxy$VisitInfoColumnInfo;->visitTypeColKey:J

    .line 68
    const-string v0, "age"

    invoke-virtual {p0, v0, v0, p1}, Lio/realm/internal/ColumnInfo;->addColumnDetails(Ljava/lang/String;Ljava/lang/String;Lio/realm/internal/OsObjectSchemaInfo;)J

    move-result-wide v0

    iput-wide v0, p0, Lio/realm/com_lostpixels_fieldservice_internal_ministry_VisitInfoRealmProxy$VisitInfoColumnInfo;->ageColKey:J

    .line 69
    const-string v0, "countStudy"

    invoke-virtual {p0, v0, v0, p1}, Lio/realm/internal/ColumnInfo;->addColumnDetails(Ljava/lang/String;Ljava/lang/String;Lio/realm/internal/OsObjectSchemaInfo;)J

    move-result-wide v0

    iput-wide v0, p0, Lio/realm/com_lostpixels_fieldservice_internal_ministry_VisitInfoRealmProxy$VisitInfoColumnInfo;->countStudyColKey:J

    return-void
.end method


# virtual methods
.method protected final copy(Lio/realm/internal/ColumnInfo;Lio/realm/internal/ColumnInfo;)V
    .locals 2

    .line 84
    check-cast p1, Lio/realm/com_lostpixels_fieldservice_internal_ministry_VisitInfoRealmProxy$VisitInfoColumnInfo;

    .line 85
    check-cast p2, Lio/realm/com_lostpixels_fieldservice_internal_ministry_VisitInfoRealmProxy$VisitInfoColumnInfo;

    .line 86
    iget-wide v0, p1, Lio/realm/com_lostpixels_fieldservice_internal_ministry_VisitInfoRealmProxy$VisitInfoColumnInfo;->infoColKey:J

    iput-wide v0, p2, Lio/realm/com_lostpixels_fieldservice_internal_ministry_VisitInfoRealmProxy$VisitInfoColumnInfo;->infoColKey:J

    .line 87
    iget-wide v0, p1, Lio/realm/com_lostpixels_fieldservice_internal_ministry_VisitInfoRealmProxy$VisitInfoColumnInfo;->visitDateColKey:J

    iput-wide v0, p2, Lio/realm/com_lostpixels_fieldservice_internal_ministry_VisitInfoRealmProxy$VisitInfoColumnInfo;->visitDateColKey:J

    .line 88
    iget-wide v0, p1, Lio/realm/com_lostpixels_fieldservice_internal_ministry_VisitInfoRealmProxy$VisitInfoColumnInfo;->scripturesColKey:J

    iput-wide v0, p2, Lio/realm/com_lostpixels_fieldservice_internal_ministry_VisitInfoRealmProxy$VisitInfoColumnInfo;->scripturesColKey:J

    .line 89
    iget-wide v0, p1, Lio/realm/com_lostpixels_fieldservice_internal_ministry_VisitInfoRealmProxy$VisitInfoColumnInfo;->publicationsColKey:J

    iput-wide v0, p2, Lio/realm/com_lostpixels_fieldservice_internal_ministry_VisitInfoRealmProxy$VisitInfoColumnInfo;->publicationsColKey:J

    .line 90
    iget-wide v0, p1, Lio/realm/com_lostpixels_fieldservice_internal_ministry_VisitInfoRealmProxy$VisitInfoColumnInfo;->moviesColKey:J

    iput-wide v0, p2, Lio/realm/com_lostpixels_fieldservice_internal_ministry_VisitInfoRealmProxy$VisitInfoColumnInfo;->moviesColKey:J

    .line 91
    iget-wide v0, p1, Lio/realm/com_lostpixels_fieldservice_internal_ministry_VisitInfoRealmProxy$VisitInfoColumnInfo;->nextTimeColKey:J

    iput-wide v0, p2, Lio/realm/com_lostpixels_fieldservice_internal_ministry_VisitInfoRealmProxy$VisitInfoColumnInfo;->nextTimeColKey:J

    .line 92
    iget-wide v0, p1, Lio/realm/com_lostpixels_fieldservice_internal_ministry_VisitInfoRealmProxy$VisitInfoColumnInfo;->typeColKey:J

    iput-wide v0, p2, Lio/realm/com_lostpixels_fieldservice_internal_ministry_VisitInfoRealmProxy$VisitInfoColumnInfo;->typeColKey:J

    .line 93
    iget-wide v0, p1, Lio/realm/com_lostpixels_fieldservice_internal_ministry_VisitInfoRealmProxy$VisitInfoColumnInfo;->visitTypeColKey:J

    iput-wide v0, p2, Lio/realm/com_lostpixels_fieldservice_internal_ministry_VisitInfoRealmProxy$VisitInfoColumnInfo;->visitTypeColKey:J

    .line 94
    iget-wide v0, p1, Lio/realm/com_lostpixels_fieldservice_internal_ministry_VisitInfoRealmProxy$VisitInfoColumnInfo;->ageColKey:J

    iput-wide v0, p2, Lio/realm/com_lostpixels_fieldservice_internal_ministry_VisitInfoRealmProxy$VisitInfoColumnInfo;->ageColKey:J

    .line 95
    iget-wide v0, p1, Lio/realm/com_lostpixels_fieldservice_internal_ministry_VisitInfoRealmProxy$VisitInfoColumnInfo;->countStudyColKey:J

    iput-wide v0, p2, Lio/realm/com_lostpixels_fieldservice_internal_ministry_VisitInfoRealmProxy$VisitInfoColumnInfo;->countStudyColKey:J

    return-void
.end method
