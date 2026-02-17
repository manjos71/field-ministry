.class final Lio/realm/com_lostpixels_fieldservice_internal_report_PublicationManagerRealmProxy$PublicationManagerColumnInfo;
.super Lio/realm/internal/ColumnInfo;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lio/realm/com_lostpixels_fieldservice_internal_report_PublicationManagerRealmProxy;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = "PublicationManagerColumnInfo"
.end annotation


# instance fields
.field awakeMapColKey:J

.field dateColKey:J

.field idColKey:J

.field magazineMapColKey:J

.field marrBooksColKey:J

.field marrBroschuresColKey:J

.field marrMoviesColKey:J

.field marrOtherColKey:J

.field marrTractsColKey:J

.field marrVideosColKey:J

.field watchtowerMapColKey:J


# direct methods
.method constructor <init>(Lio/realm/internal/OsSchemaInfo;)V
    .locals 2

    const/16 v0, 0xb

    .line 59
    invoke-direct {p0, v0}, Lio/realm/internal/ColumnInfo;-><init>(I)V

    .line 60
    const-string v0, "PublicationManager"

    invoke-virtual {p1, v0}, Lio/realm/internal/OsSchemaInfo;->getObjectSchemaInfo(Ljava/lang/String;)Lio/realm/internal/OsObjectSchemaInfo;

    move-result-object p1

    .line 61
    const-string v0, "id"

    invoke-virtual {p0, v0, v0, p1}, Lio/realm/internal/ColumnInfo;->addColumnDetails(Ljava/lang/String;Ljava/lang/String;Lio/realm/internal/OsObjectSchemaInfo;)J

    move-result-wide v0

    iput-wide v0, p0, Lio/realm/com_lostpixels_fieldservice_internal_report_PublicationManagerRealmProxy$PublicationManagerColumnInfo;->idColKey:J

    .line 62
    const-string v0, "marrBooks"

    invoke-virtual {p0, v0, v0, p1}, Lio/realm/internal/ColumnInfo;->addColumnDetails(Ljava/lang/String;Ljava/lang/String;Lio/realm/internal/OsObjectSchemaInfo;)J

    move-result-wide v0

    iput-wide v0, p0, Lio/realm/com_lostpixels_fieldservice_internal_report_PublicationManagerRealmProxy$PublicationManagerColumnInfo;->marrBooksColKey:J

    .line 63
    const-string v0, "marrVideos"

    invoke-virtual {p0, v0, v0, p1}, Lio/realm/internal/ColumnInfo;->addColumnDetails(Ljava/lang/String;Ljava/lang/String;Lio/realm/internal/OsObjectSchemaInfo;)J

    move-result-wide v0

    iput-wide v0, p0, Lio/realm/com_lostpixels_fieldservice_internal_report_PublicationManagerRealmProxy$PublicationManagerColumnInfo;->marrVideosColKey:J

    .line 64
    const-string v0, "marrBroschures"

    invoke-virtual {p0, v0, v0, p1}, Lio/realm/internal/ColumnInfo;->addColumnDetails(Ljava/lang/String;Ljava/lang/String;Lio/realm/internal/OsObjectSchemaInfo;)J

    move-result-wide v0

    iput-wide v0, p0, Lio/realm/com_lostpixels_fieldservice_internal_report_PublicationManagerRealmProxy$PublicationManagerColumnInfo;->marrBroschuresColKey:J

    .line 65
    const-string v0, "marrTracts"

    invoke-virtual {p0, v0, v0, p1}, Lio/realm/internal/ColumnInfo;->addColumnDetails(Ljava/lang/String;Ljava/lang/String;Lio/realm/internal/OsObjectSchemaInfo;)J

    move-result-wide v0

    iput-wide v0, p0, Lio/realm/com_lostpixels_fieldservice_internal_report_PublicationManagerRealmProxy$PublicationManagerColumnInfo;->marrTractsColKey:J

    .line 66
    const-string v0, "marrOther"

    invoke-virtual {p0, v0, v0, p1}, Lio/realm/internal/ColumnInfo;->addColumnDetails(Ljava/lang/String;Ljava/lang/String;Lio/realm/internal/OsObjectSchemaInfo;)J

    move-result-wide v0

    iput-wide v0, p0, Lio/realm/com_lostpixels_fieldservice_internal_report_PublicationManagerRealmProxy$PublicationManagerColumnInfo;->marrOtherColKey:J

    .line 67
    const-string v0, "marrMovies"

    invoke-virtual {p0, v0, v0, p1}, Lio/realm/internal/ColumnInfo;->addColumnDetails(Ljava/lang/String;Ljava/lang/String;Lio/realm/internal/OsObjectSchemaInfo;)J

    move-result-wide v0

    iput-wide v0, p0, Lio/realm/com_lostpixels_fieldservice_internal_report_PublicationManagerRealmProxy$PublicationManagerColumnInfo;->marrMoviesColKey:J

    .line 68
    const-string v0, "awakeMap"

    invoke-virtual {p0, v0, v0, p1}, Lio/realm/internal/ColumnInfo;->addColumnDetails(Ljava/lang/String;Ljava/lang/String;Lio/realm/internal/OsObjectSchemaInfo;)J

    move-result-wide v0

    iput-wide v0, p0, Lio/realm/com_lostpixels_fieldservice_internal_report_PublicationManagerRealmProxy$PublicationManagerColumnInfo;->awakeMapColKey:J

    .line 69
    const-string v0, "watchtowerMap"

    invoke-virtual {p0, v0, v0, p1}, Lio/realm/internal/ColumnInfo;->addColumnDetails(Ljava/lang/String;Ljava/lang/String;Lio/realm/internal/OsObjectSchemaInfo;)J

    move-result-wide v0

    iput-wide v0, p0, Lio/realm/com_lostpixels_fieldservice_internal_report_PublicationManagerRealmProxy$PublicationManagerColumnInfo;->watchtowerMapColKey:J

    .line 70
    const-string v0, "magazineMap"

    invoke-virtual {p0, v0, v0, p1}, Lio/realm/internal/ColumnInfo;->addColumnDetails(Ljava/lang/String;Ljava/lang/String;Lio/realm/internal/OsObjectSchemaInfo;)J

    move-result-wide v0

    iput-wide v0, p0, Lio/realm/com_lostpixels_fieldservice_internal_report_PublicationManagerRealmProxy$PublicationManagerColumnInfo;->magazineMapColKey:J

    .line 71
    const-string v0, "date"

    invoke-virtual {p0, v0, v0, p1}, Lio/realm/internal/ColumnInfo;->addColumnDetails(Ljava/lang/String;Ljava/lang/String;Lio/realm/internal/OsObjectSchemaInfo;)J

    move-result-wide v0

    iput-wide v0, p0, Lio/realm/com_lostpixels_fieldservice_internal_report_PublicationManagerRealmProxy$PublicationManagerColumnInfo;->dateColKey:J

    return-void
