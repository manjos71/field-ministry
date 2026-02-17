.class public Lcom/lostpixels/fieldservice/internal/report/PublicationManager;
.super Lio/realm/RealmObject;
.source "SourceFile"

# interfaces
.implements Lio/realm/com_lostpixels_fieldservice_internal_report_PublicationManagerRealmProxyInterface;


# static fields
.field private static instanceLock:Ljava/util/concurrent/locks/Lock;


# instance fields
.field awakeMap:Lio/realm/RealmList;

.field private date:Ljava/util/Date;

.field public id:J

.field magazineMap:Lio/realm/RealmList;

.field marrBooks:Lio/realm/RealmList;

.field marrBroschures:Lio/realm/RealmList;

.field marrMovies:Lio/realm/RealmList;

.field marrOther:Lio/realm/RealmList;

.field marrTracts:Lio/realm/RealmList;

.field marrVideos:Lio/realm/RealmList;

.field watchtowerMap:Lio/realm/RealmList;


# direct methods
.method static bridge synthetic -$$Nest$mdeletePublication(Lcom/lostpixels/fieldservice/internal/report/PublicationManager;Lio/realm/RealmList;Ljava/lang/String;)V
    .locals 0

    .line 0
    invoke-direct {p0, p1, p2}, Lcom/lostpixels/fieldservice/internal/report/PublicationManager;->deletePublication(Lio/realm/RealmList;Ljava/lang/String;)V

    return-void
.end method

.method static bridge synthetic -$$Nest$mremoveOld(Lcom/lostpixels/fieldservice/internal/report/PublicationManager;Lio/realm/RealmList;I)V
    .locals 0

    .line 0
    invoke-direct {p0, p1, p2}, Lcom/lostpixels/fieldservice/internal/report/PublicationManager;->removeOld(Lio/realm/RealmList;I)V

    return-void
.end method

.method static bridge synthetic -$$Nest$msort(Lcom/lostpixels/fieldservice/internal/report/PublicationManager;Ljava/util/List;)V
    .locals 0

    .line 0
    invoke-direct {p0, p1}, Lcom/lostpixels/fieldservice/internal/report/PublicationManager;->sort(Ljava/util/List;)V

    return-void
.end method

.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>()V
    .locals 2

    .line 74
    invoke-direct {p0}, Lio/realm/RealmObject;-><init>()V

    instance-of v0, p0, Lio/realm/internal/RealmObjectProxy;

    if-eqz v0, :cond_0

    move-object v0, p0

    check-cast v0, Lio/realm/internal/RealmObjectProxy;

    invoke-interface {v0}, Lio/realm/internal/RealmObjectProxy;->realm$injectObjectContext()V

    :cond_0
    const-wide/16 v0, 0x1

    .line 60
    invoke-virtual {p0, v0, v1}, Lcom/lostpixels/fieldservice/internal/report/PublicationManager;->realmSet$id(J)V

    .line 76
    invoke-virtual {p0}, Lcom/lostpixels/fieldservice/internal/report/PublicationManager;->realmGet$marrBooks()Lio/realm/RealmList;

    move-result-object v0

    if-nez v0, :cond_1

    .line 77
    new-instance v0, Lio/realm/RealmList;

    invoke-direct {v0}, Lio/realm/RealmList;-><init>()V

    invoke-virtual {p0, v0}, Lcom/lostpixels/fieldservice/internal/report/PublicationManager;->realmSet$marrBooks(Lio/realm/RealmList;)V

    .line 79
    :cond_1
    invoke-virtual {p0}, Lcom/lostpixels/fieldservice/internal/report/PublicationManager;->realmGet$marrTracts()Lio/realm/RealmList;

    move-result-object v0

    if-nez v0, :cond_2

    .line 80
    new-instance v0, Lio/realm/RealmList;

    invoke-direct {v0}, Lio/realm/RealmList;-><init>()V

    invoke-virtual {p0, v0}, Lcom/lostpixels/fieldservice/internal/report/PublicationManager;->realmSet$marrTracts(Lio/realm/RealmList;)V

    .line 82
    :cond_2
    invoke-virtual {p0}, Lcom/lostpixels/fieldservice/internal/report/PublicationManager;->realmGet$marrVideos()Lio/realm/RealmList;

    move-result-object v0

    if-nez v0, :cond_3

    .line 83
    new-instance v0, Lio/realm/RealmList;

    invoke-direct {v0}, Lio/realm/RealmList;-><init>()V

    invoke-virtual {p0, v0}, Lcom/lostpixels/fieldservice/internal/report/PublicationManager;->realmSet$marrVideos(Lio/realm/RealmList;)V

    .line 85
    :cond_3
    invoke-virtual {p0}, Lcom/lostpixels/fieldservice/internal/report/PublicationManager;->realmGet$marrBroschures()Lio/realm/RealmList;

    move-result-object v0

    if-nez v0, :cond_4

    .line 86
    new-instance v0, Lio/realm/RealmList;

    invoke-direct {v0}, Lio/realm/RealmList;-><init>()V

    invoke-virtual {p0, v0}, Lcom/lostpixels/fieldservice/internal/report/PublicationManager;->realmSet$marrBroschures(Lio/realm/RealmList;)V

    .line 88
    :cond_4
    invoke-virtual {p0}, Lcom/lostpixels/fieldservice/internal/report/PublicationManager;->realmGet$marrOther()Lio/realm/RealmList;

    move-result-object v0

    if-nez v0, :cond_5

    .line 89
    new-instance v0, Lio/realm/RealmList;

    invoke-direct {v0}, Lio/realm/RealmList;-><init>()V

    invoke-virtual {p0, v0}, Lcom/lostpixels/fieldservice/internal/report/PublicationManager;->realmSet$marrOther(Lio/realm/RealmList;)V

    .line 91
    :cond_5
    invoke-virtual {p0}, Lcom/lostpixels/fieldservice/internal/report/PublicationManager;->realmGet$marrMovies()Lio/realm/RealmList;

    move-result-object v0

    if-nez v0, :cond_6

    .line 92
    new-instance v0, Lio/realm/RealmList;

    invoke-direct {v0}, Lio/realm/RealmList;-><init>()V

    invoke-virtual {p0, v0}, Lcom/lostpixels/fieldservice/internal/report/PublicationManager;->realmSet$marrMovies(Lio/realm/RealmList;)V

    .line 94
    :cond_6
    invoke-virtual {p0}, Lcom/lostpixels/fieldservice/internal/report/PublicationManager;->realmGet$awakeMap()Lio/realm/RealmList;

    move-result-object v0

    if-nez v0, :cond_7

    .line 95
    new-instance v0, Lio/realm/RealmList;

    invoke-direct {v0}, Lio/realm/RealmList;-><init>()V

    invoke-virtual {p0, v0}, Lcom/lostpixels/fieldservice/internal/report/PublicationManager;->realmSet$awakeMap(Lio/realm/RealmList;)V

    .line 97
    :cond_7
    invoke-virtual {p0}, Lcom/lostpixels/fieldservice/internal/report/PublicationManager;->realmGet$watchtowerMap()Lio/realm/RealmList;

    move-result-object v0

    if-nez v0, :cond_8

    .line 98
    new-instance v0, Lio/realm/RealmList;

    invoke-direct {v0}, Lio/realm/RealmList;-><init>()V

    invoke-virtual {p0, v0}, Lcom/lostpixels/fieldservice/internal/report/PublicationManager;->realmSet$watchtowerMap(Lio/realm/RealmList;)V

    .line 100
    :cond_8
    invoke-virtual {p0}, Lcom/lostpixels/fieldservice/internal/report/PublicationManager;->realmGet$magazineMap()Lio/realm/RealmList;

    move-result-object v0

    if-nez v0, :cond_9

    .line 101
    new-instance v0, Lio/realm/RealmList;

    invoke-direct {v0}, Lio/realm/RealmList;-><init>()V

    invoke-virtual {p0, v0}, Lcom/lostpixels/fieldservice/internal/report/PublicationManager;->realmSet$magazineMap(Lio/realm/RealmList;)V

    .line 103
    :cond_9
    new-instance v0, Ljava/util/Date;

    invoke-direct {v0}, Ljava/util/Date;-><init>()V

    invoke-virtual {p0, v0}, Lcom/lostpixels/fieldservice/internal/report/PublicationManager;->realmSet$date(Ljava/util/Date;)V

    return-void
.end method

