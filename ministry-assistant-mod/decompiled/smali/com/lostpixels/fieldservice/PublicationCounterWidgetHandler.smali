.class public Lcom/lostpixels/fieldservice/PublicationCounterWidgetHandler;
.super Landroid/app/Activity;
.source "SourceFile"


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 20
    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    return-void
.end method

.method private addPublication()V
    .locals 4

    .line 54
    invoke-static {p0}, Lcom/lostpixels/fieldservice/realm/RealmHelper;->getRealmInstance(Landroid/content/Context;)Lio/realm/Realm;

    move-result-object v0

    .line 55
    new-instance v1, Lcom/lostpixels/fieldservice/internal/report/ServiceSession;

    invoke-direct {v1}, Lcom/lostpixels/fieldservice/internal/report/ServiceSession;-><init>()V

    const/4 v2, 0x1

    .line 56
    invoke-virtual {v1, v2}, Lcom/lostpixels/fieldservice/internal/report/ServiceSession;->setTracts(I)V

    .line 57
    invoke-static {v0}, Lcom/lostpixels/fieldservice/internal/report/ServiceReportManager;->getInstance(Lio/realm/Realm;)Lcom/lostpixels/fieldservice/internal/report/ServiceReportManager;

    move-result-object v2

    invoke-virtual {v1}, Lcom/lostpixels/fieldservice/internal/report/ServiceSession;->getDate()Ljava/util/Date;

    move-result-object v3

    invoke-virtual {v2, v0, v3}, Lcom/lostpixels/fieldservice/internal/report/ServiceReportManager;->getServiceYear(Lio/realm/Realm;Ljava/util/Date;)Lcom/lostpixels/fieldservice/internal/report/YearReport;

    move-result-object v0

    .line 58
    invoke-virtual {v0, v1}, Lcom/lostpixels/fieldservice/internal/report/YearReport;->addServiceSession(Lcom/lostpixels/fieldservice/internal/report/ServiceSession;)V

    .line 59
    invoke-static {p0}, Lcom/lostpixels/fieldservice/helpfunctions/HelpFunctions;->updateReportWidget(Landroid/content/Context;)V

    .line 60
    invoke-virtual {p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/lostpixels/fieldservice/ui/PublicationCounterToast;->addPublication(Landroid/content/Context;)V

    return-void
.end method


# virtual methods
.method protected onCreate(Landroid/os/Bundle;)V
    .locals 2

    .line 26
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    .line 28
    invoke-static {p0}, Lcom/lostpixels/fieldservice/helpfunctions/HelpFunctions;->isDebugBuild(Landroid/content/Context;)Ljava/lang/Boolean;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    if-nez p1, :cond_0

    .line 31
    :try_start_0
    invoke-static {}, Lcom/google/firebase/crashlytics/FirebaseCrashlytics;->getInstance()Lcom/google/firebase/crashlytics/FirebaseCrashlytics;

    move-result-object p1

    const-string v0, "PublicationCounterWidgetHandler"

    invoke-virtual {p1, v0}, Lcom/google/firebase/crashlytics/FirebaseCrashlytics;->log(Ljava/lang/String;)V

    .line 32
    invoke-static {}, Lcom/google/firebase/crashlytics/FirebaseCrashlytics;->getInstance()Lcom/google/firebase/crashlytics/FirebaseCrashlytics;

    move-result-object p1

    const-string v0, "CurrentService"

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Lcom/google/firebase/crashlytics/FirebaseCrashlytics;->setCustomKey(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    nop

    .line 37
    :cond_0
    :goto_0
    invoke-static {}, Lcom/lostpixels/fieldservice/helpfunctions/ConsistancyChecks;->installExceptionHandler()V

    .line 38
    invoke-static {p0}, Lcom/lostpixels/fieldservice/helpfunctions/HelpFunctions;->setLanguage(Landroid/app/Activity;)V

    .line 40
    invoke-virtual {p0}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object p1

    .line 41
    invoke-virtual {p1}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_1

    invoke-virtual {p1}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object p1

    const-string v0, "WidgetAddPublication"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_1

    .line 42
    invoke-direct {p0}, Lcom/lostpixels/fieldservice/PublicationCounterWidgetHandler;->addPublication()V

    :cond_1
    return-void
.end method

.method protected onResume()V
    .locals 0

    .line 49
    invoke-virtual {p0}, Landroid/app/Activity;->finish()V

    .line 50
    invoke-super {p0}, Landroid/app/Activity;->onResume()V

    return-void
.end method
