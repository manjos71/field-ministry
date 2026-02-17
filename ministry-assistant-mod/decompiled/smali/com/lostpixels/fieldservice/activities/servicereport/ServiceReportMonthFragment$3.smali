.class abstract synthetic Lcom/lostpixels/fieldservice/activities/servicereport/ServiceReportMonthFragment$3;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/lostpixels/fieldservice/activities/servicereport/ServiceReportMonthFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1008
    name = null
.end annotation


# static fields
.field static final synthetic $SwitchMap$com$lostpixels$fieldservice$activities$servicereport$ServiceReportMonthFragment$GoalTime$GoalStatus:[I


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .line 1057
    invoke-static {}, Lcom/lostpixels/fieldservice/activities/servicereport/ServiceReportMonthFragment$GoalTime$GoalStatus;->values()[Lcom/lostpixels/fieldservice/activities/servicereport/ServiceReportMonthFragment$GoalTime$GoalStatus;

    move-result-object v0

    array-length v0, v0

    new-array v0, v0, [I

    sput-object v0, Lcom/lostpixels/fieldservice/activities/servicereport/ServiceReportMonthFragment$3;->$SwitchMap$com$lostpixels$fieldservice$activities$servicereport$ServiceReportMonthFragment$GoalTime$GoalStatus:[I

    :try_start_0
    sget-object v1, Lcom/lostpixels/fieldservice/activities/servicereport/ServiceReportMonthFragment$GoalTime$GoalStatus;->ONTIME:Lcom/lostpixels/fieldservice/activities/servicereport/ServiceReportMonthFragment$GoalTime$GoalStatus;

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    const/4 v2, 0x1

    aput v2, v0, v1
    :try_end_0
    .catch Ljava/lang/NoSuchFieldError; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    :try_start_1
    sget-object v0, Lcom/lostpixels/fieldservice/activities/servicereport/ServiceReportMonthFragment$3;->$SwitchMap$com$lostpixels$fieldservice$activities$servicereport$ServiceReportMonthFragment$GoalTime$GoalStatus:[I

    sget-object v1, Lcom/lostpixels/fieldservice/activities/servicereport/ServiceReportMonthFragment$GoalTime$GoalStatus;->AHEAD:Lcom/lostpixels/fieldservice/activities/servicereport/ServiceReportMonthFragment$GoalTime$GoalStatus;

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    const/4 v2, 0x2

    aput v2, v0, v1
    :try_end_1
    .catch Ljava/lang/NoSuchFieldError; {:try_start_1 .. :try_end_1} :catch_1

    :catch_1
    :try_start_2
    sget-object v0, Lcom/lostpixels/fieldservice/activities/servicereport/ServiceReportMonthFragment$3;->$SwitchMap$com$lostpixels$fieldservice$activities$servicereport$ServiceReportMonthFragment$GoalTime$GoalStatus:[I

    sget-object v1, Lcom/lostpixels/fieldservice/activities/servicereport/ServiceReportMonthFragment$GoalTime$GoalStatus;->BEHIND:Lcom/lostpixels/fieldservice/activities/servicereport/ServiceReportMonthFragment$GoalTime$GoalStatus;

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    const/4 v2, 0x3

    aput v2, v0, v1
    :try_end_2
    .catch Ljava/lang/NoSuchFieldError; {:try_start_2 .. :try_end_2} :catch_2

    :catch_2
    return-void
.end method
