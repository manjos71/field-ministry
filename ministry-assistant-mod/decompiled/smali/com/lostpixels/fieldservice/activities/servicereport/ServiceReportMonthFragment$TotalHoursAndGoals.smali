.class Lcom/lostpixels/fieldservice/activities/servicereport/ServiceReportMonthFragment$TotalHoursAndGoals;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/lostpixels/fieldservice/activities/servicereport/ServiceReportMonthFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "TotalHoursAndGoals"
.end annotation


# instance fields
.field goal:Lcom/lostpixels/fieldservice/internal/report/Time;

.field hours:Lcom/lostpixels/fieldservice/internal/report/Time;


# direct methods
.method public constructor <init>(Lcom/lostpixels/fieldservice/internal/report/Time;Lcom/lostpixels/fieldservice/internal/report/Time;)V
    .locals 0

    .line 1117
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1118
    iput-object p1, p0, Lcom/lostpixels/fieldservice/activities/servicereport/ServiceReportMonthFragment$TotalHoursAndGoals;->hours:Lcom/lostpixels/fieldservice/internal/report/Time;

    .line 1119
    iput-object p2, p0, Lcom/lostpixels/fieldservice/activities/servicereport/ServiceReportMonthFragment$TotalHoursAndGoals;->goal:Lcom/lostpixels/fieldservice/internal/report/Time;

    return-void
.end method
