.class public Lcom/lostpixels/fieldservice/internal/report/MinistryPlannerManager;
.super Lio/realm/RealmObject;
.source "SourceFile"

# interfaces
.implements Lio/realm/com_lostpixels_fieldservice_internal_report_MinistryPlannerManagerRealmProxyInterface;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/lostpixels/fieldservice/internal/report/MinistryPlannerManager$DateCompare;
    }
.end annotation


# static fields
.field private static instanceLock:Ljava/util/concurrent/locks/Lock; = null

.field private static mFileCommunicationLock:Ljava/util/concurrent/locks/Lock; = null

.field static yearChecked:Z = false


# instance fields
.field dateChanged:Ljava/util/Date;

.field public id:J

.field private ministryPlannerYears:Lio/realm/RealmList;


# direct methods
.method static bridge synthetic -$$Nest$mgetYear(Lcom/lostpixels/fieldservice/internal/report/MinistryPlannerManager;I)Lio/realm/RealmList;
    .locals 0

    .line 0
    invoke-direct {p0, p1}, Lcom/lostpixels/fieldservice/internal/report/MinistryPlannerManager;->getYear(I)Lio/realm/RealmList;

    move-result-object p0

    return-object p0
.end method

.method static bridge synthetic -$$Nest$smgetDateId(Ljava/util/Calendar;)I
    .locals 0

    .line 0
    invoke-static {p0}, Lcom/lostpixels/fieldservice/internal/report/MinistryPlannerManager;->getDateId(Ljava/util/Calendar;)I

    move-result p0

    return p0
.end method

.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>()V
    .locals 2

    .line 65
    invoke-direct {p0}, Lio/realm/RealmObject;-><init>()V

    instance-of v0, p0, Lio/realm/internal/RealmObjectProxy;

    if-eqz v0, :cond_0

    move-object v0, p0

    check-cast v0, Lio/realm/internal/RealmObjectProxy;

    invoke-interface {v0}, Lio/realm/internal/RealmObjectProxy;->realm$injectObjectContext()V

    :cond_0
    const-wide/16 v0, 0x1

    .line 57
    invoke-virtual {p0, v0, v1}, Lcom/lostpixels/fieldservice/internal/report/MinistryPlannerManager;->realmSet$id(J)V

    const/4 v0, 0x0

    .line 60
    invoke-virtual {p0, v0}, Lcom/lostpixels/fieldservice/internal/report/MinistryPlannerManager;->realmSet$dateChanged(Ljava/util/Date;)V

    .line 67
    invoke-virtual {p0}, Lcom/lostpixels/fieldservice/internal/report/MinistryPlannerManager;->realmGet$ministryPlannerYears()Lio/realm/RealmList;

    move-result-object v0

    if-nez v0, :cond_1

    .line 68
    new-instance v0, Lio/realm/RealmList;

    invoke-direct {v0}, Lio/realm/RealmList;-><init>()V

    invoke-virtual {p0, v0}, Lcom/lostpixels/fieldservice/internal/report/MinistryPlannerManager;->realmSet$ministryPlannerYears(Lio/realm/RealmList;)V

    .line 70
    :cond_1
    invoke-virtual {p0}, Lcom/lostpixels/fieldservice/internal/report/MinistryPlannerManager;->deleteOldYears()V

    return-void
.end method

.method private static getDateId(Ljava/util/Calendar;)I
    .locals 3

    const/4 v0, 0x1

    .line 80
    invoke-virtual {p0, v0}, Ljava/util/Calendar;->get(I)I

    move-result v1

    mul-int/lit16 v1, v1, 0x2710

    const/4 v2, 0x2

    invoke-virtual {p0, v2}, Ljava/util/Calendar;->get(I)I

    move-result v2

    add-int/2addr v2, v0

    mul-int/lit8 v2, v2, 0x64

    add-int/2addr v1, v2

    const/4 v0, 0x5

    invoke-virtual {p0, v0}, Ljava/util/Calendar;->get(I)I

    move-result p0

    add-int/2addr v1, p0

    return v1
.end method

.method static getDateId(Ljava/util/Date;)I
    .locals 1

    .line 74
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v0

    .line 75
    invoke-virtual {v0, p0}, Ljava/util/Calendar;->setTime(Ljava/util/Date;)V

    .line 76
    invoke-static {v0}, Lcom/lostpixels/fieldservice/internal/report/MinistryPlannerManager;->getDateId(Ljava/util/Calendar;)I

    move-result p0

    return p0
.end method

