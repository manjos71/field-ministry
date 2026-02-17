.class final Lio/realm/com_lostpixels_fieldservice_internal_report_SchoolInfoItemRealmProxy$SchoolInfoItemColumnInfo;
.super Lio/realm/internal/ColumnInfo;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lio/realm/com_lostpixels_fieldservice_internal_report_SchoolInfoItemRealmProxy;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = "SchoolInfoItemColumnInfo"
.end annotation


# instance fields
.field mbCanHaveMoreThanAmmountColKey:J

.field miHoursColKey:J

.field msNameColKey:J


# direct methods
.method constructor <init>(Lio/realm/internal/OsSchemaInfo;)V
    .locals 2

    const/4 v0, 0x3

    .line 51
    invoke-direct {p0, v0}, Lio/realm/internal/ColumnInfo;-><init>(I)V

    .line 52
    const-string v0, "SchoolInfoItem"

    invoke-virtual {p1, v0}, Lio/realm/internal/OsSchemaInfo;->getObjectSchemaInfo(Ljava/lang/String;)Lio/realm/internal/OsObjectSchemaInfo;

    move-result-object p1

    .line 53
    const-string v0, "msName"

    invoke-virtual {p0, v0, v0, p1}, Lio/realm/internal/ColumnInfo;->addColumnDetails(Ljava/lang/String;Ljava/lang/String;Lio/realm/internal/OsObjectSchemaInfo;)J

    move-result-wide v0

    iput-wide v0, p0, Lio/realm/com_lostpixels_fieldservice_internal_report_SchoolInfoItemRealmProxy$SchoolInfoItemColumnInfo;->msNameColKey:J

    .line 54
    const-string v0, "miHours"

    invoke-virtual {p0, v0, v0, p1}, Lio/realm/internal/ColumnInfo;->addColumnDetails(Ljava/lang/String;Ljava/lang/String;Lio/realm/internal/OsObjectSchemaInfo;)J

    move-result-wide v0

    iput-wide v0, p0, Lio/realm/com_lostpixels_fieldservice_internal_report_SchoolInfoItemRealmProxy$SchoolInfoItemColumnInfo;->miHoursColKey:J

    .line 55
    const-string v0, "mbCanHaveMoreThanAmmount"

    invoke-virtual {p0, v0, v0, p1}, Lio/realm/internal/ColumnInfo;->addColumnDetails(Ljava/lang/String;Ljava/lang/String;Lio/realm/internal/OsObjectSchemaInfo;)J

    move-result-wide v0

    iput-wide v0, p0, Lio/realm/com_lostpixels_fieldservice_internal_report_SchoolInfoItemRealmProxy$SchoolInfoItemColumnInfo;->mbCanHaveMoreThanAmmountColKey:J

    return-void
.end method


# virtual methods
.method protected final copy(Lio/realm/internal/ColumnInfo;Lio/realm/internal/ColumnInfo;)V
    .locals 2

    .line 70
    check-cast p1, Lio/realm/com_lostpixels_fieldservice_internal_report_SchoolInfoItemRealmProxy$SchoolInfoItemColumnInfo;

    .line 71
    check-cast p2, Lio/realm/com_lostpixels_fieldservice_internal_report_SchoolInfoItemRealmProxy$SchoolInfoItemColumnInfo;

    .line 72
    iget-wide v0, p1, Lio/realm/com_lostpixels_fieldservice_internal_report_SchoolInfoItemRealmProxy$SchoolInfoItemColumnInfo;->msNameColKey:J

    iput-wide v0, p2, Lio/realm/com_lostpixels_fieldservice_internal_report_SchoolInfoItemRealmProxy$SchoolInfoItemColumnInfo;->msNameColKey:J

    .line 73
    iget-wide v0, p1, Lio/realm/com_lostpixels_fieldservice_internal_report_SchoolInfoItemRealmProxy$SchoolInfoItemColumnInfo;->miHoursColKey:J

    iput-wide v0, p2, Lio/realm/com_lostpixels_fieldservice_internal_report_SchoolInfoItemRealmProxy$SchoolInfoItemColumnInfo;->miHoursColKey:J

    .line 74
    iget-wide v0, p1, Lio/realm/com_lostpixels_fieldservice_internal_report_SchoolInfoItemRealmProxy$SchoolInfoItemColumnInfo;->mbCanHaveMoreThanAmmountColKey:J

    iput-wide v0, p2, Lio/realm/com_lostpixels_fieldservice_internal_report_SchoolInfoItemRealmProxy$SchoolInfoItemColumnInfo;->mbCanHaveMoreThanAmmountColKey:J

    return-void
.end method
