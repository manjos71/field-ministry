.class final Lio/realm/com_lostpixels_fieldservice_internal_report_ScriptureRealmProxy$ScriptureColumnInfo;
.super Lio/realm/internal/ColumnInfo;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lio/realm/com_lostpixels_fieldservice_internal_report_ScriptureRealmProxy;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = "ScriptureColumnInfo"
.end annotation


# instance fields
.field contentColKey:J

.field verseColKey:J


# direct methods
.method constructor <init>(Lio/realm/internal/OsSchemaInfo;)V
    .locals 2

    const/4 v0, 0x2

    .line 50
    invoke-direct {p0, v0}, Lio/realm/internal/ColumnInfo;-><init>(I)V

    .line 51
    const-string v0, "Scripture"

    invoke-virtual {p1, v0}, Lio/realm/internal/OsSchemaInfo;->getObjectSchemaInfo(Ljava/lang/String;)Lio/realm/internal/OsObjectSchemaInfo;

    move-result-object p1

    .line 52
    const-string v0, "verse"

    invoke-virtual {p0, v0, v0, p1}, Lio/realm/internal/ColumnInfo;->addColumnDetails(Ljava/lang/String;Ljava/lang/String;Lio/realm/internal/OsObjectSchemaInfo;)J

    move-result-wide v0

    iput-wide v0, p0, Lio/realm/com_lostpixels_fieldservice_internal_report_ScriptureRealmProxy$ScriptureColumnInfo;->verseColKey:J

    .line 53
    const-string v0, "content"

    invoke-virtual {p0, v0, v0, p1}, Lio/realm/internal/ColumnInfo;->addColumnDetails(Ljava/lang/String;Ljava/lang/String;Lio/realm/internal/OsObjectSchemaInfo;)J

    move-result-wide v0

    iput-wide v0, p0, Lio/realm/com_lostpixels_fieldservice_internal_report_ScriptureRealmProxy$ScriptureColumnInfo;->contentColKey:J

    return-void
.end method


# virtual methods
.method protected final copy(Lio/realm/internal/ColumnInfo;Lio/realm/internal/ColumnInfo;)V
    .locals 2

    .line 68
    check-cast p1, Lio/realm/com_lostpixels_fieldservice_internal_report_ScriptureRealmProxy$ScriptureColumnInfo;

    .line 69
    check-cast p2, Lio/realm/com_lostpixels_fieldservice_internal_report_ScriptureRealmProxy$ScriptureColumnInfo;

    .line 70
    iget-wide v0, p1, Lio/realm/com_lostpixels_fieldservice_internal_report_ScriptureRealmProxy$ScriptureColumnInfo;->verseColKey:J

    iput-wide v0, p2, Lio/realm/com_lostpixels_fieldservice_internal_report_ScriptureRealmProxy$ScriptureColumnInfo;->verseColKey:J

    .line 71
    iget-wide v0, p1, Lio/realm/com_lostpixels_fieldservice_internal_report_ScriptureRealmProxy$ScriptureColumnInfo;->contentColKey:J

    iput-wide v0, p2, Lio/realm/com_lostpixels_fieldservice_internal_report_ScriptureRealmProxy$ScriptureColumnInfo;->contentColKey:J

    return-void
.end method
