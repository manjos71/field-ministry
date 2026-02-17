.class public Lcom/lostpixels/fieldservice/internal/ministry/MinistryManager;
.super Lio/realm/RealmObject;
.source "SourceFile"

# interfaces
.implements Lio/realm/com_lostpixels_fieldservice_internal_ministry_MinistryManagerRealmProxyInterface;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/lostpixels/fieldservice/internal/ministry/MinistryManager$NameCompare;
    }
.end annotation


# static fields
.field private static instanceLock:Ljava/util/concurrent/locks/Lock;


# instance fields
.field public cities:Lio/realm/RealmList;

.field public id:J

.field lastReportTime:J

.field mCitiesDate:Ljava/util/Date;

.field mScripturesDate:Ljava/util/Date;

.field mSuburbDate:Ljava/util/Date;

.field private mbCleanUpPersons:Z

.field private mbFileLoaded:Z

.field public scriptures:Lio/realm/RealmList;

.field public suburbs:Lio/realm/RealmList;

.field private unmanagedPersonList:Ljava/util/List;

.field public unmanagedTerritoryList:Ljava/util/List;


# direct methods
.method static bridge synthetic -$$Nest$fgetunmanagedPersonList(Lcom/lostpixels/fieldservice/internal/ministry/MinistryManager;)Ljava/util/List;
    .locals 0

    .line 0
    iget-object p0, p0, Lcom/lostpixels/fieldservice/internal/ministry/MinistryManager;->unmanagedPersonList:Ljava/util/List;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fputunmanagedPersonList(Lcom/lostpixels/fieldservice/internal/ministry/MinistryManager;Ljava/util/List;)V
    .locals 0

    .line 0
    iput-object p1, p0, Lcom/lostpixels/fieldservice/internal/ministry/MinistryManager;->unmanagedPersonList:Ljava/util/List;

    return-void
.end method

.method static bridge synthetic -$$Nest$mcleanUpPersons(Lcom/lostpixels/fieldservice/internal/ministry/MinistryManager;Lio/realm/Realm;)V
    .locals 0

    .line 0
    invoke-direct {p0, p1}, Lcom/lostpixels/fieldservice/internal/ministry/MinistryManager;->cleanUpPersons(Lio/realm/Realm;)V

    return-void
.end method

.method static bridge synthetic -$$Nest$msortScriptures(Lcom/lostpixels/fieldservice/internal/ministry/MinistryManager;)V
    .locals 0

    .line 0
    invoke-direct {p0}, Lcom/lostpixels/fieldservice/internal/ministry/MinistryManager;->sortScriptures()V

    return-void
.end method

.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>()V
    .locals 2

    .line 105
    invoke-direct {p0}, Lio/realm/RealmObject;-><init>()V

    instance-of v0, p0, Lio/realm/internal/RealmObjectProxy;

    if-eqz v0, :cond_0

    move-object v0, p0

    check-cast v0, Lio/realm/internal/RealmObjectProxy;

    invoke-interface {v0}, Lio/realm/internal/RealmObjectProxy;->realm$injectObjectContext()V

    :cond_0
    const-wide/16 v0, 0x1

    .line 90
    invoke-virtual {p0, v0, v1}, Lcom/lostpixels/fieldservice/internal/ministry/MinistryManager;->realmSet$id(J)V

    const-wide/16 v0, 0x0

    .line 96
    iput-wide v0, p0, Lcom/lostpixels/fieldservice/internal/ministry/MinistryManager;->lastReportTime:J

    .line 107
    iget-object v0, p0, Lcom/lostpixels/fieldservice/internal/ministry/MinistryManager;->unmanagedTerritoryList:Ljava/util/List;

    if-nez v0, :cond_1

    .line 108
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/lostpixels/fieldservice/internal/ministry/MinistryManager;->unmanagedTerritoryList:Ljava/util/List;

    .line 109
    :cond_1
    iget-object v0, p0, Lcom/lostpixels/fieldservice/internal/ministry/MinistryManager;->unmanagedPersonList:Ljava/util/List;

    if-nez v0, :cond_2

    .line 110
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/lostpixels/fieldservice/internal/ministry/MinistryManager;->unmanagedPersonList:Ljava/util/List;

    .line 111
    :cond_2
    invoke-virtual {p0}, Lcom/lostpixels/fieldservice/internal/ministry/MinistryManager;->realmGet$suburbs()Lio/realm/RealmList;

    move-result-object v0

    if-nez v0, :cond_3

    .line 112
    new-instance v0, Lio/realm/RealmList;

    invoke-direct {v0}, Lio/realm/RealmList;-><init>()V

    invoke-virtual {p0, v0}, Lcom/lostpixels/fieldservice/internal/ministry/MinistryManager;->realmSet$suburbs(Lio/realm/RealmList;)V

    .line 114
    :cond_3
    invoke-virtual {p0}, Lcom/lostpixels/fieldservice/internal/ministry/MinistryManager;->realmGet$scriptures()Lio/realm/RealmList;

    move-result-object v0

    if-nez v0, :cond_4

    .line 115
    new-instance v0, Lio/realm/RealmList;

    invoke-direct {v0}, Lio/realm/RealmList;-><init>()V

    invoke-virtual {p0, v0}, Lcom/lostpixels/fieldservice/internal/ministry/MinistryManager;->realmSet$scriptures(Lio/realm/RealmList;)V

    :cond_4
    const/4 v0, 0x1

    .line 116
    iput-boolean v0, p0, Lcom/lostpixels/fieldservice/internal/ministry/MinistryManager;->mbFileLoaded:Z

    return-void
.end method

