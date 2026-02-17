.class final enum Lcom/lostpixels/fieldservice/activities/servicereport/ServiceReportMonthFragment$GoalTime$GoalStatus;
.super Ljava/lang/Enum;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/lostpixels/fieldservice/activities/servicereport/ServiceReportMonthFragment$GoalTime;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4018
    name = "GoalStatus"
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/lostpixels/fieldservice/activities/servicereport/ServiceReportMonthFragment$GoalTime$GoalStatus;

.field public static final enum AHEAD:Lcom/lostpixels/fieldservice/activities/servicereport/ServiceReportMonthFragment$GoalTime$GoalStatus;

.field public static final enum BEHIND:Lcom/lostpixels/fieldservice/activities/servicereport/ServiceReportMonthFragment$GoalTime$GoalStatus;

.field public static final enum ONTIME:Lcom/lostpixels/fieldservice/activities/servicereport/ServiceReportMonthFragment$GoalTime$GoalStatus;


# direct methods
.method private static synthetic $values()[Lcom/lostpixels/fieldservice/activities/servicereport/ServiceReportMonthFragment$GoalTime$GoalStatus;
    .locals 3

    const/4 v0, 0x3

    .line 62
    new-array v0, v0, [Lcom/lostpixels/fieldservice/activities/servicereport/ServiceReportMonthFragment$GoalTime$GoalStatus;

    sget-object v1, Lcom/lostpixels/fieldservice/activities/servicereport/ServiceReportMonthFragment$GoalTime$GoalStatus;->ONTIME:Lcom/lostpixels/fieldservice/activities/servicereport/ServiceReportMonthFragment$GoalTime$GoalStatus;

    const/4 v2, 0x0

    aput-object v1, v0, v2

    sget-object v1, Lcom/lostpixels/fieldservice/activities/servicereport/ServiceReportMonthFragment$GoalTime$GoalStatus;->AHEAD:Lcom/lostpixels/fieldservice/activities/servicereport/ServiceReportMonthFragment$GoalTime$GoalStatus;

    const/4 v2, 0x1

    aput-object v1, v0, v2

    sget-object v1, Lcom/lostpixels/fieldservice/activities/servicereport/ServiceReportMonthFragment$GoalTime$GoalStatus;->BEHIND:Lcom/lostpixels/fieldservice/activities/servicereport/ServiceReportMonthFragment$GoalTime$GoalStatus;

    const/4 v2, 0x2

    aput-object v1, v0, v2

    return-object v0
.end method

.method static constructor <clinit>()V
    .locals 3

    .line 63
    new-instance v0, Lcom/lostpixels/fieldservice/activities/servicereport/ServiceReportMonthFragment$GoalTime$GoalStatus;

    const-string v1, "ONTIME"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcom/lostpixels/fieldservice/activities/servicereport/ServiceReportMonthFragment$GoalTime$GoalStatus;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/lostpixels/fieldservice/activities/servicereport/ServiceReportMonthFragment$GoalTime$GoalStatus;->ONTIME:Lcom/lostpixels/fieldservice/activities/servicereport/ServiceReportMonthFragment$GoalTime$GoalStatus;

    .line 64
    new-instance v0, Lcom/lostpixels/fieldservice/activities/servicereport/ServiceReportMonthFragment$GoalTime$GoalStatus;

    const-string v1, "AHEAD"

    const/4 v2, 0x1

    invoke-direct {v0, v1, v2}, Lcom/lostpixels/fieldservice/activities/servicereport/ServiceReportMonthFragment$GoalTime$GoalStatus;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/lostpixels/fieldservice/activities/servicereport/ServiceReportMonthFragment$GoalTime$GoalStatus;->AHEAD:Lcom/lostpixels/fieldservice/activities/servicereport/ServiceReportMonthFragment$GoalTime$GoalStatus;

    .line 65
    new-instance v0, Lcom/lostpixels/fieldservice/activities/servicereport/ServiceReportMonthFragment$GoalTime$GoalStatus;

    const-string v1, "BEHIND"

    const/4 v2, 0x2

    invoke-direct {v0, v1, v2}, Lcom/lostpixels/fieldservice/activities/servicereport/ServiceReportMonthFragment$GoalTime$GoalStatus;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/lostpixels/fieldservice/activities/servicereport/ServiceReportMonthFragment$GoalTime$GoalStatus;->BEHIND:Lcom/lostpixels/fieldservice/activities/servicereport/ServiceReportMonthFragment$GoalTime$GoalStatus;

    .line 62
    invoke-static {}, Lcom/lostpixels/fieldservice/activities/servicereport/ServiceReportMonthFragment$GoalTime$GoalStatus;->$values()[Lcom/lostpixels/fieldservice/activities/servicereport/ServiceReportMonthFragment$GoalTime$GoalStatus;

    move-result-object v0

    sput-object v0, Lcom/lostpixels/fieldservice/activities/servicereport/ServiceReportMonthFragment$GoalTime$GoalStatus;->$VALUES:[Lcom/lostpixels/fieldservice/activities/servicereport/ServiceReportMonthFragment$GoalTime$GoalStatus;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0

    .line 62
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/lostpixels/fieldservice/activities/servicereport/ServiceReportMonthFragment$GoalTime$GoalStatus;
    .locals 1

    .line 62
    const-class v0, Lcom/lostpixels/fieldservice/activities/servicereport/ServiceReportMonthFragment$GoalTime$GoalStatus;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/lostpixels/fieldservice/activities/servicereport/ServiceReportMonthFragment$GoalTime$GoalStatus;

    return-object p0
.end method

.method public static values()[Lcom/lostpixels/fieldservice/activities/servicereport/ServiceReportMonthFragment$GoalTime$GoalStatus;
    .locals 1

    .line 62
    sget-object v0, Lcom/lostpixels/fieldservice/activities/servicereport/ServiceReportMonthFragment$GoalTime$GoalStatus;->$VALUES:[Lcom/lostpixels/fieldservice/activities/servicereport/ServiceReportMonthFragment$GoalTime$GoalStatus;

    invoke-virtual {v0}, [Lcom/lostpixels/fieldservice/activities/servicereport/ServiceReportMonthFragment$GoalTime$GoalStatus;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/lostpixels/fieldservice/activities/servicereport/ServiceReportMonthFragment$GoalTime$GoalStatus;

    return-object v0
.end method