.method public static getInstance(Lio/realm/Realm;)Lcom/lostpixels/fieldservice/internal/report/MinistryPlannerManager;
    .locals 3

    .line 84
    const-class v0, Lcom/lostpixels/fieldservice/internal/report/MinistryPlannerManager;

    sget-object v1, Lcom/lostpixels/fieldservice/internal/report/MinistryPlannerManager;->instanceLock:Ljava/util/concurrent/locks/Lock;

    if-nez v1, :cond_0

    .line 85
    new-instance v1, Ljava/util/concurrent/locks/ReentrantLock;

    invoke-direct {v1}, Ljava/util/concurrent/locks/ReentrantLock;-><init>()V

    sput-object v1, Lcom/lostpixels/fieldservice/internal/report/MinistryPlannerManager;->instanceLock:Ljava/util/concurrent/locks/Lock;

    .line 88
    :cond_0
    :try_start_0
    sget-object v1, Lcom/lostpixels/fieldservice/internal/report/MinistryPlannerManager;->instanceLock:Ljava/util/concurrent/locks/Lock;

    invoke-interface {v1}, Ljava/util/concurrent/locks/Lock;->lock()V

    .line 89
    invoke-virtual {p0, v0}, Lio/realm/Realm;->where(Ljava/lang/Class;)Lio/realm/RealmQuery;

    move-result-object v1

    invoke-virtual {v1}, Lio/realm/RealmQuery;->findFirst()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/lostpixels/fieldservice/internal/report/MinistryPlannerManager;

    if-nez v1, :cond_1

    .line 90
    invoke-virtual {p0}, Lio/realm/Realm;->isInTransaction()Z

    move-result v2

    if-nez v2, :cond_1

    .line 91
    invoke-virtual {p0}, Lio/realm/Realm;->refresh()V

    .line 92
    invoke-virtual {p0, v0}, Lio/realm/Realm;->where(Ljava/lang/Class;)Lio/realm/RealmQuery;

    move-result-object v1

    invoke-virtual {v1}, Lio/realm/RealmQuery;->findFirst()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/lostpixels/fieldservice/internal/report/MinistryPlannerManager;

    :cond_1
    if-nez v1, :cond_4

    .line 96
    invoke-virtual {p0}, Lio/realm/Realm;->isInTransaction()Z

    move-result v1

    if-nez v1, :cond_2

    .line 98
    invoke-virtual {p0}, Lio/realm/Realm;->beginTransaction()V

    :cond_2
    const/4 v2, 0x1

    .line 99
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {p0, v0, v2}, Lio/realm/Realm;->createObject(Ljava/lang/Class;Ljava/lang/Object;)Lio/realm/RealmModel;

    move-result-object v0

    check-cast v0, Lcom/lostpixels/fieldservice/internal/report/MinistryPlannerManager;

    if-nez v1, :cond_3

    .line 101
    invoke-virtual {p0}, Lio/realm/Realm;->commitTransaction()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_3
    move-object v1, v0

    .line 105
    :cond_4
    :try_start_1
    sget-object p0, Lcom/lostpixels/fieldservice/internal/report/MinistryPlannerManager;->instanceLock:Ljava/util/concurrent/locks/Lock;

    invoke-interface {p0}, Ljava/util/concurrent/locks/Lock;->unlock()V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    return-object v1

    :catch_0
    move-exception p0

    .line 107
    invoke-virtual {p0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-static {p0}, Lcom/lostpixels/fieldservice/helpfunctions/HelpFunctions;->getStackTrace(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object p0

    invoke-static {v0, p0}, Lcom/lostpixels/fieldservice/utils/LogToSD;->write(Ljava/lang/String;Ljava/lang/String;)V

    return-object v1

    :catchall_0
    move-exception p0

    .line 105
    :try_start_2
    sget-object v0, Lcom/lostpixels/fieldservice/internal/report/MinistryPlannerManager;->instanceLock:Ljava/util/concurrent/locks/Lock;

    invoke-interface {v0}, Ljava/util/concurrent/locks/Lock;->unlock()V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_1

    goto :goto_0

    :catch_1
    move-exception v0

    .line 107
    invoke-virtual {v0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0}, Lcom/lostpixels/fieldservice/helpfunctions/HelpFunctions;->getStackTrace(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Lcom/lostpixels/fieldservice/utils/LogToSD;->write(Ljava/lang/String;Ljava/lang/String;)V

    .line 109
    :goto_0
    throw p0
.end method

.method private getLatestFileVersion()I
    .locals 1

    const/4 v0, 0x3

    return v0
.end method

.method private getYear(I)Lio/realm/RealmList;
    .locals 3

    .line 128
    invoke-virtual {p0}, Lio/realm/RealmObject;->isManaged()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 129
    invoke-virtual {p0}, Lcom/lostpixels/fieldservice/internal/report/MinistryPlannerManager;->realmGet$ministryPlannerYears()Lio/realm/RealmList;

    move-result-object v0

    invoke-virtual {v0}, Lio/realm/RealmList;->where()Lio/realm/RealmQuery;

    move-result-object v0

    const-string v1, "year"

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-virtual {v0, v1, p1}, Lio/realm/RealmQuery;->equalTo(Ljava/lang/String;Ljava/lang/Integer;)Lio/realm/RealmQuery;

    move-result-object p1

    invoke-virtual {p1}, Lio/realm/RealmQuery;->findFirst()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/lostpixels/fieldservice/internal/report/MinistryPlannerYear;

    if-eqz p1, :cond_2

    .line 131
    invoke-virtual {p1}, Lcom/lostpixels/fieldservice/internal/report/MinistryPlannerYear;->getItems()Lio/realm/RealmList;

    move-result-object p1

    return-object p1

    .line 133
    :cond_0
    invoke-virtual {p0}, Lcom/lostpixels/fieldservice/internal/report/MinistryPlannerManager;->realmGet$ministryPlannerYears()Lio/realm/RealmList;

    move-result-object v0

    invoke-virtual {v0}, Lio/realm/RealmList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/lostpixels/fieldservice/internal/report/MinistryPlannerYear;

    .line 134
    invoke-virtual {v1}, Lcom/lostpixels/fieldservice/internal/report/MinistryPlannerYear;->getYear()I

    move-result v2

    if-ne v2, p1, :cond_1

    .line 135
    invoke-virtual {v1}, Lcom/lostpixels/fieldservice/internal/report/MinistryPlannerYear;->getItems()Lio/realm/RealmList;

    move-result-object p1

    return-object p1

    :cond_2
    const/4 p1, 0x0

    return-object p1
.end method

.method private planTimeIntern(ILjava/util/Date;DLjava/lang/String;)V
    .locals 7

    .line 142
    invoke-virtual {p0}, Lcom/lostpixels/fieldservice/internal/report/MinistryPlannerManager;->realmGet$ministryPlannerYears()Lio/realm/RealmList;

    move-result-object v0

    monitor-enter v0

    .line 143
    :try_start_0
    invoke-direct {p0, p1}, Lcom/lostpixels/fieldservice/internal/report/MinistryPlannerManager;->getYear(I)Lio/realm/RealmList;

    move-result-object v1

    const-wide v2, 0x3f847ae147ae147bL    # 0.01

    cmpl-double v4, p3, v2

    if-lez v4, :cond_4

    if-eqz v1, :cond_0

    .line 147
    invoke-virtual {v1}, Ljava/util/AbstractCollection;->isEmpty()Z

    move-result v2

    if-eqz v2, :cond_1

    goto :goto_0

    :catchall_0
    move-exception p1

    goto :goto_2

    .line 148
    :cond_0
    :goto_0
    new-instance v1, Lcom/lostpixels/fieldservice/internal/report/MinistryPlannerYear;

    invoke-direct {v1}, Lcom/lostpixels/fieldservice/internal/report/MinistryPlannerYear;-><init>()V

    .line 149
    invoke-virtual {v1, p1}, Lcom/lostpixels/fieldservice/internal/report/MinistryPlannerYear;->setYear(I)V

    .line 150
    invoke-virtual {p0}, Lcom/lostpixels/fieldservice/internal/report/MinistryPlannerManager;->realmGet$ministryPlannerYears()Lio/realm/RealmList;

    move-result-object v2

    invoke-virtual {v2, v1}, Lio/realm/RealmList;->add(Ljava/lang/Object;)Z

    .line 152
    invoke-direct {p0, p1}, Lcom/lostpixels/fieldservice/internal/report/MinistryPlannerManager;->getYear(I)Lio/realm/RealmList;

    move-result-object v1

    .line 156
    :cond_1
    invoke-virtual {v1}, Ljava/util/AbstractCollection;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_2

    .line 157
    invoke-virtual {v1}, Lio/realm/RealmList;->size()I

    move-result v2

    add-int/lit8 v2, v2, -0x1

    invoke-virtual {v1, v2}, Lio/realm/RealmList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/lostpixels/fieldservice/internal/report/MinistryPlannerItem;

    invoke-virtual {v2}, Lcom/lostpixels/fieldservice/internal/report/MinistryPlannerItem;->realmGet$date()I

    .line 161
    :cond_2
    invoke-static {p2}, Lcom/lostpixels/fieldservice/internal/report/MinistryPlannerManager;->getDateId(Ljava/util/Date;)I

    move-result v2

    .line 162
    invoke-direct {p0, p1}, Lcom/lostpixels/fieldservice/internal/report/MinistryPlannerManager;->getYear(I)Lio/realm/RealmList;

    move-result-object v3

    new-instance v4, Lcom/lostpixels/fieldservice/internal/report/MinistryPlannerItem;

    const-string v5, ""

    const/4 v6, 0x0

    invoke-direct {v4, v2, v6, v5}, Lcom/lostpixels/fieldservice/internal/report/MinistryPlannerItem;-><init>(IFLjava/lang/String;)V

    new-instance v2, Lcom/lostpixels/fieldservice/internal/report/MinistryPlannerManager$DateCompare;

    const/4 v5, 0x0

    invoke-direct {v2, p0, v5}, Lcom/lostpixels/fieldservice/internal/report/MinistryPlannerManager$DateCompare;-><init>(Lcom/lostpixels/fieldservice/internal/report/MinistryPlannerManager;Lcom/lostpixels/fieldservice/internal/report/MinistryPlannerManager-IA;)V

    invoke-static {v3, v4, v2}, Ljava/util/Collections;->binarySearch(Ljava/util/List;Ljava/lang/Object;Ljava/util/Comparator;)I

    move-result v2

    if-ltz v2, :cond_3

    .line 164
    invoke-direct {p0, p1}, Lcom/lostpixels/fieldservice/internal/report/MinistryPlannerManager;->getYear(I)Lio/realm/RealmList;

    move-result-object p1

    new-instance v1, Lcom/lostpixels/fieldservice/internal/report/MinistryPlannerItem;

    double-to-float p3, p3

    invoke-direct {v1, p2, p3, p5}, Lcom/lostpixels/fieldservice/internal/report/MinistryPlannerItem;-><init>(Ljava/util/Date;FLjava/lang/String;)V

    invoke-virtual {p1, v2, v1}, Lio/realm/RealmList;->set(ILjava/lang/Object;)Ljava/lang/Object;

    goto :goto_1

    .line 166
    :cond_3
    new-instance p1, Lcom/lostpixels/fieldservice/internal/report/MinistryPlannerItem;

    double-to-float p3, p3

    invoke-direct {p1, p2, p3, p5}, Lcom/lostpixels/fieldservice/internal/report/MinistryPlannerItem;-><init>(Ljava/util/Date;FLjava/lang/String;)V

    invoke-virtual {v1, p1}, Lio/realm/RealmList;->add(Ljava/lang/Object;)Z

    .line 169
    new-instance p1, Lcom/lostpixels/fieldservice/internal/report/MinistryPlannerManager$DateCompare;

    invoke-direct {p1, p0, v5}, Lcom/lostpixels/fieldservice/internal/report/MinistryPlannerManager$DateCompare;-><init>(Lcom/lostpixels/fieldservice/internal/report/MinistryPlannerManager;Lcom/lostpixels/fieldservice/internal/report/MinistryPlannerManager-IA;)V

    invoke-static {v1, p1}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    goto :goto_1

    :cond_4
    if-eqz v1, :cond_5

    .line 173
    invoke-direct {p0, p2, v1}, Lcom/lostpixels/fieldservice/internal/report/MinistryPlannerManager;->removeDate(Ljava/util/Date;Lio/realm/RealmList;)V

    .line 174
    :cond_5
    :goto_1
    monitor-exit v0

    return-void

    :goto_2
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1
.end method

.method private removeDate(Ljava/util/Date;Lio/realm/RealmList;)V
    .locals 1

    .line 247
    new-instance v0, Lcom/lostpixels/fieldservice/internal/report/MinistryPlannerManager$3;

    invoke-direct {v0, p0, p1, p2}, Lcom/lostpixels/fieldservice/internal/report/MinistryPlannerManager$3;-><init>(Lcom/lostpixels/fieldservice/internal/report/MinistryPlannerManager;Ljava/util/Date;Lio/realm/RealmList;)V

    .line 256
    invoke-virtual {p0}, Lio/realm/RealmObject;->isManaged()Z

    move-result p1

    .line 247
    invoke-static {v0, p1}, Lcom/lostpixels/fieldservice/realm/RealmHelper;->write(Lcom/lostpixels/fieldservice/realm/RealmHelper$Writer;Z)Z

    return-void
.end method


# virtual methods
.method public deleteOldYears()V
    .locals 1

    .line 482
    sget-boolean v0, Lcom/lostpixels/fieldservice/internal/report/MinistryPlannerManager;->yearChecked:Z

    if-nez v0, :cond_0

    const/4 v0, 0x1

    .line 483
    sput-boolean v0, Lcom/lostpixels/fieldservice/internal/report/MinistryPlannerManager;->yearChecked:Z

    .line 484
    new-instance v0, Lcom/lostpixels/fieldservice/internal/report/MinistryPlannerManager$5;

    invoke-direct {v0, p0}, Lcom/lostpixels/fieldservice/internal/report/MinistryPlannerManager$5;-><init>(Lcom/lostpixels/fieldservice/internal/report/MinistryPlannerManager;)V

    invoke-static {v0}, Lcom/lostpixels/fieldservice/realm/RealmHelper;->write(Lcom/lostpixels/fieldservice/realm/RealmHelper$Writer;)Z

    :cond_0
    return-void
.end method

.method public fixBugWithNull(Lio/realm/Realm;)V
    .locals 3

    .line 626
    invoke-virtual {p0}, Lcom/lostpixels/fieldservice/internal/report/MinistryPlannerManager;->realmGet$ministryPlannerYears()Lio/realm/RealmList;

    move-result-object v0

    monitor-enter v0

    .line 627
    :try_start_0
    const-class v1, Lcom/lostpixels/fieldservice/internal/report/MinistryPlannerItem;

    invoke-virtual {p1, v1}, Lio/realm/Realm;->where(Ljava/lang/Class;)Lio/realm/RealmQuery;

    move-result-object p1

    const-string v1, "comment"

    const-string v2, "null"

    invoke-virtual {p1, v1, v2}, Lio/realm/RealmQuery;->equalTo(Ljava/lang/String;Ljava/lang/String;)Lio/realm/RealmQuery;

    move-result-object p1

    invoke-virtual {p1}, Lio/realm/RealmQuery;->findAll()Lio/realm/RealmResults;

    move-result-object p1

    .line 628
    new-instance v1, Lcom/lostpixels/fieldservice/internal/report/MinistryPlannerManager$7;

    invoke-direct {v1, p0, p1}, Lcom/lostpixels/fieldservice/internal/report/MinistryPlannerManager$7;-><init>(Lcom/lostpixels/fieldservice/internal/report/MinistryPlannerManager;Lio/realm/RealmResults;)V

    invoke-static {v1}, Lcom/lostpixels/fieldservice/realm/RealmHelper;->write(Lcom/lostpixels/fieldservice/realm/RealmHelper$Writer;)Z

    .line 637
    monitor-exit v0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1
.end method

.method public getTime(ILjava/util/Calendar;)Lcom/lostpixels/fieldservice/internal/report/MinistryPlannerItem;
    .locals 2

    .line 179
    invoke-virtual {p0}, Lcom/lostpixels/fieldservice/internal/report/MinistryPlannerManager;->realmGet$ministryPlannerYears()Lio/realm/RealmList;

    move-result-object v0

    monitor-enter v0

    .line 180
    :try_start_0
    invoke-direct {p0, p1}, Lcom/lostpixels/fieldservice/internal/report/MinistryPlannerManager;->getYear(I)Lio/realm/RealmList;

    move-result-object p1

    if-eqz p1, :cond_0

    .line 182
    invoke-virtual {p1}, Lio/realm/RealmList;->where()Lio/realm/RealmQuery;

    move-result-object p1

    const-string v1, "date"

    invoke-static {p2}, Lcom/lostpixels/fieldservice/internal/report/MinistryPlannerManager;->getDateId(Ljava/util/Calendar;)I

    move-result p2

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    invoke-virtual {p1, v1, p2}, Lio/realm/RealmQuery;->equalTo(Ljava/lang/String;Ljava/lang/Integer;)Lio/realm/RealmQuery;

    move-result-object p1

    invoke-virtual {p1}, Lio/realm/RealmQuery;->findFirst()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/lostpixels/fieldservice/internal/report/MinistryPlannerItem;

    if-eqz p1, :cond_0

    .line 184
    monitor-exit v0

    return-object p1

    :catchall_0
    move-exception p1

    goto :goto_0

    .line 187
    :cond_0
    new-instance p1, Lcom/lostpixels/fieldservice/internal/report/MinistryPlannerItem;

    invoke-direct {p1}, Lcom/lostpixels/fieldservice/internal/report/MinistryPlannerItem;-><init>()V

    monitor-exit v0

    return-object p1

    .line 188
    :goto_0
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1
.end method

.method public getYearTotal(I)F
    .locals 8

    .line 192
    invoke-virtual {p0}, Lcom/lostpixels/fieldservice/internal/report/MinistryPlannerManager;->realmGet$ministryPlannerYears()Lio/realm/RealmList;

    move-result-object v0

    monitor-enter v0

    .line 193
    :try_start_0
    invoke-direct {p0, p1}, Lcom/lostpixels/fieldservice/internal/report/MinistryPlannerManager;->getYear(I)Lio/realm/RealmList;

    move-result-object v1

    const/4 v2, 0x0

    if-eqz v1, :cond_3

    add-int/lit8 v3, p1, -0x1

    mul-int/lit16 v3, v3, 0x2710

    add-int/lit16 v3, v3, 0x385

    mul-int/lit16 p1, p1, 0x2710

    add-int/lit16 p1, p1, 0x33f

    .line 200
    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    .line 201
    invoke-virtual {v1}, Lio/realm/RealmList;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :goto_0
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_1

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/lostpixels/fieldservice/internal/report/MinistryPlannerItem;

    .line 202
    invoke-virtual {v6}, Lcom/lostpixels/fieldservice/internal/report/MinistryPlannerItem;->realmGet$date()I

    move-result v7

    if-lt v7, v3, :cond_0

    invoke-virtual {v6}, Lcom/lostpixels/fieldservice/internal/report/MinistryPlannerItem;->realmGet$date()I

    move-result v7

    if-gt v7, p1, :cond_0

    .line 203
    invoke-virtual {v6}, Lcom/lostpixels/fieldservice/internal/report/MinistryPlannerItem;->realmGet$time()F

    move-result v6

    add-float/2addr v2, v6

    goto :goto_0

    :catchall_0
    move-exception p1

    goto :goto_1

    .line 205
    :cond_0
    invoke-interface {v4, v6}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 209
    :cond_1
    invoke-interface {v4}, Ljava/util/List;->isEmpty()Z

    move-result p1

    if-nez p1, :cond_2

    .line 210
    new-instance p1, Lcom/lostpixels/fieldservice/internal/report/MinistryPlannerManager$1;

    invoke-direct {p1, p0, v4, v1}, Lcom/lostpixels/fieldservice/internal/report/MinistryPlannerManager$1;-><init>(Lcom/lostpixels/fieldservice/internal/report/MinistryPlannerManager;Ljava/util/List;Lio/realm/RealmList;)V

    .line 220
    invoke-virtual {p0}, Lio/realm/RealmObject;->isManaged()Z

    move-result v1

    .line 210
    invoke-static {p1, v1}, Lcom/lostpixels/fieldservice/realm/RealmHelper;->write(Lcom/lostpixels/fieldservice/realm/RealmHelper$Writer;Z)Z

    .line 223
    :cond_2
    monitor-exit v0

    return v2

    .line 226
    :cond_3
    monitor-exit v0

    return v2

    .line 227
    :goto_1
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1
.end method

.method public hasYear(I)Z
    .locals 0

    .line 231
    invoke-direct {p0, p1}, Lcom/lostpixels/fieldservice/internal/report/MinistryPlannerManager;->getYear(I)Lio/realm/RealmList;

    move-result-object p1

    if-eqz p1, :cond_0

    const/4 p1, 0x1

    return p1

    :cond_0
    const/4 p1, 0x0

    return p1
.end method

.method public load(Lcom/fasterxml/jackson/core/JsonParser;Z)Z
    .locals 19

    move-object/from16 v1, p0

    move/from16 v2, p2

    .line 354
    invoke-static {}, Lio/realm/Realm;->getDefaultInstance()Lio/realm/Realm;

    move-result-object v3

    .line 355
    invoke-virtual {v3}, Lio/realm/Realm;->isInTransaction()Z

    move-result v4

    .line 356
    new-instance v0, Landroid/util/SparseBooleanArray;

    invoke-direct {v0}, Landroid/util/SparseBooleanArray;-><init>()V

    .line 358
    const-string v5, ""

    const-string v6, "MinistryPlannerManager.load"

    if-nez v4, :cond_0

    if-eqz v2, :cond_0

    .line 359
    :try_start_0
    invoke-virtual {v3}, Lio/realm/Realm;->beginTransaction()V

    goto :goto_0

    :catchall_0
    move-exception v0

    goto/16 :goto_b

    :catch_0
    move-exception v0

    const/16 v17, 0x0

    goto/16 :goto_a

    .line 361
    :cond_0
    :goto_0
    invoke-direct {v1}, Lcom/lostpixels/fieldservice/internal/report/MinistryPlannerManager;->getLatestFileVersion()I

    move-result v8

    .line 363
    invoke-virtual/range {p1 .. p1}, Lcom/fasterxml/jackson/core/JsonParser;->nextToken()Lcom/fasterxml/jackson/core/JsonToken;

    .line 365
    :cond_1
    :goto_1
    invoke-virtual/range {p1 .. p1}, Lcom/fasterxml/jackson/core/JsonParser;->nextToken()Lcom/fasterxml/jackson/core/JsonToken;

    move-result-object v9

    sget-object v10, Lcom/fasterxml/jackson/core/JsonToken;->END_OBJECT:Lcom/fasterxml/jackson/core/JsonToken;

    const/4 v11, 0x1

    if-eq v9, v10, :cond_14

    .line 366
    invoke-virtual/range {p1 .. p1}, Lcom/fasterxml/jackson/core/JsonParser;->getCurrentName()Ljava/lang/String;

    move-result-object v9

    .line 368
    invoke-virtual/range {p1 .. p1}, Lcom/fasterxml/jackson/core/JsonParser;->nextToken()Lcom/fasterxml/jackson/core/JsonToken;

    .line 371
    const-string v10, "FileVersion"

    invoke-virtual {v10, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_3

    .line 372
    invoke-virtual/range {p1 .. p1}, Lcom/fasterxml/jackson/core/JsonParser;->getIntValue()I

    move-result v8

    .line 374
    invoke-direct {v1}, Lcom/lostpixels/fieldservice/internal/report/MinistryPlannerManager;->getLatestFileVersion()I

    move-result v9

    if-gt v8, v9, :cond_2

    goto :goto_2

    .line 375
    :cond_2
    new-instance v0, Lcom/lostpixels/fieldservice/utils/FileVersionException;

    const-string v8, "Newer file version"

    invoke-direct {v0, v8}, Lcom/lostpixels/fieldservice/utils/FileVersionException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 376
    :cond_3
    const-string v10, "Date"

    invoke-virtual {v10, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_4

    .line 377
    new-instance v9, Ljava/util/Date;

    invoke-virtual/range {p1 .. p1}, Lcom/fasterxml/jackson/core/JsonParser;->getLongValue()J

    move-result-wide v10

    invoke-direct {v9, v10, v11}, Ljava/util/Date;-><init>(J)V

    invoke-virtual {v1, v9}, Lcom/lostpixels/fieldservice/internal/report/MinistryPlannerManager;->realmSet$dateChanged(Ljava/util/Date;)V

    :goto_2
    const/16 v17, 0x0

    goto :goto_1

    .line 378
    :cond_4
    const-string v10, "Array"

    invoke-virtual {v10, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_13

    .line 383
    invoke-virtual {v1}, Lcom/lostpixels/fieldservice/internal/report/MinistryPlannerManager;->realmGet$ministryPlannerYears()Lio/realm/RealmList;

    move-result-object v9

    if-nez v9, :cond_5

    .line 384
    new-instance v9, Lio/realm/RealmList;

    invoke-direct {v9}, Lio/realm/RealmList;-><init>()V

    invoke-virtual {v1, v9}, Lcom/lostpixels/fieldservice/internal/report/MinistryPlannerManager;->realmSet$ministryPlannerYears(Lio/realm/RealmList;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_5
    const/4 v13, -0x1

    const/4 v14, 0x0

    const/4 v15, 0x0

    const/16 v16, 0x0

    const/16 v17, 0x0

    .line 385
    :cond_6
    :goto_3
    :try_start_1
    invoke-virtual/range {p1 .. p1}, Lcom/fasterxml/jackson/core/JsonParser;->nextToken()Lcom/fasterxml/jackson/core/JsonToken;

    move-result-object v7

    sget-object v9, Lcom/fasterxml/jackson/core/JsonToken;->END_OBJECT:Lcom/fasterxml/jackson/core/JsonToken;

    if-eq v7, v9, :cond_1

    .line 387
    invoke-virtual/range {p1 .. p1}, Lcom/fasterxml/jackson/core/JsonParser;->getCurrentName()Ljava/lang/String;

    move-result-object v7

    .line 388
    invoke-virtual/range {p1 .. p1}, Lcom/fasterxml/jackson/core/JsonParser;->nextToken()Lcom/fasterxml/jackson/core/JsonToken;

    .line 389
    const-string v9, "K"

    invoke-virtual {v9, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_7

    .line 390
    invoke-virtual/range {p1 .. p1}, Lcom/fasterxml/jackson/core/JsonParser;->getIntValue()I

    move-result v13

    const/4 v7, 0x0

    const/4 v9, -0x1

    const/16 v18, 0x0

    goto/16 :goto_8

    :catch_1
    move-exception v0

    goto/16 :goto_a

    .line 391
    :cond_7
    const-string v9, "Year"

    invoke-virtual {v9, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_11

    .line 392
    new-instance v7, Lio/realm/RealmList;

    invoke-direct {v7}, Lio/realm/RealmList;-><init>()V

    const/4 v9, 0x0

    const/16 v18, 0x0

    .line 394
    :goto_4
    invoke-virtual/range {p1 .. p1}, Lcom/fasterxml/jackson/core/JsonParser;->nextToken()Lcom/fasterxml/jackson/core/JsonToken;

    move-result-object v10

    sget-object v12, Lcom/fasterxml/jackson/core/JsonToken;->END_OBJECT:Lcom/fasterxml/jackson/core/JsonToken;

    if-eq v10, v12, :cond_10

    .line 395
    invoke-virtual/range {p1 .. p1}, Lcom/fasterxml/jackson/core/JsonParser;->getCurrentName()Ljava/lang/String;

    move-result-object v10

    .line 396
    invoke-virtual/range {p1 .. p1}, Lcom/fasterxml/jackson/core/JsonParser;->nextToken()Lcom/fasterxml/jackson/core/JsonToken;

    .line 397
    const-string v12, "F"

    invoke-virtual {v12, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v12

    if-eqz v12, :cond_9

    .line 398
    invoke-virtual/range {p1 .. p1}, Lcom/fasterxml/jackson/core/JsonParser;->getFloatValue()F

    move-result v10

    move v14, v10

    :cond_8
    :goto_5
    move-object/from16 v10, v16

    goto :goto_6

    .line 399
    :cond_9
    const-string v12, "D"

    invoke-virtual {v12, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v12

    if-eqz v12, :cond_a

    .line 400
    invoke-virtual/range {p1 .. p1}, Lcom/fasterxml/jackson/core/JsonParser;->getIntValue()I

    move-result v10

    move v15, v10

    goto :goto_5

    .line 401
    :cond_a
    const-string v12, "C"

    invoke-virtual {v12, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_8

    .line 402
    invoke-virtual/range {p1 .. p1}, Lcom/fasterxml/jackson/core/JsonParser;->getText()Ljava/lang/String;

    move-result-object v10

    :goto_6
    cmpl-float v12, v14, v18

    if-eqz v12, :cond_f

    if-eqz v15, :cond_f

    if-nez v10, :cond_b

    const/4 v12, 0x2

    if-gt v8, v12, :cond_f

    :cond_b
    if-eq v15, v9, :cond_e

    .line 406
    invoke-virtual {v0, v13}, Landroid/util/SparseBooleanArray;->indexOfKey(I)I

    move-result v9

    if-gez v9, :cond_e

    if-eqz v10, :cond_c

    .line 407
    const-string v9, "null"

    if-ne v10, v9, :cond_d

    :cond_c
    move-object v10, v5

    .line 409
    :cond_d
    new-instance v9, Lcom/lostpixels/fieldservice/internal/report/MinistryPlannerItem;

    invoke-direct {v9, v15, v14, v10}, Lcom/lostpixels/fieldservice/internal/report/MinistryPlannerItem;-><init>(IFLjava/lang/String;)V

    invoke-virtual {v7, v9}, Lio/realm/RealmList;->add(Ljava/lang/Object;)Z

    .line 410
    invoke-virtual {v0, v15, v11}, Landroid/util/SparseBooleanArray;->append(IZ)V

    :cond_e
    move v9, v15

    const/4 v14, 0x0

    const/4 v15, 0x0

    const/16 v16, 0x0

    goto :goto_4

    :cond_f
    move-object/from16 v16, v10

    goto :goto_4

    :cond_10
    :goto_7
    const/4 v9, -0x1

    goto :goto_8

    :cond_11
    const/16 v18, 0x0

    if-nez v7, :cond_12

    .line 419
    const-string v7, "Keyname is null"

    invoke-static {v6, v7}, Lcom/lostpixels/fieldservice/utils/LogToSD;->write(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_1

    :cond_12
    const/4 v7, 0x0

    goto :goto_7

    :goto_8
    if-eq v13, v9, :cond_6

    if-eqz v7, :cond_6

    .line 422
    invoke-direct {v1, v13}, Lcom/lostpixels/fieldservice/internal/report/MinistryPlannerManager;->getYear(I)Lio/realm/RealmList;

    move-result-object v10

    if-nez v10, :cond_6

    .line 423
    new-instance v10, Lcom/lostpixels/fieldservice/internal/report/MinistryPlannerYear;

    invoke-direct {v10}, Lcom/lostpixels/fieldservice/internal/report/MinistryPlannerYear;-><init>()V

    .line 424
    invoke-virtual {v10, v13}, Lcom/lostpixels/fieldservice/internal/report/MinistryPlannerYear;->setYear(I)V

    .line 425
    invoke-virtual {v10, v7}, Lcom/lostpixels/fieldservice/internal/report/MinistryPlannerYear;->setItems(Lio/realm/RealmList;)V

    .line 426
    invoke-virtual {v1}, Lcom/lostpixels/fieldservice/internal/report/MinistryPlannerManager;->realmGet$ministryPlannerYears()Lio/realm/RealmList;

    move-result-object v7

    invoke-virtual {v7, v10}, Lio/realm/RealmList;->add(Ljava/lang/Object;)Z

    const/4 v13, -0x1

    goto/16 :goto_3

    :cond_13
    const/16 v17, 0x0

    if-nez v9, :cond_1

    .line 432
    const-string v0, "Fieldname is null"

    invoke-static {v6, v0}, Lcom/lostpixels/fieldservice/utils/LogToSD;->write(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_9

    :cond_14
    const/16 v17, 0x0

    .line 436
    :goto_9
    invoke-virtual {v3}, Lio/realm/Realm;->isInTransaction()Z

    move-result v0

    if-ne v0, v2, :cond_16

    if-nez v4, :cond_15

    if-eqz v2, :cond_15

    .line 439
    invoke-virtual {v3}, Lio/realm/Realm;->commitTransaction()V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 449
    :cond_15
    invoke-virtual {v3}, Lio/realm/Realm;->close()V

    return v11

    .line 437
    :cond_16
    :try_start_2
    new-instance v0, Ljava/lang/RuntimeException;

    invoke-direct {v0}, Ljava/lang/RuntimeException;-><init>()V

    throw v0
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_1
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 442
    :goto_a
    :try_start_3
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Exception cought: "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 443
    invoke-virtual {v0}, Ljava/lang/Throwable;->getCause()Ljava/lang/Throwable;

    move-result-object v8

    if-eqz v8, :cond_17

    invoke-virtual {v0}, Ljava/lang/Throwable;->getCause()Ljava/lang/Throwable;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/Throwable;->toString()Ljava/lang/String;

    move-result-object v5

    :cond_17
    invoke-virtual {v7, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    .line 442
    invoke-static {v6, v5}, Lcom/lostpixels/fieldservice/utils/LogToSD;->write(Ljava/lang/String;Ljava/lang/String;)V

    .line 444
    invoke-static {v0}, Lcom/lostpixels/fieldservice/helpfunctions/HelpFunctions;->getStackTrace(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v6, v0}, Lcom/lostpixels/fieldservice/utils/LogToSD;->write(Ljava/lang/String;Ljava/lang/String;)V

    if-nez v4, :cond_18

    if-eqz v2, :cond_18

    .line 446
    invoke-virtual {v3}, Lio/realm/Realm;->cancelTransaction()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 449
    :cond_18
    invoke-virtual {v3}, Lio/realm/Realm;->close()V

    return v17

    :goto_b
    invoke-virtual {v3}, Lio/realm/Realm;->close()V

    .line 450
    throw v0
.end method

.method public loadFromFile(Landroid/content/Context;)Z
    .locals 7

    .line 313
    const-string v0, "PublicationManager.load"

    .line 316
    new-instance v1, Ljava/io/File;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1}, Landroid/content/Context;->getFilesDir()Ljava/io/File;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v3, "/"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, "Schedule.bin"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    const/4 v2, 0x0

    const/4 v4, 0x0

    .line 319
    :try_start_0
    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v5

    if-eqz v5, :cond_1

    .line 320
    new-instance v5, Lcom/fasterxml/jackson/dataformat/smile/SmileFactory;

    invoke-direct {v5}, Lcom/fasterxml/jackson/dataformat/smile/SmileFactory;-><init>()V

    .line 321
    invoke-virtual {p1, v3}, Landroid/content/Context;->openFileInput(Ljava/lang/String;)Ljava/io/FileInputStream;

    move-result-object p1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    if-eqz p1, :cond_0

    .line 323
    :try_start_1
    invoke-virtual {v5, p1}, Lcom/fasterxml/jackson/core/JsonFactory;->createParser(Ljava/io/InputStream;)Lcom/fasterxml/jackson/core/JsonParser;

    move-result-object v4

    const/4 v3, 0x1

    .line 324
    invoke-virtual {p0, v4, v3}, Lcom/lostpixels/fieldservice/internal/report/MinistryPlannerManager;->load(Lcom/fasterxml/jackson/core/JsonParser;Z)Z

    move-result v2
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :cond_0
    move-object v6, v4

    move-object v4, p1

    move-object p1, v6

    goto :goto_0

    :catchall_0
    move-exception v0

    move-object v6, v4

    move-object v4, p1

    move-object p1, v6

    goto :goto_7

    :catch_0
    move-exception v1

    goto :goto_3

    :catchall_1
    move-exception v0

    move-object p1, v4

    goto :goto_7

    :catch_1
    move-exception v1

    move-object p1, v4

    goto :goto_3

    :cond_1
    move-object p1, v4

    :goto_0
    if-eqz v4, :cond_2

    .line 338
    :try_start_2
    invoke-virtual {v4}, Ljava/io/FileInputStream;->close()V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_2

    goto :goto_1

    :catch_2
    nop

    :cond_2
    :goto_1
    if-eqz p1, :cond_3

    .line 343
    :try_start_3
    invoke-virtual {p1}, Lcom/fasterxml/jackson/core/JsonParser;->close()V
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_3

    goto :goto_2

    :catch_3
    nop

    :cond_3
    :goto_2
    if-eqz v2, :cond_6

    .line 348
    invoke-virtual {v1}, Ljava/io/File;->delete()Z

    goto :goto_6

    .line 330
    :goto_3
    :try_start_4
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Exception cought: "

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 331
    invoke-virtual {v1}, Ljava/lang/Throwable;->getCause()Ljava/lang/Throwable;

    move-result-object v5

    if-eqz v5, :cond_4

    invoke-virtual {v1}, Ljava/lang/Throwable;->getCause()Ljava/lang/Throwable;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/Throwable;->toString()Ljava/lang/String;

    move-result-object v5

    goto :goto_4

    :cond_4
    const-string v5, ""

    :goto_4
    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 330
    invoke-static {v0, v3}, Lcom/lostpixels/fieldservice/utils/LogToSD;->write(Ljava/lang/String;Ljava/lang/String;)V

    .line 332
    invoke-static {v1}, Lcom/lostpixels/fieldservice/helpfunctions/HelpFunctions;->getStackTrace(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/lostpixels/fieldservice/utils/LogToSD;->write(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    if-eqz p1, :cond_5

    .line 338
    :try_start_5
    invoke-virtual {p1}, Ljava/io/FileInputStream;->close()V
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_4

    goto :goto_5

    :catch_4
    nop

    :cond_5
    :goto_5
    if-eqz v4, :cond_6

    .line 343
    :try_start_6
    invoke-virtual {v4}, Lcom/fasterxml/jackson/core/JsonParser;->close()V
    :try_end_6
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_6} :catch_5

    :catch_5
    :cond_6
    :goto_6
    return v2

    :goto_7
    if-eqz v4, :cond_7

    .line 338
    :try_start_7
    invoke-virtual {v4}, Ljava/io/FileInputStream;->close()V
    :try_end_7
    .catch Ljava/lang/Exception; {:try_start_7 .. :try_end_7} :catch_6

    goto :goto_8

    :catch_6
    nop

    :cond_7
    :goto_8
    if-eqz p1, :cond_8

    .line 343
    :try_start_8
    invoke-virtual {p1}, Lcom/fasterxml/jackson/core/JsonParser;->close()V
    :try_end_8
    .catch Ljava/lang/Exception; {:try_start_8 .. :try_end_8} :catch_7

    .line 349
    :catch_7
    :cond_8
    throw v0
.end method

.method public merge(Lcom/fasterxml/jackson/core/JsonParser;)Z
    .locals 3

    .line 455
    new-instance v0, Lcom/lostpixels/fieldservice/internal/report/MinistryPlannerManager;

    invoke-direct {v0}, Lcom/lostpixels/fieldservice/internal/report/MinistryPlannerManager;-><init>()V

    const/4 v1, 0x0

    .line 456
    invoke-virtual {v0, p1, v1}, Lcom/lostpixels/fieldservice/internal/report/MinistryPlannerManager;->load(Lcom/fasterxml/jackson/core/JsonParser;Z)Z

    move-result p1

    .line 458
    invoke-virtual {p0}, Lcom/lostpixels/fieldservice/internal/report/MinistryPlannerManager;->realmGet$dateChanged()Ljava/util/Date;

    move-result-object v1

    if-nez v1, :cond_0

    invoke-virtual {v0}, Lcom/lostpixels/fieldservice/internal/report/MinistryPlannerManager;->realmGet$dateChanged()Ljava/util/Date;

    move-result-object v1

    if-nez v1, :cond_1

    :cond_0
    invoke-virtual {p0}, Lcom/lostpixels/fieldservice/internal/report/MinistryPlannerManager;->realmGet$dateChanged()Ljava/util/Date;

    move-result-object v1

    if-eqz v1, :cond_2

    invoke-virtual {v0}, Lcom/lostpixels/fieldservice/internal/report/MinistryPlannerManager;->realmGet$dateChanged()Ljava/util/Date;

    move-result-object v1

    if-eqz v1, :cond_2

    invoke-virtual {p0}, Lcom/lostpixels/fieldservice/internal/report/MinistryPlannerManager;->realmGet$dateChanged()Ljava/util/Date;

    move-result-object v1

    invoke-virtual {v0}, Lcom/lostpixels/fieldservice/internal/report/MinistryPlannerManager;->realmGet$dateChanged()Ljava/util/Date;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/Date;->before(Ljava/util/Date;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 460
    :cond_1
    new-instance p1, Lcom/lostpixels/fieldservice/internal/report/MinistryPlannerManager$4;

    invoke-direct {p1, p0, v0}, Lcom/lostpixels/fieldservice/internal/report/MinistryPlannerManager$4;-><init>(Lcom/lostpixels/fieldservice/internal/report/MinistryPlannerManager;Lcom/lostpixels/fieldservice/internal/report/MinistryPlannerManager;)V

    invoke-static {p1}, Lcom/lostpixels/fieldservice/realm/RealmHelper;->write(Lcom/lostpixels/fieldservice/realm/RealmHelper$Writer;)Z

    move-result p1

    :cond_2
    return p1
.end method

.method public planTime(ILjava/util/Date;DLjava/lang/String;)Lcom/lostpixels/fieldservice/internal/report/MinistryPlannerManager;
    .locals 0

    .line 120
    invoke-direct/range {p0 .. p5}, Lcom/lostpixels/fieldservice/internal/report/MinistryPlannerManager;->planTimeIntern(ILjava/util/Date;DLjava/lang/String;)V

    move-object p1, p0

    .line 122
    new-instance p2, Ljava/util/Date;

    invoke-direct {p2}, Ljava/util/Date;-><init>()V

    invoke-virtual {p0, p2}, Lcom/lostpixels/fieldservice/internal/report/MinistryPlannerManager;->realmSet$dateChanged(Ljava/util/Date;)V

    return-object p1
.end method

.method public realmGet$dateChanged()Ljava/util/Date;
    .locals 1

    iget-object v0, p0, Lcom/lostpixels/fieldservice/internal/report/MinistryPlannerManager;->dateChanged:Ljava/util/Date;

    return-object v0
.end method

.method public realmGet$id()J
    .locals 2

    iget-wide v0, p0, Lcom/lostpixels/fieldservice/internal/report/MinistryPlannerManager;->id:J

    return-wide v0
.end method

.method public realmGet$ministryPlannerYears()Lio/realm/RealmList;
    .locals 1

    iget-object v0, p0, Lcom/lostpixels/fieldservice/internal/report/MinistryPlannerManager;->ministryPlannerYears:Lio/realm/RealmList;

    return-object v0
.end method

.method public realmSet$dateChanged(Ljava/util/Date;)V
    .locals 0

    iput-object p1, p0, Lcom/lostpixels/fieldservice/internal/report/MinistryPlannerManager;->dateChanged:Ljava/util/Date;

    return-void
.end method

.method public realmSet$id(J)V
    .locals 0

    iput-wide p1, p0, Lcom/lostpixels/fieldservice/internal/report/MinistryPlannerManager;->id:J

    return-void
.end method

.method public realmSet$ministryPlannerYears(Lio/realm/RealmList;)V
    .locals 0

    iput-object p1, p0, Lcom/lostpixels/fieldservice/internal/report/MinistryPlannerManager;->ministryPlannerYears:Lio/realm/RealmList;

    return-void
.end method

.method public save(Lcom/fasterxml/jackson/core/JsonGenerator;)Z
    .locals 6

    .line 262
    const-string v0, ""

    :try_start_0
    sget-object v1, Lcom/lostpixels/fieldservice/internal/report/MinistryPlannerManager;->mFileCommunicationLock:Ljava/util/concurrent/locks/Lock;

    if-nez v1, :cond_0

    .line 263
    new-instance v1, Ljava/util/concurrent/locks/ReentrantLock;

    invoke-direct {v1}, Ljava/util/concurrent/locks/ReentrantLock;-><init>()V

    sput-object v1, Lcom/lostpixels/fieldservice/internal/report/MinistryPlannerManager;->mFileCommunicationLock:Ljava/util/concurrent/locks/Lock;

    goto :goto_0

    :catchall_0
    move-exception p1

    goto/16 :goto_5

    :catch_0
    move-exception p1

    goto/16 :goto_4

    .line 264
    :cond_0
    :goto_0
    sget-object v1, Lcom/lostpixels/fieldservice/internal/report/MinistryPlannerManager;->mFileCommunicationLock:Ljava/util/concurrent/locks/Lock;

    invoke-interface {v1}, Ljava/util/concurrent/locks/Lock;->lock()V

    .line 266
    invoke-static {}, Lcom/lostpixels/fieldservice/utils/PerfToSD;->start()V

    .line 268
    invoke-virtual {p1}, Lcom/fasterxml/jackson/core/JsonGenerator;->writeStartObject()V

    .line 269
    const-string v1, "FileVersion"

    invoke-direct {p0}, Lcom/lostpixels/fieldservice/internal/report/MinistryPlannerManager;->getLatestFileVersion()I

    move-result v2

    invoke-virtual {p1, v1, v2}, Lcom/fasterxml/jackson/core/JsonGenerator;->writeNumberField(Ljava/lang/String;I)V

    .line 270
    invoke-virtual {p0}, Lcom/lostpixels/fieldservice/internal/report/MinistryPlannerManager;->realmGet$dateChanged()Ljava/util/Date;

    move-result-object v1

    if-eqz v1, :cond_1

    .line 271
    const-string v1, "Date"

    invoke-virtual {p0}, Lcom/lostpixels/fieldservice/internal/report/MinistryPlannerManager;->realmGet$dateChanged()Ljava/util/Date;

    move-result-object v2

    invoke-virtual {v2}, Ljava/util/Date;->getTime()J

    move-result-wide v2

    invoke-virtual {p1, v1, v2, v3}, Lcom/fasterxml/jackson/core/JsonGenerator;->writeNumberField(Ljava/lang/String;J)V

    .line 273
    :cond_1
    const-string v1, "Array"

    invoke-virtual {p1, v1}, Lcom/fasterxml/jackson/core/JsonGenerator;->writeObjectFieldStart(Ljava/lang/String;)V

    .line 274
    invoke-virtual {p0}, Lcom/lostpixels/fieldservice/internal/report/MinistryPlannerManager;->realmGet$ministryPlannerYears()Lio/realm/RealmList;

    move-result-object v1

    invoke-virtual {v1}, Lio/realm/RealmList;->where()Lio/realm/RealmQuery;

    move-result-object v1

    invoke-virtual {v1}, Lio/realm/RealmQuery;->findAll()Lio/realm/RealmResults;

    move-result-object v1

    invoke-virtual {v1}, Lio/realm/RealmResults;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_5

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/lostpixels/fieldservice/internal/report/MinistryPlannerYear;

    .line 276
    invoke-virtual {v2}, Lcom/lostpixels/fieldservice/internal/report/MinistryPlannerYear;->realmGet$year()I

    move-result v3

    .line 277
    const-string v4, "K"

    invoke-virtual {p1, v4, v3}, Lcom/fasterxml/jackson/core/JsonGenerator;->writeNumberField(Ljava/lang/String;I)V

    .line 279
    const-string v3, "Year"

    invoke-virtual {p1, v3}, Lcom/fasterxml/jackson/core/JsonGenerator;->writeObjectFieldStart(Ljava/lang/String;)V

    .line 281
    invoke-virtual {v2}, Lcom/lostpixels/fieldservice/internal/report/MinistryPlannerYear;->getItems()Lio/realm/RealmList;

    move-result-object v2

    invoke-virtual {v2}, Lio/realm/RealmList;->where()Lio/realm/RealmQuery;

    move-result-object v2

    invoke-virtual {v2}, Lio/realm/RealmQuery;->findAll()Lio/realm/RealmResults;

    move-result-object v2

    invoke-virtual {v2}, Lio/realm/RealmResults;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_2
    :goto_2
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_4

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/lostpixels/fieldservice/internal/report/MinistryPlannerItem;

    .line 282
    invoke-virtual {v3}, Lcom/lostpixels/fieldservice/internal/report/MinistryPlannerItem;->realmGet$time()F

    move-result v4

    const/4 v5, 0x0

    cmpl-float v4, v4, v5

    if-lez v4, :cond_2

    .line 283
    const-string v4, "F"

    invoke-virtual {v3}, Lcom/lostpixels/fieldservice/internal/report/MinistryPlannerItem;->realmGet$time()F

    move-result v5

    invoke-virtual {p1, v4, v5}, Lcom/fasterxml/jackson/core/JsonGenerator;->writeNumberField(Ljava/lang/String;F)V

    .line 284
    const-string v4, "D"

    invoke-virtual {v3}, Lcom/lostpixels/fieldservice/internal/report/MinistryPlannerItem;->realmGet$date()I

    move-result v5

    invoke-virtual {p1, v4, v5}, Lcom/fasterxml/jackson/core/JsonGenerator;->writeNumberField(Ljava/lang/String;I)V

    .line 285
    const-string v4, "C"

    invoke-virtual {v3}, Lcom/lostpixels/fieldservice/internal/report/MinistryPlannerItem;->realmGet$comment()Ljava/lang/String;

    move-result-object v5

    if-nez v5, :cond_3

    move-object v3, v0

    goto :goto_3

    :cond_3
    invoke-virtual {v3}, Lcom/lostpixels/fieldservice/internal/report/MinistryPlannerItem;->realmGet$comment()Ljava/lang/String;

    move-result-object v3

    :goto_3
    invoke-virtual {p1, v4, v3}, Lcom/fasterxml/jackson/core/JsonGenerator;->writeStringField(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_2

    .line 288
    :cond_4
    invoke-virtual {p1}, Lcom/fasterxml/jackson/core/JsonGenerator;->writeEndObject()V

    goto :goto_1

    .line 291
    :cond_5
    invoke-virtual {p1}, Lcom/fasterxml/jackson/core/JsonGenerator;->writeEndObject()V

    .line 293
    invoke-virtual {p1}, Lcom/fasterxml/jackson/core/JsonGenerator;->writeEndObject()V

    .line 295
    invoke-virtual {p1}, Lcom/fasterxml/jackson/core/JsonGenerator;->flush()V

    .line 297
    const-string p1, "Save planning file"

    invoke-static {p1}, Lcom/lostpixels/fieldservice/utils/PerfToSD;->stop(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 307
    sget-object p1, Lcom/lostpixels/fieldservice/internal/report/MinistryPlannerManager;->mFileCommunicationLock:Ljava/util/concurrent/locks/Lock;

    invoke-interface {p1}, Ljava/util/concurrent/locks/Lock;->unlock()V

    const/4 p1, 0x1

    return p1

    .line 301
    :goto_4
    :try_start_1
    const-string v1, "PublicManager.save"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Exception cought: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 302
    invoke-virtual {p1}, Ljava/lang/Throwable;->getCause()Ljava/lang/Throwable;

    move-result-object v3

    if-eqz v3, :cond_6

    invoke-virtual {p1}, Ljava/lang/Throwable;->getCause()Ljava/lang/Throwable;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Throwable;->toString()Ljava/lang/String;

    move-result-object v0

    :cond_6
    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 301
    invoke-static {v1, v0}, Lcom/lostpixels/fieldservice/utils/LogToSD;->write(Ljava/lang/String;Ljava/lang/String;)V

    .line 303
    const-string v0, "Stacktrace"

    invoke-static {p1}, Lcom/lostpixels/fieldservice/helpfunctions/HelpFunctions;->getStackTrace(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1}, Lcom/lostpixels/fieldservice/utils/LogToSD;->write(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 307
    sget-object p1, Lcom/lostpixels/fieldservice/internal/report/MinistryPlannerManager;->mFileCommunicationLock:Ljava/util/concurrent/locks/Lock;

    invoke-interface {p1}, Ljava/util/concurrent/locks/Lock;->unlock()V

    const/4 p1, 0x0

    return p1

    :goto_5
    sget-object v0, Lcom/lostpixels/fieldservice/internal/report/MinistryPlannerManager;->mFileCommunicationLock:Ljava/util/concurrent/locks/Lock;

    invoke-interface {v0}, Ljava/util/concurrent/locks/Lock;->unlock()V

    .line 309
    throw p1
.end method

.method public sort(I)V
    .locals 1

    .line 235
    new-instance v0, Lcom/lostpixels/fieldservice/internal/report/MinistryPlannerManager$2;

    invoke-direct {v0, p0, p1}, Lcom/lostpixels/fieldservice/internal/report/MinistryPlannerManager$2;-><init>(Lcom/lostpixels/fieldservice/internal/report/MinistryPlannerManager;I)V

    .line 243
    invoke-virtual {p0}, Lio/realm/RealmObject;->isManaged()Z

    move-result p1

    .line 235
    invoke-static {v0, p1}, Lcom/lostpixels/fieldservice/realm/RealmHelper;->write(Lcom/lostpixels/fieldservice/realm/RealmHelper$Writer;Z)Z

    return-void
.end method

.method public updateFromRealMinistry2(Ljava/util/List;)V
    .locals 2

    .line 510
    invoke-interface {p1}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_1

    invoke-virtual {p0}, Lcom/lostpixels/fieldservice/internal/report/MinistryPlannerManager;->realmGet$ministryPlannerYears()Lio/realm/RealmList;

    move-result-object v0

    if-nez v0, :cond_0

    goto :goto_0

    .line 513
    :cond_0
    invoke-virtual {p0}, Lcom/lostpixels/fieldservice/internal/report/MinistryPlannerManager;->realmGet$ministryPlannerYears()Lio/realm/RealmList;

    move-result-object v0

    monitor-enter v0

    .line 514
    :try_start_0
    new-instance v1, Lcom/lostpixels/fieldservice/internal/report/MinistryPlannerManager$6;

    invoke-direct {v1, p0, p1}, Lcom/lostpixels/fieldservice/internal/report/MinistryPlannerManager$6;-><init>(Lcom/lostpixels/fieldservice/internal/report/MinistryPlannerManager;Ljava/util/List;)V

    invoke-static {v1}, Lcom/lostpixels/fieldservice/realm/RealmHelper;->write(Lcom/lostpixels/fieldservice/realm/RealmHelper$Writer;)Z

    .line 622
    monitor-exit v0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1

    :cond_1
    :goto_0
    return-void
.end method
