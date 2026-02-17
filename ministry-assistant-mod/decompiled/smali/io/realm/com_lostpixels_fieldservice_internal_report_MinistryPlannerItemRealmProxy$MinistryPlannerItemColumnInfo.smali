.class final Lio/realm/com_lostpixels_fieldservice_internal_report_MinistryPlannerItemRealmProxy$MinistryPlannerItemColumnInfo;
.super Lio/realm/internal/ColumnInfo;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lio/realm/com_lostpixels_fieldservice_internal_report_MinistryPlannerItemRealmProxy;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = "MinistryPlannerItemColumnInfo"
.end annotation


# instance fields
.field commentColKey:J

.field dateColKey:J

.field timeColKey:J


# direct methods
.method constructor <init>(Lio/realm/internal/OsSchemaInfo;)V
    .locals 2

    const/4 v0, 0x3

    .line 51
    invoke-direct {p0, v0}, Lio/realm/internal/ColumnInfo;-><init>(I)V

    .line 52
    const-string v0, "MinistryPlannerItem"

    invoke-virtual {p1, v0}, Lio/realm/internal/OsSchemaInfo;->getObjectSchemaInfo(Ljava/lang/String;)Lio/realm/internal/OsObjectSchemaInfo;

    move-result-object p1

    .line 53
    const-string v0, "time"

    invoke-virtual {p0, v0, v0, p1}, Lio/realm/internal/ColumnInfo;->addColumnDetails(Ljava/lang/String;Ljava/lang/String;Lio/realm/internal/OsObjectSchemaInfo;)J

    move-result-wide v0

    iput-wide v0, p0, Lio/realm/com_lostpixels_fieldservice_internal_report_MinistryPlannerItemRealmProxy$MinistryPlannerItemColumnInfo;->timeColKey:J

    .line 54
    const-string v0, "comment"

    invoke-virtual {p0, v0, v0, p1}, Lio/realm/internal/ColumnInfo;->addColumnDetails(Ljava/lang/String;Ljava/lang/String;Lio/realm/internal/OsObjectSchemaInfo;)J

    move-result-wide v0

    iput-wide v0, p0, Lio/realm/com_lostpixels_fieldservice_internal_report_MinistryPlannerItemRealmProxy$MinistryPlannerItemColumnInfo;->commentColKey:J

    .line 55
    const-string v0, "date"

    invoke-virtual {p0, v0, v0, p1}, Lio/realm/internal/ColumnInfo;->addColumnDetails(Ljava/lang/String;Ljava/lang/String;Lio/realm/internal/OsObjectSchemaInfo;)J

    move-result-wide v0

    iput-wide v0, p0, Lio/realm/com_lostpixels_fieldservice_internal_report_MinistryPlannerItemRealmProxy$MinistryPlannerItemColumnInfo;->dateColKey:J

    return-void
.end method


# virtual methods
.method protected final copy(Lio/realm/internal/ColumnInfo;Lio/realm/internal/ColumnInfo;)V
    .locals 2

    .line 70
    check-cast p1, Lio/realm/com_lostpixels_fieldservice_internal_report_MinistryPlannerItemRealmProxy$MinistryPlannerItemColumnInfo;

    .line 71
    check-cast p2, Lio/realm/com_lostpixels_fieldservice_internal_report_MinistryPlannerItemRealmProxy$MinistryPlannerItemColumnInfo;

    .line 72
    iget-wide v0, p1, Lio/realm/com_lostpixels_fieldservice_internal_report_MinistryPlannerItemRealmProxy$MinistryPlannerItemColumnInfo;->timeColKey:J

    iput-wide v0, p2, Lio/realm/com_lostpixels_fieldservice_internal_report_MinistryPlannerItemRealmProxy$MinistryPlannerItemColumnInfo;->timeColKey:J

    .line 73
    iget-wide v0, p1, Lio/realm/com_lostpixels_fieldservice_internal_report_MinistryPlannerItemRealmProxy$MinistryPlannerItemColumnInfo;->commentColKey:J

    iput-wide v0, p2, Lio/realm/com_lostpixels_fieldservice_internal_report_MinistryPlannerItemRealmProxy$MinistryPlannerItemColumnInfo;->commentColKey:J

    .line 74
    iget-wide v0, p1, Lio/realm/com_lostpixels_fieldservice_internal_report_MinistryPlannerItemRealmProxy$MinistryPlannerItemColumnInfo;->dateColKey:J

    iput-wide v0, p2, Lio/realm/com_lostpixels_fieldservice_internal_report_MinistryPlannerItemRealmProxy$MinistryPlannerItemColumnInfo;->dateColKey:J

    return-void
.end method
