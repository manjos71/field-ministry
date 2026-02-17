.class Lcom/lostpixels/fieldservice/internal/report/MinistryPlannerManager$5;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/lostpixels/fieldservice/realm/RealmHelper$Writer;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/lostpixels/fieldservice/internal/report/MinistryPlannerManager;->deleteOldYears()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/lostpixels/fieldservice/internal/report/MinistryPlannerManager;


# direct methods
.method constructor <init>(Lcom/lostpixels/fieldservice/internal/report/MinistryPlannerManager;)V
    .locals 0

    .line 484
    iput-object p1, p0, Lcom/lostpixels/fieldservice/internal/report/MinistryPlannerManager$5;->this$0:Lcom/lostpixels/fieldservice/internal/report/MinistryPlannerManager;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public write()V
    .locals 4

    .line 488
    :try_start_0
    new-instance v0, Ljava/util/Date;

    invoke-direct {v0}, Ljava/util/Date;-><init>()V

    invoke-static {v0}, Lcom/lostpixels/fieldservice/internal/report/ServiceReportManager;->date2ServiceYearInt(Ljava/util/Date;)I

    move-result v0

    .line 489
    iget-object v1, p0, Lcom/lostpixels/fieldservice/internal/report/MinistryPlannerManager$5;->this$0:Lcom/lostpixels/fieldservice/internal/report/MinistryPlannerManager;

    invoke-virtual {v1}, Lcom/lostpixels/fieldservice/internal/report/MinistryPlannerManager;->realmGet$ministryPlannerYears()Lio/realm/RealmList;

    move-result-object v1

    invoke-virtual {v1}, Lio/realm/RealmList;->size()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    :goto_0
    if-ltz v1, :cond_1

    .line 490
    iget-object v2, p0, Lcom/lostpixels/fieldservice/internal/report/MinistryPlannerManager$5;->this$0:Lcom/lostpixels/fieldservice/internal/report/MinistryPlannerManager;

    invoke-virtual {v2}, Lcom/lostpixels/fieldservice/internal/report/MinistryPlannerManager;->realmGet$ministryPlannerYears()Lio/realm/RealmList;

    move-result-object v2

    invoke-virtual {v2, v1}, Lio/realm/RealmList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/lostpixels/fieldservice/internal/report/MinistryPlannerYear;

    invoke-virtual {v2}, Lcom/lostpixels/fieldservice/internal/report/MinistryPlannerYear;->getYear()I

    move-result v2

    add-int/lit8 v3, v0, -0x1

    if-ge v2, v3, :cond_0

    .line 492
    iget-object v2, p0, Lcom/lostpixels/fieldservice/internal/report/MinistryPlannerManager$5;->this$0:Lcom/lostpixels/fieldservice/internal/report/MinistryPlannerManager;

    invoke-virtual {v2}, Lcom/lostpixels/fieldservice/internal/report/MinistryPlannerManager;->realmGet$ministryPlannerYears()Lio/realm/RealmList;

    move-result-object v2

    invoke-virtual {v2, v1}, Lio/realm/RealmList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/lostpixels/fieldservice/internal/report/MinistryPlannerYear;

    invoke-virtual {v2}, Lcom/lostpixels/fieldservice/internal/report/MinistryPlannerYear;->getItems()Lio/realm/RealmList;

    move-result-object v2

    invoke-virtual {v2}, Lio/realm/RealmList;->deleteAllFromRealm()Z

    .line 493
    iget-object v2, p0, Lcom/lostpixels/fieldservice/internal/report/MinistryPlannerManager$5;->this$0:Lcom/lostpixels/fieldservice/internal/report/MinistryPlannerManager;

    invoke-virtual {v2}, Lcom/lostpixels/fieldservice/internal/report/MinistryPlannerManager;->realmGet$ministryPlannerYears()Lio/realm/RealmList;

    move-result-object v2

    invoke-virtual {v2, v1}, Lio/realm/RealmList;->deleteFromRealm(I)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    move-exception v0

    goto :goto_2

    :cond_0
    :goto_1
    add-int/lit8 v1, v1, -0x1

    goto :goto_0

    .line 497
    :goto_2
    invoke-virtual {v0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0}, Lcom/lostpixels/fieldservice/helpfunctions/HelpFunctions;->getStackTrace(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/lostpixels/fieldservice/utils/LogToSD;->write(Ljava/lang/String;Ljava/lang/String;)V

    .line 499
    :try_start_1
    invoke-static {}, Lcom/google/firebase/crashlytics/FirebaseCrashlytics;->getInstance()Lcom/google/firebase/crashlytics/FirebaseCrashlytics;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/google/firebase/crashlytics/FirebaseCrashlytics;->recordException(Ljava/lang/Throwable;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    :catch_1
    :cond_1
    return-void
.end method