.method private cleanUpPersons(Lio/realm/Realm;)V
    .locals 6

    const/4 v0, 0x0

    .line 318
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    .line 306
    iget-boolean v2, p0, Lcom/lostpixels/fieldservice/internal/ministry/MinistryManager;->mbCleanUpPersons:Z

    if-nez v2, :cond_0

    goto/16 :goto_4

    .line 308
    :cond_0
    iput-boolean v0, p0, Lcom/lostpixels/fieldservice/internal/ministry/MinistryManager;->mbCleanUpPersons:Z

    .line 310
    const-string v0, "1.11"

    invoke-static {v0}, Lcom/lostpixels/fieldservice/utils/PerfToSD;->lap(Ljava/lang/String;)V

    .line 317
    new-instance v0, Ljava/util/TreeSet;

    new-instance v2, Lcom/lostpixels/fieldservice/internal/ministry/MinistryManager$1LongComparator;

    invoke-direct {v2, p0}, Lcom/lostpixels/fieldservice/internal/ministry/MinistryManager$1LongComparator;-><init>(Lcom/lostpixels/fieldservice/internal/ministry/MinistryManager;)V

    invoke-direct {v0, v2}, Ljava/util/TreeSet;-><init>(Ljava/util/Comparator;)V

    .line 318
    const-class v2, Lcom/lostpixels/fieldservice/internal/ministry/Visit;

    invoke-virtual {p1, v2}, Lio/realm/Realm;->where(Ljava/lang/Class;)Lio/realm/RealmQuery;

    move-result-object v2

    const-string v3, "houseHolder"

    invoke-virtual {v2, v3, v1}, Lio/realm/RealmQuery;->notEqualTo(Ljava/lang/String;Ljava/lang/Integer;)Lio/realm/RealmQuery;

    move-result-object v2

    invoke-virtual {v2}, Lio/realm/RealmQuery;->findAll()Lio/realm/RealmResults;

    move-result-object v2

    .line 319
    const-string v3, "1.111"

    invoke-static {v3}, Lcom/lostpixels/fieldservice/utils/PerfToSD;->lap(Ljava/lang/String;)V

    .line 320
    invoke-virtual {v2}, Lio/realm/RealmResults;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/lostpixels/fieldservice/internal/ministry/Visit;

    .line 321
    invoke-virtual {v3}, Lcom/lostpixels/fieldservice/internal/ministry/Visit;->getHouseHolder()J

    move-result-wide v3

    invoke-static {v3, v4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/util/TreeSet;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 323
    :cond_1
    const-string v2, "1.12"

    invoke-static {v2}, Lcom/lostpixels/fieldservice/utils/PerfToSD;->lap(Ljava/lang/String;)V

    .line 325
    const-class v2, Lcom/lostpixels/fieldservice/internal/ministry/Person;

    invoke-virtual {p1, v2}, Lio/realm/Realm;->where(Ljava/lang/Class;)Lio/realm/RealmQuery;

    move-result-object v3

    const-string v4, "personType"

    invoke-virtual {v3, v4, v1}, Lio/realm/RealmQuery;->notEqualTo(Ljava/lang/String;Ljava/lang/Integer;)Lio/realm/RealmQuery;

    move-result-object v1

    invoke-virtual {v1}, Lio/realm/RealmQuery;->findAll()Lio/realm/RealmResults;

    move-result-object v1

    .line 326
    invoke-virtual {v1}, Lio/realm/RealmResults;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_2

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/lostpixels/fieldservice/internal/ministry/Person;

    .line 329
    invoke-virtual {v3}, Lcom/lostpixels/fieldservice/internal/ministry/Person;->getId()J

    move-result-wide v3

    invoke-static {v3, v4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/util/TreeSet;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 331
    :cond_2
    const-string v1, "1.13"

    invoke-static {v1}, Lcom/lostpixels/fieldservice/utils/PerfToSD;->lap(Ljava/lang/String;)V

    .line 332
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    .line 333
    invoke-virtual {v0}, Ljava/util/TreeSet;->isEmpty()Z

    move-result v4

    if-nez v4, :cond_3

    .line 334
    invoke-virtual {v0}, Ljava/util/TreeSet;->size()I

    move-result v4

    new-array v4, v4, [Ljava/lang/Long;

    invoke-virtual {v0, v4}, Ljava/util/AbstractCollection;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Ljava/lang/Long;

    .line 336
    invoke-virtual {p1, v2}, Lio/realm/Realm;->where(Ljava/lang/Class;)Lio/realm/RealmQuery;

    move-result-object v4

    invoke-virtual {v4}, Lio/realm/RealmQuery;->not()Lio/realm/RealmQuery;

    move-result-object v4

    const-string v5, "id"

    invoke-virtual {v4, v5, v0}, Lio/realm/RealmQuery;->in(Ljava/lang/String;[Ljava/lang/Long;)Lio/realm/RealmQuery;

    move-result-object v0

    invoke-virtual {v0}, Lio/realm/RealmQuery;->findAll()Lio/realm/RealmResults;

    move-result-object v0

    .line 337
    invoke-virtual {v0}, Lio/realm/RealmResults;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_2
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_3

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/lostpixels/fieldservice/internal/ministry/Person;

    .line 338
    invoke-virtual {v4}, Lcom/lostpixels/fieldservice/internal/ministry/Person;->getId()J

    move-result-wide v4

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_2

    .line 342
    :cond_3
    invoke-static {v1}, Lcom/lostpixels/fieldservice/utils/PerfToSD;->lap(Ljava/lang/String;)V

    .line 345
    invoke-virtual {v3}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_7

    .line 347
    new-instance v0, Lcom/lostpixels/fieldservice/internal/ministry/MinistryManager$1;

    invoke-direct {v0, p0, v3, p1}, Lcom/lostpixels/fieldservice/internal/ministry/MinistryManager$1;-><init>(Lcom/lostpixels/fieldservice/internal/ministry/MinistryManager;Ljava/util/ArrayList;Lio/realm/Realm;)V

    .line 363
    invoke-virtual {p0}, Lio/realm/RealmObject;->isManaged()Z

    move-result v1

    .line 347
    invoke-static {v0, v1}, Lcom/lostpixels/fieldservice/realm/RealmHelper;->write(Lcom/lostpixels/fieldservice/realm/RealmHelper$Writer;Z)Z

    .line 365
    const-string v0, "1.14"

    invoke-static {v0}, Lcom/lostpixels/fieldservice/utils/PerfToSD;->lap(Ljava/lang/String;)V

    .line 366
    invoke-virtual {v3}, Ljava/util/ArrayList;->clear()V

    .line 367
    invoke-virtual {p1, v2}, Lio/realm/Realm;->where(Ljava/lang/Class;)Lio/realm/RealmQuery;

    move-result-object v0

    invoke-virtual {v0}, Lio/realm/RealmQuery;->findAll()Lio/realm/RealmResults;

    move-result-object v0

    invoke-virtual {v0}, Lio/realm/RealmResults;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_4
    :goto_3
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_5

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/lostpixels/fieldservice/internal/ministry/Person;

    .line 368
    invoke-virtual {v1}, Lcom/lostpixels/fieldservice/internal/ministry/Person;->getVisitInfoList()Lio/realm/RealmList;

    move-result-object v2

    invoke-virtual {v2}, Lio/realm/RealmList;->size()I

    move-result v2

    const/16 v4, 0x96

    if-le v2, v4, :cond_4

    .line 369
    invoke-virtual {v1}, Lcom/lostpixels/fieldservice/internal/ministry/Person;->getId()J

    move-result-wide v1

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-virtual {v3, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_3

    .line 372
    :cond_5
    invoke-virtual {v3}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_6

    .line 373
    new-instance v0, Lcom/lostpixels/fieldservice/internal/ministry/MinistryManager$2;

    invoke-direct {v0, p0, v3, p1}, Lcom/lostpixels/fieldservice/internal/ministry/MinistryManager$2;-><init>(Lcom/lostpixels/fieldservice/internal/ministry/MinistryManager;Ljava/util/ArrayList;Lio/realm/Realm;)V

    invoke-static {v0}, Lcom/lostpixels/fieldservice/realm/RealmHelper;->write(Lcom/lostpixels/fieldservice/realm/RealmHelper$Writer;)Z

    .line 388
    :cond_6
    const-string p1, "1.15"

    invoke-static {p1}, Lcom/lostpixels/fieldservice/utils/PerfToSD;->lap(Ljava/lang/String;)V

    .line 391
    invoke-static {}, Lcom/lostpixels/fieldservice/ui/nowcards/NowCardListCreator;->resetOldVisits()V

    .line 392
    invoke-static {}, Lcom/lostpixels/fieldservice/ui/nowcards/NowCardListCreator;->resetPinnedVisits()V

    .line 393
    invoke-static {}, Lcom/lostpixels/fieldservice/ui/nowcards/NowCardListCreator;->resetScheduledVisits()V

    .line 394
    invoke-static {}, Lcom/lostpixels/fieldservice/ui/nowcards/NowCardListCreator;->resetVisitsAboutNow()V

    .line 396
    const-string p1, "1.16"

    invoke-static {p1}, Lcom/lostpixels/fieldservice/utils/PerfToSD;->lap(Ljava/lang/String;)V

    :cond_7
    :goto_4
    return-void
.end method

.method public static deleteMinistryFile(Landroid/content/Context;)V
    .locals 4

    .line 130
    new-instance v0, Ljava/io/File;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Landroid/content/Context;->getFilesDir()Ljava/io/File;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v2, "/"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, "Ministry.obj"

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 131
    new-instance v1, Ljava/io/File;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Landroid/content/Context;->getFilesDir()Ljava/io/File;

    move-result-object p0

    invoke-virtual {v3, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p0, "Ministry.bin"

    invoke-virtual {v3, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {v1, p0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 132
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result p0

    if-eqz p0, :cond_0

    .line 133
    invoke-virtual {v0}, Ljava/io/File;->delete()Z

    .line 134
    :cond_0
    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result p0

    if-eqz p0, :cond_1

    .line 135
    invoke-virtual {v1}, Ljava/io/File;->delete()Z

    :cond_1
    return-void
.end method

.method public static declared-synchronized getInstance(Lio/realm/Realm;)Lcom/lostpixels/fieldservice/internal/ministry/MinistryManager;
    .locals 4

    const-class v0, Lcom/lostpixels/fieldservice/internal/ministry/MinistryManager;

    monitor-enter v0

    .line 139
    :try_start_0
    sget-object v1, Lcom/lostpixels/fieldservice/internal/ministry/MinistryManager;->instanceLock:Ljava/util/concurrent/locks/Lock;

    if-nez v1, :cond_0

    .line 140
    new-instance v1, Ljava/util/concurrent/locks/ReentrantLock;

    invoke-direct {v1}, Ljava/util/concurrent/locks/ReentrantLock;-><init>()V

    sput-object v1, Lcom/lostpixels/fieldservice/internal/ministry/MinistryManager;->instanceLock:Ljava/util/concurrent/locks/Lock;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception p0

    goto :goto_3

    .line 143
    :cond_0
    :goto_0
    :try_start_1
    sget-object v1, Lcom/lostpixels/fieldservice/internal/ministry/MinistryManager;->instanceLock:Ljava/util/concurrent/locks/Lock;

    invoke-interface {v1}, Ljava/util/concurrent/locks/Lock;->lock()V

    .line 144
    const-class v1, Lcom/lostpixels/fieldservice/internal/ministry/MinistryManager;

    invoke-virtual {p0, v1}, Lio/realm/Realm;->where(Ljava/lang/Class;)Lio/realm/RealmQuery;

    move-result-object v1

    invoke-virtual {v1}, Lio/realm/RealmQuery;->findFirst()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/lostpixels/fieldservice/internal/ministry/MinistryManager;

    if-nez v1, :cond_1

    .line 145
    invoke-virtual {p0}, Lio/realm/Realm;->isInTransaction()Z

    move-result v2

    if-nez v2, :cond_1

    .line 146
    invoke-virtual {p0}, Lio/realm/Realm;->refresh()V

    .line 147
    const-class v1, Lcom/lostpixels/fieldservice/internal/ministry/MinistryManager;

    invoke-virtual {p0, v1}, Lio/realm/Realm;->where(Ljava/lang/Class;)Lio/realm/RealmQuery;

    move-result-object v1

    invoke-virtual {v1}, Lio/realm/RealmQuery;->findFirst()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/lostpixels/fieldservice/internal/ministry/MinistryManager;

    goto :goto_1

    :catchall_1
    move-exception p0

    goto :goto_2

    :cond_1
    :goto_1
    if-nez v1, :cond_4

    .line 150
    invoke-virtual {p0}, Lio/realm/Realm;->isInTransaction()Z

    move-result v1

    if-nez v1, :cond_2

    .line 152
    invoke-virtual {p0}, Lio/realm/Realm;->beginTransaction()V

    .line 153
    :cond_2
    const-class v2, Lcom/lostpixels/fieldservice/internal/ministry/MinistryManager;

    const/4 v3, 0x1

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {p0, v2, v3}, Lio/realm/Realm;->createObject(Ljava/lang/Class;Ljava/lang/Object;)Lio/realm/RealmModel;

    move-result-object v2

    check-cast v2, Lcom/lostpixels/fieldservice/internal/ministry/MinistryManager;

    if-nez v1, :cond_3

    .line 155
    invoke-virtual {p0}, Lio/realm/Realm;->commitTransaction()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    :cond_3
    move-object v1, v2

    .line 158
    :cond_4
    :try_start_2
    sget-object p0, Lcom/lostpixels/fieldservice/internal/ministry/MinistryManager;->instanceLock:Ljava/util/concurrent/locks/Lock;

    invoke-interface {p0}, Ljava/util/concurrent/locks/Lock;->unlock()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 160
    monitor-exit v0

    return-object v1

    .line 158
    :goto_2
    :try_start_3
    sget-object v1, Lcom/lostpixels/fieldservice/internal/ministry/MinistryManager;->instanceLock:Ljava/util/concurrent/locks/Lock;

    invoke-interface {v1}, Ljava/util/concurrent/locks/Lock;->unlock()V

    .line 159
    throw p0

    :goto_3
    monitor-exit v0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    throw p0
.end method

.method public static getLatestFileVersion()I
    .locals 1

    const/16 v0, 0x1b

    return v0
.end method

.method public static getTemporaryInstance()Lcom/lostpixels/fieldservice/internal/ministry/MinistryManager;
    .locals 1

    .line 165
    new-instance v0, Lcom/lostpixels/fieldservice/internal/ministry/MinistryManager;

    invoke-direct {v0}, Lcom/lostpixels/fieldservice/internal/ministry/MinistryManager;-><init>()V

    return-object v0
.end method

.method private loadFromFileObjectStream(Lcom/lostpixels/fieldservice/utils/ObjectDataInputStream;)V
    .locals 11

    .line 403
    invoke-static {}, Lio/realm/Realm;->getDefaultInstance()Lio/realm/Realm;

    move-result-object v0

    .line 404
    invoke-virtual {v0}, Lio/realm/Realm;->isInTransaction()Z

    move-result v1

    if-nez v1, :cond_0

    .line 406
    invoke-virtual {v0}, Lio/realm/Realm;->beginTransaction()V

    .line 409
    :cond_0
    :try_start_0
    invoke-virtual {p1}, Ljava/io/DataInputStream;->readInt()I

    move-result v2

    .line 410
    invoke-static {}, Lcom/lostpixels/fieldservice/internal/ministry/MinistryManager;->getLatestFileVersion()I

    move-result v3

    if-gt v2, v3, :cond_14

    .line 413
    invoke-virtual {p1}, Ljava/io/DataInputStream;->readInt()I

    move-result v3

    .line 414
    const-class v4, Lcom/lostpixels/fieldservice/internal/ministry/Territory;

    invoke-virtual {v0, v4}, Lio/realm/Realm;->where(Ljava/lang/Class;)Lio/realm/RealmQuery;

    move-result-object v4

    invoke-virtual {v4}, Lio/realm/RealmQuery;->findAll()Lio/realm/RealmResults;

    move-result-object v4

    invoke-virtual {v4}, Lio/realm/RealmResults;->deleteAllFromRealm()Z

    const/4 v4, 0x0

    const/4 v5, 0x0

    :goto_0
    if-ge v5, v3, :cond_1

    .line 416
    new-instance v6, Lcom/lostpixels/fieldservice/internal/ministry/Territory;

    invoke-direct {v6}, Lcom/lostpixels/fieldservice/internal/ministry/Territory;-><init>()V

    .line 417
    invoke-virtual {v6, v0, p1, v2}, Lcom/lostpixels/fieldservice/internal/ministry/Territory;->loadFromFileObjectStream(Lio/realm/Realm;Lcom/lostpixels/fieldservice/utils/ObjectDataInputStream;I)V

    .line 418
    new-array v7, v4, [Lio/realm/ImportFlag;

    invoke-virtual {v0, v6, v7}, Lio/realm/Realm;->copyToRealmOrUpdate(Lio/realm/RealmModel;[Lio/realm/ImportFlag;)Lio/realm/RealmModel;

    add-int/lit8 v5, v5, 0x1

    goto :goto_0

    :catchall_0
    move-exception p1

    goto/16 :goto_7

    :catch_0
    move-exception p1

    goto/16 :goto_6

    .line 420
    :cond_1
    invoke-virtual {p1}, Ljava/io/DataInputStream;->readInt()I

    move-result v3

    .line 421
    invoke-virtual {p0}, Lio/realm/RealmObject;->isManaged()Z

    move-result v5

    if-eqz v5, :cond_2

    .line 422
    invoke-virtual {p0, v0}, Lcom/lostpixels/fieldservice/internal/ministry/MinistryManager;->getPersons(Lio/realm/Realm;)Lio/realm/RealmResults;

    move-result-object v5

    invoke-virtual {v5}, Lio/realm/RealmResults;->deleteAllFromRealm()Z

    :cond_2
    const/4 v5, 0x0

    const/4 v6, 0x0

    :goto_1
    const/16 v7, 0x18

    if-ge v6, v3, :cond_7

    if-gt v2, v7, :cond_3

    .line 426
    invoke-virtual {p1}, Ljava/io/DataInputStream;->readInt()I

    move-result v8

    if-nez v8, :cond_4

    const/4 v8, -0x1

    goto :goto_2

    :cond_3
    const/4 v8, 0x0

    .line 430
    :cond_4
    :goto_2
    new-instance v9, Lcom/lostpixels/fieldservice/internal/ministry/Person;

    invoke-direct {v9}, Lcom/lostpixels/fieldservice/internal/ministry/Person;-><init>()V

    .line 431
    invoke-virtual {v9, v0, p1, v2}, Lcom/lostpixels/fieldservice/internal/ministry/Person;->loadFromFileObjectStream(Lio/realm/Realm;Lcom/lostpixels/fieldservice/utils/ObjectDataInputStream;I)V

    .line 432
    new-array v10, v4, [Lio/realm/ImportFlag;

    invoke-virtual {v0, v9, v10}, Lio/realm/Realm;->copyToRealmOrUpdate(Lio/realm/RealmModel;[Lio/realm/ImportFlag;)Lio/realm/RealmModel;

    move-result-object v9

    check-cast v9, Lcom/lostpixels/fieldservice/internal/ministry/Person;

    if-gt v2, v7, :cond_6

    if-nez v5, :cond_5

    .line 436
    new-instance v5, Ljava/util/HashMap;

    invoke-direct {v5}, Ljava/util/HashMap;-><init>()V

    .line 438
    :cond_5
    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    invoke-virtual {v9}, Lcom/lostpixels/fieldservice/internal/ministry/Person;->getId()J

    move-result-wide v8

    invoke-static {v8, v9}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v8

    invoke-interface {v5, v7, v8}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_6
    add-int/lit8 v6, v6, 0x1

    goto :goto_1

    .line 442
    :cond_7
    invoke-virtual {p1}, Ljava/io/DataInputStream;->readInt()I

    move-result v3

    .line 443
    invoke-virtual {p0}, Lcom/lostpixels/fieldservice/internal/ministry/MinistryManager;->realmGet$suburbs()Lio/realm/RealmList;

    move-result-object v6

    if-nez v6, :cond_8

    .line 444
    new-instance v6, Lio/realm/RealmList;

    invoke-direct {v6}, Lio/realm/RealmList;-><init>()V

    invoke-virtual {p0, v6}, Lcom/lostpixels/fieldservice/internal/ministry/MinistryManager;->realmSet$suburbs(Lio/realm/RealmList;)V

    :cond_8
    const/4 v6, 0x0

    :goto_3
    if-ge v6, v3, :cond_9

    .line 446
    invoke-virtual {p0}, Lcom/lostpixels/fieldservice/internal/ministry/MinistryManager;->realmGet$suburbs()Lio/realm/RealmList;

    move-result-object v8

    invoke-virtual {p1}, Lcom/lostpixels/fieldservice/utils/ObjectDataInputStream;->readString()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Lio/realm/RealmList;->add(Ljava/lang/Object;)Z

    add-int/lit8 v6, v6, 0x1

    goto :goto_3

    :cond_9
    if-gt v2, v7, :cond_a

    .line 449
    invoke-virtual {p1}, Lcom/lostpixels/fieldservice/utils/ObjectDataInputStream;->readDate()Ljava/util/Date;

    .line 451
    :cond_a
    invoke-virtual {p1}, Ljava/io/DataInputStream;->readInt()I

    move-result v3

    .line 452
    invoke-virtual {p0}, Lcom/lostpixels/fieldservice/internal/ministry/MinistryManager;->realmGet$cities()Lio/realm/RealmList;

    move-result-object v6

    if-nez v6, :cond_b

    .line 453
    new-instance v6, Lio/realm/RealmList;

    invoke-direct {v6}, Lio/realm/RealmList;-><init>()V

    invoke-virtual {p0, v6}, Lcom/lostpixels/fieldservice/internal/ministry/MinistryManager;->realmSet$cities(Lio/realm/RealmList;)V

    :cond_b
    const/4 v6, 0x0

    :goto_4
    if-ge v6, v3, :cond_c

    .line 455
    invoke-virtual {p0}, Lcom/lostpixels/fieldservice/internal/ministry/MinistryManager;->realmGet$cities()Lio/realm/RealmList;

    move-result-object v8

    invoke-virtual {p1}, Lcom/lostpixels/fieldservice/utils/ObjectDataInputStream;->readString()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Lio/realm/RealmList;->add(Ljava/lang/Object;)Z

    add-int/lit8 v6, v6, 0x1

    goto :goto_4

    :cond_c
    if-gt v2, v7, :cond_d

    .line 458
    invoke-virtual {p1}, Lcom/lostpixels/fieldservice/utils/ObjectDataInputStream;->readDate()Ljava/util/Date;

    .line 460
    :cond_d
    invoke-virtual {p1}, Ljava/io/DataInputStream;->readInt()I

    move-result v3

    .line 461
    invoke-virtual {p0}, Lcom/lostpixels/fieldservice/internal/ministry/MinistryManager;->realmGet$scriptures()Lio/realm/RealmList;

    move-result-object v6

    if-nez v6, :cond_e

    .line 462
    new-instance v6, Lio/realm/RealmList;

    invoke-direct {v6}, Lio/realm/RealmList;-><init>()V

    invoke-virtual {p0, v6}, Lcom/lostpixels/fieldservice/internal/ministry/MinistryManager;->realmSet$scriptures(Lio/realm/RealmList;)V

    :cond_e
    :goto_5
    if-ge v4, v3, :cond_f

    .line 464
    new-instance v6, Lcom/lostpixels/fieldservice/internal/report/Scripture;

    invoke-virtual {p1}, Lcom/lostpixels/fieldservice/utils/ObjectDataInputStream;->readString()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {p1}, Lcom/lostpixels/fieldservice/utils/ObjectDataInputStream;->readString()Ljava/lang/String;

    move-result-object v9

    invoke-direct {v6, v8, v9}, Lcom/lostpixels/fieldservice/internal/report/Scripture;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 465
    invoke-virtual {p0}, Lcom/lostpixels/fieldservice/internal/ministry/MinistryManager;->realmGet$scriptures()Lio/realm/RealmList;

    move-result-object v8

    invoke-virtual {v8, v6}, Lio/realm/RealmList;->add(Ljava/lang/Object;)Z

    add-int/lit8 v4, v4, 0x1

    goto :goto_5

    :cond_f
    if-gt v2, v7, :cond_10

    .line 469
    invoke-virtual {p1}, Lcom/lostpixels/fieldservice/utils/ObjectDataInputStream;->readDate()Ljava/util/Date;

    :cond_10
    if-gt v2, v7, :cond_11

    .line 472
    invoke-virtual {p1}, Ljava/io/DataInputStream;->readInt()I

    :cond_11
    if-nez v5, :cond_12

    .line 475
    new-instance v5, Ljava/util/HashMap;

    invoke-direct {v5}, Ljava/util/HashMap;-><init>()V

    .line 476
    :cond_12
    invoke-direct {p0, v0, v2, v5}, Lcom/lostpixels/fieldservice/internal/ministry/MinistryManager;->updateFile(Lio/realm/Realm;ILjava/util/Map;)V

    if-nez v1, :cond_13

    .line 479
    invoke-virtual {v0}, Lio/realm/Realm;->commitTransaction()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 486
    :cond_13
    invoke-virtual {v0}, Lio/realm/Realm;->close()V

    return-void

    .line 411
    :cond_14
    :try_start_1
    new-instance p1, Lcom/lostpixels/fieldservice/utils/FileVersionException;

    const-string v2, "Newer file version"

    invoke-direct {p1, v2}, Lcom/lostpixels/fieldservice/utils/FileVersionException;-><init>(Ljava/lang/String;)V

    throw p1
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 481
    :goto_6
    :try_start_2
    const-string v2, "MinistryManager.loadFromFileObjectStream 1"

    invoke-virtual {p1}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/lostpixels/fieldservice/utils/LogToSD;->write(Ljava/lang/String;Ljava/lang/String;)V

    if-nez v1, :cond_15

    .line 483
    invoke-virtual {v0}, Lio/realm/Realm;->cancelTransaction()V

    .line 484
    :cond_15
    throw p1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 486
    :goto_7
    invoke-virtual {v0}, Lio/realm/Realm;->close()V

    .line 487
    throw p1
.end method

.method private merge(Landroid/content/Context;Ljava/util/List;Ljava/util/List;JZ)Z
    .locals 9

    .line 1486
    invoke-static {}, Lio/realm/Realm;->getDefaultInstance()Lio/realm/Realm;

    move-result-object v2

    .line 1489
    :try_start_0
    new-instance v0, Lcom/lostpixels/fieldservice/internal/ministry/MinistryManager$28;

    move-object v1, p0

    move-object v4, p1

    move-object v5, p2

    move-object v3, p3

    move-wide v6, p4

    move v8, p6

    invoke-direct/range {v0 .. v8}, Lcom/lostpixels/fieldservice/internal/ministry/MinistryManager$28;-><init>(Lcom/lostpixels/fieldservice/internal/ministry/MinistryManager;Lio/realm/Realm;Ljava/util/List;Landroid/content/Context;Ljava/util/List;JZ)V

    .line 1558
    invoke-virtual {p0}, Lio/realm/RealmObject;->isManaged()Z

    move-result p1

    .line 1489
    invoke-static {v0, p1}, Lcom/lostpixels/fieldservice/realm/RealmHelper;->write(Lcom/lostpixels/fieldservice/realm/RealmHelper$Writer;Z)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1566
    invoke-virtual {v2}, Lio/realm/Realm;->close()V

    const/4 p1, 0x1

    return p1

    :catchall_0
    move-exception v0

    move-object p1, v0

    goto :goto_1

    :catch_0
    move-exception v0

    move-object p1, v0

    .line 1561
    :try_start_1
    const-string p2, "merge"

    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    const-string p4, "Exception cought: "

    invoke-virtual {p3, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object p4

    invoke-virtual {p3, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1562
    invoke-virtual {p1}, Ljava/lang/Throwable;->getCause()Ljava/lang/Throwable;

    move-result-object p4

    if-eqz p4, :cond_0

    invoke-virtual {p1}, Ljava/lang/Throwable;->getCause()Ljava/lang/Throwable;

    move-result-object p4

    invoke-virtual {p4}, Ljava/lang/Throwable;->toString()Ljava/lang/String;

    move-result-object p4

    goto :goto_0

    :cond_0
    const-string p4, ""

    :goto_0
    invoke-virtual {p3, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p3

    .line 1561
    invoke-static {p2, p3}, Lcom/lostpixels/fieldservice/utils/LogToSD;->write(Ljava/lang/String;Ljava/lang/String;)V

    .line 1563
    const-string p2, "Stacktrace"

    invoke-static {p1}, Lcom/lostpixels/fieldservice/helpfunctions/HelpFunctions;->getStackTrace(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object p1

    invoke-static {p2, p1}, Lcom/lostpixels/fieldservice/utils/LogToSD;->write(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 1566
    invoke-virtual {v2}, Lio/realm/Realm;->close()V

    const/4 p1, 0x0

    return p1

    :goto_1
    invoke-virtual {v2}, Lio/realm/Realm;->close()V

    .line 1567
    throw p1
.end method

.method private merge(Lio/realm/Realm;Landroid/content/Context;Lcom/lostpixels/fieldservice/internal/ministry/MinistryManager;)Z
    .locals 1

    .line 1337
    new-instance v0, Lcom/lostpixels/fieldservice/internal/ministry/MinistryManager$26;

    invoke-direct {v0, p0, p3, p1, p2}, Lcom/lostpixels/fieldservice/internal/ministry/MinistryManager$26;-><init>(Lcom/lostpixels/fieldservice/internal/ministry/MinistryManager;Lcom/lostpixels/fieldservice/internal/ministry/MinistryManager;Lio/realm/Realm;Landroid/content/Context;)V

    invoke-static {v0}, Lcom/lostpixels/fieldservice/realm/RealmHelper;->write(Lcom/lostpixels/fieldservice/realm/RealmHelper$Writer;)Z

    const/4 p1, 0x1

    return p1
.end method

.method public static ministryFileExists(Landroid/content/Context;)Z
    .locals 4

    .line 124
    new-instance v0, Ljava/io/File;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Landroid/content/Context;->getFilesDir()Ljava/io/File;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v2, "/"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, "Ministry.obj"

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 125
    new-instance v1, Ljava/io/File;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Landroid/content/Context;->getFilesDir()Ljava/io/File;

    move-result-object p0

    invoke-virtual {v3, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p0, "Ministry.bin"

    invoke-virtual {v3, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {v1, p0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 126
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result p0

    if-nez p0, :cond_1

    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result p0

    if-eqz p0, :cond_0

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    return p0

    :cond_1
    :goto_0
    const/4 p0, 0x1

    return p0
.end method

.method private saveToFileRaw(Lcom/fasterxml/jackson/core/JsonGenerator;)V
    .locals 5

    .line 491
    invoke-static {}, Lio/realm/Realm;->getDefaultInstance()Lio/realm/Realm;

    move-result-object v0

    .line 492
    invoke-direct {p0, v0}, Lcom/lostpixels/fieldservice/internal/ministry/MinistryManager;->cleanUpPersons(Lio/realm/Realm;)V

    .line 495
    :try_start_0
    invoke-virtual {p1}, Lcom/fasterxml/jackson/core/JsonGenerator;->writeStartObject()V

    .line 496
    const-string v1, "FileVersion"

    invoke-static {}, Lcom/lostpixels/fieldservice/internal/ministry/MinistryManager;->getLatestFileVersion()I

    move-result v2

    invoke-virtual {p1, v1, v2}, Lcom/fasterxml/jackson/core/JsonGenerator;->writeNumberField(Ljava/lang/String;I)V

    .line 498
    const-string v1, "Territories"

    invoke-virtual {p1, v1}, Lcom/fasterxml/jackson/core/JsonGenerator;->writeObjectFieldStart(Ljava/lang/String;)V

    .line 499
    const-class v1, Lcom/lostpixels/fieldservice/internal/ministry/Territory;

    invoke-virtual {v0, v1}, Lio/realm/Realm;->where(Ljava/lang/Class;)Lio/realm/RealmQuery;

    move-result-object v1

    invoke-virtual {v1}, Lio/realm/RealmQuery;->findAll()Lio/realm/RealmResults;

    move-result-object v1

    .line 500
    invoke-virtual {v1}, Lio/realm/RealmResults;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/lostpixels/fieldservice/internal/ministry/Territory;

    .line 501
    invoke-virtual {v2, p1}, Lcom/lostpixels/fieldservice/internal/ministry/Territory;->saveToFileRaw(Lcom/fasterxml/jackson/core/JsonGenerator;)V

    goto :goto_0

    :catchall_0
    move-exception p1

    goto/16 :goto_7

    :catch_0
    move-exception p1

    goto/16 :goto_6

    .line 503
    :cond_0
    invoke-virtual {p1}, Lcom/fasterxml/jackson/core/JsonGenerator;->writeEndObject()V

    .line 504
    const-string v1, "PersonMap"

    invoke-virtual {p1, v1}, Lcom/fasterxml/jackson/core/JsonGenerator;->writeObjectFieldStart(Ljava/lang/String;)V

    .line 505
    const-class v1, Lcom/lostpixels/fieldservice/internal/ministry/Person;

    invoke-virtual {v0, v1}, Lio/realm/Realm;->where(Ljava/lang/Class;)Lio/realm/RealmQuery;

    move-result-object v1

    invoke-virtual {v1}, Lio/realm/RealmQuery;->findAll()Lio/realm/RealmResults;

    move-result-object v1

    .line 506
    invoke-virtual {v1}, Lio/realm/RealmResults;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/lostpixels/fieldservice/internal/ministry/Person;

    .line 507
    const-string v3, "Pe"

    invoke-virtual {p1, v3}, Lcom/fasterxml/jackson/core/JsonGenerator;->writeObjectFieldStart(Ljava/lang/String;)V

    .line 508
    invoke-virtual {v2, p1}, Lcom/lostpixels/fieldservice/internal/ministry/Person;->saveToFileRaw(Lcom/fasterxml/jackson/core/JsonGenerator;)V

    .line 509
    invoke-virtual {p1}, Lcom/fasterxml/jackson/core/JsonGenerator;->writeEndObject()V

    goto :goto_1

    .line 511
    :cond_1
    invoke-virtual {p1}, Lcom/fasterxml/jackson/core/JsonGenerator;->writeEndObject()V

    .line 512
    const-string v1, "Suburbs"

    invoke-virtual {p1, v1}, Lcom/fasterxml/jackson/core/JsonGenerator;->writeArrayFieldStart(Ljava/lang/String;)V

    .line 513
    invoke-virtual {p0}, Lcom/lostpixels/fieldservice/internal/ministry/MinistryManager;->realmGet$suburbs()Lio/realm/RealmList;

    move-result-object v1

    if-eqz v1, :cond_2

    .line 514
    invoke-virtual {p0}, Lcom/lostpixels/fieldservice/internal/ministry/MinistryManager;->realmGet$suburbs()Lio/realm/RealmList;

    move-result-object v1

    invoke-virtual {v1}, Lio/realm/RealmList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_2
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 515
    invoke-virtual {p1, v2}, Lcom/fasterxml/jackson/core/JsonGenerator;->writeString(Ljava/lang/String;)V

    goto :goto_2

    .line 517
    :cond_2
    invoke-virtual {p1}, Lcom/fasterxml/jackson/core/JsonGenerator;->writeEndArray()V

    .line 519
    invoke-virtual {p0}, Lcom/lostpixels/fieldservice/internal/ministry/MinistryManager;->realmGet$mSuburbDate()Ljava/util/Date;

    move-result-object v1

    if-eqz v1, :cond_3

    .line 520
    const-string v1, "SuDate"

    invoke-virtual {p0}, Lcom/lostpixels/fieldservice/internal/ministry/MinistryManager;->realmGet$mSuburbDate()Ljava/util/Date;

    move-result-object v2

    invoke-virtual {v2}, Ljava/util/Date;->getTime()J

    move-result-wide v2

    invoke-virtual {p1, v1, v2, v3}, Lcom/fasterxml/jackson/core/JsonGenerator;->writeNumberField(Ljava/lang/String;J)V

    .line 523
    :cond_3
    const-string v1, "Cities"

    invoke-virtual {p1, v1}, Lcom/fasterxml/jackson/core/JsonGenerator;->writeArrayFieldStart(Ljava/lang/String;)V

    .line 524
    invoke-virtual {p0}, Lcom/lostpixels/fieldservice/internal/ministry/MinistryManager;->realmGet$cities()Lio/realm/RealmList;

    move-result-object v1

    if-eqz v1, :cond_4

    .line 525
    invoke-virtual {p0}, Lcom/lostpixels/fieldservice/internal/ministry/MinistryManager;->realmGet$cities()Lio/realm/RealmList;

    move-result-object v1

    invoke-virtual {v1}, Lio/realm/RealmList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_3
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_4

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 526
    invoke-virtual {p1, v2}, Lcom/fasterxml/jackson/core/JsonGenerator;->writeString(Ljava/lang/String;)V

    goto :goto_3

    .line 528
    :cond_4
    invoke-virtual {p1}, Lcom/fasterxml/jackson/core/JsonGenerator;->writeEndArray()V

    .line 530
    invoke-virtual {p0}, Lcom/lostpixels/fieldservice/internal/ministry/MinistryManager;->realmGet$mCitiesDate()Ljava/util/Date;

    move-result-object v1

    if-eqz v1, :cond_5

    .line 531
    const-string v1, "CiDate"

    invoke-virtual {p0}, Lcom/lostpixels/fieldservice/internal/ministry/MinistryManager;->realmGet$mCitiesDate()Ljava/util/Date;

    move-result-object v2

    invoke-virtual {v2}, Ljava/util/Date;->getTime()J

    move-result-wide v2

    invoke-virtual {p1, v1, v2, v3}, Lcom/fasterxml/jackson/core/JsonGenerator;->writeNumberField(Ljava/lang/String;J)V

    .line 533
    :cond_5
    const-string v1, "ScriptureCont"

    invoke-virtual {p1, v1}, Lcom/fasterxml/jackson/core/JsonGenerator;->writeArrayFieldStart(Ljava/lang/String;)V

    .line 534
    invoke-virtual {p0}, Lcom/lostpixels/fieldservice/internal/ministry/MinistryManager;->realmGet$scriptures()Lio/realm/RealmList;

    move-result-object v1

    if-eqz v1, :cond_8

    .line 535
    invoke-virtual {p0}, Lcom/lostpixels/fieldservice/internal/ministry/MinistryManager;->realmGet$scriptures()Lio/realm/RealmList;

    move-result-object v1

    invoke-virtual {v1}, Lio/realm/RealmList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_4
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_8

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/lostpixels/fieldservice/internal/report/Scripture;

    .line 536
    invoke-virtual {v2}, Lcom/lostpixels/fieldservice/internal/report/Scripture;->realmGet$verse()Ljava/lang/String;

    move-result-object v3
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    const-string v4, ""

    if-eqz v3, :cond_6

    .line 537
    :try_start_1
    invoke-virtual {v2}, Lcom/lostpixels/fieldservice/internal/report/Scripture;->realmGet$verse()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p1, v3}, Lcom/fasterxml/jackson/core/JsonGenerator;->writeString(Ljava/lang/String;)V

    goto :goto_5

    .line 539
    :cond_6
    invoke-virtual {p1, v4}, Lcom/fasterxml/jackson/core/JsonGenerator;->writeString(Ljava/lang/String;)V

    .line 540
    :goto_5
    invoke-virtual {v2}, Lcom/lostpixels/fieldservice/internal/report/Scripture;->realmGet$content()Ljava/lang/String;

    move-result-object v3

    if-eqz v3, :cond_7

    .line 541
    invoke-virtual {v2}, Lcom/lostpixels/fieldservice/internal/report/Scripture;->realmGet$content()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1, v2}, Lcom/fasterxml/jackson/core/JsonGenerator;->writeString(Ljava/lang/String;)V

    goto :goto_4

    .line 543
    :cond_7
    invoke-virtual {p1, v4}, Lcom/fasterxml/jackson/core/JsonGenerator;->writeString(Ljava/lang/String;)V

    goto :goto_4

    .line 546
    :cond_8
    invoke-virtual {p1}, Lcom/fasterxml/jackson/core/JsonGenerator;->writeEndArray()V

    .line 548
    invoke-virtual {p0}, Lcom/lostpixels/fieldservice/internal/ministry/MinistryManager;->realmGet$mScripturesDate()Ljava/util/Date;

    move-result-object v1

    if-eqz v1, :cond_9

    .line 549
    const-string v1, "ScDate"

    invoke-virtual {p0}, Lcom/lostpixels/fieldservice/internal/ministry/MinistryManager;->realmGet$mScripturesDate()Ljava/util/Date;

    move-result-object v2

    invoke-virtual {v2}, Ljava/util/Date;->getTime()J

    move-result-wide v2

    invoke-virtual {p1, v1, v2, v3}, Lcom/fasterxml/jackson/core/JsonGenerator;->writeNumberField(Ljava/lang/String;J)V

    .line 551
    :cond_9
    invoke-virtual {p1}, Lcom/fasterxml/jackson/core/JsonGenerator;->writeEndObject()V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 556
    invoke-virtual {v0}, Lio/realm/Realm;->close()V

    return-void

    .line 553
    :goto_6
    :try_start_2
    const-string v1, "MinistryManager.saveToFileRaw 1"

    invoke-virtual {p1}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/lostpixels/fieldservice/utils/LogToSD;->write(Ljava/lang/String;Ljava/lang/String;)V

    .line 554
    throw p1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 556
    :goto_7
    invoke-virtual {v0}, Lio/realm/Realm;->close()V

    .line 557
    throw p1
.end method

.method private sortCities()V
    .locals 2

    .line 907
    invoke-virtual {p0}, Lcom/lostpixels/fieldservice/internal/ministry/MinistryManager;->realmGet$cities()Lio/realm/RealmList;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 908
    new-instance v0, Lcom/lostpixels/fieldservice/internal/ministry/MinistryManager$10;

    invoke-direct {v0, p0}, Lcom/lostpixels/fieldservice/internal/ministry/MinistryManager$10;-><init>(Lcom/lostpixels/fieldservice/internal/ministry/MinistryManager;)V

    .line 913
    invoke-virtual {p0}, Lio/realm/RealmObject;->isManaged()Z

    move-result v1

    .line 908
    invoke-static {v0, v1}, Lcom/lostpixels/fieldservice/realm/RealmHelper;->write(Lcom/lostpixels/fieldservice/realm/RealmHelper$Writer;Z)Z

    :cond_0
    return-void
.end method

.method private sortScriptures()V
    .locals 1

    .line 988
    new-instance v0, Lcom/lostpixels/fieldservice/internal/ministry/MinistryManager$13;

    invoke-direct {v0, p0}, Lcom/lostpixels/fieldservice/internal/ministry/MinistryManager$13;-><init>(Lcom/lostpixels/fieldservice/internal/ministry/MinistryManager;)V

    invoke-static {v0}, Lcom/lostpixels/fieldservice/realm/RealmHelper;->write(Lcom/lostpixels/fieldservice/realm/RealmHelper$Writer;)Z

    return-void
.end method

.method private sortSuburbs()V
    .locals 2

    .line 823
    new-instance v0, Lcom/lostpixels/fieldservice/internal/ministry/MinistryManager$5;

    invoke-direct {v0, p0}, Lcom/lostpixels/fieldservice/internal/ministry/MinistryManager$5;-><init>(Lcom/lostpixels/fieldservice/internal/ministry/MinistryManager;)V

    .line 829
    invoke-virtual {p0}, Lio/realm/RealmObject;->isManaged()Z

    move-result v1

    .line 823
    invoke-static {v0, v1}, Lcom/lostpixels/fieldservice/realm/RealmHelper;->write(Lcom/lostpixels/fieldservice/realm/RealmHelper$Writer;Z)Z

    return-void
.end method

.method private updateFile(Lio/realm/Realm;ILjava/util/Map;)V
    .locals 18

    move/from16 v0, p2

    move-object/from16 v1, p3

    const/16 v2, 0xe

    const/4 v3, 0x0

    const-wide/16 v4, 0x0

    if-ge v0, v2, :cond_5

    .line 744
    invoke-virtual/range {p0 .. p1}, Lcom/lostpixels/fieldservice/internal/ministry/MinistryManager;->getTerritories(Lio/realm/Realm;)Lio/realm/RealmResults;

    move-result-object v2

    invoke-virtual {v2}, Lio/realm/RealmResults;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_5

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/lostpixels/fieldservice/internal/ministry/Territory;

    .line 745
    invoke-virtual {v6}, Lcom/lostpixels/fieldservice/internal/ministry/Territory;->getStreets()Ljava/util/List;

    move-result-object v6

    invoke-interface {v6}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v6

    :goto_1
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_4

    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/lostpixels/fieldservice/internal/ministry/Street;

    .line 746
    invoke-virtual {v7}, Lcom/lostpixels/fieldservice/internal/ministry/Street;->getAddresses()Ljava/util/List;

    move-result-object v7

    invoke-interface {v7}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v7

    :goto_2
    invoke-interface {v7}, Ljava/util/Iterator;->hasNext()Z

    move-result v8

    if-eqz v8, :cond_3

    invoke-interface {v7}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lcom/lostpixels/fieldservice/internal/ministry/Address;

    .line 747
    invoke-virtual {v8}, Lcom/lostpixels/fieldservice/internal/ministry/Address;->getVisits()Ljava/util/List;

    move-result-object v8

    invoke-interface {v8}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v8

    :cond_0
    :goto_3
    invoke-interface {v8}, Ljava/util/Iterator;->hasNext()Z

    move-result v9

    if-eqz v9, :cond_2

    invoke-interface {v8}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Lcom/lostpixels/fieldservice/internal/ministry/Visit;

    .line 748
    invoke-virtual {v9}, Lcom/lostpixels/fieldservice/internal/ministry/Visit;->getHouseHolder()J

    move-result-wide v10

    cmp-long v12, v10, v4

    if-eqz v12, :cond_1

    invoke-virtual {v9}, Lcom/lostpixels/fieldservice/internal/ministry/Visit;->isInterested()Z

    move-result v10

    if-nez v10, :cond_1

    .line 749
    invoke-virtual {v9}, Lcom/lostpixels/fieldservice/internal/ministry/Visit;->getHouseHolder()J

    move-result-wide v9

    move-object/from16 v11, p0

    move-object/from16 v12, p1

    invoke-virtual {v11, v12, v9, v10}, Lcom/lostpixels/fieldservice/internal/ministry/MinistryManager;->getPerson(Lio/realm/Realm;J)Lcom/lostpixels/fieldservice/internal/ministry/Person;

    move-result-object v9

    if-eqz v9, :cond_0

    .line 751
    invoke-virtual {v9, v3}, Lcom/lostpixels/fieldservice/internal/ministry/Person;->setInterested(Z)V

    goto :goto_3

    :cond_1
    move-object/from16 v11, p0

    move-object/from16 v12, p1

    goto :goto_3

    :cond_2
    move-object/from16 v11, p0

    move-object/from16 v12, p1

    goto :goto_2

    :cond_3
    move-object/from16 v11, p0

    move-object/from16 v12, p1

    goto :goto_1

    :cond_4
    move-object/from16 v11, p0

    move-object/from16 v12, p1

    goto :goto_0

    :cond_5
    move-object/from16 v11, p0

    move-object/from16 v12, p1

    const/16 v2, 0x18

    if-gt v0, v2, :cond_d

    .line 762
    invoke-virtual/range {p0 .. p1}, Lcom/lostpixels/fieldservice/internal/ministry/MinistryManager;->getTerritories(Lio/realm/Realm;)Lio/realm/RealmResults;

    move-result-object v0

    invoke-virtual {v0}, Lio/realm/RealmResults;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_6
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_d

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/lostpixels/fieldservice/internal/ministry/Territory;

    .line 763
    invoke-virtual {v2}, Lcom/lostpixels/fieldservice/internal/ministry/Territory;->getStreets()Ljava/util/List;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_7
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_6

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/lostpixels/fieldservice/internal/ministry/Street;

    .line 764
    invoke-virtual {v6}, Lcom/lostpixels/fieldservice/internal/ministry/Street;->getAddresses()Ljava/util/List;

    move-result-object v6

    invoke-interface {v6}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v6

    :cond_8
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_7

    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/lostpixels/fieldservice/internal/ministry/Address;

    .line 765
    invoke-virtual {v7}, Lcom/lostpixels/fieldservice/internal/ministry/Address;->getVisits()Ljava/util/List;

    move-result-object v7

    invoke-interface {v7}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v7

    :cond_9
    :goto_4
    invoke-interface {v7}, Ljava/util/Iterator;->hasNext()Z

    move-result v8

    if-eqz v8, :cond_8

    invoke-interface {v7}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lcom/lostpixels/fieldservice/internal/ministry/Visit;

    .line 766
    invoke-virtual {v8}, Lcom/lostpixels/fieldservice/internal/ministry/Visit;->getHouseHolder()J

    move-result-wide v9

    cmp-long v12, v9, v4

    if-eqz v12, :cond_9

    .line 767
    invoke-virtual {v8}, Lcom/lostpixels/fieldservice/internal/ministry/Visit;->getHouseHolder()J

    move-result-wide v9

    long-to-int v10, v9

    invoke-static {v10}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    invoke-interface {v1, v9}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_a

    .line 768
    invoke-virtual {v8}, Lcom/lostpixels/fieldservice/internal/ministry/Visit;->getHouseHolder()J

    move-result-wide v9

    long-to-int v10, v9

    invoke-static {v10}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    invoke-interface {v1, v9}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Ljava/lang/Long;

    .line 769
    invoke-static {v9}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    invoke-virtual {v9}, Ljava/lang/Long;->longValue()J

    move-result-wide v9

    invoke-virtual {v8, v9, v10}, Lcom/lostpixels/fieldservice/internal/ministry/Visit;->setHouseHolder(J)V

    goto :goto_4

    .line 770
    :cond_a
    invoke-virtual {v8}, Lcom/lostpixels/fieldservice/internal/ministry/Visit;->getHouseHolder()J

    move-result-wide v9

    invoke-static {v9, v10}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v9

    invoke-interface {v1, v9}, Ljava/util/Map;->containsValue(Ljava/lang/Object;)Z

    move-result v9

    if-nez v9, :cond_9

    .line 772
    invoke-interface {v1}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v9

    invoke-interface {v9}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v9

    const/4 v10, 0x0

    :cond_b
    :goto_5
    invoke-interface {v9}, Ljava/util/Iterator;->hasNext()Z

    move-result v12

    if-eqz v12, :cond_c

    invoke-interface {v9}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Ljava/util/Map$Entry;

    .line 773
    invoke-interface {v12}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Ljava/lang/Integer;

    invoke-virtual {v13}, Ljava/lang/Integer;->intValue()I

    move-result v13

    int-to-long v13, v13

    invoke-virtual {v8}, Lcom/lostpixels/fieldservice/internal/ministry/Visit;->getHouseHolder()J

    move-result-wide v15

    cmp-long v17, v13, v15

    if-nez v17, :cond_b

    .line 774
    invoke-interface {v12}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Ljava/lang/Long;

    invoke-virtual {v10}, Ljava/lang/Long;->longValue()J

    move-result-wide v12

    invoke-virtual {v8, v12, v13}, Lcom/lostpixels/fieldservice/internal/ministry/Visit;->setHouseHolder(J)V

    const/4 v10, 0x1

    goto :goto_5

    :cond_c
    if-nez v10, :cond_9

    .line 780
    invoke-virtual {v8, v4, v5}, Lcom/lostpixels/fieldservice/internal/ministry/Visit;->setHouseHolder(J)V

    goto/16 :goto_4

    :cond_d
    return-void
.end method


# virtual methods
.method public addCityIfNew(Landroid/content/Context;Ljava/lang/String;)V
    .locals 3

    if-eqz p2, :cond_3

    .line 919
    invoke-virtual {p2}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_3

    .line 920
    invoke-virtual {p2}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    .line 921
    invoke-virtual {p0}, Lcom/lostpixels/fieldservice/internal/ministry/MinistryManager;->realmGet$cities()Lio/realm/RealmList;

    move-result-object v1

    if-nez v1, :cond_0

    .line 922
    new-instance v1, Lio/realm/RealmList;

    invoke-direct {v1}, Lio/realm/RealmList;-><init>()V

    invoke-virtual {p0, v1}, Lcom/lostpixels/fieldservice/internal/ministry/MinistryManager;->realmSet$cities(Lio/realm/RealmList;)V

    .line 925
    :cond_0
    invoke-virtual {p0}, Lcom/lostpixels/fieldservice/internal/ministry/MinistryManager;->realmGet$cities()Lio/realm/RealmList;

    move-result-object v1

    invoke-virtual {v1}, Lio/realm/RealmList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 926
    invoke-virtual {v2, p2}, Ljava/lang/String;->compareToIgnoreCase(Ljava/lang/String;)I

    move-result v2

    if-nez v2, :cond_1

    return-void

    .line 933
    :cond_2
    invoke-static {p1}, Lcom/lostpixels/fieldservice/internal/ministry/DeletionManager;->getInstance(Landroid/content/Context;)Lcom/lostpixels/fieldservice/internal/ministry/DeletionManager;

    move-result-object v1

    const/4 v2, 0x6

    invoke-virtual {v1, p2, v2}, Lcom/lostpixels/fieldservice/internal/ministry/DeletionManager;->removeFromList(Ljava/lang/String;I)Lcom/lostpixels/fieldservice/internal/ministry/DeletionManager;

    move-result-object p2

    invoke-virtual {p2, p1}, Lcom/lostpixels/fieldservice/internal/ministry/DeletionManager;->save(Landroid/content/Context;)Z

    .line 934
    new-instance p1, Lcom/lostpixels/fieldservice/internal/ministry/MinistryManager$11;

    invoke-direct {p1, p0, v0}, Lcom/lostpixels/fieldservice/internal/ministry/MinistryManager$11;-><init>(Lcom/lostpixels/fieldservice/internal/ministry/MinistryManager;Ljava/lang/String;)V

    .line 941
    invoke-virtual {p0}, Lio/realm/RealmObject;->isManaged()Z

    move-result p2

    .line 934
    invoke-static {p1, p2}, Lcom/lostpixels/fieldservice/realm/RealmHelper;->write(Lcom/lostpixels/fieldservice/realm/RealmHelper$Writer;Z)Z

    :cond_3
    return-void
.end method

.method public addPerson(Lio/realm/Realm;Lcom/lostpixels/fieldservice/internal/ministry/Person;)J
    .locals 1

    .line 1143
    new-instance v0, Lcom/lostpixels/fieldservice/internal/ministry/MinistryManager$23;

    invoke-direct {v0, p0, p1, p2}, Lcom/lostpixels/fieldservice/internal/ministry/MinistryManager$23;-><init>(Lcom/lostpixels/fieldservice/internal/ministry/MinistryManager;Lio/realm/Realm;Lcom/lostpixels/fieldservice/internal/ministry/Person;)V

    .line 1154
    invoke-virtual {p0}, Lio/realm/RealmObject;->isManaged()Z

    move-result p1

    .line 1143
    invoke-static {v0, p1}, Lcom/lostpixels/fieldservice/realm/RealmHelper;->write(Lcom/lostpixels/fieldservice/realm/RealmHelper$Writer;Z)Z

    .line 1156
    invoke-virtual {p2}, Lcom/lostpixels/fieldservice/internal/ministry/Person;->getId()J

    move-result-wide p1

    return-wide p1
.end method

.method public addReturnVisit(Lio/realm/Realm;J)V
    .locals 1

    .line 1176
    new-instance v0, Lcom/lostpixels/fieldservice/internal/ministry/MinistryManager$25;

    invoke-direct {v0, p0, p1, p2, p3}, Lcom/lostpixels/fieldservice/internal/ministry/MinistryManager$25;-><init>(Lcom/lostpixels/fieldservice/internal/ministry/MinistryManager;Lio/realm/Realm;J)V

    .line 1183
    invoke-virtual {p0}, Lio/realm/RealmObject;->isManaged()Z

    move-result p1

    .line 1176
    invoke-static {v0, p1}, Lcom/lostpixels/fieldservice/realm/RealmHelper;->write(Lcom/lostpixels/fieldservice/realm/RealmHelper$Writer;Z)Z

    return-void
.end method

.method public addScriptureIfNew(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;IZ)V
    .locals 7

    .line 960
    new-instance v0, Lcom/lostpixels/fieldservice/internal/ministry/MinistryManager$12;

    move-object v1, p0

    move-object v3, p1

    move-object v2, p2

    move-object v5, p3

    move v4, p4

    move v6, p5

    invoke-direct/range {v0 .. v6}, Lcom/lostpixels/fieldservice/internal/ministry/MinistryManager$12;-><init>(Lcom/lostpixels/fieldservice/internal/ministry/MinistryManager;Ljava/lang/String;Landroid/content/Context;ILjava/lang/String;Z)V

    .line 984
    invoke-virtual {p0}, Lio/realm/RealmObject;->isManaged()Z

    move-result p1

    .line 960
    invoke-static {v0, p1}, Lcom/lostpixels/fieldservice/realm/RealmHelper;->write(Lcom/lostpixels/fieldservice/realm/RealmHelper$Writer;Z)Z

    return-void
.end method

.method public addSuburbIfNew(Landroid/content/Context;Ljava/lang/String;)V
    .locals 1

    .line 833
    new-instance v0, Lcom/lostpixels/fieldservice/internal/ministry/MinistryManager$6;

    invoke-direct {v0, p0, p2, p1}, Lcom/lostpixels/fieldservice/internal/ministry/MinistryManager$6;-><init>(Lcom/lostpixels/fieldservice/internal/ministry/MinistryManager;Ljava/lang/String;Landroid/content/Context;)V

    .line 856
    invoke-virtual {p0}, Lio/realm/RealmObject;->isManaged()Z

    move-result p1

    .line 833
    invoke-static {v0, p1}, Lcom/lostpixels/fieldservice/realm/RealmHelper;->write(Lcom/lostpixels/fieldservice/realm/RealmHelper$Writer;Z)Z

    return-void
.end method

.method public addTerritory(Lio/realm/Realm;Lcom/lostpixels/fieldservice/internal/ministry/Territory;)V
    .locals 1

    .line 1097
    new-instance v0, Lcom/lostpixels/fieldservice/internal/ministry/MinistryManager$19;

    invoke-direct {v0, p0, p1, p2}, Lcom/lostpixels/fieldservice/internal/ministry/MinistryManager$19;-><init>(Lcom/lostpixels/fieldservice/internal/ministry/MinistryManager;Lio/realm/Realm;Lcom/lostpixels/fieldservice/internal/ministry/Territory;)V

    .line 1102
    invoke-virtual {p0}, Lio/realm/RealmObject;->isManaged()Z

    move-result p1

    .line 1097
    invoke-static {v0, p1}, Lcom/lostpixels/fieldservice/realm/RealmHelper;->write(Lcom/lostpixels/fieldservice/realm/RealmHelper$Writer;Z)Z

    return-void
.end method

.method public exportData(Lcom/fasterxml/jackson/core/JsonGenerator;Lcom/lostpixels/fieldservice/internal/ministry/Person;)Z
    .locals 4

    .line 1225
    invoke-static {}, Lio/realm/Realm;->getDefaultInstance()Lio/realm/Realm;

    move-result-object v0

    const/4 v1, 0x0

    if-nez p2, :cond_0

    return v1

    .line 1228
    :cond_0
    invoke-direct {p0, v0}, Lcom/lostpixels/fieldservice/internal/ministry/MinistryManager;->cleanUpPersons(Lio/realm/Realm;)V

    .line 1231
    :try_start_0
    invoke-virtual {p1}, Lcom/fasterxml/jackson/core/JsonGenerator;->writeStartObject()V

    .line 1232
    const-string v2, "FileVersion"

    invoke-static {}, Lcom/lostpixels/fieldservice/internal/ministry/MinistryManager;->getLatestFileVersion()I

    move-result v3

    invoke-virtual {p1, v2, v3}, Lcom/fasterxml/jackson/core/JsonGenerator;->writeNumberField(Ljava/lang/String;I)V

    .line 1234
    const-string v2, "Person"

    invoke-virtual {p1, v2}, Lcom/fasterxml/jackson/core/JsonGenerator;->writeObjectFieldStart(Ljava/lang/String;)V

    .line 1235
    invoke-virtual {p2, p1}, Lcom/lostpixels/fieldservice/internal/ministry/Person;->saveToFileRaw(Lcom/fasterxml/jackson/core/JsonGenerator;)V

    .line 1236
    invoke-virtual {p1}, Lcom/fasterxml/jackson/core/JsonGenerator;->writeEndObject()V

    .line 1237
    invoke-virtual {p1}, Lcom/fasterxml/jackson/core/JsonGenerator;->writeEndObject()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1242
    invoke-virtual {v0}, Lio/realm/Realm;->close()V

    const/4 p1, 0x1

    return p1

    :catchall_0
    move-exception p1

    goto :goto_0

    :catch_0
    move-exception p1

    .line 1239
    :try_start_1
    const-string p2, "ExportData"

    invoke-virtual {p1}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object p1

    invoke-static {p2, p1}, Lcom/lostpixels/fieldservice/utils/LogToSD;->write(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 1242
    invoke-virtual {v0}, Lio/realm/Realm;->close()V

    return v1

    :goto_0
    invoke-virtual {v0}, Lio/realm/Realm;->close()V

    .line 1243
    throw p1
.end method

.method public exportData(Lcom/fasterxml/jackson/core/JsonGenerator;Lcom/lostpixels/fieldservice/internal/ministry/Territory;)Z
    .locals 12

    .line 1187
    invoke-static {}, Lio/realm/Realm;->getDefaultInstance()Lio/realm/Realm;

    move-result-object v0

    const/4 v1, 0x0

    if-nez p2, :cond_0

    return v1

    .line 1190
    :cond_0
    invoke-direct {p0, v0}, Lcom/lostpixels/fieldservice/internal/ministry/MinistryManager;->cleanUpPersons(Lio/realm/Realm;)V

    .line 1193
    :try_start_0
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 1194
    invoke-virtual {p2}, Lcom/lostpixels/fieldservice/internal/ministry/Territory;->getStreets()Ljava/util/List;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :cond_1
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_4

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/lostpixels/fieldservice/internal/ministry/Street;

    .line 1195
    invoke-virtual {v4}, Lcom/lostpixels/fieldservice/internal/ministry/Street;->getAddresses()Ljava/util/List;

    move-result-object v4

    invoke-interface {v4}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :cond_2
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_1

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/lostpixels/fieldservice/internal/ministry/Address;

    .line 1196
    invoke-virtual {v5}, Lcom/lostpixels/fieldservice/internal/ministry/Address;->getVisits()Ljava/util/List;

    move-result-object v5

    invoke-interface {v5}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :cond_3
    :goto_0
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_2

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/lostpixels/fieldservice/internal/ministry/Visit;

    .line 1197
    invoke-virtual {v6}, Lcom/lostpixels/fieldservice/internal/ministry/Visit;->getHouseHolder()J

    move-result-wide v7

    const-wide/16 v9, 0x0

    cmp-long v11, v7, v9

    if-eqz v11, :cond_3

    .line 1198
    invoke-virtual {v6}, Lcom/lostpixels/fieldservice/internal/ministry/Visit;->getHouseHolder()J

    move-result-wide v6

    invoke-virtual {p0, v0, v6, v7}, Lcom/lostpixels/fieldservice/internal/ministry/MinistryManager;->getPerson(Lio/realm/Realm;J)Lcom/lostpixels/fieldservice/internal/ministry/Person;

    move-result-object v6

    invoke-virtual {v2, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :catchall_0
    move-exception p1

    goto :goto_3

    :catch_0
    move-exception p1

    goto :goto_2

    .line 1202
    :cond_4
    invoke-virtual {p1}, Lcom/fasterxml/jackson/core/JsonGenerator;->writeStartObject()V

    .line 1203
    const-string v3, "FileVersion"

    invoke-static {}, Lcom/lostpixels/fieldservice/internal/ministry/MinistryManager;->getLatestFileVersion()I

    move-result v4

    invoke-virtual {p1, v3, v4}, Lcom/fasterxml/jackson/core/JsonGenerator;->writeNumberField(Ljava/lang/String;I)V

    .line 1205
    const-string v3, "PersonList"

    invoke-virtual {p1, v3}, Lcom/fasterxml/jackson/core/JsonGenerator;->writeObjectFieldStart(Ljava/lang/String;)V

    .line 1206
    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v3

    const/4 v4, 0x0

    :goto_1
    if-ge v4, v3, :cond_5

    invoke-virtual {v2, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    add-int/lit8 v4, v4, 0x1

    check-cast v5, Lcom/lostpixels/fieldservice/internal/ministry/Person;

    .line 1207
    invoke-virtual {v5, p1}, Lcom/lostpixels/fieldservice/internal/ministry/Person;->saveToFileRaw(Lcom/fasterxml/jackson/core/JsonGenerator;)V

    goto :goto_1

    .line 1208
    :cond_5
    invoke-virtual {p1}, Lcom/fasterxml/jackson/core/JsonGenerator;->writeEndObject()V

    .line 1210
    const-string v2, "Territory"

    invoke-virtual {p1, v2}, Lcom/fasterxml/jackson/core/JsonGenerator;->writeObjectFieldStart(Ljava/lang/String;)V

    .line 1211
    invoke-virtual {p2, p1}, Lcom/lostpixels/fieldservice/internal/ministry/Territory;->saveToFileRaw(Lcom/fasterxml/jackson/core/JsonGenerator;)V

    .line 1212
    invoke-virtual {p1}, Lcom/fasterxml/jackson/core/JsonGenerator;->writeEndObject()V

    .line 1213
    invoke-virtual {p1}, Lcom/fasterxml/jackson/core/JsonGenerator;->writeEndObject()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1218
    invoke-virtual {v0}, Lio/realm/Realm;->close()V

    const/4 p1, 0x1

    return p1

    .line 1215
    :goto_2
    :try_start_1
    const-string p2, "ExportData"

    invoke-virtual {p1}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object p1

    invoke-static {p2, p1}, Lcom/lostpixels/fieldservice/utils/LogToSD;->write(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 1218
    invoke-virtual {v0}, Lio/realm/Realm;->close()V

    return v1

    :goto_3
    invoke-virtual {v0}, Lio/realm/Realm;->close()V

    .line 1219
    throw p1
.end method

.method public exportToFile(Lcom/fasterxml/jackson/core/JsonGenerator;)Z
    .locals 2

    .line 238
    :try_start_0
    invoke-direct {p0, p1}, Lcom/lostpixels/fieldservice/internal/ministry/MinistryManager;->saveToFileRaw(Lcom/fasterxml/jackson/core/JsonGenerator;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    const/4 p1, 0x1

    return p1

    :catch_0
    move-exception p1

    .line 240
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Exception cought: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 241
    invoke-virtual {p1}, Ljava/lang/Throwable;->getCause()Ljava/lang/Throwable;

    move-result-object v1

    if-eqz v1, :cond_0

    invoke-virtual {p1}, Ljava/lang/Throwable;->getCause()Ljava/lang/Throwable;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Throwable;->toString()Ljava/lang/String;

    move-result-object v1

    goto :goto_0

    :cond_0
    const-string v1, ""

    :goto_0
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 240
    const-string v1, "MinistryManager.exportToFile 1"

    invoke-static {v1, v0}, Lcom/lostpixels/fieldservice/utils/LogToSD;->write(Ljava/lang/String;Ljava/lang/String;)V

    .line 242
    const-string v0, "Stacktrace"

    invoke-static {p1}, Lcom/lostpixels/fieldservice/helpfunctions/HelpFunctions;->getStackTrace(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/lostpixels/fieldservice/utils/LogToSD;->write(Ljava/lang/String;Ljava/lang/String;)V

    .line 244
    invoke-virtual {p1}, Ljava/lang/Throwable;->printStackTrace()V

    const/4 p1, 0x0

    return p1
.end method

.method public forceCleanUpPersons(Lio/realm/Realm;)V
    .locals 1

    const/4 v0, 0x1

    .line 301
    iput-boolean v0, p0, Lcom/lostpixels/fieldservice/internal/ministry/MinistryManager;->mbCleanUpPersons:Z

    .line 302
    invoke-direct {p0, p1}, Lcom/lostpixels/fieldservice/internal/ministry/MinistryManager;->cleanUpPersons(Lio/realm/Realm;)V

    return-void
.end method

.method public getCities()Ljava/util/List;
    .locals 1

    .line 861
    invoke-virtual {p0}, Lcom/lostpixels/fieldservice/internal/ministry/MinistryManager;->realmGet$cities()Lio/realm/RealmList;

    move-result-object v0

    if-nez v0, :cond_0

    .line 862
    new-instance v0, Lio/realm/RealmList;

    invoke-direct {v0}, Lio/realm/RealmList;-><init>()V

    invoke-virtual {p0, v0}, Lcom/lostpixels/fieldservice/internal/ministry/MinistryManager;->realmSet$cities(Lio/realm/RealmList;)V

    .line 863
    :cond_0
    invoke-virtual {p0}, Lcom/lostpixels/fieldservice/internal/ministry/MinistryManager;->realmGet$cities()Lio/realm/RealmList;

    move-result-object v0

    return-object v0
.end method

.method public getNote(ILandroid/content/Context;)Ljava/lang/String;
    .locals 2

    .line 170
    invoke-virtual {p2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f030016

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x3

    packed-switch p1, :pswitch_data_0

    :pswitch_0
    const/4 p1, 0x0

    return-object p1

    :pswitch_1
    const p1, 0x7f120485

    .line 200
    invoke-virtual {p2, p1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p1

    return-object p1

    :pswitch_2
    const p1, 0x7f120363

    .line 198
    invoke-virtual {p2, p1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p1

    return-object p1

    :pswitch_3
    const p1, 0x7f12045d

    .line 196
    invoke-virtual {p2, p1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p1

    return-object p1

    :pswitch_4
    const/16 p1, 0x8

    .line 189
    aget-object p1, v0, p1

    return-object p1

    :pswitch_5
    const p1, 0x7f1204a7

    .line 194
    invoke-virtual {p2, p1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p1

    return-object p1

    :pswitch_6
    const/4 p1, 0x7

    .line 187
    aget-object p1, v0, p1

    return-object p1

    :pswitch_7
    const/4 p1, 0x6

    .line 185
    aget-object p1, v0, p1

    return-object p1

    :pswitch_8
    const/4 p1, 0x5

    .line 183
    aget-object p1, v0, p1

    return-object p1

    :pswitch_9
    const/4 p1, 0x4

    .line 181
    aget-object p1, v0, p1

    return-object p1

    .line 179
    :pswitch_a
    aget-object p1, v0, v1

    return-object p1

    :pswitch_b
    const/4 p1, 0x0

    .line 175
    aget-object p1, v0, p1

    return-object p1

    :pswitch_c
    const/4 p1, 0x1

    .line 173
    aget-object p1, v0, p1

    return-object p1

    .line 191
    :pswitch_d
    invoke-virtual {p2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    const p2, 0x7f030014

    invoke-virtual {p1, p2}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object p1

    .line 192
    aget-object p1, p1, v1

    return-object p1

    :pswitch_e
    const/4 p1, 0x2

    .line 177
    aget-object p1, v0, p1

    return-object p1

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_e
        :pswitch_d
        :pswitch_c
        :pswitch_b
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_a
        :pswitch_9
        :pswitch_8
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_0
        :pswitch_3
        :pswitch_2
        :pswitch_1
    .end packed-switch
.end method

.method public getPerson(Lio/realm/Realm;J)Lcom/lostpixels/fieldservice/internal/ministry/Person;
    .locals 3

    const-wide/16 v0, 0x0

    cmp-long v2, p2, v0

    if-nez v2, :cond_0

    const/4 p1, 0x0

    return-object p1

    .line 1051
    :cond_0
    const-class v0, Lcom/lostpixels/fieldservice/internal/ministry/Person;

    invoke-virtual {p1, v0}, Lio/realm/Realm;->where(Ljava/lang/Class;)Lio/realm/RealmQuery;

    move-result-object p1

    const-string v0, "id"

    invoke-static {p2, p3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p2

    invoke-virtual {p1, v0, p2}, Lio/realm/RealmQuery;->equalTo(Ljava/lang/String;Ljava/lang/Long;)Lio/realm/RealmQuery;

    move-result-object p1

    invoke-virtual {p1}, Lio/realm/RealmQuery;->findFirst()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/lostpixels/fieldservice/internal/ministry/Person;

    return-object p1
.end method

.method public getPersonKey(Lcom/lostpixels/fieldservice/internal/ministry/Person;)J
    .locals 2

    if-eqz p1, :cond_0

    .line 1621
    invoke-virtual {p1}, Lcom/lostpixels/fieldservice/internal/ministry/Person;->getId()J

    move-result-wide v0

    return-wide v0

    .line 1620
    :cond_0
    new-instance p1, Ljava/lang/NullPointerException;

    const-string v0, "Try to find a person that is null!"

    invoke-direct {p1, v0}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public getPersons(Lio/realm/Realm;)Lio/realm/RealmResults;
    .locals 1

    .line 1056
    const-class v0, Lcom/lostpixels/fieldservice/internal/ministry/Person;

    invoke-virtual {p1, v0}, Lio/realm/Realm;->where(Ljava/lang/Class;)Lio/realm/RealmQuery;

    move-result-object p1

    invoke-virtual {p1}, Lio/realm/RealmQuery;->findAll()Lio/realm/RealmResults;

    move-result-object p1

    return-object p1
.end method

.method public getScriptures()Ljava/util/List;
    .locals 1

    .line 956
    invoke-virtual {p0}, Lcom/lostpixels/fieldservice/internal/ministry/MinistryManager;->realmGet$scriptures()Lio/realm/RealmList;

    move-result-object v0

    invoke-static {v0}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public getSuburbs()Ljava/util/List;
    .locals 1

    .line 793
    invoke-virtual {p0}, Lcom/lostpixels/fieldservice/internal/ministry/MinistryManager;->realmGet$suburbs()Lio/realm/RealmList;

    move-result-object v0

    return-object v0
.end method

.method public getTerritories(Lio/realm/Realm;)Lio/realm/RealmResults;
    .locals 1

    .line 1034
    const-class v0, Lcom/lostpixels/fieldservice/internal/ministry/Territory;

    invoke-virtual {p1, v0}, Lio/realm/Realm;->where(Ljava/lang/Class;)Lio/realm/RealmQuery;

    move-result-object p1

    invoke-virtual {p1}, Lio/realm/RealmQuery;->findAll()Lio/realm/RealmResults;

    move-result-object p1

    return-object p1
.end method

.method public getTerritory(J)Lcom/lostpixels/fieldservice/internal/ministry/Territory;
    .locals 2

    .line 1039
    invoke-virtual {p0}, Lio/realm/RealmObject;->getRealm()Lio/realm/Realm;

    move-result-object v0

    const-class v1, Lcom/lostpixels/fieldservice/internal/ministry/Territory;

    invoke-virtual {v0, v1}, Lio/realm/Realm;->where(Ljava/lang/Class;)Lio/realm/RealmQuery;

    move-result-object v0

    const-string v1, "id"

    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p1

    invoke-virtual {v0, v1, p1}, Lio/realm/RealmQuery;->equalTo(Ljava/lang/String;Ljava/lang/Long;)Lio/realm/RealmQuery;

    move-result-object p1

    invoke-virtual {p1}, Lio/realm/RealmQuery;->findFirst()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/lostpixels/fieldservice/internal/ministry/Territory;

    return-object p1
.end method

.method public getUnmanagedPersonList()Ljava/util/List;
    .locals 1

    .line 1060
    iget-object v0, p0, Lcom/lostpixels/fieldservice/internal/ministry/MinistryManager;->unmanagedPersonList:Ljava/util/List;

    return-object v0
.end method

.method public getUnmanagedTerritoryList()Ljava/util/List;
    .locals 1

    .line 1043
    iget-object v0, p0, Lcom/lostpixels/fieldservice/internal/ministry/MinistryManager;->unmanagedTerritoryList:Ljava/util/List;

    return-object v0
.end method

.method public importDataTemporary(Landroid/content/Context;Lcom/fasterxml/jackson/core/JsonParser;)Ljava/lang/String;
    .locals 5

    .line 1260
    invoke-static {}, Lcom/lostpixels/fieldservice/internal/ministry/MinistryManager;->getLatestFileVersion()I

    move-result v0

    .line 1261
    invoke-virtual {p2}, Lcom/fasterxml/jackson/core/JsonParser;->nextToken()Lcom/fasterxml/jackson/core/JsonToken;

    const/4 v1, 0x0

    move-object v2, v1

    .line 1263
    :cond_0
    :goto_0
    invoke-virtual {p2}, Lcom/fasterxml/jackson/core/JsonParser;->nextToken()Lcom/fasterxml/jackson/core/JsonToken;

    move-result-object v3

    sget-object v4, Lcom/fasterxml/jackson/core/JsonToken;->END_OBJECT:Lcom/fasterxml/jackson/core/JsonToken;

    if-eq v3, v4, :cond_6

    .line 1264
    invoke-virtual {p2}, Lcom/fasterxml/jackson/core/JsonParser;->getCurrentName()Ljava/lang/String;

    move-result-object v3

    .line 1265
    invoke-virtual {p2}, Lcom/fasterxml/jackson/core/JsonParser;->nextToken()Lcom/fasterxml/jackson/core/JsonToken;

    .line 1267
    const-string v4, "FileVersion"

    invoke-virtual {v4, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_2

    .line 1268
    invoke-virtual {p2}, Lcom/fasterxml/jackson/core/JsonParser;->getIntValue()I

    move-result v0

    .line 1269
    invoke-static {}, Lcom/lostpixels/fieldservice/internal/ministry/MinistryManager;->getLatestFileVersion()I

    move-result v3

    if-gt v0, v3, :cond_1

    goto :goto_0

    .line 1270
    :cond_1
    new-instance p1, Lcom/lostpixels/fieldservice/utils/FileVersionException;

    const-string p2, "Newer file"

    invoke-direct {p1, p2}, Lcom/lostpixels/fieldservice/utils/FileVersionException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 1271
    :cond_2
    const-string v4, "Territory"

    invoke-virtual {v4, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_4

    .line 1272
    new-instance v3, Lcom/lostpixels/fieldservice/internal/ministry/Territory;

    invoke-direct {v3}, Lcom/lostpixels/fieldservice/internal/ministry/Territory;-><init>()V

    .line 1273
    invoke-virtual {p2}, Lcom/fasterxml/jackson/core/JsonParser;->nextToken()Lcom/fasterxml/jackson/core/JsonToken;

    .line 1274
    invoke-virtual {v3, p2, v0}, Lcom/lostpixels/fieldservice/internal/ministry/Territory;->loadFromFileRaw(Lcom/fasterxml/jackson/core/JsonParser;I)V

    .line 1275
    iget-object v4, p0, Lcom/lostpixels/fieldservice/internal/ministry/MinistryManager;->unmanagedTerritoryList:Ljava/util/List;

    if-nez v4, :cond_3

    .line 1276
    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    iput-object v4, p0, Lcom/lostpixels/fieldservice/internal/ministry/MinistryManager;->unmanagedTerritoryList:Ljava/util/List;

    .line 1277
    :cond_3
    iget-object v4, p0, Lcom/lostpixels/fieldservice/internal/ministry/MinistryManager;->unmanagedTerritoryList:Ljava/util/List;

    invoke-interface {v4}, Ljava/util/List;->clear()V

    .line 1278
    iget-object v4, p0, Lcom/lostpixels/fieldservice/internal/ministry/MinistryManager;->unmanagedTerritoryList:Ljava/util/List;

    invoke-interface {v4, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 1279
    :cond_4
    const-string v4, "Person"

    invoke-virtual {v4, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_5

    .line 1280
    new-instance v2, Lcom/lostpixels/fieldservice/internal/ministry/Person;

    invoke-direct {v2}, Lcom/lostpixels/fieldservice/internal/ministry/Person;-><init>()V

    .line 1281
    invoke-virtual {p2}, Lcom/fasterxml/jackson/core/JsonParser;->nextToken()Lcom/fasterxml/jackson/core/JsonToken;

    .line 1282
    invoke-virtual {v2, p2, v0}, Lcom/lostpixels/fieldservice/internal/ministry/Person;->loadFromFileRaw(Lcom/fasterxml/jackson/core/JsonParser;I)V

    goto :goto_0

    .line 1283
    :cond_5
    const-string v4, "PersonList"

    invoke-virtual {v4, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 1284
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    iput-object v3, p0, Lcom/lostpixels/fieldservice/internal/ministry/MinistryManager;->unmanagedPersonList:Ljava/util/List;

    .line 1285
    :goto_1
    invoke-virtual {p2}, Lcom/fasterxml/jackson/core/JsonParser;->nextToken()Lcom/fasterxml/jackson/core/JsonToken;

    move-result-object v3

    sget-object v4, Lcom/fasterxml/jackson/core/JsonToken;->END_OBJECT:Lcom/fasterxml/jackson/core/JsonToken;

    if-eq v3, v4, :cond_0

    .line 1286
    new-instance v3, Lcom/lostpixels/fieldservice/internal/ministry/Person;

    invoke-direct {v3}, Lcom/lostpixels/fieldservice/internal/ministry/Person;-><init>()V

    .line 1287
    invoke-virtual {v3, p2, v0}, Lcom/lostpixels/fieldservice/internal/ministry/Person;->loadFromFileRaw(Lcom/fasterxml/jackson/core/JsonParser;I)V

    .line 1288
    iget-object v4, p0, Lcom/lostpixels/fieldservice/internal/ministry/MinistryManager;->unmanagedPersonList:Ljava/util/List;

    invoke-interface {v4, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_1

    :cond_6
    const/4 p2, 0x0

    if-eqz v2, :cond_b

    .line 1295
    iget-object v0, p0, Lcom/lostpixels/fieldservice/internal/ministry/MinistryManager;->unmanagedPersonList:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_7
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_8

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/lostpixels/fieldservice/internal/ministry/Person;

    .line 1296
    invoke-virtual {v3, v2, p2}, Lcom/lostpixels/fieldservice/internal/ministry/Person;->merge(Lcom/lostpixels/fieldservice/internal/ministry/Person;Z)Z

    move-result v3

    if-eqz v3, :cond_7

    goto :goto_2

    .line 1302
    :cond_8
    invoke-virtual {p0, v1, v2}, Lcom/lostpixels/fieldservice/internal/ministry/MinistryManager;->addPerson(Lio/realm/Realm;Lcom/lostpixels/fieldservice/internal/ministry/Person;)J

    .line 1303
    invoke-virtual {v2}, Lcom/lostpixels/fieldservice/internal/ministry/Person;->isBibleStudy()Z

    move-result p2

    if-nez p2, :cond_9

    invoke-virtual {v2}, Lcom/lostpixels/fieldservice/internal/ministry/Person;->isMagazineRoute()Z

    move-result p2

    if-nez p2, :cond_9

    invoke-virtual {v2}, Lcom/lostpixels/fieldservice/internal/ministry/Person;->isReturnVisit()Z

    move-result p2

    if-nez p2, :cond_9

    const/4 p2, 0x1

    .line 1304
    invoke-virtual {v2, p2}, Lcom/lostpixels/fieldservice/internal/ministry/Person;->setReturnVisit(Z)V

    .line 1307
    :cond_9
    :goto_2
    invoke-virtual {v2}, Lcom/lostpixels/fieldservice/internal/ministry/Person;->getSuburb()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p0, p1, p2}, Lcom/lostpixels/fieldservice/internal/ministry/MinistryManager;->addSuburbIfNew(Landroid/content/Context;Ljava/lang/String;)V

    .line 1308
    invoke-virtual {v2}, Lcom/lostpixels/fieldservice/internal/ministry/Person;->getCity()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p0, p1, p2}, Lcom/lostpixels/fieldservice/internal/ministry/MinistryManager;->addCityIfNew(Landroid/content/Context;Ljava/lang/String;)V

    .line 1309
    invoke-virtual {v2}, Lcom/lostpixels/fieldservice/internal/ministry/Person;->getName()Ljava/lang/String;

    move-result-object p1

    .line 1310
    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    invoke-virtual {p1}, Ljava/lang/String;->isEmpty()Z

    move-result p2

    if-eqz p2, :cond_a

    .line 1311
    invoke-virtual {v2}, Lcom/lostpixels/fieldservice/internal/ministry/Person;->getAddress()Ljava/lang/String;

    move-result-object p1

    :cond_a
    move-object v1, p1

    goto :goto_4

    .line 1313
    :cond_b
    iget-object p1, p0, Lcom/lostpixels/fieldservice/internal/ministry/MinistryManager;->unmanagedTerritoryList:Ljava/util/List;

    if-eqz p1, :cond_11

    iget-object p1, p0, Lcom/lostpixels/fieldservice/internal/ministry/MinistryManager;->unmanagedPersonList:Ljava/util/List;

    if-eqz p1, :cond_11

    .line 1314
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    .line 1315
    iget-object v0, p0, Lcom/lostpixels/fieldservice/internal/ministry/MinistryManager;->unmanagedTerritoryList:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_c
    :goto_3
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    const/16 v2, 0x23

    if-eqz v1, :cond_f

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/lostpixels/fieldservice/internal/ministry/Territory;

    .line 1316
    invoke-virtual {v1}, Lcom/lostpixels/fieldservice/internal/ministry/Territory;->getStreets()Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_d
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_c

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/lostpixels/fieldservice/internal/ministry/Street;

    .line 1317
    invoke-virtual {p1}, Ljava/lang/StringBuilder;->length()I

    move-result v4

    if-lez v4, :cond_e

    .line 1318
    const-string v4, ", "

    invoke-virtual {p1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1319
    :cond_e
    invoke-virtual {v3}, Lcom/lostpixels/fieldservice/internal/ministry/Street;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1320
    invoke-virtual {p1}, Ljava/lang/StringBuilder;->length()I

    move-result v3

    if-le v3, v2, :cond_d

    goto :goto_3

    .line 1324
    :cond_f
    invoke-virtual {p1}, Ljava/lang/StringBuilder;->length()I

    move-result v0

    if-le v0, v2, :cond_10

    .line 1325
    invoke-virtual {p1, p2, v2}, Ljava/lang/StringBuilder;->substring(II)Ljava/lang/String;

    move-result-object p1

    .line 1326
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, "..."

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    goto :goto_4

    .line 1328
    :cond_10
    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 1330
    :cond_11
    :goto_4
    invoke-direct {p0}, Lcom/lostpixels/fieldservice/internal/ministry/MinistryManager;->sortCities()V

    .line 1331
    invoke-direct {p0}, Lcom/lostpixels/fieldservice/internal/ministry/MinistryManager;->sortSuburbs()V

    return-object v1
.end method

.method public isFileLoaded()Z
    .locals 1

    .line 947
    iget-boolean v0, p0, Lcom/lostpixels/fieldservice/internal/ministry/MinistryManager;->mbFileLoaded:Z

    return v0
.end method

.method public loadFromDataStream(Lcom/lostpixels/fieldservice/utils/ObjectDataInputStream;)Z
    .locals 3

    const/4 v0, 0x0

    .line 277
    :try_start_0
    invoke-static {}, Lcom/lostpixels/fieldservice/utils/PerfToSD;->start()V

    .line 278
    invoke-direct {p0, p1}, Lcom/lostpixels/fieldservice/internal/ministry/MinistryManager;->loadFromFileObjectStream(Lcom/lostpixels/fieldservice/utils/ObjectDataInputStream;)V

    .line 279
    const-string p1, "ReadMinistryStringRaw"

    invoke-static {p1}, Lcom/lostpixels/fieldservice/utils/PerfToSD;->stop(Ljava/lang/String;)V
    :try_end_0
    .catch Lcom/lostpixels/fieldservice/utils/FileVersionException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    const/4 p1, 0x1

    .line 296
    iput-boolean p1, p0, Lcom/lostpixels/fieldservice/internal/ministry/MinistryManager;->mbFileLoaded:Z

    return p1

    :catch_0
    move-exception p1

    goto :goto_0

    :catch_1
    move-exception p1

    goto :goto_2

    .line 284
    :goto_0
    iput-boolean v0, p0, Lcom/lostpixels/fieldservice/internal/ministry/MinistryManager;->mbFileLoaded:Z

    .line 285
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Exception cought: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 286
    invoke-virtual {p1}, Ljava/lang/Throwable;->getCause()Ljava/lang/Throwable;

    move-result-object v2

    if-eqz v2, :cond_0

    invoke-virtual {p1}, Ljava/lang/Throwable;->getCause()Ljava/lang/Throwable;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Throwable;->toString()Ljava/lang/String;

    move-result-object v2

    goto :goto_1

    :cond_0
    const-string v2, ""

    :goto_1
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 285
    const-string v2, "MinistryManager.loadFromDataStream 1"

    invoke-static {v2, v1}, Lcom/lostpixels/fieldservice/utils/LogToSD;->write(Ljava/lang/String;Ljava/lang/String;)V

    .line 287
    const-string v1, "Stacktrace"

    invoke-static {p1}, Lcom/lostpixels/fieldservice/helpfunctions/HelpFunctions;->getStackTrace(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/lostpixels/fieldservice/utils/LogToSD;->write(Ljava/lang/String;Ljava/lang/String;)V

    .line 288
    instance-of v1, p1, Ljava/lang/IllegalStateException;

    if-nez v1, :cond_1

    .line 290
    :try_start_1
    invoke-static {}, Lcom/google/firebase/crashlytics/FirebaseCrashlytics;->getInstance()Lcom/google/firebase/crashlytics/FirebaseCrashlytics;

    move-result-object v1

    invoke-virtual {v1, p1}, Lcom/google/firebase/crashlytics/FirebaseCrashlytics;->recordException(Ljava/lang/Throwable;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_2

    :catch_2
    :cond_1
    return v0

    .line 281
    :goto_2
    iput-boolean v0, p0, Lcom/lostpixels/fieldservice/internal/ministry/MinistryManager;->mbFileLoaded:Z

    .line 282
    throw p1
.end method

.method public loadFromFile(Lcom/fasterxml/jackson/core/JsonParser;)Z
    .locals 3

    const/4 v0, 0x0

    const/4 v1, 0x1

    .line 253
    :try_start_0
    invoke-virtual {p0, p1, v1}, Lcom/lostpixels/fieldservice/internal/ministry/MinistryManager;->loadFromFileRaw(Lcom/fasterxml/jackson/core/JsonParser;Z)V
    :try_end_0
    .catch Lcom/lostpixels/fieldservice/utils/FileVersionException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 271
    iput-boolean v1, p0, Lcom/lostpixels/fieldservice/internal/ministry/MinistryManager;->mbFileLoaded:Z

    return v1

    :catch_0
    move-exception p1

    .line 259
    iput-boolean v0, p0, Lcom/lostpixels/fieldservice/internal/ministry/MinistryManager;->mbFileLoaded:Z

    .line 260
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Exception cought: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 261
    invoke-virtual {p1}, Ljava/lang/Throwable;->getCause()Ljava/lang/Throwable;

    move-result-object v2

    if-eqz v2, :cond_0

    invoke-virtual {p1}, Ljava/lang/Throwable;->getCause()Ljava/lang/Throwable;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Throwable;->toString()Ljava/lang/String;

    move-result-object v2

    goto :goto_0

    :cond_0
    const-string v2, ""

    :goto_0
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 260
    const-string v2, "MinistryManager.loadFromFileRaw 1"

    invoke-static {v2, v1}, Lcom/lostpixels/fieldservice/utils/LogToSD;->write(Ljava/lang/String;Ljava/lang/String;)V

    .line 262
    const-string v1, "Stacktrace"

    invoke-static {p1}, Lcom/lostpixels/fieldservice/helpfunctions/HelpFunctions;->getStackTrace(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/lostpixels/fieldservice/utils/LogToSD;->write(Ljava/lang/String;Ljava/lang/String;)V

    .line 263
    instance-of v1, p1, Ljava/lang/IllegalStateException;

    if-nez v1, :cond_1

    .line 265
    :try_start_1
    invoke-static {}, Lcom/google/firebase/crashlytics/FirebaseCrashlytics;->getInstance()Lcom/google/firebase/crashlytics/FirebaseCrashlytics;

    move-result-object v1

    invoke-virtual {v1, p1}, Lcom/google/firebase/crashlytics/FirebaseCrashlytics;->recordException(Ljava/lang/Throwable;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    :catch_1
    :cond_1
    return v0

    :catch_2
    move-exception p1

    .line 256
    iput-boolean v0, p0, Lcom/lostpixels/fieldservice/internal/ministry/MinistryManager;->mbFileLoaded:Z

    .line 257
    throw p1
.end method

.method public loadFromFileRaw(Lcom/fasterxml/jackson/core/JsonParser;Z)V
    .locals 17

    move-object/from16 v1, p0

    move-object/from16 v0, p1

    move/from16 v2, p2

    .line 561
    invoke-static {}, Lio/realm/Realm;->getDefaultInstance()Lio/realm/Realm;

    move-result-object v3

    .line 562
    invoke-virtual {v3}, Lio/realm/Realm;->isInTransaction()Z

    move-result v4

    if-nez v4, :cond_0

    if-eqz v2, :cond_0

    .line 564
    invoke-virtual {v3}, Lio/realm/Realm;->beginTransaction()V

    .line 566
    :cond_0
    :try_start_0
    new-instance v5, Ljava/util/HashMap;

    invoke-direct {v5}, Ljava/util/HashMap;-><init>()V

    .line 567
    invoke-virtual {v1}, Lio/realm/RealmObject;->isManaged()Z

    move-result v6

    if-eqz v6, :cond_1

    .line 568
    const-class v6, Lcom/lostpixels/fieldservice/internal/ministry/Territory;

    invoke-virtual {v3, v6}, Lio/realm/Realm;->where(Ljava/lang/Class;)Lio/realm/RealmQuery;

    move-result-object v6

    invoke-virtual {v6}, Lio/realm/RealmQuery;->findAll()Lio/realm/RealmResults;

    move-result-object v6

    invoke-virtual {v6}, Lio/realm/RealmResults;->deleteAllFromRealm()Z

    goto :goto_0

    :catchall_0
    move-exception v0

    goto/16 :goto_17

    :catch_0
    move-exception v0

    move/from16 v16, v4

    goto/16 :goto_15

    :catch_1
    move-exception v0

    move/from16 v16, v4

    goto/16 :goto_16

    .line 570
    :cond_1
    iget-object v6, v1, Lcom/lostpixels/fieldservice/internal/ministry/MinistryManager;->unmanagedTerritoryList:Ljava/util/List;

    invoke-interface {v6}, Ljava/util/List;->clear()V

    .line 572
    :goto_0
    invoke-virtual {v1}, Lio/realm/RealmObject;->isManaged()Z

    move-result v6

    if-eqz v6, :cond_2

    .line 573
    const-class v6, Lcom/lostpixels/fieldservice/internal/ministry/Person;

    invoke-virtual {v3, v6}, Lio/realm/Realm;->where(Ljava/lang/Class;)Lio/realm/RealmQuery;

    move-result-object v6

    invoke-virtual {v6}, Lio/realm/RealmQuery;->findAll()Lio/realm/RealmResults;

    move-result-object v6

    invoke-virtual {v6}, Lio/realm/RealmResults;->deleteAllFromRealm()Z

    goto :goto_1

    .line 575
    :cond_2
    new-instance v6, Ljava/util/ArrayList;

    invoke-direct {v6}, Ljava/util/ArrayList;-><init>()V

    iput-object v6, v1, Lcom/lostpixels/fieldservice/internal/ministry/MinistryManager;->unmanagedPersonList:Ljava/util/List;

    .line 576
    :goto_1
    invoke-virtual {v1}, Lcom/lostpixels/fieldservice/internal/ministry/MinistryManager;->realmGet$suburbs()Lio/realm/RealmList;

    move-result-object v6

    if-nez v6, :cond_3

    .line 577
    new-instance v6, Lio/realm/RealmList;

    invoke-direct {v6}, Lio/realm/RealmList;-><init>()V

    invoke-virtual {v1, v6}, Lcom/lostpixels/fieldservice/internal/ministry/MinistryManager;->realmSet$suburbs(Lio/realm/RealmList;)V

    .line 578
    :cond_3
    invoke-virtual {v1}, Lio/realm/RealmObject;->isManaged()Z

    move-result v6

    if-eqz v6, :cond_4

    .line 579
    invoke-virtual {v1}, Lcom/lostpixels/fieldservice/internal/ministry/MinistryManager;->realmGet$suburbs()Lio/realm/RealmList;

    move-result-object v6

    invoke-virtual {v6}, Lio/realm/RealmList;->deleteAllFromRealm()Z

    goto :goto_2

    .line 581
    :cond_4
    invoke-virtual {v1}, Lcom/lostpixels/fieldservice/internal/ministry/MinistryManager;->realmGet$suburbs()Lio/realm/RealmList;

    move-result-object v6

    invoke-virtual {v6}, Lio/realm/RealmList;->clear()V

    .line 582
    :goto_2
    invoke-virtual {v1}, Lcom/lostpixels/fieldservice/internal/ministry/MinistryManager;->realmGet$scriptures()Lio/realm/RealmList;

    move-result-object v6

    if-nez v6, :cond_5

    .line 583
    new-instance v6, Lio/realm/RealmList;

    invoke-direct {v6}, Lio/realm/RealmList;-><init>()V

    invoke-virtual {v1, v6}, Lcom/lostpixels/fieldservice/internal/ministry/MinistryManager;->realmSet$scriptures(Lio/realm/RealmList;)V

    .line 585
    :cond_5
    invoke-virtual {v1}, Lio/realm/RealmObject;->isManaged()Z

    move-result v6

    if-eqz v6, :cond_6

    .line 586
    invoke-virtual {v1}, Lcom/lostpixels/fieldservice/internal/ministry/MinistryManager;->realmGet$scriptures()Lio/realm/RealmList;

    move-result-object v6

    invoke-virtual {v6}, Lio/realm/RealmList;->deleteAllFromRealm()Z

    goto :goto_3

    .line 588
    :cond_6
    invoke-virtual {v1}, Lcom/lostpixels/fieldservice/internal/ministry/MinistryManager;->realmGet$scriptures()Lio/realm/RealmList;

    move-result-object v6

    invoke-virtual {v6}, Lio/realm/RealmList;->clear()V

    .line 590
    :goto_3
    invoke-static {}, Lcom/lostpixels/fieldservice/internal/ministry/MinistryManager;->getLatestFileVersion()I

    move-result v6

    .line 593
    invoke-virtual {v0}, Lcom/fasterxml/jackson/core/JsonParser;->nextToken()Lcom/fasterxml/jackson/core/JsonToken;

    const/4 v7, 0x0

    const/4 v9, 0x0

    const/4 v10, 0x0

    .line 595
    :goto_4
    invoke-virtual {v0}, Lcom/fasterxml/jackson/core/JsonParser;->nextToken()Lcom/fasterxml/jackson/core/JsonToken;

    move-result-object v11

    sget-object v12, Lcom/fasterxml/jackson/core/JsonToken;->END_OBJECT:Lcom/fasterxml/jackson/core/JsonToken;

    if-eq v11, v12, :cond_23

    .line 596
    invoke-virtual {v0}, Lcom/fasterxml/jackson/core/JsonParser;->getCurrentName()Ljava/lang/String;

    move-result-object v11

    .line 598
    invoke-virtual {v0}, Lcom/fasterxml/jackson/core/JsonParser;->nextToken()Lcom/fasterxml/jackson/core/JsonToken;

    if-nez v11, :cond_7

    const/4 v12, 0x4

    if-ge v10, v12, :cond_7

    add-int/lit8 v10, v10, 0x1

    .line 601
    const-string v11, "MinistryManager loadFromFileRaw - field is null. Next value:"

    invoke-virtual {v0}, Lcom/fasterxml/jackson/core/JsonParser;->getCurrentName()Ljava/lang/String;

    move-result-object v12

    invoke-static {v11, v12}, Lcom/lostpixels/fieldservice/utils/LogToSD;->write(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_4

    .line 604
    :cond_7
    const-string v12, "FileVersion"

    invoke-virtual {v12, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v12

    if-eqz v12, :cond_a

    .line 605
    invoke-virtual {v0}, Lcom/fasterxml/jackson/core/JsonParser;->getIntValue()I

    move-result v6

    .line 607
    invoke-static {}, Lcom/lostpixels/fieldservice/internal/ministry/MinistryManager;->getLatestFileVersion()I

    move-result v11

    if-gt v6, v11, :cond_9

    :cond_8
    :goto_5
    move/from16 v16, v4

    const/4 v4, 0x0

    goto/16 :goto_13

    .line 608
    :cond_9
    new-instance v0, Lcom/lostpixels/fieldservice/utils/FileVersionException;

    const-string v5, "Newer file version"

    invoke-direct {v0, v5}, Lcom/lostpixels/fieldservice/utils/FileVersionException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 609
    :cond_a
    const-string v12, "SuDate"

    invoke-virtual {v12, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v12

    if-eqz v12, :cond_b

    .line 610
    new-instance v11, Ljava/util/Date;

    invoke-virtual {v0}, Lcom/fasterxml/jackson/core/JsonParser;->getLongValue()J

    move-result-wide v12

    invoke-direct {v11, v12, v13}, Ljava/util/Date;-><init>(J)V

    invoke-virtual {v1, v11}, Lcom/lostpixels/fieldservice/internal/ministry/MinistryManager;->realmSet$mSuburbDate(Ljava/util/Date;)V

    goto :goto_5

    .line 611
    :cond_b
    const-string v12, "CiDate"

    invoke-virtual {v12, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v12

    if-eqz v12, :cond_c

    .line 612
    new-instance v11, Ljava/util/Date;

    invoke-virtual {v0}, Lcom/fasterxml/jackson/core/JsonParser;->getLongValue()J

    move-result-wide v12

    invoke-direct {v11, v12, v13}, Ljava/util/Date;-><init>(J)V

    invoke-virtual {v1, v11}, Lcom/lostpixels/fieldservice/internal/ministry/MinistryManager;->realmSet$mCitiesDate(Ljava/util/Date;)V

    goto :goto_5

    .line 613
    :cond_c
    const-string v12, "ScDate"

    invoke-virtual {v12, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v12

    if-eqz v12, :cond_e

    .line 614
    invoke-virtual {v1}, Lcom/lostpixels/fieldservice/internal/ministry/MinistryManager;->realmGet$mScripturesDate()Ljava/util/Date;

    move-result-object v11

    if-nez v11, :cond_d

    .line 615
    new-instance v11, Ljava/util/Date;

    invoke-direct {v11}, Ljava/util/Date;-><init>()V

    invoke-virtual {v1, v11}, Lcom/lostpixels/fieldservice/internal/ministry/MinistryManager;->realmSet$mScripturesDate(Ljava/util/Date;)V

    .line 616
    :cond_d
    new-instance v11, Ljava/util/Date;

    invoke-virtual {v0}, Lcom/fasterxml/jackson/core/JsonParser;->getLongValue()J

    move-result-wide v12

    invoke-direct {v11, v12, v13}, Ljava/util/Date;-><init>(J)V

    invoke-virtual {v1, v11}, Lcom/lostpixels/fieldservice/internal/ministry/MinistryManager;->realmSet$mScripturesDate(Ljava/util/Date;)V

    goto :goto_5

    .line 617
    :cond_e
    const-string v12, "Territories"

    invoke-virtual {v12, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v12

    if-eqz v12, :cond_10

    .line 619
    :goto_6
    invoke-virtual {v0}, Lcom/fasterxml/jackson/core/JsonParser;->nextToken()Lcom/fasterxml/jackson/core/JsonToken;

    move-result-object v11

    sget-object v12, Lcom/fasterxml/jackson/core/JsonToken;->END_OBJECT:Lcom/fasterxml/jackson/core/JsonToken;

    if-eq v11, v12, :cond_8

    .line 621
    new-instance v11, Lcom/lostpixels/fieldservice/internal/ministry/Territory;

    invoke-direct {v11}, Lcom/lostpixels/fieldservice/internal/ministry/Territory;-><init>()V

    .line 622
    invoke-virtual {v11, v0, v6}, Lcom/lostpixels/fieldservice/internal/ministry/Territory;->loadFromFileRaw(Lcom/fasterxml/jackson/core/JsonParser;I)V

    .line 623
    invoke-virtual {v1}, Lio/realm/RealmObject;->isManaged()Z

    move-result v12

    if-eqz v12, :cond_f

    .line 624
    new-array v12, v7, [Lio/realm/ImportFlag;

    invoke-virtual {v3, v11, v12}, Lio/realm/Realm;->copyToRealmOrUpdate(Lio/realm/RealmModel;[Lio/realm/ImportFlag;)Lio/realm/RealmModel;

    goto :goto_6

    .line 626
    :cond_f
    iget-object v12, v1, Lcom/lostpixels/fieldservice/internal/ministry/MinistryManager;->unmanagedTerritoryList:Ljava/util/List;

    invoke-interface {v12, v11}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_6

    .line 628
    :cond_10
    const-string v12, "ReturnVisits"

    invoke-virtual {v12, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v12

    if-eqz v12, :cond_12

    if-nez v9, :cond_11

    .line 630
    new-instance v9, Ljava/util/ArrayList;

    invoke-direct {v9}, Ljava/util/ArrayList;-><init>()V

    .line 631
    :cond_11
    :goto_7
    invoke-virtual {v0}, Lcom/fasterxml/jackson/core/JsonParser;->nextToken()Lcom/fasterxml/jackson/core/JsonToken;

    move-result-object v11

    sget-object v12, Lcom/fasterxml/jackson/core/JsonToken;->END_ARRAY:Lcom/fasterxml/jackson/core/JsonToken;

    if-eq v11, v12, :cond_8

    .line 632
    invoke-virtual {v0}, Lcom/fasterxml/jackson/core/JsonParser;->getIntValue()I

    move-result v11

    invoke-static {v11}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v11

    invoke-virtual {v9, v11}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_7

    .line 634
    :cond_12
    const-string v12, "PersonMap"

    invoke-virtual {v12, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v12
    :try_end_0
    .catch Lcom/lostpixels/fieldservice/utils/FileVersionException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    const-string v13, "\'!"

    const-string v14, "Unrecognized field \'"

    if-eqz v12, :cond_1a

    const/4 v12, 0x0

    const/4 v15, 0x0

    .line 637
    :goto_8
    :try_start_1
    invoke-virtual {v0}, Lcom/fasterxml/jackson/core/JsonParser;->nextToken()Lcom/fasterxml/jackson/core/JsonToken;

    move-result-object v8

    sget-object v7, Lcom/fasterxml/jackson/core/JsonToken;->END_OBJECT:Lcom/fasterxml/jackson/core/JsonToken;

    if-eq v8, v7, :cond_8

    .line 639
    invoke-virtual {v0}, Lcom/fasterxml/jackson/core/JsonParser;->getCurrentName()Ljava/lang/String;

    move-result-object v7

    .line 640
    invoke-virtual {v0}, Lcom/fasterxml/jackson/core/JsonParser;->nextToken()Lcom/fasterxml/jackson/core/JsonToken;

    .line 641
    const-string v8, "K"

    invoke-virtual {v8, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8
    :try_end_1
    .catch Lcom/lostpixels/fieldservice/utils/FileVersionException; {:try_start_1 .. :try_end_1} :catch_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move/from16 v16, v4

    const/16 v4, 0x18

    if-eqz v8, :cond_13

    .line 642
    :try_start_2
    invoke-virtual {v0}, Lcom/fasterxml/jackson/core/JsonParser;->getIntValue()I

    move-result v7

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v12

    if-gt v6, v4, :cond_14

    if-nez v7, :cond_14

    const/4 v7, -0x1

    .line 644
    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v12

    goto :goto_9

    :catch_2
    move-exception v0

    goto/16 :goto_15

    :catch_3
    move-exception v0

    goto/16 :goto_16

    .line 645
    :cond_13
    const-string v8, "Pe"

    invoke-virtual {v8, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_19

    .line 646
    invoke-virtual {v0}, Lcom/fasterxml/jackson/core/JsonParser;->nextToken()Lcom/fasterxml/jackson/core/JsonToken;

    .line 648
    new-instance v15, Lcom/lostpixels/fieldservice/internal/ministry/Person;

    invoke-direct {v15}, Lcom/lostpixels/fieldservice/internal/ministry/Person;-><init>()V

    .line 649
    invoke-virtual {v15, v0, v6}, Lcom/lostpixels/fieldservice/internal/ministry/Person;->loadFromFileRaw(Lcom/fasterxml/jackson/core/JsonParser;I)V

    .line 650
    invoke-virtual {v0}, Lcom/fasterxml/jackson/core/JsonParser;->nextToken()Lcom/fasterxml/jackson/core/JsonToken;

    :cond_14
    :goto_9
    if-gt v6, v4, :cond_17

    if-eqz v12, :cond_16

    if-eqz v15, :cond_16

    .line 657
    invoke-virtual {v1}, Lio/realm/RealmObject;->isManaged()Z

    move-result v4

    if-eqz v4, :cond_15

    const/4 v4, 0x0

    .line 658
    new-array v7, v4, [Lio/realm/ImportFlag;

    invoke-virtual {v3, v15, v7}, Lio/realm/Realm;->copyToRealmOrUpdate(Lio/realm/RealmModel;[Lio/realm/ImportFlag;)Lio/realm/RealmModel;

    goto :goto_a

    .line 660
    :cond_15
    iget-object v4, v1, Lcom/lostpixels/fieldservice/internal/ministry/MinistryManager;->unmanagedPersonList:Ljava/util/List;

    invoke-interface {v4, v15}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 661
    :goto_a
    invoke-virtual {v15}, Lcom/lostpixels/fieldservice/internal/ministry/Person;->getId()J

    move-result-wide v7

    invoke-static {v7, v8}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    invoke-interface {v5, v12, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const/4 v4, 0x0

    const/4 v12, 0x0

    :goto_b
    const/4 v15, 0x0

    goto :goto_c

    :cond_16
    const/4 v4, 0x0

    goto :goto_c

    .line 666
    :cond_17
    invoke-virtual {v1}, Lio/realm/RealmObject;->isManaged()Z

    move-result v4

    if-eqz v4, :cond_18

    const/4 v4, 0x0

    .line 667
    new-array v7, v4, [Lio/realm/ImportFlag;

    invoke-virtual {v3, v15, v7}, Lio/realm/Realm;->copyToRealmOrUpdate(Lio/realm/RealmModel;[Lio/realm/ImportFlag;)Lio/realm/RealmModel;

    goto :goto_b

    :cond_18
    const/4 v4, 0x0

    .line 669
    iget-object v7, v1, Lcom/lostpixels/fieldservice/internal/ministry/MinistryManager;->unmanagedPersonList:Ljava/util/List;

    invoke-interface {v7, v15}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_b

    :goto_c
    move/from16 v4, v16

    const/4 v7, 0x0

    goto/16 :goto_8

    .line 652
    :cond_19
    new-instance v0, Ljava/lang/IllegalStateException;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v0, v4}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_1a
    move/from16 v16, v4

    const/4 v4, 0x0

    .line 673
    const-string v7, "Suburbs"

    invoke-virtual {v7, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_1b

    .line 674
    :goto_d
    invoke-virtual {v0}, Lcom/fasterxml/jackson/core/JsonParser;->nextToken()Lcom/fasterxml/jackson/core/JsonToken;

    move-result-object v7

    sget-object v8, Lcom/fasterxml/jackson/core/JsonToken;->END_ARRAY:Lcom/fasterxml/jackson/core/JsonToken;

    if-eq v7, v8, :cond_21

    .line 675
    invoke-virtual {v1}, Lcom/lostpixels/fieldservice/internal/ministry/MinistryManager;->realmGet$suburbs()Lio/realm/RealmList;

    move-result-object v7

    invoke-virtual {v0}, Lcom/fasterxml/jackson/core/JsonParser;->getText()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Lio/realm/RealmList;->add(Ljava/lang/Object;)Z

    goto :goto_d

    .line 677
    :cond_1b
    const-string v7, "Cities"

    invoke-virtual {v7, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_1c

    .line 678
    new-instance v7, Lio/realm/RealmList;

    invoke-direct {v7}, Lio/realm/RealmList;-><init>()V

    invoke-virtual {v1, v7}, Lcom/lostpixels/fieldservice/internal/ministry/MinistryManager;->realmSet$cities(Lio/realm/RealmList;)V

    .line 679
    :goto_e
    invoke-virtual {v0}, Lcom/fasterxml/jackson/core/JsonParser;->nextToken()Lcom/fasterxml/jackson/core/JsonToken;

    move-result-object v7

    sget-object v8, Lcom/fasterxml/jackson/core/JsonToken;->END_ARRAY:Lcom/fasterxml/jackson/core/JsonToken;

    if-eq v7, v8, :cond_21

    .line 680
    invoke-virtual {v1}, Lcom/lostpixels/fieldservice/internal/ministry/MinistryManager;->realmGet$cities()Lio/realm/RealmList;

    move-result-object v7

    invoke-virtual {v0}, Lcom/fasterxml/jackson/core/JsonParser;->getText()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Lio/realm/RealmList;->add(Ljava/lang/Object;)Z

    goto :goto_e

    .line 682
    :cond_1c
    const-string v7, "Publications"

    invoke-virtual {v7, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_1d

    .line 684
    :goto_f
    invoke-virtual {v0}, Lcom/fasterxml/jackson/core/JsonParser;->nextToken()Lcom/fasterxml/jackson/core/JsonToken;

    move-result-object v7

    sget-object v8, Lcom/fasterxml/jackson/core/JsonToken;->END_ARRAY:Lcom/fasterxml/jackson/core/JsonToken;

    if-eq v7, v8, :cond_21

    goto :goto_f

    .line 686
    :cond_1d
    const-string v7, "Scriptures"

    invoke-virtual {v7, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_1e

    .line 687
    :goto_10
    invoke-virtual {v0}, Lcom/fasterxml/jackson/core/JsonParser;->nextToken()Lcom/fasterxml/jackson/core/JsonToken;

    move-result-object v7

    sget-object v8, Lcom/fasterxml/jackson/core/JsonToken;->END_ARRAY:Lcom/fasterxml/jackson/core/JsonToken;

    if-eq v7, v8, :cond_21

    .line 688
    invoke-virtual {v1}, Lcom/lostpixels/fieldservice/internal/ministry/MinistryManager;->realmGet$scriptures()Lio/realm/RealmList;

    move-result-object v7

    new-instance v8, Lcom/lostpixels/fieldservice/internal/report/Scripture;

    invoke-virtual {v0}, Lcom/fasterxml/jackson/core/JsonParser;->getText()Ljava/lang/String;

    move-result-object v11

    const-string v12, ""

    invoke-direct {v8, v11, v12}, Lcom/lostpixels/fieldservice/internal/report/Scripture;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v7, v8}, Lio/realm/RealmList;->add(Ljava/lang/Object;)Z

    goto :goto_10

    .line 690
    :cond_1e
    const-string v7, "ScriptureCont"

    invoke-virtual {v7, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_1f

    .line 691
    :goto_11
    invoke-virtual {v0}, Lcom/fasterxml/jackson/core/JsonParser;->nextToken()Lcom/fasterxml/jackson/core/JsonToken;

    move-result-object v7

    sget-object v8, Lcom/fasterxml/jackson/core/JsonToken;->END_ARRAY:Lcom/fasterxml/jackson/core/JsonToken;

    if-eq v7, v8, :cond_21

    .line 692
    invoke-virtual {v0}, Lcom/fasterxml/jackson/core/JsonParser;->getText()Ljava/lang/String;

    move-result-object v7

    .line 693
    invoke-virtual {v0}, Lcom/fasterxml/jackson/core/JsonParser;->nextToken()Lcom/fasterxml/jackson/core/JsonToken;

    .line 694
    invoke-virtual {v0}, Lcom/fasterxml/jackson/core/JsonParser;->getText()Ljava/lang/String;

    move-result-object v8

    .line 695
    invoke-virtual {v1}, Lcom/lostpixels/fieldservice/internal/ministry/MinistryManager;->realmGet$scriptures()Lio/realm/RealmList;

    move-result-object v11

    new-instance v12, Lcom/lostpixels/fieldservice/internal/report/Scripture;

    invoke-direct {v12, v7, v8}, Lcom/lostpixels/fieldservice/internal/report/Scripture;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v11, v12}, Lio/realm/RealmList;->add(Ljava/lang/Object;)Z

    goto :goto_11

    .line 697
    :cond_1f
    const-string v7, "Gender"

    invoke-virtual {v7, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_20

    .line 699
    :goto_12
    invoke-virtual {v0}, Lcom/fasterxml/jackson/core/JsonParser;->nextToken()Lcom/fasterxml/jackson/core/JsonToken;

    move-result-object v7

    sget-object v8, Lcom/fasterxml/jackson/core/JsonToken;->END_ARRAY:Lcom/fasterxml/jackson/core/JsonToken;

    if-eq v7, v8, :cond_21

    .line 702
    invoke-virtual {v0}, Lcom/fasterxml/jackson/core/JsonParser;->getText()Ljava/lang/String;

    goto :goto_12

    .line 704
    :cond_20
    const-string v7, "NextKey"

    invoke-virtual {v7, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_22

    .line 705
    invoke-virtual {v0}, Lcom/fasterxml/jackson/core/JsonParser;->getIntValue()I

    :cond_21
    :goto_13
    move/from16 v4, v16

    const/4 v7, 0x0

    goto/16 :goto_4

    .line 707
    :cond_22
    new-instance v0, Ljava/lang/IllegalStateException;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v0, v4}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_23
    move/from16 v16, v4

    const/4 v4, 0x0

    if-eqz v9, :cond_25

    .line 712
    invoke-virtual {v9}, Ljava/util/ArrayList;->size()I

    move-result v0

    const/4 v7, 0x0

    :cond_24
    :goto_14
    if-ge v7, v0, :cond_25

    invoke-virtual {v9, v7}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    add-int/lit8 v7, v7, 0x1

    check-cast v4, Ljava/lang/Integer;

    .line 713
    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v4

    int-to-long v10, v4

    invoke-virtual {v1, v3, v10, v11}, Lcom/lostpixels/fieldservice/internal/ministry/MinistryManager;->getPerson(Lio/realm/Realm;J)Lcom/lostpixels/fieldservice/internal/ministry/Person;

    move-result-object v4

    if-eqz v4, :cond_24

    const/4 v8, 0x1

    .line 715
    invoke-virtual {v4, v8}, Lcom/lostpixels/fieldservice/internal/ministry/Person;->setReturnVisit(Z)V

    goto :goto_14

    .line 718
    :cond_25
    invoke-direct {v1, v3, v6, v5}, Lcom/lostpixels/fieldservice/internal/ministry/MinistryManager;->updateFile(Lio/realm/Realm;ILjava/util/Map;)V

    .line 720
    invoke-virtual {v3}, Lio/realm/Realm;->isInTransaction()Z

    move-result v0

    if-ne v0, v2, :cond_27

    if-nez v16, :cond_26

    if-eqz v2, :cond_26

    .line 723
    invoke-virtual {v3}, Lio/realm/Realm;->commitTransaction()V
    :try_end_2
    .catch Lcom/lostpixels/fieldservice/utils/FileVersionException; {:try_start_2 .. :try_end_2} :catch_3
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 734
    :cond_26
    invoke-virtual {v3}, Lio/realm/Realm;->close()V

    return-void

    .line 721
    :cond_27
    :try_start_3
    new-instance v0, Ljava/lang/RuntimeException;

    invoke-direct {v0}, Ljava/lang/RuntimeException;-><init>()V

    throw v0
    :try_end_3
    .catch Lcom/lostpixels/fieldservice/utils/FileVersionException; {:try_start_3 .. :try_end_3} :catch_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_2
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 729
    :goto_15
    :try_start_4
    const-string v4, "MinistryManager.loadFromFileRaw 1"

    invoke-virtual {v0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/lostpixels/fieldservice/utils/LogToSD;->write(Ljava/lang/String;Ljava/lang/String;)V

    if-nez v16, :cond_28

    if-eqz v2, :cond_28

    .line 731
    invoke-virtual {v3}, Lio/realm/Realm;->cancelTransaction()V

    .line 732
    :cond_28
    throw v0

    :goto_16
    if-nez v16, :cond_29

    if-eqz v2, :cond_29

    .line 726
    invoke-virtual {v3}, Lio/realm/Realm;->cancelTransaction()V

    .line 727
    :cond_29
    throw v0
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    .line 734
    :goto_17
    invoke-virtual {v3}, Lio/realm/Realm;->close()V

    .line 735
    throw v0
.end method

.method public merge(Landroid/content/Context;Lcom/lostpixels/fieldservice/internal/ministry/MinistryManager;J)Z
    .locals 7

    .line 1613
    iget-object v2, p2, Lcom/lostpixels/fieldservice/internal/ministry/MinistryManager;->unmanagedTerritoryList:Ljava/util/List;

    iget-object v3, p2, Lcom/lostpixels/fieldservice/internal/ministry/MinistryManager;->unmanagedPersonList:Ljava/util/List;

    const/4 v6, 0x1

    move-object v0, p0

    move-object v1, p1

    move-wide v4, p3

    invoke-direct/range {v0 .. v6}, Lcom/lostpixels/fieldservice/internal/ministry/MinistryManager;->merge(Landroid/content/Context;Ljava/util/List;Ljava/util/List;JZ)Z

    move-result p1

    return p1
.end method

.method public merge(Landroid/content/Context;Ljava/util/Collection;)Z
    .locals 3

    .line 1572
    invoke-static {}, Lio/realm/Realm;->getDefaultInstance()Lio/realm/Realm;

    move-result-object v0

    .line 1575
    :try_start_0
    new-instance v1, Lcom/lostpixels/fieldservice/internal/ministry/MinistryManager$29;

    invoke-direct {v1, p0, v0, p2, p1}, Lcom/lostpixels/fieldservice/internal/ministry/MinistryManager$29;-><init>(Lcom/lostpixels/fieldservice/internal/ministry/MinistryManager;Lio/realm/Realm;Ljava/util/Collection;Landroid/content/Context;)V

    invoke-static {v1}, Lcom/lostpixels/fieldservice/realm/RealmHelper;->write(Lcom/lostpixels/fieldservice/realm/RealmHelper$Writer;)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1607
    invoke-virtual {v0}, Lio/realm/Realm;->close()V

    const/4 p1, 0x1

    return p1

    :catchall_0
    move-exception p1

    goto :goto_1

    :catch_0
    move-exception p1

    .line 1602
    :try_start_1
    const-string p2, "merge"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Exception cought: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1603
    invoke-virtual {p1}, Ljava/lang/Throwable;->getCause()Ljava/lang/Throwable;

    move-result-object v2

    if-eqz v2, :cond_0

    invoke-virtual {p1}, Ljava/lang/Throwable;->getCause()Ljava/lang/Throwable;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Throwable;->toString()Ljava/lang/String;

    move-result-object v2

    goto :goto_0

    :cond_0
    const-string v2, ""

    :goto_0
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 1602
    invoke-static {p2, v1}, Lcom/lostpixels/fieldservice/utils/LogToSD;->write(Ljava/lang/String;Ljava/lang/String;)V

    .line 1604
    const-string p2, "Stacktrace"

    invoke-static {p1}, Lcom/lostpixels/fieldservice/helpfunctions/HelpFunctions;->getStackTrace(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object p1

    invoke-static {p2, p1}, Lcom/lostpixels/fieldservice/utils/LogToSD;->write(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 1607
    invoke-virtual {v0}, Lio/realm/Realm;->close()V

    const/4 p1, 0x0

    return p1

    :goto_1
    invoke-virtual {v0}, Lio/realm/Realm;->close()V

    .line 1608
    throw p1
.end method

.method public moveScripture(II)V
    .locals 1

    .line 1008
    new-instance v0, Lcom/lostpixels/fieldservice/internal/ministry/MinistryManager$15;

    invoke-direct {v0, p0, p1, p2}, Lcom/lostpixels/fieldservice/internal/ministry/MinistryManager$15;-><init>(Lcom/lostpixels/fieldservice/internal/ministry/MinistryManager;II)V

    .line 1014
    invoke-virtual {p0}, Lio/realm/RealmObject;->isManaged()Z

    move-result p1

    .line 1008
    invoke-static {v0, p1}, Lcom/lostpixels/fieldservice/realm/RealmHelper;->write(Lcom/lostpixels/fieldservice/realm/RealmHelper$Writer;Z)Z

    return-void
.end method

.method public realmGet$cities()Lio/realm/RealmList;
    .locals 1

    iget-object v0, p0, Lcom/lostpixels/fieldservice/internal/ministry/MinistryManager;->cities:Lio/realm/RealmList;

    return-object v0
.end method

.method public realmGet$id()J
    .locals 2

    iget-wide v0, p0, Lcom/lostpixels/fieldservice/internal/ministry/MinistryManager;->id:J

    return-wide v0
.end method

.method public realmGet$mCitiesDate()Ljava/util/Date;
    .locals 1

    iget-object v0, p0, Lcom/lostpixels/fieldservice/internal/ministry/MinistryManager;->mCitiesDate:Ljava/util/Date;

    return-object v0
.end method

.method public realmGet$mScripturesDate()Ljava/util/Date;
    .locals 1

    iget-object v0, p0, Lcom/lostpixels/fieldservice/internal/ministry/MinistryManager;->mScripturesDate:Ljava/util/Date;

    return-object v0
.end method

.method public realmGet$mSuburbDate()Ljava/util/Date;
    .locals 1

    iget-object v0, p0, Lcom/lostpixels/fieldservice/internal/ministry/MinistryManager;->mSuburbDate:Ljava/util/Date;

    return-object v0
.end method

.method public realmGet$scriptures()Lio/realm/RealmList;
    .locals 1

    iget-object v0, p0, Lcom/lostpixels/fieldservice/internal/ministry/MinistryManager;->scriptures:Lio/realm/RealmList;

    return-object v0
.end method

.method public realmGet$suburbs()Lio/realm/RealmList;
    .locals 1

    iget-object v0, p0, Lcom/lostpixels/fieldservice/internal/ministry/MinistryManager;->suburbs:Lio/realm/RealmList;

    return-object v0
.end method

.method public realmSet$cities(Lio/realm/RealmList;)V
    .locals 0

    iput-object p1, p0, Lcom/lostpixels/fieldservice/internal/ministry/MinistryManager;->cities:Lio/realm/RealmList;

    return-void
.end method

.method public realmSet$id(J)V
    .locals 0

    iput-wide p1, p0, Lcom/lostpixels/fieldservice/internal/ministry/MinistryManager;->id:J

    return-void
.end method

.method public realmSet$mCitiesDate(Ljava/util/Date;)V
    .locals 0

    iput-object p1, p0, Lcom/lostpixels/fieldservice/internal/ministry/MinistryManager;->mCitiesDate:Ljava/util/Date;

    return-void
.end method

.method public realmSet$mScripturesDate(Ljava/util/Date;)V
    .locals 0

    iput-object p1, p0, Lcom/lostpixels/fieldservice/internal/ministry/MinistryManager;->mScripturesDate:Ljava/util/Date;

    return-void
.end method

.method public realmSet$mSuburbDate(Ljava/util/Date;)V
    .locals 0

    iput-object p1, p0, Lcom/lostpixels/fieldservice/internal/ministry/MinistryManager;->mSuburbDate:Ljava/util/Date;

    return-void
.end method

.method public realmSet$scriptures(Lio/realm/RealmList;)V
    .locals 0

    iput-object p1, p0, Lcom/lostpixels/fieldservice/internal/ministry/MinistryManager;->scriptures:Lio/realm/RealmList;

    return-void
.end method

.method public realmSet$suburbs(Lio/realm/RealmList;)V
    .locals 0

    iput-object p1, p0, Lcom/lostpixels/fieldservice/internal/ministry/MinistryManager;->suburbs:Lio/realm/RealmList;

    return-void
.end method

.method public removeCities(Landroid/content/Context;I)V
    .locals 1

    .line 879
    new-instance v0, Lcom/lostpixels/fieldservice/internal/ministry/MinistryManager$8;

    invoke-direct {v0, p0, p2, p1}, Lcom/lostpixels/fieldservice/internal/ministry/MinistryManager$8;-><init>(Lcom/lostpixels/fieldservice/internal/ministry/MinistryManager;ILandroid/content/Context;)V

    .line 888
    invoke-virtual {p0}, Lio/realm/RealmObject;->isManaged()Z

    move-result p1

    .line 879
    invoke-static {v0, p1}, Lcom/lostpixels/fieldservice/realm/RealmHelper;->write(Lcom/lostpixels/fieldservice/realm/RealmHelper$Writer;Z)Z

    return-void
.end method

.method public removeCitiesNoSync(Ljava/lang/String;)V
    .locals 1

    .line 892
    new-instance v0, Lcom/lostpixels/fieldservice/internal/ministry/MinistryManager$9;

    invoke-direct {v0, p0, p1}, Lcom/lostpixels/fieldservice/internal/ministry/MinistryManager$9;-><init>(Lcom/lostpixels/fieldservice/internal/ministry/MinistryManager;Ljava/lang/String;)V

    .line 903
    invoke-virtual {p0}, Lio/realm/RealmObject;->isManaged()Z

    move-result p1

    .line 892
    invoke-static {v0, p1}, Lcom/lostpixels/fieldservice/realm/RealmHelper;->write(Lcom/lostpixels/fieldservice/realm/RealmHelper$Writer;Z)Z

    return-void
.end method

.method public removePerson(Landroid/content/Context;Lio/realm/Realm;J)V
    .locals 3

    const-wide/16 v0, 0x0

    cmp-long v2, p3, v0

    if-nez v2, :cond_0

    return-void

    .line 1067
    :cond_0
    new-instance v0, Lcom/lostpixels/fieldservice/internal/ministry/MinistryManager$17;

    invoke-direct {v0, p0, p2, p3, p4}, Lcom/lostpixels/fieldservice/internal/ministry/MinistryManager$17;-><init>(Lcom/lostpixels/fieldservice/internal/ministry/MinistryManager;Lio/realm/Realm;J)V

    .line 1072
    invoke-virtual {p0}, Lio/realm/RealmObject;->isManaged()Z

    move-result v1

    .line 1067
    invoke-static {v0, v1}, Lcom/lostpixels/fieldservice/realm/RealmHelper;->write(Lcom/lostpixels/fieldservice/realm/RealmHelper$Writer;Z)Z

    .line 1074
    invoke-direct {p0, p2}, Lcom/lostpixels/fieldservice/internal/ministry/MinistryManager;->cleanUpPersons(Lio/realm/Realm;)V

    .line 1075
    invoke-static {p1}, Lcom/lostpixels/fieldservice/internal/ministry/DeletionManager;->getInstance(Landroid/content/Context;)Lcom/lostpixels/fieldservice/internal/ministry/DeletionManager;

    move-result-object p1

    invoke-virtual {p1, p3, p4}, Lcom/lostpixels/fieldservice/internal/ministry/DeletionManager;->deletePersonItem(J)V

    .line 1077
    invoke-static {}, Lcom/lostpixels/fieldservice/ui/nowcards/NowCardListCreator;->resetMinistryStatistics()V

    .line 1078
    invoke-static {}, Lcom/lostpixels/fieldservice/ui/nowcards/NowCardListCreator;->resetOldVisits()V

    .line 1079
    invoke-static {}, Lcom/lostpixels/fieldservice/ui/nowcards/NowCardListCreator;->resetPinnedVisits()V

    .line 1080
    invoke-static {}, Lcom/lostpixels/fieldservice/ui/nowcards/NowCardListCreator;->resetScheduledVisits()V

    .line 1081
    invoke-static {}, Lcom/lostpixels/fieldservice/ui/nowcards/NowCardListCreator;->resetVisitsAboutNow()V

    return-void
.end method

.method public removePersonNoSync(Lio/realm/Realm;J)V
    .locals 3

    const-wide/16 v0, 0x0

    cmp-long v2, p2, v0

    if-nez v2, :cond_0

    return-void

    .line 1088
    :cond_0
    new-instance v0, Lcom/lostpixels/fieldservice/internal/ministry/MinistryManager$18;

    invoke-direct {v0, p0, p1, p2, p3}, Lcom/lostpixels/fieldservice/internal/ministry/MinistryManager$18;-><init>(Lcom/lostpixels/fieldservice/internal/ministry/MinistryManager;Lio/realm/Realm;J)V

    .line 1093
    invoke-virtual {p0}, Lio/realm/RealmObject;->isManaged()Z

    move-result p1

    .line 1088
    invoke-static {v0, p1}, Lcom/lostpixels/fieldservice/realm/RealmHelper;->write(Lcom/lostpixels/fieldservice/realm/RealmHelper$Writer;Z)Z

    return-void
.end method

.method public removeScripture(Landroid/content/Context;I)V
    .locals 2

    .line 997
    invoke-static {p1}, Lcom/lostpixels/fieldservice/internal/ministry/DeletionManager;->getInstance(Landroid/content/Context;)Lcom/lostpixels/fieldservice/internal/ministry/DeletionManager;

    move-result-object p1

    invoke-virtual {p0}, Lcom/lostpixels/fieldservice/internal/ministry/MinistryManager;->realmGet$scriptures()Lio/realm/RealmList;

    move-result-object v0

    invoke-virtual {v0, p2}, Lio/realm/RealmList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/lostpixels/fieldservice/internal/report/Scripture;

    invoke-static {v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    invoke-virtual {v0}, Lcom/lostpixels/fieldservice/internal/report/Scripture;->realmGet$verse()Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x7

    invoke-virtual {p1, v0, v1}, Lcom/lostpixels/fieldservice/internal/ministry/DeletionManager;->deleteString(Ljava/lang/String;I)V

    .line 998
    new-instance p1, Lcom/lostpixels/fieldservice/internal/ministry/MinistryManager$14;

    invoke-direct {p1, p0, p2}, Lcom/lostpixels/fieldservice/internal/ministry/MinistryManager$14;-><init>(Lcom/lostpixels/fieldservice/internal/ministry/MinistryManager;I)V

    .line 1004
    invoke-virtual {p0}, Lio/realm/RealmObject;->isManaged()Z

    move-result p2

    .line 998
    invoke-static {p1, p2}, Lcom/lostpixels/fieldservice/realm/RealmHelper;->write(Lcom/lostpixels/fieldservice/realm/RealmHelper$Writer;Z)Z

    return-void
.end method

.method public removeScripture(Ljava/lang/String;)V
    .locals 1

    .line 1019
    new-instance v0, Lcom/lostpixels/fieldservice/internal/ministry/MinistryManager$16;

    invoke-direct {v0, p0, p1}, Lcom/lostpixels/fieldservice/internal/ministry/MinistryManager$16;-><init>(Lcom/lostpixels/fieldservice/internal/ministry/MinistryManager;Ljava/lang/String;)V

    .line 1030
    invoke-virtual {p0}, Lio/realm/RealmObject;->isManaged()Z

    move-result p1

    .line 1019
    invoke-static {v0, p1}, Lcom/lostpixels/fieldservice/realm/RealmHelper;->write(Lcom/lostpixels/fieldservice/realm/RealmHelper$Writer;Z)Z

    return-void
.end method

.method public removeSuburb(Landroid/content/Context;I)V
    .locals 2

    .line 797
    invoke-static {p1}, Lcom/lostpixels/fieldservice/internal/ministry/DeletionManager;->getInstance(Landroid/content/Context;)Lcom/lostpixels/fieldservice/internal/ministry/DeletionManager;

    move-result-object p1

    invoke-virtual {p0}, Lcom/lostpixels/fieldservice/internal/ministry/MinistryManager;->realmGet$suburbs()Lio/realm/RealmList;

    move-result-object v0

    invoke-virtual {v0, p2}, Lio/realm/RealmList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    const/16 v1, 0x8

    invoke-virtual {p1, v0, v1}, Lcom/lostpixels/fieldservice/internal/ministry/DeletionManager;->deleteString(Ljava/lang/String;I)V

    .line 798
    new-instance p1, Lcom/lostpixels/fieldservice/internal/ministry/MinistryManager$3;

    invoke-direct {p1, p0, p2}, Lcom/lostpixels/fieldservice/internal/ministry/MinistryManager$3;-><init>(Lcom/lostpixels/fieldservice/internal/ministry/MinistryManager;I)V

    .line 804
    invoke-virtual {p0}, Lio/realm/RealmObject;->isManaged()Z

    move-result p2

    .line 798
    invoke-static {p1, p2}, Lcom/lostpixels/fieldservice/realm/RealmHelper;->write(Lcom/lostpixels/fieldservice/realm/RealmHelper$Writer;Z)Z

    return-void
.end method

.method public removeSuburbNoSync(Ljava/lang/String;)V
    .locals 1

    .line 808
    new-instance v0, Lcom/lostpixels/fieldservice/internal/ministry/MinistryManager$4;

    invoke-direct {v0, p0, p1}, Lcom/lostpixels/fieldservice/internal/ministry/MinistryManager$4;-><init>(Lcom/lostpixels/fieldservice/internal/ministry/MinistryManager;Ljava/lang/String;)V

    .line 819
    invoke-virtual {p0}, Lio/realm/RealmObject;->isManaged()Z

    move-result p1

    .line 808
    invoke-static {v0, p1}, Lcom/lostpixels/fieldservice/realm/RealmHelper;->write(Lcom/lostpixels/fieldservice/realm/RealmHelper$Writer;Z)Z

    return-void
.end method

.method public removeTerritory(Lio/realm/Realm;Lcom/lostpixels/fieldservice/internal/ministry/Territory;Landroid/content/Context;)V
    .locals 1

    .line 1116
    new-instance v0, Lcom/lostpixels/fieldservice/internal/ministry/MinistryManager$21;

    invoke-direct {v0, p0, p2, p3, p1}, Lcom/lostpixels/fieldservice/internal/ministry/MinistryManager$21;-><init>(Lcom/lostpixels/fieldservice/internal/ministry/MinistryManager;Lcom/lostpixels/fieldservice/internal/ministry/Territory;Landroid/content/Context;Lio/realm/Realm;)V

    .line 1126
    invoke-virtual {p0}, Lio/realm/RealmObject;->isManaged()Z

    move-result p1

    .line 1116
    invoke-static {v0, p1}, Lcom/lostpixels/fieldservice/realm/RealmHelper;->write(Lcom/lostpixels/fieldservice/realm/RealmHelper$Writer;Z)Z

    return-void
.end method

.method public removeTerritoryNoSync(Lio/realm/Realm;Lcom/lostpixels/fieldservice/internal/ministry/Territory;)V
    .locals 1

    .line 1130
    new-instance v0, Lcom/lostpixels/fieldservice/internal/ministry/MinistryManager$22;

    invoke-direct {v0, p0, p2, p1}, Lcom/lostpixels/fieldservice/internal/ministry/MinistryManager$22;-><init>(Lcom/lostpixels/fieldservice/internal/ministry/MinistryManager;Lcom/lostpixels/fieldservice/internal/ministry/Territory;Lio/realm/Realm;)V

    .line 1139
    invoke-virtual {p0}, Lio/realm/RealmObject;->isManaged()Z

    move-result p1

    .line 1130
    invoke-static {v0, p1}, Lcom/lostpixels/fieldservice/realm/RealmHelper;->write(Lcom/lostpixels/fieldservice/realm/RealmHelper$Writer;Z)Z

    return-void
.end method

.method public saveToFile(Lcom/fasterxml/jackson/core/JsonGenerator;)Z
    .locals 6

    .line 208
    :try_start_0
    invoke-static {}, Lcom/lostpixels/fieldservice/utils/PerfToSD;->start()V

    .line 209
    invoke-direct {p0, p1}, Lcom/lostpixels/fieldservice/internal/ministry/MinistryManager;->saveToFileRaw(Lcom/fasterxml/jackson/core/JsonGenerator;)V

    .line 210
    const-string p1, "Save ministry"

    invoke-static {p1}, Lcom/lostpixels/fieldservice/utils/PerfToSD;->stop(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    const/4 p1, 0x1

    return p1

    :catch_0
    move-exception p1

    .line 213
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Exception cought: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 214
    invoke-virtual {p1}, Ljava/lang/Throwable;->getCause()Ljava/lang/Throwable;

    move-result-object v1

    const-string v2, ""

    if-eqz v1, :cond_0

    invoke-virtual {p1}, Ljava/lang/Throwable;->getCause()Ljava/lang/Throwable;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Throwable;->toString()Ljava/lang/String;

    move-result-object v1

    goto :goto_0

    :cond_0
    move-object v1, v2

    :goto_0
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 213
    const-string v1, "MinistryManager.saveToFileRaw 1"

    invoke-static {v1, v0}, Lcom/lostpixels/fieldservice/utils/LogToSD;->write(Ljava/lang/String;Ljava/lang/String;)V

    .line 215
    const-string v0, "Stacktrace"

    invoke-static {p1}, Lcom/lostpixels/fieldservice/helpfunctions/HelpFunctions;->getStackTrace(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/lostpixels/fieldservice/utils/LogToSD;->write(Ljava/lang/String;Ljava/lang/String;)V

    .line 217
    invoke-virtual {p1}, Ljava/lang/Throwable;->printStackTrace()V

    .line 219
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iget-wide v3, p0, Lcom/lostpixels/fieldservice/internal/ministry/MinistryManager;->lastReportTime:J

    sub-long/2addr v0, v3

    const-wide/32 v3, 0x2932e00

    cmp-long v5, v0, v3

    if-lez v5, :cond_2

    .line 220
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/lostpixels/fieldservice/internal/ministry/MinistryManager;->lastReportTime:J

    .line 221
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 222
    invoke-virtual {p1}, Ljava/lang/Throwable;->getCause()Ljava/lang/Throwable;

    move-result-object v1

    if-eqz v1, :cond_1

    invoke-virtual {p1}, Ljava/lang/Throwable;->getCause()Ljava/lang/Throwable;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v2

    :cond_1
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 221
    const-string v1, "ServiceReportManager.saveToFileRaw 1 "

    invoke-static {v1, v0}, Lcom/lostpixels/fieldservice/utils/LogToSD;->write(Ljava/lang/String;Ljava/lang/String;)V

    .line 224
    :try_start_1
    invoke-static {}, Lcom/google/firebase/crashlytics/FirebaseCrashlytics;->getInstance()Lcom/google/firebase/crashlytics/FirebaseCrashlytics;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/google/firebase/crashlytics/FirebaseCrashlytics;->recordException(Ljava/lang/Throwable;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    :catch_1
    :cond_2
    const/4 p1, 0x0

    return p1
.end method

.method public setCities(Ljava/util/ArrayList;)V
    .locals 1

    .line 867
    new-instance v0, Lcom/lostpixels/fieldservice/internal/ministry/MinistryManager$7;

    invoke-direct {v0, p0, p1}, Lcom/lostpixels/fieldservice/internal/ministry/MinistryManager$7;-><init>(Lcom/lostpixels/fieldservice/internal/ministry/MinistryManager;Ljava/util/ArrayList;)V

    .line 875
    invoke-virtual {p0}, Lio/realm/RealmObject;->isManaged()Z

    move-result p1

    .line 867
    invoke-static {v0, p1}, Lcom/lostpixels/fieldservice/realm/RealmHelper;->write(Lcom/lostpixels/fieldservice/realm/RealmHelper$Writer;Z)Z

    return-void
.end method

.method public setFileLoaded()V
    .locals 0

    return-void
.end method

.method public syncData(Lio/realm/Realm;Landroid/content/Context;Lcom/fasterxml/jackson/core/JsonParser;)Z
    .locals 2

    .line 1250
    new-instance v0, Lcom/lostpixels/fieldservice/internal/ministry/MinistryManager;

    invoke-direct {v0}, Lcom/lostpixels/fieldservice/internal/ministry/MinistryManager;-><init>()V

    const/4 v1, 0x0

    .line 1251
    invoke-virtual {v0, p3, v1}, Lcom/lostpixels/fieldservice/internal/ministry/MinistryManager;->loadFromFileRaw(Lcom/fasterxml/jackson/core/JsonParser;Z)V

    .line 1252
    invoke-direct {p0, p1, p2, v0}, Lcom/lostpixels/fieldservice/internal/ministry/MinistryManager;->merge(Lio/realm/Realm;Landroid/content/Context;Lcom/lostpixels/fieldservice/internal/ministry/MinistryManager;)Z

    move-result p1

    return p1
.end method

.method public updatePerson(Lcom/lostpixels/fieldservice/internal/ministry/Person;)V
    .locals 1

    .line 1160
    new-instance v0, Lcom/lostpixels/fieldservice/internal/ministry/MinistryManager$24;

    invoke-direct {v0, p0, p1}, Lcom/lostpixels/fieldservice/internal/ministry/MinistryManager$24;-><init>(Lcom/lostpixels/fieldservice/internal/ministry/MinistryManager;Lcom/lostpixels/fieldservice/internal/ministry/Person;)V

    .line 1172
    invoke-virtual {p0}, Lio/realm/RealmObject;->isManaged()Z

    move-result p1

    .line 1160
    invoke-static {v0, p1}, Lcom/lostpixels/fieldservice/realm/RealmHelper;->write(Lcom/lostpixels/fieldservice/realm/RealmHelper$Writer;Z)Z

    return-void
.end method

.method public updateTerritory(Lio/realm/Realm;Lcom/lostpixels/fieldservice/internal/ministry/Territory;)V
    .locals 1

    .line 1106
    new-instance v0, Lcom/lostpixels/fieldservice/internal/ministry/MinistryManager$20;

    invoke-direct {v0, p0, p1, p2}, Lcom/lostpixels/fieldservice/internal/ministry/MinistryManager$20;-><init>(Lcom/lostpixels/fieldservice/internal/ministry/MinistryManager;Lio/realm/Realm;Lcom/lostpixels/fieldservice/internal/ministry/Territory;)V

    .line 1112
    invoke-virtual {p0}, Lio/realm/RealmObject;->isManaged()Z

    move-result p1

    .line 1106
    invoke-static {v0, p1}, Lcom/lostpixels/fieldservice/realm/RealmHelper;->write(Lcom/lostpixels/fieldservice/realm/RealmHelper$Writer;Z)Z

    return-void
.end method