.end method


# virtual methods
.method protected final copy(Lio/realm/internal/ColumnInfo;Lio/realm/internal/ColumnInfo;)V
    .locals 2

    .line 86
    check-cast p1, Lio/realm/com_lostpixels_fieldservice_internal_report_PublicationManagerRealmProxy$PublicationManagerColumnInfo;

    .line 87
    check-cast p2, Lio/realm/com_lostpixels_fieldservice_internal_report_PublicationManagerRealmProxy$PublicationManagerColumnInfo;

    .line 88
    iget-wide v0, p1, Lio/realm/com_lostpixels_fieldservice_internal_report_PublicationManagerRealmProxy$PublicationManagerColumnInfo;->idColKey:J

    iput-wide v0, p2, Lio/realm/com_lostpixels_fieldservice_internal_report_PublicationManagerRealmProxy$PublicationManagerColumnInfo;->idColKey:J

    .line 89
    iget-wide v0, p1, Lio/realm/com_lostpixels_fieldservice_internal_report_PublicationManagerRealmProxy$PublicationManagerColumnInfo;->marrBooksColKey:J

    iput-wide v0, p2, Lio/realm/com_lostpixels_fieldservice_internal_report_PublicationManagerRealmProxy$PublicationManagerColumnInfo;->marrBooksColKey:J

    .line 90
    iget-wide v0, p1, Lio/realm/com_lostpixels_fieldservice_internal_report_PublicationManagerRealmProxy$PublicationManagerColumnInfo;->marrVideosColKey:J

    iput-wide v0, p2, Lio/realm/com_lostpixels_fieldservice_internal_report_PublicationManagerRealmProxy$PublicationManagerColumnInfo;->marrVideosColKey:J

    .line 91
    iget-wide v0, p1, Lio/realm/com_lostpixels_fieldservice_internal_report_PublicationManagerRealmProxy$PublicationManagerColumnInfo;->marrBroschuresColKey:J

    iput-wide v0, p2, Lio/realm/com_lostpixels_fieldservice_internal_report_PublicationManagerRealmProxy$PublicationManagerColumnInfo;->marrBroschuresColKey:J

    .line 92
    iget-wide v0, p1, Lio/realm/com_lostpixels_fieldservice_internal_report_PublicationManagerRealmProxy$PublicationManagerColumnInfo;->marrTractsColKey:J

    iput-wide v0, p2, Lio/realm/com_lostpixels_fieldservice_internal_report_PublicationManagerRealmProxy$PublicationManagerColumnInfo;->marrTractsColKey:J

    .line 93
    iget-wide v0, p1, Lio/realm/com_lostpixels_fieldservice_internal_report_PublicationManagerRealmProxy$PublicationManagerColumnInfo;->marrOtherColKey:J

    iput-wide v0, p2, Lio/realm/com_lostpixels_fieldservice_internal_report_PublicationManagerRealmProxy$PublicationManagerColumnInfo;->marrOtherColKey:J

    .line 94
    iget-wide v0, p1, Lio/realm/com_lostpixels_fieldservice_internal_report_PublicationManagerRealmProxy$PublicationManagerColumnInfo;->marrMoviesColKey:J

    iput-wide v0, p2, Lio/realm/com_lostpixels_fieldservice_internal_report_PublicationManagerRealmProxy$PublicationManagerColumnInfo;->marrMoviesColKey:J

    .line 95
    iget-wide v0, p1, Lio/realm/com_lostpixels_fieldservice_internal_report_PublicationManagerRealmProxy$PublicationManagerColumnInfo;->awakeMapColKey:J

    iput-wide v0, p2, Lio/realm/com_lostpixels_fieldservice_internal_report_PublicationManagerRealmProxy$PublicationManagerColumnInfo;->awakeMapColKey:J

    .line 96
    iget-wide v0, p1, Lio/realm/com_lostpixels_fieldservice_internal_report_PublicationManagerRealmProxy$PublicationManagerColumnInfo;->watchtowerMapColKey:J

    iput-wide v0, p2, Lio/realm/com_lostpixels_fieldservice_internal_report_PublicationManagerRealmProxy$PublicationManagerColumnInfo;->watchtowerMapColKey:J

    .line 97
    iget-wide v0, p1, Lio/realm/com_lostpixels_fieldservice_internal_report_PublicationManagerRealmProxy$PublicationManagerColumnInfo;->magazineMapColKey:J

    iput-wide v0, p2, Lio/realm/com_lostpixels_fieldservice_internal_report_PublicationManagerRealmProxy$PublicationManagerColumnInfo;->magazineMapColKey:J

    .line 98
    iget-wide v0, p1, Lio/realm/com_lostpixels_fieldservice_internal_report_PublicationManagerRealmProxy$PublicationManagerColumnInfo;->dateColKey:J

    iput-wide v0, p2, Lio/realm/com_lostpixels_fieldservice_internal_report_PublicationManagerRealmProxy$PublicationManagerColumnInfo;->dateColKey:J

    return-void
.end method
