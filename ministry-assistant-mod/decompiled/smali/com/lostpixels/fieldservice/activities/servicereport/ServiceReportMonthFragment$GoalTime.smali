.class Lcom/lostpixels/fieldservice/activities/servicereport/ServiceReportMonthFragment$GoalTime;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/lostpixels/fieldservice/activities/servicereport/ServiceReportMonthFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "GoalTime"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/lostpixels/fieldservice/activities/servicereport/ServiceReportMonthFragment$GoalTime$GoalStatus;
    }
.end annotation


# instance fields
.field status:Lcom/lostpixels/fieldservice/activities/servicereport/ServiceReportMonthFragment$GoalTime$GoalStatus;

.field timePerDay:Lcom/lostpixels/fieldservice/internal/report/Time;


# direct methods
.method public constructor <init>(Lcom/lostpixels/fieldservice/activities/servicereport/ServiceReportMonthFragment$GoalTime$GoalStatus;Lcom/lostpixels/fieldservice/internal/report/Time;)V
    .locals 0

    .line 71
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 72
    iput-object p1, p0, Lcom/lostpixels/fieldservice/activities/servicereport/ServiceReportMonthFragment$GoalTime;->status:Lcom/lostpixels/fieldservice/activities/servicereport/ServiceReportMonthFragment$GoalTime$GoalStatus;

    .line 73
    iput-object p2, p0, Lcom/lostpixels/fieldservice/activities/servicereport/ServiceReportMonthFragment$GoalTime;->timePerDay:Lcom/lostpixels/fieldservice/internal/report/Time;

    return-void
.end method