.method private deletePublication(Lio/realm/RealmList;Ljava/lang/String;)V
    .locals 2

    const/4 v0, 0x0

    .line 506
    :goto_0
    invoke-virtual {p1}, Lio/realm/RealmList;->size()I

    move-result v1

    if-ge v0, v1, :cond_1

    .line 507
    invoke-virtual {p1, v0}, Lio/realm/RealmList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-static {v1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    invoke-virtual {v1, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 508
    invoke-virtual {p1, v0}, Lio/realm/RealmList;->deleteFromRealm(I)V

    return-void

    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    return-void
.end method

.method public static getInstance(Lio/realm/Realm;)Lcom/lostpixels/fieldservice/internal/report/PublicationManager;
    .locals 3

    .line 111
    const-class v0, Lcom/lostpixels/fieldservice/internal/report/PublicationManager;

    sget-object v1, Lcom/lostpixels/fieldservice/internal/report/PublicationManager;->instanceLock:Ljava/util/concurrent/locks/Lock;

    if-nez v1, :cond_0

    .line 112
    new-instance v1, Ljava/util/concurrent/locks/ReentrantLock;

    invoke-direct {v1}, Ljava/util/concurrent/locks/ReentrantLock;-><init>()V

    sput-object v1, Lcom/lostpixels/fieldservice/internal/report/PublicationManager;->instanceLock:Ljava/util/concurrent/locks/Lock;

    .line 116
    :cond_0
    :try_start_0
    sget-object v1, Lcom/lostpixels/fieldservice/internal/report/PublicationManager;->instanceLock:Ljava/util/concurrent/locks/Lock;

    invoke-interface {v1}, Ljava/util/concurrent/locks/Lock;->lock()V

    .line 117
    invoke-virtual {p0, v0}, Lio/realm/Realm;->where(Ljava/lang/Class;)Lio/realm/RealmQuery;

    move-result-object v1

    invoke-virtual {v1}, Lio/realm/RealmQuery;->findFirst()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/lostpixels/fieldservice/internal/report/PublicationManager;

    if-nez v1, :cond_1

    .line 119
    invoke-virtual {p0}, Lio/realm/Realm;->isInTransaction()Z

    move-result v2

    if-nez v2, :cond_1

    .line 120
    invoke-virtual {p0}, Lio/realm/Realm;->refresh()V

    .line 121
    invoke-virtual {p0, v0}, Lio/realm/Realm;->where(Ljava/lang/Class;)Lio/realm/RealmQuery;

    move-result-object v1

    invoke-virtual {v1}, Lio/realm/RealmQuery;->findFirst()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/lostpixels/fieldservice/internal/report/PublicationManager;

    :cond_1
    if-nez v1, :cond_4

    .line 125
    invoke-virtual {p0}, Lio/realm/Realm;->isInTransaction()Z

    move-result v1

    if-nez v1, :cond_2

    .line 127
    invoke-virtual {p0}, Lio/realm/Realm;->beginTransaction()V

    :cond_2
    const/4 v2, 0x1

    .line 128
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {p0, v0, v2}, Lio/realm/Realm;->createObject(Ljava/lang/Class;Ljava/lang/Object;)Lio/realm/RealmModel;

    move-result-object v0

    check-cast v0, Lcom/lostpixels/fieldservice/internal/report/PublicationManager;

    if-nez v1, :cond_3

    .line 130
    invoke-virtual {p0}, Lio/realm/Realm;->commitTransaction()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_3
    move-object v1, v0

    .line 133
    :cond_4
    sget-object p0, Lcom/lostpixels/fieldservice/internal/report/PublicationManager;->instanceLock:Ljava/util/concurrent/locks/Lock;

    invoke-interface {p0}, Ljava/util/concurrent/locks/Lock;->unlock()V

    return-object v1

    :catchall_0
    move-exception p0

    sget-object v0, Lcom/lostpixels/fieldservice/internal/report/PublicationManager;->instanceLock:Ljava/util/concurrent/locks/Lock;

    invoke-interface {v0}, Ljava/util/concurrent/locks/Lock;->unlock()V

    .line 134
    throw p0
.end method

.method public static getLatestFileVersion()I
    .locals 1

    const/4 v0, 0x5

    return v0
.end method

.method private removeOld(Lio/realm/RealmList;I)V
    .locals 2

    .line 211
    invoke-virtual {p1}, Lio/realm/RealmList;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    :goto_0
    if-ltz v0, :cond_1

    .line 212
    invoke-virtual {p1, v0}, Lio/realm/RealmList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/lostpixels/fieldservice/internal/ministry/AliasesMap;

    invoke-static {v1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    invoke-virtual {v1}, Lcom/lostpixels/fieldservice/internal/ministry/AliasesMap;->realmGet$id()I

    move-result v1

    if-ne v1, p2, :cond_0

    .line 213
    invoke-virtual {p1, v0}, Lio/realm/RealmList;->remove(I)Ljava/lang/Object;

    :cond_0
    add-int/lit8 v0, v0, -0x1

    goto :goto_0

    :cond_1
    return-void
.end method

.method private sort(Ljava/util/List;)V
    .locals 1

    .line 1001
    new-instance v0, Lcom/lostpixels/fieldservice/utils/comparators/AlphanumRealmStringComparator;

    invoke-direct {v0}, Lcom/lostpixels/fieldservice/utils/comparators/AlphanumRealmStringComparator;-><init>()V

    invoke-static {p1, v0}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    return-void
.end method


# virtual methods
.method public addPublication(Landroid/content/Context;ILjava/lang/String;)V
    .locals 1

    if-eqz p3, :cond_1

    .line 310
    invoke-virtual {p3}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    .line 313
    :cond_0
    new-instance v0, Lcom/lostpixels/fieldservice/internal/report/PublicationManager$2;

    invoke-direct {v0, p0, p3, p2, p1}, Lcom/lostpixels/fieldservice/internal/report/PublicationManager$2;-><init>(Lcom/lostpixels/fieldservice/internal/report/PublicationManager;Ljava/lang/String;ILandroid/content/Context;)V

    invoke-static {v0}, Lcom/lostpixels/fieldservice/realm/RealmHelper;->write(Lcom/lostpixels/fieldservice/realm/RealmHelper$Writer;)Z

    :cond_1
    :goto_0
    return-void
.end method

.method public deletePublication(Landroid/content/Context;ILjava/lang/String;)V
    .locals 1

    .line 515
    new-instance v0, Lcom/lostpixels/fieldservice/internal/report/PublicationManager$3;

    invoke-direct {v0, p0, p2, p3, p1}, Lcom/lostpixels/fieldservice/internal/report/PublicationManager$3;-><init>(Lcom/lostpixels/fieldservice/internal/report/PublicationManager;ILjava/lang/String;Landroid/content/Context;)V

    invoke-static {v0}, Lcom/lostpixels/fieldservice/realm/RealmHelper;->write(Lcom/lostpixels/fieldservice/realm/RealmHelper$Writer;)Z

    return-void
.end method

.method public deletePublicationNoSync(ILjava/lang/String;)V
    .locals 1

    .line 555
    new-instance v0, Lcom/lostpixels/fieldservice/internal/report/PublicationManager$4;

    invoke-direct {v0, p0, p1, p2}, Lcom/lostpixels/fieldservice/internal/report/PublicationManager$4;-><init>(Lcom/lostpixels/fieldservice/internal/report/PublicationManager;ILjava/lang/String;)V

    invoke-static {v0}, Lcom/lostpixels/fieldservice/realm/RealmHelper;->write(Lcom/lostpixels/fieldservice/realm/RealmHelper$Writer;)Z

    return-void
.end method

.method public getMagazineAlias(ZZLjava/util/Date;)Ljava/lang/String;
    .locals 5

    .line 141
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v0

    .line 142
    invoke-virtual {v0, p3}, Ljava/util/Calendar;->setTime(Ljava/util/Date;)V

    const/4 p3, 0x1

    if-eqz p1, :cond_0

    if-nez p2, :cond_0

    const/4 v1, 0x1

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    .line 144
    :goto_0
    invoke-virtual {v0, p3}, Ljava/util/Calendar;->get(I)I

    move-result v2

    const/16 v3, 0x7e2

    const/4 v4, 0x2

    if-lt v2, v3, :cond_1

    if-nez v1, :cond_1

    .line 145
    invoke-virtual {v0, v4}, Ljava/util/Calendar;->get(I)I

    move-result v2

    invoke-virtual {v0, v4}, Ljava/util/Calendar;->get(I)I

    move-result v3

    rem-int/2addr v3, v4

    sub-int/2addr v2, v3

    invoke-virtual {v0, v4, v2}, Ljava/util/Calendar;->set(II)V

    .line 146
    :cond_1
    invoke-virtual {v0, p3}, Ljava/util/Calendar;->get(I)I

    move-result v2

    mul-int/lit8 v2, v2, 0x64

    invoke-virtual {v0, v4}, Ljava/util/Calendar;->get(I)I

    move-result v3

    add-int/2addr v2, v3

    .line 147
    invoke-virtual {v0, p3}, Ljava/util/Calendar;->get(I)I

    move-result p3

    const/16 v0, 0x7e6

    if-lt p3, v0, :cond_2

    if-eqz v1, :cond_2

    mul-int/lit8 v2, v2, 0x64

    :cond_2
    const/4 p3, 0x0

    if-eqz p1, :cond_4

    if-eqz p2, :cond_4

    .line 152
    invoke-virtual {p0}, Lcom/lostpixels/fieldservice/internal/report/PublicationManager;->realmGet$magazineMap()Lio/realm/RealmList;

    move-result-object p1

    invoke-virtual {p1}, Lio/realm/RealmList;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_3
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result p2

    if-eqz p2, :cond_8

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lcom/lostpixels/fieldservice/internal/ministry/AliasesMap;

    .line 153
    invoke-virtual {p2}, Lcom/lostpixels/fieldservice/internal/ministry/AliasesMap;->realmGet$id()I

    move-result v0

    if-ne v0, v2, :cond_3

    goto :goto_1

    :cond_4
    if-eqz p1, :cond_6

    .line 159
    invoke-virtual {p0}, Lcom/lostpixels/fieldservice/internal/report/PublicationManager;->realmGet$watchtowerMap()Lio/realm/RealmList;

    move-result-object p1

    invoke-virtual {p1}, Lio/realm/RealmList;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_5
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result p2

    if-eqz p2, :cond_8

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lcom/lostpixels/fieldservice/internal/ministry/AliasesMap;

    .line 160
    invoke-virtual {p2}, Lcom/lostpixels/fieldservice/internal/ministry/AliasesMap;->realmGet$id()I

    move-result v0

    if-ne v0, v2, :cond_5

    goto :goto_1

    :cond_6
    if-eqz p2, :cond_8

    .line 166
    invoke-virtual {p0}, Lcom/lostpixels/fieldservice/internal/report/PublicationManager;->realmGet$awakeMap()Lio/realm/RealmList;

    move-result-object p1

    invoke-virtual {p1}, Lio/realm/RealmList;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_7
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result p2

    if-eqz p2, :cond_8

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lcom/lostpixels/fieldservice/internal/ministry/AliasesMap;

    .line 167
    invoke-virtual {p2}, Lcom/lostpixels/fieldservice/internal/ministry/AliasesMap;->realmGet$id()I

    move-result v0

    if-ne v0, v2, :cond_7

    :goto_1
    move-object p3, p2

    :cond_8
    if-nez p3, :cond_9

    .line 174
    const-string p1, ""

    return-object p1

    :cond_9
    invoke-virtual {p3}, Lcom/lostpixels/fieldservice/internal/ministry/AliasesMap;->realmGet$alias()Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public getPublicationIndex(ILjava/lang/String;)I
    .locals 2

    .line 238
    invoke-virtual {p2}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object p2

    const/4 v0, 0x0

    if-eqz p1, :cond_a

    const/4 v1, 0x1

    if-eq p1, v1, :cond_8

    const/4 v1, 0x3

    if-eq p1, v1, :cond_6

    const/4 v1, 0x4

    if-eq p1, v1, :cond_4

    const/4 v1, 0x5

    if-eq p1, v1, :cond_2

    const/4 v1, 0x6

    if-eq p1, v1, :cond_0

    goto/16 :goto_6

    .line 295
    :cond_0
    invoke-virtual {p0}, Lcom/lostpixels/fieldservice/internal/report/PublicationManager;->realmGet$marrMovies()Lio/realm/RealmList;

    move-result-object p1

    invoke-virtual {p1}, Lio/realm/RealmList;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_c

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 296
    invoke-virtual {v1, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    return v0

    :cond_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 284
    :cond_2
    invoke-virtual {p0}, Lcom/lostpixels/fieldservice/internal/report/PublicationManager;->realmGet$marrOther()Lio/realm/RealmList;

    move-result-object p1

    invoke-virtual {p1}, Lio/realm/RealmList;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_1
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_c

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 285
    invoke-virtual {v1, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_3

    return v0

    :cond_3
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 274
    :cond_4
    invoke-virtual {p0}, Lcom/lostpixels/fieldservice/internal/report/PublicationManager;->realmGet$marrVideos()Lio/realm/RealmList;

    move-result-object p1

    invoke-virtual {p1}, Lio/realm/RealmList;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_2
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_c

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 275
    invoke-virtual {v1, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_5

    return v0

    :cond_5
    add-int/lit8 v0, v0, 0x1

    goto :goto_2

    .line 264
    :cond_6
    invoke-virtual {p0}, Lcom/lostpixels/fieldservice/internal/report/PublicationManager;->realmGet$marrTracts()Lio/realm/RealmList;

    move-result-object p1

    invoke-virtual {p1}, Lio/realm/RealmList;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_3
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_c

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 265
    invoke-virtual {v1, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_7

    return v0

    :cond_7
    add-int/lit8 v0, v0, 0x1

    goto :goto_3

    .line 253
    :cond_8
    invoke-virtual {p0}, Lcom/lostpixels/fieldservice/internal/report/PublicationManager;->realmGet$marrBroschures()Lio/realm/RealmList;

    move-result-object p1

    invoke-virtual {p1}, Lio/realm/RealmList;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_4
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_c

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 254
    invoke-virtual {v1, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_9

    return v0

    :cond_9
    add-int/lit8 v0, v0, 0x1

    goto :goto_4

    .line 243
    :cond_a
    invoke-virtual {p0}, Lcom/lostpixels/fieldservice/internal/report/PublicationManager;->realmGet$marrBooks()Lio/realm/RealmList;

    move-result-object p1

    invoke-virtual {p1}, Lio/realm/RealmList;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_5
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_c

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 244
    invoke-virtual {v1, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_b

    return v0

    :cond_b
    add-int/lit8 v0, v0, 0x1

    goto :goto_5

    :cond_c
    :goto_6
    const/4 p1, -0x1

    return p1
.end method

.method public getPublications(I)Ljava/util/List;
    .locals 1

    if-eqz p1, :cond_5

    const/4 v0, 0x1

    if-eq p1, v0, :cond_4

    const/4 v0, 0x3

    if-eq p1, v0, :cond_3

    const/4 v0, 0x4

    if-eq p1, v0, :cond_2

    const/4 v0, 0x5

    if-eq p1, v0, :cond_1

    const/4 v0, 0x6

    if-eq p1, v0, :cond_0

    const/4 p1, 0x0

    return-object p1

    .line 231
    :cond_0
    invoke-virtual {p0}, Lcom/lostpixels/fieldservice/internal/report/PublicationManager;->realmGet$marrMovies()Lio/realm/RealmList;

    move-result-object p1

    return-object p1

    .line 229
    :cond_1
    invoke-virtual {p0}, Lcom/lostpixels/fieldservice/internal/report/PublicationManager;->realmGet$marrOther()Lio/realm/RealmList;

    move-result-object p1

    return-object p1

    .line 225
    :cond_2
    invoke-virtual {p0}, Lcom/lostpixels/fieldservice/internal/report/PublicationManager;->realmGet$marrVideos()Lio/realm/RealmList;

    move-result-object p1

    return-object p1

    .line 223
    :cond_3
    invoke-virtual {p0}, Lcom/lostpixels/fieldservice/internal/report/PublicationManager;->realmGet$marrTracts()Lio/realm/RealmList;

    move-result-object p1

    return-object p1

    .line 227
    :cond_4
    invoke-virtual {p0}, Lcom/lostpixels/fieldservice/internal/report/PublicationManager;->realmGet$marrBroschures()Lio/realm/RealmList;

    move-result-object p1

    return-object p1

    .line 221
    :cond_5
    invoke-virtual {p0}, Lcom/lostpixels/fieldservice/internal/report/PublicationManager;->realmGet$marrBooks()Lio/realm/RealmList;

    move-result-object p1

    return-object p1
.end method

.method public load(Lcom/fasterxml/jackson/core/JsonParser;Z)Z
    .locals 16

    move/from16 v1, p2

    .line 731
    const-string v2, "PublicationManager.load"

    invoke-static {}, Lio/realm/Realm;->getDefaultInstance()Lio/realm/Realm;

    move-result-object v3

    .line 732
    invoke-virtual {v3}, Lio/realm/Realm;->isInTransaction()Z

    move-result v4

    if-nez v4, :cond_0

    if-eqz v1, :cond_0

    .line 737
    :try_start_0
    invoke-virtual {v3}, Lio/realm/Realm;->beginTransaction()V

    goto :goto_0

    :catchall_0
    move-exception v0

    move-object/from16 v5, p0

    goto/16 :goto_11

    :catch_0
    move-exception v0

    move-object/from16 v5, p0

    goto/16 :goto_f

    .line 739
    :cond_0
    :goto_0
    invoke-virtual/range {p0 .. p0}, Lio/realm/RealmObject;->isManaged()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 740
    invoke-virtual/range {p0 .. p0}, Lcom/lostpixels/fieldservice/internal/report/PublicationManager;->realmGet$marrVideos()Lio/realm/RealmList;

    move-result-object v0

    invoke-virtual {v0}, Lio/realm/RealmList;->deleteAllFromRealm()Z

    .line 741
    invoke-virtual/range {p0 .. p0}, Lcom/lostpixels/fieldservice/internal/report/PublicationManager;->realmGet$magazineMap()Lio/realm/RealmList;

    move-result-object v0

    invoke-virtual {v0}, Lio/realm/RealmList;->deleteAllFromRealm()Z

    .line 742
    invoke-virtual/range {p0 .. p0}, Lcom/lostpixels/fieldservice/internal/report/PublicationManager;->realmGet$marrBooks()Lio/realm/RealmList;

    move-result-object v0

    invoke-virtual {v0}, Lio/realm/RealmList;->deleteAllFromRealm()Z

    .line 743
    invoke-virtual/range {p0 .. p0}, Lcom/lostpixels/fieldservice/internal/report/PublicationManager;->realmGet$marrBroschures()Lio/realm/RealmList;

    move-result-object v0

    invoke-virtual {v0}, Lio/realm/RealmList;->deleteAllFromRealm()Z

    .line 744
    invoke-virtual/range {p0 .. p0}, Lcom/lostpixels/fieldservice/internal/report/PublicationManager;->realmGet$marrMovies()Lio/realm/RealmList;

    move-result-object v0

    invoke-virtual {v0}, Lio/realm/RealmList;->deleteAllFromRealm()Z

    .line 745
    invoke-virtual/range {p0 .. p0}, Lcom/lostpixels/fieldservice/internal/report/PublicationManager;->realmGet$marrOther()Lio/realm/RealmList;

    move-result-object v0

    invoke-virtual {v0}, Lio/realm/RealmList;->deleteAllFromRealm()Z

    .line 746
    invoke-virtual/range {p0 .. p0}, Lcom/lostpixels/fieldservice/internal/report/PublicationManager;->realmGet$marrTracts()Lio/realm/RealmList;

    move-result-object v0

    invoke-virtual {v0}, Lio/realm/RealmList;->deleteAllFromRealm()Z

    .line 747
    invoke-virtual/range {p0 .. p0}, Lcom/lostpixels/fieldservice/internal/report/PublicationManager;->realmGet$awakeMap()Lio/realm/RealmList;

    move-result-object v0

    invoke-virtual {v0}, Lio/realm/RealmList;->deleteAllFromRealm()Z

    .line 748
    invoke-virtual/range {p0 .. p0}, Lcom/lostpixels/fieldservice/internal/report/PublicationManager;->realmGet$watchtowerMap()Lio/realm/RealmList;

    move-result-object v0

    invoke-virtual {v0}, Lio/realm/RealmList;->deleteAllFromRealm()Z

    goto :goto_1

    .line 750
    :cond_1
    invoke-virtual/range {p0 .. p0}, Lcom/lostpixels/fieldservice/internal/report/PublicationManager;->realmGet$marrVideos()Lio/realm/RealmList;

    move-result-object v0

    invoke-virtual {v0}, Lio/realm/RealmList;->clear()V

    .line 751
    invoke-virtual/range {p0 .. p0}, Lcom/lostpixels/fieldservice/internal/report/PublicationManager;->realmGet$magazineMap()Lio/realm/RealmList;

    move-result-object v0

    invoke-virtual {v0}, Lio/realm/RealmList;->clear()V

    .line 752
    invoke-virtual/range {p0 .. p0}, Lcom/lostpixels/fieldservice/internal/report/PublicationManager;->realmGet$marrBooks()Lio/realm/RealmList;

    move-result-object v0

    invoke-virtual {v0}, Lio/realm/RealmList;->clear()V

    .line 753
    invoke-virtual/range {p0 .. p0}, Lcom/lostpixels/fieldservice/internal/report/PublicationManager;->realmGet$marrBroschures()Lio/realm/RealmList;

    move-result-object v0

    invoke-virtual {v0}, Lio/realm/RealmList;->clear()V

    .line 754
    invoke-virtual/range {p0 .. p0}, Lcom/lostpixels/fieldservice/internal/report/PublicationManager;->realmGet$marrMovies()Lio/realm/RealmList;

    move-result-object v0

    invoke-virtual {v0}, Lio/realm/RealmList;->clear()V

    .line 755
    invoke-virtual/range {p0 .. p0}, Lcom/lostpixels/fieldservice/internal/report/PublicationManager;->realmGet$marrOther()Lio/realm/RealmList;

    move-result-object v0

    invoke-virtual {v0}, Lio/realm/RealmList;->clear()V

    .line 756
    invoke-virtual/range {p0 .. p0}, Lcom/lostpixels/fieldservice/internal/report/PublicationManager;->realmGet$marrTracts()Lio/realm/RealmList;

    move-result-object v0

    invoke-virtual {v0}, Lio/realm/RealmList;->clear()V

    .line 757
    invoke-virtual/range {p0 .. p0}, Lcom/lostpixels/fieldservice/internal/report/PublicationManager;->realmGet$awakeMap()Lio/realm/RealmList;

    move-result-object v0

    invoke-virtual {v0}, Lio/realm/RealmList;->clear()V

    .line 758
    invoke-virtual/range {p0 .. p0}, Lcom/lostpixels/fieldservice/internal/report/PublicationManager;->realmGet$watchtowerMap()Lio/realm/RealmList;

    move-result-object v0

    invoke-virtual {v0}, Lio/realm/RealmList;->clear()V

    .line 762
    :goto_1
    invoke-static {}, Lcom/lostpixels/fieldservice/internal/report/PublicationManager;->getLatestFileVersion()I

    .line 764
    invoke-virtual/range {p1 .. p1}, Lcom/fasterxml/jackson/core/JsonParser;->nextToken()Lcom/fasterxml/jackson/core/JsonToken;

    .line 766
    :cond_2
    :goto_2
    invoke-virtual/range {p1 .. p1}, Lcom/fasterxml/jackson/core/JsonParser;->nextToken()Lcom/fasterxml/jackson/core/JsonToken;

    move-result-object v0

    sget-object v5, Lcom/fasterxml/jackson/core/JsonToken;->END_OBJECT:Lcom/fasterxml/jackson/core/JsonToken;

    if-eq v0, v5, :cond_18

    .line 767
    invoke-virtual/range {p1 .. p1}, Lcom/fasterxml/jackson/core/JsonParser;->getCurrentName()Ljava/lang/String;

    move-result-object v0

    .line 769
    invoke-virtual/range {p1 .. p1}, Lcom/fasterxml/jackson/core/JsonParser;->nextToken()Lcom/fasterxml/jackson/core/JsonToken;

    .line 773
    const-string v5, "FileVersion"

    invoke-virtual {v5, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_4

    .line 774
    invoke-virtual/range {p1 .. p1}, Lcom/fasterxml/jackson/core/JsonParser;->getIntValue()I

    move-result v0

    .line 776
    invoke-static {}, Lcom/lostpixels/fieldservice/internal/report/PublicationManager;->getLatestFileVersion()I

    move-result v5

    if-gt v0, v5, :cond_3

    move-object/from16 v5, p0

    goto :goto_2

    .line 777
    :cond_3
    new-instance v0, Lcom/lostpixels/fieldservice/utils/FileVersionException;

    const-string v5, "Newer file version"

    invoke-direct {v0, v5}, Lcom/lostpixels/fieldservice/utils/FileVersionException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 778
    :cond_4
    const-string v5, "Date"

    invoke-virtual {v5, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_5

    .line 779
    new-instance v0, Ljava/util/Date;

    invoke-virtual/range {p1 .. p1}, Lcom/fasterxml/jackson/core/JsonParser;->getLongValue()J

    move-result-wide v5

    invoke-direct {v0, v5, v6}, Ljava/util/Date;-><init>(J)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-object/from16 v5, p0

    :try_start_1
    invoke-virtual {v5, v0}, Lcom/lostpixels/fieldservice/internal/report/PublicationManager;->realmSet$date(Ljava/util/Date;)V

    goto :goto_2

    :catchall_1
    move-exception v0

    goto/16 :goto_11

    :catch_1
    move-exception v0

    goto/16 :goto_f

    :cond_5
    move-object/from16 v5, p0

    .line 780
    const-string v6, "Books"

    invoke-virtual {v6, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_6

    .line 781
    :goto_3
    invoke-virtual/range {p1 .. p1}, Lcom/fasterxml/jackson/core/JsonParser;->nextToken()Lcom/fasterxml/jackson/core/JsonToken;

    move-result-object v0

    sget-object v6, Lcom/fasterxml/jackson/core/JsonToken;->END_ARRAY:Lcom/fasterxml/jackson/core/JsonToken;

    if-eq v0, v6, :cond_2

    .line 782
    invoke-virtual {v5}, Lcom/lostpixels/fieldservice/internal/report/PublicationManager;->realmGet$marrBooks()Lio/realm/RealmList;

    move-result-object v0

    invoke-virtual/range {p1 .. p1}, Lcom/fasterxml/jackson/core/JsonParser;->getText()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v0, v6}, Lio/realm/RealmList;->add(Ljava/lang/Object;)Z

    goto :goto_3

    .line 784
    :cond_6
    const-string v6, "Videos"

    invoke-virtual {v6, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_7

    .line 785
    :goto_4
    invoke-virtual/range {p1 .. p1}, Lcom/fasterxml/jackson/core/JsonParser;->nextToken()Lcom/fasterxml/jackson/core/JsonToken;

    move-result-object v0

    sget-object v6, Lcom/fasterxml/jackson/core/JsonToken;->END_ARRAY:Lcom/fasterxml/jackson/core/JsonToken;

    if-eq v0, v6, :cond_2

    .line 786
    invoke-virtual {v5}, Lcom/lostpixels/fieldservice/internal/report/PublicationManager;->realmGet$marrVideos()Lio/realm/RealmList;

    move-result-object v0

    invoke-virtual/range {p1 .. p1}, Lcom/fasterxml/jackson/core/JsonParser;->getText()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v0, v6}, Lio/realm/RealmList;->add(Ljava/lang/Object;)Z

    goto :goto_4

    .line 788
    :cond_7
    const-string v6, "Tracts"

    invoke-virtual {v6, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_8

    .line 789
    :goto_5
    invoke-virtual/range {p1 .. p1}, Lcom/fasterxml/jackson/core/JsonParser;->nextToken()Lcom/fasterxml/jackson/core/JsonToken;

    move-result-object v0

    sget-object v6, Lcom/fasterxml/jackson/core/JsonToken;->END_ARRAY:Lcom/fasterxml/jackson/core/JsonToken;

    if-eq v0, v6, :cond_2

    .line 790
    invoke-virtual {v5}, Lcom/lostpixels/fieldservice/internal/report/PublicationManager;->realmGet$marrTracts()Lio/realm/RealmList;

    move-result-object v0

    invoke-virtual/range {p1 .. p1}, Lcom/fasterxml/jackson/core/JsonParser;->getText()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v0, v6}, Lio/realm/RealmList;->add(Ljava/lang/Object;)Z

    goto :goto_5

    .line 792
    :cond_8
    const-string v6, "Broschures"

    invoke-virtual {v6, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_9

    .line 793
    :goto_6
    invoke-virtual/range {p1 .. p1}, Lcom/fasterxml/jackson/core/JsonParser;->nextToken()Lcom/fasterxml/jackson/core/JsonToken;

    move-result-object v0

    sget-object v6, Lcom/fasterxml/jackson/core/JsonToken;->END_ARRAY:Lcom/fasterxml/jackson/core/JsonToken;

    if-eq v0, v6, :cond_2

    .line 794
    invoke-virtual {v5}, Lcom/lostpixels/fieldservice/internal/report/PublicationManager;->realmGet$marrBroschures()Lio/realm/RealmList;

    move-result-object v0

    invoke-virtual/range {p1 .. p1}, Lcom/fasterxml/jackson/core/JsonParser;->getText()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v0, v6}, Lio/realm/RealmList;->add(Ljava/lang/Object;)Z

    goto :goto_6

    .line 796
    :cond_9
    const-string v6, "Other"

    invoke-virtual {v6, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_a

    .line 797
    :goto_7
    invoke-virtual/range {p1 .. p1}, Lcom/fasterxml/jackson/core/JsonParser;->nextToken()Lcom/fasterxml/jackson/core/JsonToken;

    move-result-object v0

    sget-object v6, Lcom/fasterxml/jackson/core/JsonToken;->END_ARRAY:Lcom/fasterxml/jackson/core/JsonToken;

    if-eq v0, v6, :cond_2

    .line 798
    invoke-virtual {v5}, Lcom/lostpixels/fieldservice/internal/report/PublicationManager;->realmGet$marrOther()Lio/realm/RealmList;

    move-result-object v0

    invoke-virtual/range {p1 .. p1}, Lcom/fasterxml/jackson/core/JsonParser;->getText()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v0, v6}, Lio/realm/RealmList;->add(Ljava/lang/Object;)Z

    goto :goto_7

    .line 800
    :cond_a
    const-string v6, "Movies"

    invoke-virtual {v6, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_b

    .line 801
    :goto_8
    invoke-virtual/range {p1 .. p1}, Lcom/fasterxml/jackson/core/JsonParser;->nextToken()Lcom/fasterxml/jackson/core/JsonToken;

    move-result-object v0

    sget-object v6, Lcom/fasterxml/jackson/core/JsonToken;->END_ARRAY:Lcom/fasterxml/jackson/core/JsonToken;

    if-eq v0, v6, :cond_2

    .line 802
    invoke-virtual {v5}, Lcom/lostpixels/fieldservice/internal/report/PublicationManager;->realmGet$marrMovies()Lio/realm/RealmList;

    move-result-object v0

    invoke-virtual/range {p1 .. p1}, Lcom/fasterxml/jackson/core/JsonParser;->getText()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v0, v6}, Lio/realm/RealmList;->add(Ljava/lang/Object;)Z

    goto :goto_8

    .line 804
    :cond_b
    const-string v6, "Magazines"

    invoke-virtual {v6, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    const-string v7, "N"

    const-string v8, "K"

    const-string v9, "\'!"

    const-string v10, "Unrecognized field \'"

    const/4 v11, 0x0

    const/4 v12, -0x1

    if-eqz v6, :cond_f

    :goto_9
    move-object v13, v11

    const/4 v6, -0x1

    .line 807
    :cond_c
    :try_start_2
    invoke-virtual/range {p1 .. p1}, Lcom/fasterxml/jackson/core/JsonParser;->nextToken()Lcom/fasterxml/jackson/core/JsonToken;

    move-result-object v14

    sget-object v15, Lcom/fasterxml/jackson/core/JsonToken;->END_OBJECT:Lcom/fasterxml/jackson/core/JsonToken;

    if-eq v14, v15, :cond_2

    .line 808
    invoke-virtual/range {p1 .. p1}, Lcom/fasterxml/jackson/core/JsonParser;->getCurrentName()Ljava/lang/String;

    move-result-object v14

    .line 809
    invoke-virtual/range {p1 .. p1}, Lcom/fasterxml/jackson/core/JsonParser;->nextToken()Lcom/fasterxml/jackson/core/JsonToken;

    .line 810
    invoke-virtual {v8, v14}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v15

    if-eqz v15, :cond_d

    .line 811
    invoke-virtual/range {p1 .. p1}, Lcom/fasterxml/jackson/core/JsonParser;->getIntValue()I

    move-result v6

    goto :goto_a

    .line 812
    :cond_d
    invoke-virtual {v7, v14}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v13

    if-eqz v13, :cond_e

    .line 813
    invoke-virtual/range {p1 .. p1}, Lcom/fasterxml/jackson/core/JsonParser;->getText()Ljava/lang/String;

    move-result-object v13

    :goto_a
    if-eq v6, v12, :cond_c

    if-eqz v13, :cond_c

    .line 819
    invoke-virtual {v5}, Lcom/lostpixels/fieldservice/internal/report/PublicationManager;->realmGet$magazineMap()Lio/realm/RealmList;

    move-result-object v14

    new-instance v15, Lcom/lostpixels/fieldservice/internal/ministry/AliasesMap;

    invoke-direct {v15, v6, v13}, Lcom/lostpixels/fieldservice/internal/ministry/AliasesMap;-><init>(ILjava/lang/String;)V

    invoke-virtual {v14, v15}, Lio/realm/RealmList;->add(Ljava/lang/Object;)Z

    goto :goto_9

    .line 815
    :cond_e
    new-instance v6, Ljava/lang/IllegalStateException;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v7, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v6, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v6

    .line 824
    :cond_f
    const-string v6, "Watchtower"

    invoke-virtual {v6, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_13

    :goto_b
    move-object v13, v11

    const/4 v6, -0x1

    .line 827
    :cond_10
    invoke-virtual/range {p1 .. p1}, Lcom/fasterxml/jackson/core/JsonParser;->nextToken()Lcom/fasterxml/jackson/core/JsonToken;

    move-result-object v14

    sget-object v15, Lcom/fasterxml/jackson/core/JsonToken;->END_OBJECT:Lcom/fasterxml/jackson/core/JsonToken;

    if-eq v14, v15, :cond_2

    .line 828
    invoke-virtual/range {p1 .. p1}, Lcom/fasterxml/jackson/core/JsonParser;->getCurrentName()Ljava/lang/String;

    move-result-object v14

    .line 829
    invoke-virtual/range {p1 .. p1}, Lcom/fasterxml/jackson/core/JsonParser;->nextToken()Lcom/fasterxml/jackson/core/JsonToken;

    .line 830
    invoke-virtual {v8, v14}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v15

    if-eqz v15, :cond_11

    .line 831
    invoke-virtual/range {p1 .. p1}, Lcom/fasterxml/jackson/core/JsonParser;->getIntValue()I

    move-result v6

    goto :goto_c

    .line 832
    :cond_11
    invoke-virtual {v7, v14}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v13

    if-eqz v13, :cond_12

    .line 833
    invoke-virtual/range {p1 .. p1}, Lcom/fasterxml/jackson/core/JsonParser;->getText()Ljava/lang/String;

    move-result-object v13

    :goto_c
    if-eq v6, v12, :cond_10

    if-eqz v13, :cond_10

    .line 839
    invoke-virtual {v5}, Lcom/lostpixels/fieldservice/internal/report/PublicationManager;->realmGet$watchtowerMap()Lio/realm/RealmList;

    move-result-object v14

    new-instance v15, Lcom/lostpixels/fieldservice/internal/ministry/AliasesMap;

    invoke-direct {v15, v6, v13}, Lcom/lostpixels/fieldservice/internal/ministry/AliasesMap;-><init>(ILjava/lang/String;)V

    invoke-virtual {v14, v15}, Lio/realm/RealmList;->add(Ljava/lang/Object;)Z

    goto :goto_b

    .line 835
    :cond_12
    new-instance v6, Ljava/lang/IllegalStateException;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v7, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v6, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v6

    .line 844
    :cond_13
    const-string v6, "Awake"

    invoke-virtual {v6, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_17

    :goto_d
    move-object v13, v11

    const/4 v6, -0x1

    .line 847
    :cond_14
    invoke-virtual/range {p1 .. p1}, Lcom/fasterxml/jackson/core/JsonParser;->nextToken()Lcom/fasterxml/jackson/core/JsonToken;

    move-result-object v14

    sget-object v15, Lcom/fasterxml/jackson/core/JsonToken;->END_OBJECT:Lcom/fasterxml/jackson/core/JsonToken;

    if-eq v14, v15, :cond_2

    .line 848
    invoke-virtual/range {p1 .. p1}, Lcom/fasterxml/jackson/core/JsonParser;->getCurrentName()Ljava/lang/String;

    move-result-object v14

    .line 849
    invoke-virtual/range {p1 .. p1}, Lcom/fasterxml/jackson/core/JsonParser;->nextToken()Lcom/fasterxml/jackson/core/JsonToken;

    .line 850
    invoke-virtual {v8, v14}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v15

    if-eqz v15, :cond_15

    .line 851
    invoke-virtual/range {p1 .. p1}, Lcom/fasterxml/jackson/core/JsonParser;->getIntValue()I

    move-result v6

    goto :goto_e

    .line 852
    :cond_15
    invoke-virtual {v7, v14}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v13

    if-eqz v13, :cond_16

    .line 853
    invoke-virtual/range {p1 .. p1}, Lcom/fasterxml/jackson/core/JsonParser;->getText()Ljava/lang/String;

    move-result-object v13

    :goto_e
    if-eq v6, v12, :cond_14

    if-eqz v13, :cond_14

    .line 859
    invoke-virtual {v5}, Lcom/lostpixels/fieldservice/internal/report/PublicationManager;->realmGet$awakeMap()Lio/realm/RealmList;

    move-result-object v14

    new-instance v15, Lcom/lostpixels/fieldservice/internal/ministry/AliasesMap;

    invoke-direct {v15, v6, v13}, Lcom/lostpixels/fieldservice/internal/ministry/AliasesMap;-><init>(ILjava/lang/String;)V

    invoke-virtual {v14, v15}, Lio/realm/RealmList;->add(Ljava/lang/Object;)Z

    goto :goto_d

    .line 855
    :cond_16
    new-instance v6, Ljava/lang/IllegalStateException;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v7, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v6, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v6

    .line 865
    :cond_17
    new-instance v6, Ljava/lang/IllegalStateException;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v7, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v6, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v6

    :cond_18
    move-object/from16 v5, p0

    .line 869
    invoke-virtual {v3}, Lio/realm/Realm;->isInTransaction()Z

    move-result v0

    if-ne v0, v1, :cond_1a

    if-nez v4, :cond_19

    if-eqz v1, :cond_19

    .line 872
    invoke-virtual {v3}, Lio/realm/Realm;->commitTransaction()V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_1
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 886
    :cond_19
    invoke-virtual {v3}, Lio/realm/Realm;->close()V

    const/4 v0, 0x1

    return v0

    .line 870
    :cond_1a
    :try_start_3
    new-instance v0, Ljava/lang/RuntimeException;

    invoke-direct {v0}, Ljava/lang/RuntimeException;-><init>()V

    throw v0
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_1
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    :goto_f
    if-nez v4, :cond_1b

    if-eqz v1, :cond_1b

    .line 878
    :try_start_4
    invoke-virtual {v3}, Lio/realm/Realm;->cancelTransaction()V

    .line 880
    :cond_1b
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Exception cought: "

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 881
    invoke-virtual {v0}, Ljava/lang/Throwable;->getCause()Ljava/lang/Throwable;

    move-result-object v4

    if-eqz v4, :cond_1c

    invoke-virtual {v0}, Ljava/lang/Throwable;->getCause()Ljava/lang/Throwable;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Throwable;->toString()Ljava/lang/String;

    move-result-object v4

    goto :goto_10

    :cond_1c
    const-string v4, ""

    :goto_10
    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 880
    invoke-static {v2, v1}, Lcom/lostpixels/fieldservice/utils/LogToSD;->write(Ljava/lang/String;Ljava/lang/String;)V

    .line 882
    invoke-static {v0}, Lcom/lostpixels/fieldservice/helpfunctions/HelpFunctions;->getStackTrace(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v0}, Lcom/lostpixels/fieldservice/utils/LogToSD;->write(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    .line 886
    invoke-virtual {v3}, Lio/realm/Realm;->close()V

    const/4 v0, 0x0

    return v0

    :goto_11
    invoke-virtual {v3}, Lio/realm/Realm;->close()V

    .line 887
    throw v0
.end method

.method public loadFromFile(Landroid/content/Context;)Z
    .locals 7

    .line 684
    const-string v0, "PublicationManager.load"

    .line 687
    new-instance v1, Ljava/io/File;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1}, Landroid/content/Context;->getFilesDir()Ljava/io/File;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v3, "/"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, "Publications.bin"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    const/4 v2, 0x0

    const/4 v4, 0x0

    .line 691
    :try_start_0
    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v5

    if-eqz v5, :cond_1

    .line 693
    new-instance v5, Lcom/fasterxml/jackson/dataformat/smile/SmileFactory;

    invoke-direct {v5}, Lcom/fasterxml/jackson/dataformat/smile/SmileFactory;-><init>()V

    .line 694
    invoke-virtual {p1, v3}, Landroid/content/Context;->openFileInput(Ljava/lang/String;)Ljava/io/FileInputStream;

    move-result-object p1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    if-eqz p1, :cond_0

    .line 696
    :try_start_1
    invoke-virtual {v5, p1}, Lcom/fasterxml/jackson/core/JsonFactory;->createParser(Ljava/io/InputStream;)Lcom/fasterxml/jackson/core/JsonParser;

    move-result-object v4

    const/4 v3, 0x1

    .line 697
    invoke-virtual {p0, v4, v3}, Lcom/lostpixels/fieldservice/internal/report/PublicationManager;->load(Lcom/fasterxml/jackson/core/JsonParser;Z)Z

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

    .line 714
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

    .line 719
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

    .line 724
    invoke-virtual {v1}, Ljava/io/File;->delete()Z

    goto :goto_6

    .line 705
    :goto_3
    :try_start_4
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Exception cought: "

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 706
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

    .line 705
    invoke-static {v0, v3}, Lcom/lostpixels/fieldservice/utils/LogToSD;->write(Ljava/lang/String;Ljava/lang/String;)V

    .line 707
    invoke-static {v1}, Lcom/lostpixels/fieldservice/helpfunctions/HelpFunctions;->getStackTrace(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/lostpixels/fieldservice/utils/LogToSD;->write(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    if-eqz p1, :cond_5

    .line 714
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

    .line 719
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

    .line 714
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

    .line 719
    :try_start_8
    invoke-virtual {p1}, Lcom/fasterxml/jackson/core/JsonParser;->close()V
    :try_end_8
    .catch Ljava/lang/Exception; {:try_start_8 .. :try_end_8} :catch_7

    .line 725
    :catch_7
    :cond_8
    throw v0
.end method

.method public merge(Lcom/fasterxml/jackson/core/JsonParser;)Z
    .locals 2

    .line 892
    new-instance v0, Lcom/lostpixels/fieldservice/internal/report/PublicationManager;

    invoke-direct {v0}, Lcom/lostpixels/fieldservice/internal/report/PublicationManager;-><init>()V

    const/4 v1, 0x0

    .line 893
    invoke-virtual {v0, p1, v1}, Lcom/lostpixels/fieldservice/internal/report/PublicationManager;->load(Lcom/fasterxml/jackson/core/JsonParser;Z)Z

    move-result p1

    if-eqz p1, :cond_0

    .line 899
    new-instance p1, Lcom/lostpixels/fieldservice/internal/report/PublicationManager$5;

    invoke-direct {p1, p0, v0}, Lcom/lostpixels/fieldservice/internal/report/PublicationManager$5;-><init>(Lcom/lostpixels/fieldservice/internal/report/PublicationManager;Lcom/lostpixels/fieldservice/internal/report/PublicationManager;)V

    invoke-static {p1}, Lcom/lostpixels/fieldservice/realm/RealmHelper;->write(Lcom/lostpixels/fieldservice/realm/RealmHelper$Writer;)Z

    const/4 p1, 0x1

    :cond_0
    return p1
.end method

.method public realmGet$awakeMap()Lio/realm/RealmList;
    .locals 1

    iget-object v0, p0, Lcom/lostpixels/fieldservice/internal/report/PublicationManager;->awakeMap:Lio/realm/RealmList;

    return-object v0
.end method

.method public realmGet$date()Ljava/util/Date;
    .locals 1

    iget-object v0, p0, Lcom/lostpixels/fieldservice/internal/report/PublicationManager;->date:Ljava/util/Date;

    return-object v0
.end method

.method public realmGet$id()J
    .locals 2

    iget-wide v0, p0, Lcom/lostpixels/fieldservice/internal/report/PublicationManager;->id:J

    return-wide v0
.end method

.method public realmGet$magazineMap()Lio/realm/RealmList;
    .locals 1

    iget-object v0, p0, Lcom/lostpixels/fieldservice/internal/report/PublicationManager;->magazineMap:Lio/realm/RealmList;

    return-object v0
.end method

.method public realmGet$marrBooks()Lio/realm/RealmList;
    .locals 1

    iget-object v0, p0, Lcom/lostpixels/fieldservice/internal/report/PublicationManager;->marrBooks:Lio/realm/RealmList;

    return-object v0
.end method

.method public realmGet$marrBroschures()Lio/realm/RealmList;
    .locals 1

    iget-object v0, p0, Lcom/lostpixels/fieldservice/internal/report/PublicationManager;->marrBroschures:Lio/realm/RealmList;

    return-object v0
.end method

.method public realmGet$marrMovies()Lio/realm/RealmList;
    .locals 1

    iget-object v0, p0, Lcom/lostpixels/fieldservice/internal/report/PublicationManager;->marrMovies:Lio/realm/RealmList;

    return-object v0
.end method

.method public realmGet$marrOther()Lio/realm/RealmList;
    .locals 1

    iget-object v0, p0, Lcom/lostpixels/fieldservice/internal/report/PublicationManager;->marrOther:Lio/realm/RealmList;

    return-object v0
.end method

.method public realmGet$marrTracts()Lio/realm/RealmList;
    .locals 1

    iget-object v0, p0, Lcom/lostpixels/fieldservice/internal/report/PublicationManager;->marrTracts:Lio/realm/RealmList;

    return-object v0
.end method

.method public realmGet$marrVideos()Lio/realm/RealmList;
    .locals 1

    iget-object v0, p0, Lcom/lostpixels/fieldservice/internal/report/PublicationManager;->marrVideos:Lio/realm/RealmList;

    return-object v0
.end method

.method public realmGet$watchtowerMap()Lio/realm/RealmList;
    .locals 1

    iget-object v0, p0, Lcom/lostpixels/fieldservice/internal/report/PublicationManager;->watchtowerMap:Lio/realm/RealmList;

    return-object v0
.end method

.method public realmSet$awakeMap(Lio/realm/RealmList;)V
    .locals 0

    iput-object p1, p0, Lcom/lostpixels/fieldservice/internal/report/PublicationManager;->awakeMap:Lio/realm/RealmList;

    return-void
.end method

.method public realmSet$date(Ljava/util/Date;)V
    .locals 0

    iput-object p1, p0, Lcom/lostpixels/fieldservice/internal/report/PublicationManager;->date:Ljava/util/Date;

    return-void
.end method

.method public realmSet$id(J)V
    .locals 0

    iput-wide p1, p0, Lcom/lostpixels/fieldservice/internal/report/PublicationManager;->id:J

    return-void
.end method

.method public realmSet$magazineMap(Lio/realm/RealmList;)V
    .locals 0

    iput-object p1, p0, Lcom/lostpixels/fieldservice/internal/report/PublicationManager;->magazineMap:Lio/realm/RealmList;

    return-void
.end method

.method public realmSet$marrBooks(Lio/realm/RealmList;)V
    .locals 0

    iput-object p1, p0, Lcom/lostpixels/fieldservice/internal/report/PublicationManager;->marrBooks:Lio/realm/RealmList;

    return-void
.end method

.method public realmSet$marrBroschures(Lio/realm/RealmList;)V
    .locals 0

    iput-object p1, p0, Lcom/lostpixels/fieldservice/internal/report/PublicationManager;->marrBroschures:Lio/realm/RealmList;

    return-void
.end method

.method public realmSet$marrMovies(Lio/realm/RealmList;)V
    .locals 0

    iput-object p1, p0, Lcom/lostpixels/fieldservice/internal/report/PublicationManager;->marrMovies:Lio/realm/RealmList;

    return-void
.end method

.method public realmSet$marrOther(Lio/realm/RealmList;)V
    .locals 0

    iput-object p1, p0, Lcom/lostpixels/fieldservice/internal/report/PublicationManager;->marrOther:Lio/realm/RealmList;

    return-void
.end method

.method public realmSet$marrTracts(Lio/realm/RealmList;)V
    .locals 0

    iput-object p1, p0, Lcom/lostpixels/fieldservice/internal/report/PublicationManager;->marrTracts:Lio/realm/RealmList;

    return-void
.end method

.method public realmSet$marrVideos(Lio/realm/RealmList;)V
    .locals 0

    iput-object p1, p0, Lcom/lostpixels/fieldservice/internal/report/PublicationManager;->marrVideos:Lio/realm/RealmList;

    return-void
.end method

.method public realmSet$watchtowerMap(Lio/realm/RealmList;)V
    .locals 0

    iput-object p1, p0, Lcom/lostpixels/fieldservice/internal/report/PublicationManager;->watchtowerMap:Lio/realm/RealmList;

    return-void
.end method

.method public save(Lcom/fasterxml/jackson/core/JsonGenerator;)Z
    .locals 5

    .line 587
    :try_start_0
    invoke-static {}, Lcom/lostpixels/fieldservice/utils/PerfToSD;->start()V

    .line 589
    invoke-virtual {p1}, Lcom/fasterxml/jackson/core/JsonGenerator;->writeStartObject()V

    .line 590
    const-string v0, "FileVersion"

    invoke-static {}, Lcom/lostpixels/fieldservice/internal/report/PublicationManager;->getLatestFileVersion()I

    move-result v1

    invoke-virtual {p1, v0, v1}, Lcom/fasterxml/jackson/core/JsonGenerator;->writeNumberField(Ljava/lang/String;I)V

    .line 591
    const-string v0, "Date"

    invoke-virtual {p0}, Lcom/lostpixels/fieldservice/internal/report/PublicationManager;->realmGet$date()Ljava/util/Date;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/Date;->getTime()J

    move-result-wide v1

    invoke-virtual {p1, v0, v1, v2}, Lcom/fasterxml/jackson/core/JsonGenerator;->writeNumberField(Ljava/lang/String;J)V

    .line 593
    const-string v0, "Books"

    invoke-virtual {p1, v0}, Lcom/fasterxml/jackson/core/JsonGenerator;->writeArrayFieldStart(Ljava/lang/String;)V

    .line 594
    invoke-virtual {p0}, Lcom/lostpixels/fieldservice/internal/report/PublicationManager;->realmGet$marrBooks()Lio/realm/RealmList;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 595
    invoke-virtual {p0}, Lcom/lostpixels/fieldservice/internal/report/PublicationManager;->realmGet$marrBooks()Lio/realm/RealmList;

    move-result-object v0

    invoke-virtual {v0}, Lio/realm/RealmList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 596
    invoke-virtual {p1, v1}, Lcom/fasterxml/jackson/core/JsonGenerator;->writeString(Ljava/lang/String;)V

    goto :goto_0

    :catch_0
    move-exception p1

    goto/16 :goto_9

    .line 598
    :cond_0
    invoke-virtual {p1}, Lcom/fasterxml/jackson/core/JsonGenerator;->writeEndArray()V

    .line 600
    const-string v0, "Broschures"

    invoke-virtual {p1, v0}, Lcom/fasterxml/jackson/core/JsonGenerator;->writeArrayFieldStart(Ljava/lang/String;)V

    .line 601
    invoke-virtual {p0}, Lcom/lostpixels/fieldservice/internal/report/PublicationManager;->realmGet$marrBroschures()Lio/realm/RealmList;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 602
    invoke-virtual {p0}, Lcom/lostpixels/fieldservice/internal/report/PublicationManager;->realmGet$marrBroschures()Lio/realm/RealmList;

    move-result-object v0

    invoke-virtual {v0}, Lio/realm/RealmList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 603
    invoke-virtual {p1, v1}, Lcom/fasterxml/jackson/core/JsonGenerator;->writeString(Ljava/lang/String;)V

    goto :goto_1

    .line 605
    :cond_1
    invoke-virtual {p1}, Lcom/fasterxml/jackson/core/JsonGenerator;->writeEndArray()V

    .line 607
    const-string v0, "Other"

    invoke-virtual {p1, v0}, Lcom/fasterxml/jackson/core/JsonGenerator;->writeArrayFieldStart(Ljava/lang/String;)V

    .line 608
    invoke-virtual {p0}, Lcom/lostpixels/fieldservice/internal/report/PublicationManager;->realmGet$marrOther()Lio/realm/RealmList;

    move-result-object v0

    if-eqz v0, :cond_2

    .line 609
    invoke-virtual {p0}, Lcom/lostpixels/fieldservice/internal/report/PublicationManager;->realmGet$marrOther()Lio/realm/RealmList;

    move-result-object v0

    invoke-virtual {v0}, Lio/realm/RealmList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_2
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 610
    invoke-virtual {p1, v1}, Lcom/fasterxml/jackson/core/JsonGenerator;->writeString(Ljava/lang/String;)V

    goto :goto_2

    .line 612
    :cond_2
    invoke-virtual {p1}, Lcom/fasterxml/jackson/core/JsonGenerator;->writeEndArray()V

    .line 614
    const-string v0, "Movies"

    invoke-virtual {p1, v0}, Lcom/fasterxml/jackson/core/JsonGenerator;->writeArrayFieldStart(Ljava/lang/String;)V

    .line 615
    invoke-virtual {p0}, Lcom/lostpixels/fieldservice/internal/report/PublicationManager;->realmGet$marrMovies()Lio/realm/RealmList;

    move-result-object v0

    if-eqz v0, :cond_3

    .line 616
    invoke-virtual {p0}, Lcom/lostpixels/fieldservice/internal/report/PublicationManager;->realmGet$marrMovies()Lio/realm/RealmList;

    move-result-object v0

    invoke-virtual {v0}, Lio/realm/RealmList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_3
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_3

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 617
    invoke-virtual {p1, v1}, Lcom/fasterxml/jackson/core/JsonGenerator;->writeString(Ljava/lang/String;)V

    goto :goto_3

    .line 619
    :cond_3
    invoke-virtual {p1}, Lcom/fasterxml/jackson/core/JsonGenerator;->writeEndArray()V

    .line 621
    const-string v0, "Videos"

    invoke-virtual {p1, v0}, Lcom/fasterxml/jackson/core/JsonGenerator;->writeArrayFieldStart(Ljava/lang/String;)V

    .line 622
    invoke-virtual {p0}, Lcom/lostpixels/fieldservice/internal/report/PublicationManager;->realmGet$marrVideos()Lio/realm/RealmList;

    move-result-object v0

    if-eqz v0, :cond_4

    .line 623
    invoke-virtual {p0}, Lcom/lostpixels/fieldservice/internal/report/PublicationManager;->realmGet$marrVideos()Lio/realm/RealmList;

    move-result-object v0

    invoke-virtual {v0}, Lio/realm/RealmList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_4
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_4

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 624
    invoke-virtual {p1, v1}, Lcom/fasterxml/jackson/core/JsonGenerator;->writeString(Ljava/lang/String;)V

    goto :goto_4

    .line 626
    :cond_4
    invoke-virtual {p1}, Lcom/fasterxml/jackson/core/JsonGenerator;->writeEndArray()V

    .line 628
    const-string v0, "Tracts"

    invoke-virtual {p1, v0}, Lcom/fasterxml/jackson/core/JsonGenerator;->writeArrayFieldStart(Ljava/lang/String;)V

    .line 629
    invoke-virtual {p0}, Lcom/lostpixels/fieldservice/internal/report/PublicationManager;->realmGet$marrTracts()Lio/realm/RealmList;

    move-result-object v0

    if-eqz v0, :cond_5

    .line 630
    invoke-virtual {p0}, Lcom/lostpixels/fieldservice/internal/report/PublicationManager;->realmGet$marrTracts()Lio/realm/RealmList;

    move-result-object v0

    invoke-virtual {v0}, Lio/realm/RealmList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_5
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_5

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 631
    invoke-virtual {p1, v1}, Lcom/fasterxml/jackson/core/JsonGenerator;->writeString(Ljava/lang/String;)V

    goto :goto_5

    .line 633
    :cond_5
    invoke-virtual {p1}, Lcom/fasterxml/jackson/core/JsonGenerator;->writeEndArray()V

    .line 635
    const-string v0, "Magazines"

    invoke-virtual {p1, v0}, Lcom/fasterxml/jackson/core/JsonGenerator;->writeObjectFieldStart(Ljava/lang/String;)V

    .line 636
    invoke-virtual {p0}, Lcom/lostpixels/fieldservice/internal/report/PublicationManager;->realmGet$magazineMap()Lio/realm/RealmList;

    move-result-object v0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    const-string v1, "N"

    const-string v2, "K"

    if-eqz v0, :cond_6

    .line 637
    :try_start_1
    invoke-virtual {p0}, Lcom/lostpixels/fieldservice/internal/report/PublicationManager;->realmGet$magazineMap()Lio/realm/RealmList;

    move-result-object v0

    invoke-virtual {v0}, Lio/realm/RealmList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_6
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_6

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/lostpixels/fieldservice/internal/ministry/AliasesMap;

    .line 638
    invoke-virtual {v3}, Lcom/lostpixels/fieldservice/internal/ministry/AliasesMap;->realmGet$id()I

    move-result v4

    .line 639
    invoke-virtual {v3}, Lcom/lostpixels/fieldservice/internal/ministry/AliasesMap;->realmGet$alias()Ljava/lang/String;

    move-result-object v3

    .line 640
    invoke-virtual {p1, v2, v4}, Lcom/fasterxml/jackson/core/JsonGenerator;->writeNumberField(Ljava/lang/String;I)V

    .line 641
    invoke-virtual {p1, v1, v3}, Lcom/fasterxml/jackson/core/JsonGenerator;->writeStringField(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_6

    .line 644
    :cond_6
    invoke-virtual {p1}, Lcom/fasterxml/jackson/core/JsonGenerator;->writeEndObject()V

    .line 646
    const-string v0, "Watchtower"

    invoke-virtual {p1, v0}, Lcom/fasterxml/jackson/core/JsonGenerator;->writeObjectFieldStart(Ljava/lang/String;)V

    .line 647
    invoke-virtual {p0}, Lcom/lostpixels/fieldservice/internal/report/PublicationManager;->realmGet$watchtowerMap()Lio/realm/RealmList;

    move-result-object v0

    if-eqz v0, :cond_7

    .line 648
    invoke-virtual {p0}, Lcom/lostpixels/fieldservice/internal/report/PublicationManager;->realmGet$watchtowerMap()Lio/realm/RealmList;

    move-result-object v0

    invoke-virtual {v0}, Lio/realm/RealmList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_7
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_7

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/lostpixels/fieldservice/internal/ministry/AliasesMap;

    .line 649
    invoke-virtual {v3}, Lcom/lostpixels/fieldservice/internal/ministry/AliasesMap;->realmGet$id()I

    move-result v4

    .line 650
    invoke-virtual {v3}, Lcom/lostpixels/fieldservice/internal/ministry/AliasesMap;->realmGet$alias()Ljava/lang/String;

    move-result-object v3

    .line 651
    invoke-virtual {p1, v2, v4}, Lcom/fasterxml/jackson/core/JsonGenerator;->writeNumberField(Ljava/lang/String;I)V

    .line 652
    invoke-virtual {p1, v1, v3}, Lcom/fasterxml/jackson/core/JsonGenerator;->writeStringField(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_7

    .line 655
    :cond_7
    invoke-virtual {p1}, Lcom/fasterxml/jackson/core/JsonGenerator;->writeEndObject()V

    .line 657
    const-string v0, "Awake"

    invoke-virtual {p1, v0}, Lcom/fasterxml/jackson/core/JsonGenerator;->writeObjectFieldStart(Ljava/lang/String;)V

    .line 658
    invoke-virtual {p0}, Lcom/lostpixels/fieldservice/internal/report/PublicationManager;->realmGet$awakeMap()Lio/realm/RealmList;

    move-result-object v0

    if-eqz v0, :cond_8

    .line 659
    invoke-virtual {p0}, Lcom/lostpixels/fieldservice/internal/report/PublicationManager;->realmGet$awakeMap()Lio/realm/RealmList;

    move-result-object v0

    invoke-virtual {v0}, Lio/realm/RealmList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_8
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_8

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/lostpixels/fieldservice/internal/ministry/AliasesMap;

    .line 660
    invoke-virtual {v3}, Lcom/lostpixels/fieldservice/internal/ministry/AliasesMap;->realmGet$id()I

    move-result v4

    .line 661
    invoke-virtual {v3}, Lcom/lostpixels/fieldservice/internal/ministry/AliasesMap;->realmGet$alias()Ljava/lang/String;

    move-result-object v3

    .line 662
    invoke-virtual {p1, v2, v4}, Lcom/fasterxml/jackson/core/JsonGenerator;->writeNumberField(Ljava/lang/String;I)V

    .line 663
    invoke-virtual {p1, v1, v3}, Lcom/fasterxml/jackson/core/JsonGenerator;->writeStringField(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_8

    .line 666
    :cond_8
    invoke-virtual {p1}, Lcom/fasterxml/jackson/core/JsonGenerator;->writeEndObject()V

    .line 668
    invoke-virtual {p1}, Lcom/fasterxml/jackson/core/JsonGenerator;->writeEndObject()V

    .line 670
    invoke-virtual {p1}, Lcom/fasterxml/jackson/core/JsonGenerator;->flush()V

    .line 672
    const-string p1, "Save publication file"

    invoke-static {p1}, Lcom/lostpixels/fieldservice/utils/PerfToSD;->stop(Ljava/lang/String;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    const/4 p1, 0x1

    return p1

    .line 676
    :goto_9
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Exception cought: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 677
    invoke-virtual {p1}, Ljava/lang/Throwable;->getCause()Ljava/lang/Throwable;

    move-result-object v1

    if-eqz v1, :cond_9

    invoke-virtual {p1}, Ljava/lang/Throwable;->getCause()Ljava/lang/Throwable;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Throwable;->toString()Ljava/lang/String;

    move-result-object v1

    goto :goto_a

    :cond_9
    const-string v1, ""

    :goto_a
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 676
    const-string v1, "PublicManager.save"

    invoke-static {v1, v0}, Lcom/lostpixels/fieldservice/utils/LogToSD;->write(Ljava/lang/String;Ljava/lang/String;)V

    .line 678
    const-string v0, "Stacktrace"

    invoke-static {p1}, Lcom/lostpixels/fieldservice/helpfunctions/HelpFunctions;->getStackTrace(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1}, Lcom/lostpixels/fieldservice/utils/LogToSD;->write(Ljava/lang/String;Ljava/lang/String;)V

    const/4 p1, 0x0

    return p1
.end method

.method public setMagazineAlias(ZZLjava/util/Date;Ljava/lang/String;)V
    .locals 6

    .line 178
    new-instance v0, Lcom/lostpixels/fieldservice/internal/report/PublicationManager$1;

    move-object v1, p0

    move v3, p1

    move v4, p2

    move-object v2, p3

    move-object v5, p4

    invoke-direct/range {v0 .. v5}, Lcom/lostpixels/fieldservice/internal/report/PublicationManager$1;-><init>(Lcom/lostpixels/fieldservice/internal/report/PublicationManager;Ljava/util/Date;ZZLjava/lang/String;)V

    invoke-static {v0}, Lcom/lostpixels/fieldservice/realm/RealmHelper;->write(Lcom/lostpixels/fieldservice/realm/RealmHelper$Writer;)Z

    return-void
.end method
