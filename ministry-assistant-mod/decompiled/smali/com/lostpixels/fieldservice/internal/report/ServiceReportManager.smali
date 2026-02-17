.class public Lcom/lostpixels/fieldservice/internal/report/ServiceReportManager;
.super Lio/realm/RealmObject;
.source "SourceFile"

# interfaces
.implements Lio/realm/com_lostpixels_fieldservice_internal_report_ServiceReportManagerRealmProxyInterface;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/lostpixels/fieldservice/internal/report/ServiceReportManager$BooleanResult;
    }
.end annotation


# static fields
.field private static instanceLock:Ljava/util/concurrent/locks/Lock;

.field static lastReportTime:J


# instance fields
.field public customItem1Caps:Z

.field public customItem1IsTime:Z

.field public customItem2Caps:Z

.field customItem2IsTime:Z

.field public customItem3Caps:Z

.field customItem3IsTime:Z

.field public id:J

.field public mCustom1:Ljava/lang/String;

.field public mCustom2:Ljava/lang/String;

.field public mCustom3:Ljava/lang/String;

.field public mCustomDate:Ljava/util/Date;

.field private mbFileLoaded:Z

.field public mlstServiceYears:Lio/realm/RealmList;

.field public usingCustom1:Z

.field public usingCustom2:Z

.field public usingCustom3:Z


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>()V
    .locals 2

    .line 95
    invoke-direct {p0}, Lio/realm/RealmObject;-><init>()V

    instance-of v0, p0, Lio/realm/internal/RealmObjectProxy;

    if-eqz v0, :cond_0

    move-object v0, p0

    check-cast v0, Lio/realm/internal/RealmObjectProxy;

    invoke-interface {v0}, Lio/realm/internal/RealmObjectProxy;->realm$injectObjectContext()V

    :cond_0
    const-wide/16 v0, 0x1

    .line 71
    invoke-virtual {p0, v0, v1}, Lcom/lostpixels/fieldservice/internal/report/ServiceReportManager;->realmSet$id(J)V

    const/4 v0, 0x0

    .line 78
    invoke-virtual {p0, v0}, Lcom/lostpixels/fieldservice/internal/report/ServiceReportManager;->realmSet$customItem1IsTime(Z)V

    .line 79
    invoke-virtual {p0, v0}, Lcom/lostpixels/fieldservice/internal/report/ServiceReportManager;->realmSet$customItem1Caps(Z)V

    .line 80
    invoke-virtual {p0, v0}, Lcom/lostpixels/fieldservice/internal/report/ServiceReportManager;->realmSet$usingCustom1(Z)V

    .line 83
    invoke-virtual {p0, v0}, Lcom/lostpixels/fieldservice/internal/report/ServiceReportManager;->realmSet$customItem2Caps(Z)V

    .line 84
    invoke-virtual {p0, v0}, Lcom/lostpixels/fieldservice/internal/report/ServiceReportManager;->realmSet$usingCustom2(Z)V

    .line 87
    invoke-virtual {p0, v0}, Lcom/lostpixels/fieldservice/internal/report/ServiceReportManager;->realmSet$customItem3Caps(Z)V

    .line 88
    invoke-virtual {p0, v0}, Lcom/lostpixels/fieldservice/internal/report/ServiceReportManager;->realmSet$usingCustom3(Z)V

    .line 90
    invoke-virtual {p0, v0}, Lcom/lostpixels/fieldservice/internal/report/ServiceReportManager;->realmSet$customItem2IsTime(Z)V

    .line 91
    invoke-virtual {p0, v0}, Lcom/lostpixels/fieldservice/internal/report/ServiceReportManager;->realmSet$customItem3IsTime(Z)V

    const/4 v0, 0x1

    .line 92
    iput-boolean v0, p0, Lcom/lostpixels/fieldservice/internal/report/ServiceReportManager;->mbFileLoaded:Z

    .line 96
    new-instance v0, Lio/realm/RealmList;

    invoke-direct {v0}, Lio/realm/RealmList;-><init>()V

    invoke-virtual {p0, v0}, Lcom/lostpixels/fieldservice/internal/report/ServiceReportManager;->realmSet$mlstServiceYears(Lio/realm/RealmList;)V

    .line 97
    const-string v0, ""

    invoke-virtual {p0, v0}, Lcom/lostpixels/fieldservice/internal/report/ServiceReportManager;->realmSet$mCustom1(Ljava/lang/String;)V

    .line 98
    invoke-virtual {p0, v0}, Lcom/lostpixels/fieldservice/internal/report/ServiceReportManager;->realmSet$mCustom2(Ljava/lang/String;)V

    .line 99
    invoke-virtual {p0, v0}, Lcom/lostpixels/fieldservice/internal/report/ServiceReportManager;->realmSet$mCustom3(Ljava/lang/String;)V

    .line 100
    new-instance v0, Ljava/util/Date;

    invoke-direct {v0}, Ljava/util/Date;-><init>()V

    invoke-virtual {p0, v0}, Lcom/lostpixels/fieldservice/internal/report/ServiceReportManager;->realmSet$mCustomDate(Ljava/util/Date;)V

    return-void
.end method

.method public static date2ServiceMonth(Ljava/util/Date;)I
    .locals 1

    .line 137
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v0

    .line 138
    invoke-virtual {v0, p0}, Ljava/util/Calendar;->setTime(Ljava/util/Date;)V

    const/4 p0, 0x2

    .line 139
    invoke-virtual {v0, p0}, Ljava/util/Calendar;->get(I)I

    move-result p0

    add-int/lit8 p0, p0, 0x1

    invoke-static {p0}, Lcom/lostpixels/fieldservice/internal/report/ServiceReportManager;->month2ServiceMonth(I)I

    move-result p0

    return p0
.end method

.method public static date2ServiceYear(Ljava/util/Date;)Ljava/util/Date;
    .locals 4

    .line 156
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v0

    .line 157
    invoke-virtual {p0}, Ljava/util/Date;->clone()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/util/Date;

    .line 158
    invoke-virtual {v0, p0}, Ljava/util/Calendar;->setTime(Ljava/util/Date;)V

    const/4 v1, 0x2

    .line 159
    invoke-virtual {v0, v1}, Ljava/util/Calendar;->get(I)I

    move-result v1

    const/4 v2, 0x1

    add-int/2addr v1, v2

    const/16 v3, 0x9

    if-lt v1, v3, :cond_0

    .line 160
    invoke-virtual {v0, v2, v2}, Ljava/util/Calendar;->add(II)V

    .line 161
    invoke-virtual {v0}, Ljava/util/Calendar;->getTime()Ljava/util/Date;

    move-result-object p0

    :cond_0
    return-object p0
.end method

.method public static date2ServiceYearInt(Ljava/util/Date;)I
    .locals 3

    .line 169
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v0

    .line 170
    invoke-virtual {v0, p0}, Ljava/util/Calendar;->setTime(Ljava/util/Date;)V

    const/4 p0, 0x2

    .line 171
    invoke-virtual {v0, p0}, Ljava/util/Calendar;->get(I)I

    move-result p0

    const/4 v1, 0x1

    add-int/2addr p0, v1

    const/16 v2, 0x9

    if-lt p0, v2, :cond_0

    .line 172
    invoke-virtual {v0, v1, v1}, Ljava/util/Calendar;->add(II)V

    .line 174
    :cond_0
    invoke-virtual {v0, v1}, Ljava/util/Calendar;->get(I)I

    move-result p0

    return p0
.end method

.method public static deleteServiceFile(Landroid/content/Context;)V
    .locals 6

    .line 114
    new-instance v0, Ljava/io/File;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Landroid/content/Context;->getFilesDir()Ljava/io/File;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v2, "/"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, "Service.bin"

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 115
    new-instance v1, Ljava/io/File;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Landroid/content/Context;->getFilesDir()Ljava/io/File;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, "ServiceTemp.bin"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v1, v3}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 116
    new-instance v3, Ljava/io/File;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Landroid/content/Context;->getFilesDir()Ljava/io/File;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v5, "Service.obj"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 117
    new-instance v4, Ljava/io/File;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Landroid/content/Context;->getFilesDir()Ljava/io/File;

    move-result-object p0

    invoke-virtual {v5, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p0, "MonthReport.bin"

    invoke-virtual {v5, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {v4, p0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 118
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result p0

    if-eqz p0, :cond_0

    .line 119
    invoke-virtual {v0}, Ljava/io/File;->delete()Z

    .line 120
    :cond_0
    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result p0

    if-eqz p0, :cond_1

    .line 121
    invoke-virtual {v1}, Ljava/io/File;->delete()Z

    .line 122
    :cond_1
    invoke-virtual {v3}, Ljava/io/File;->exists()Z

    move-result p0

    if-eqz p0, :cond_2

    .line 123
    invoke-virtual {v3}, Ljava/io/File;->delete()Z

    .line 124
    :cond_2
    invoke-virtual {v4}, Ljava/io/File;->exists()Z

    move-result p0

    if-eqz p0, :cond_3

    .line 125
    invoke-virtual {v4}, Ljava/io/File;->delete()Z

    :cond_3
    return-void
.end method

.method public static declared-synchronized getInstance(Lio/realm/Realm;)Lcom/lostpixels/fieldservice/internal/report/ServiceReportManager;
    .locals 4

    const-class v0, Lcom/lostpixels/fieldservice/internal/report/ServiceReportManager;

    monitor-enter v0

    .line 196
    :try_start_0
    sget-object v1, Lcom/lostpixels/fieldservice/internal/report/ServiceReportManager;->instanceLock:Ljava/util/concurrent/locks/Lock;

    if-nez v1, :cond_0

    .line 197
    new-instance v1, Ljava/util/concurrent/locks/ReentrantLock;

    invoke-direct {v1}, Ljava/util/concurrent/locks/ReentrantLock;-><init>()V

    sput-object v1, Lcom/lostpixels/fieldservice/internal/report/ServiceReportManager;->instanceLock:Ljava/util/concurrent/locks/Lock;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception p0

    goto :goto_3

    .line 200
    :cond_0
    :goto_0
    :try_start_1
    sget-object v1, Lcom/lostpixels/fieldservice/internal/report/ServiceReportManager;->instanceLock:Ljava/util/concurrent/locks/Lock;

    invoke-interface {v1}, Ljava/util/concurrent/locks/Lock;->lock()V

    .line 201
    const-class v1, Lcom/lostpixels/fieldservice/internal/report/ServiceReportManager;

    invoke-virtual {p0, v1}, Lio/realm/Realm;->where(Ljava/lang/Class;)Lio/realm/RealmQuery;

    move-result-object v1

    invoke-virtual {v1}, Lio/realm/RealmQuery;->findFirst()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/lostpixels/fieldservice/internal/report/ServiceReportManager;

    if-nez v1, :cond_1

    .line 202
    invoke-virtual {p0}, Lio/realm/Realm;->isInTransaction()Z

    move-result v2

    if-nez v2, :cond_1

    .line 203
    invoke-virtual {p0}, Lio/realm/Realm;->refresh()V

    .line 204
    const-class v1, Lcom/lostpixels/fieldservice/internal/report/ServiceReportManager;

    invoke-virtual {p0, v1}, Lio/realm/Realm;->where(Ljava/lang/Class;)Lio/realm/RealmQuery;

    move-result-object v1

    invoke-virtual {v1}, Lio/realm/RealmQuery;->findFirst()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/lostpixels/fieldservice/internal/report/ServiceReportManager;

    goto :goto_1

    :catchall_1
    move-exception p0

    goto :goto_2

    :cond_1
    :goto_1
    if-nez v1, :cond_4

    .line 208
    invoke-virtual {p0}, Lio/realm/Realm;->isInTransaction()Z

    move-result v1

    if-nez v1, :cond_2

    .line 210
    invoke-virtual {p0}, Lio/realm/Realm;->beginTransaction()V

    .line 212
    :cond_2
    const-class v2, Lcom/lostpixels/fieldservice/internal/report/ServiceReportManager;

    const/4 v3, 0x1

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {p0, v2, v3}, Lio/realm/Realm;->createObject(Ljava/lang/Class;Ljava/lang/Object;)Lio/realm/RealmModel;

    move-result-object v2

    check-cast v2, Lcom/lostpixels/fieldservice/internal/report/ServiceReportManager;

    if-nez v1, :cond_3

    .line 214
    invoke-virtual {p0}, Lio/realm/Realm;->commitTransaction()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    :cond_3
    move-object v1, v2

    .line 217
    :cond_4
    :try_start_2
    sget-object p0, Lcom/lostpixels/fieldservice/internal/report/ServiceReportManager;->instanceLock:Ljava/util/concurrent/locks/Lock;

    invoke-interface {p0}, Ljava/util/concurrent/locks/Lock;->unlock()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 219
    monitor-exit v0

    return-object v1

    .line 217
    :goto_2
    :try_start_3
    sget-object v1, Lcom/lostpixels/fieldservice/internal/report/ServiceReportManager;->instanceLock:Ljava/util/concurrent/locks/Lock;

    invoke-interface {v1}, Ljava/util/concurrent/locks/Lock;->unlock()V

    .line 218
    throw p0

    :goto_3
    monitor-exit v0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    throw p0
.end method

.method public static getLatestFileVersion()I
    .locals 1

    const/16 v0, 0x16

    return v0
.end method

.method public static getThreeLastMonthStartDate()Ljava/util/Calendar;
    .locals 3

    .line 183
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v0

    .line 184
    new-instance v1, Ljava/util/Date;

    invoke-direct {v1}, Ljava/util/Date;-><init>()V

    invoke-virtual {v0, v1}, Ljava/util/Calendar;->setTime(Ljava/util/Date;)V

    const/4 v1, 0x2

    const/4 v2, -0x3

    .line 186
    invoke-virtual {v0, v1, v2}, Ljava/util/Calendar;->add(II)V

    const/4 v1, 0x5

    const/4 v2, 0x1

    .line 187
    invoke-virtual {v0, v1, v2}, Ljava/util/Calendar;->set(II)V

    const/16 v1, 0xb

    const/4 v2, 0x0

    .line 188
    invoke-virtual {v0, v1, v2}, Ljava/util/Calendar;->set(II)V

    const/16 v1, 0xc

    .line 189
    invoke-virtual {v0, v1, v2}, Ljava/util/Calendar;->set(II)V

    const/16 v1, 0xd

    .line 190
    invoke-virtual {v0, v1, v2}, Ljava/util/Calendar;->set(II)V

    return-object v0
.end method

.method private loadFromDataStreamInternal(Lcom/lostpixels/fieldservice/utils/ObjectDataInputStream;)V
    .locals 12

    .line 592
    :try_start_0
    invoke-virtual {p1}, Ljava/io/DataInputStream;->readInt()I

    move-result v0

    .line 593
    invoke-static {}, Lcom/lostpixels/fieldservice/internal/report/ServiceReportManager;->getLatestFileVersion()I

    move-result v1

    if-gt v0, v1, :cond_4

    .line 596
    invoke-virtual {p1}, Ljava/io/DataInputStream;->readInt()I

    move-result v1

    const/16 v2, 0x32

    if-gt v1, v2, :cond_3

    .line 599
    invoke-virtual {p0}, Lcom/lostpixels/fieldservice/internal/report/ServiceReportManager;->realmGet$mlstServiceYears()Lio/realm/RealmList;

    move-result-object v2

    monitor-enter v2
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 600
    :try_start_1
    invoke-virtual {p0}, Lcom/lostpixels/fieldservice/internal/report/ServiceReportManager;->realmGet$mlstServiceYears()Lio/realm/RealmList;

    move-result-object v3

    invoke-virtual {v3}, Lio/realm/RealmList;->deleteAllFromRealm()Z

    const/4 v3, 0x0

    const/4 v4, 0x0

    :goto_0
    if-ge v4, v1, :cond_1

    .line 602
    new-instance v5, Lcom/lostpixels/fieldservice/internal/report/YearReport;

    invoke-direct {v5, v3}, Lcom/lostpixels/fieldservice/internal/report/YearReport;-><init>(I)V

    .line 603
    invoke-virtual {v5, p1, v0}, Lcom/lostpixels/fieldservice/internal/report/YearReport;->loadFromDataStream(Lcom/lostpixels/fieldservice/utils/ObjectDataInputStream;I)V

    const/16 v6, 0x12

    if-gt v0, v6, :cond_0

    const/4 v6, 0x1

    :goto_1
    const/16 v7, 0xc

    if-gt v6, v7, :cond_0

    .line 609
    invoke-virtual {v5, v6}, Lcom/lostpixels/fieldservice/internal/report/YearReport;->getMonthReport(I)Lcom/lostpixels/fieldservice/internal/report/MonthReport;

    move-result-object v7

    invoke-static {v7}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    invoke-virtual {v5}, Lcom/lostpixels/fieldservice/internal/report/YearReport;->getYear()I

    move-result v8

    int-to-long v8, v8

    const-wide/16 v10, 0x64

    mul-long v8, v8, v10

    int-to-long v10, v6

    add-long/2addr v8, v10

    invoke-virtual {v7, v8, v9}, Lcom/lostpixels/fieldservice/internal/report/MonthReport;->setId(J)V

    add-int/lit8 v6, v6, 0x1

    goto :goto_1

    :catchall_0
    move-exception p1

    goto :goto_2

    .line 611
    :cond_0
    invoke-virtual {p0}, Lcom/lostpixels/fieldservice/internal/report/ServiceReportManager;->realmGet$mlstServiceYears()Lio/realm/RealmList;

    move-result-object v6

    invoke-virtual {v6, v5}, Lio/realm/RealmList;->add(Ljava/lang/Object;)Z

    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .line 613
    :cond_1
    monitor-exit v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 614
    :try_start_2
    invoke-virtual {p1}, Lcom/lostpixels/fieldservice/utils/ObjectDataInputStream;->readString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/lostpixels/fieldservice/internal/report/ServiceReportManager;->realmSet$mCustom1(Ljava/lang/String;)V

    .line 615
    invoke-virtual {p1}, Lcom/lostpixels/fieldservice/utils/ObjectDataInputStream;->readString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/lostpixels/fieldservice/internal/report/ServiceReportManager;->realmSet$mCustom2(Ljava/lang/String;)V

    .line 616
    invoke-virtual {p1}, Lcom/lostpixels/fieldservice/utils/ObjectDataInputStream;->readString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/lostpixels/fieldservice/internal/report/ServiceReportManager;->realmSet$mCustom3(Ljava/lang/String;)V

    const/16 v1, 0x11

    if-gt v0, v1, :cond_2

    .line 618
    invoke-virtual {p1}, Lcom/lostpixels/fieldservice/utils/ObjectDataInputStream;->readDate()Ljava/util/Date;
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    return-void

    :catch_0
    move-exception p1

    goto :goto_3

    :cond_2
    return-void

    .line 613
    :goto_2
    :try_start_3
    monitor-exit v2
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    :try_start_4
    throw p1

    .line 598
    :cond_3
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string v0, "Number of service years are too many"

    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 594
    :cond_4
    new-instance p1, Lcom/lostpixels/fieldservice/utils/FileVersionException;

    const-string v0, "Newer file version"

    invoke-direct {p1, v0}, Lcom/lostpixels/fieldservice/utils/FileVersionException;-><init>(Ljava/lang/String;)V

    throw p1
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_0

    .line 620
    :goto_3
    const-string v0, "ServiceSessionManager.loadFromDataStreamInternal 1"

    invoke-virtual {p1}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/lostpixels/fieldservice/utils/LogToSD;->write(Ljava/lang/String;Ljava/lang/String;)V

    .line 621
    throw p1
.end method

.method private loadFromFileRaw(Lcom/fasterxml/jackson/core/JsonParser;)V
    .locals 14

    .line 665
    invoke-static {}, Lio/realm/Realm;->getDefaultInstance()Lio/realm/Realm;

    move-result-object v0

    .line 668
    :try_start_0
    invoke-static {}, Lcom/lostpixels/fieldservice/internal/report/ServiceReportManager;->getLatestFileVersion()I

    move-result v1

    .line 669
    invoke-virtual {p0}, Lcom/lostpixels/fieldservice/internal/report/ServiceReportManager;->realmGet$mlstServiceYears()Lio/realm/RealmList;

    move-result-object v2

    monitor-enter v2
    :try_end_0
    .catch Lcom/lostpixels/fieldservice/utils/FileVersionException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_2

    .line 670
    :try_start_1
    invoke-virtual {p0}, Lio/realm/RealmObject;->isManaged()Z

    move-result v3

    if-eqz v3, :cond_0

    .line 671
    invoke-virtual {p0}, Lcom/lostpixels/fieldservice/internal/report/ServiceReportManager;->realmGet$mlstServiceYears()Lio/realm/RealmList;

    move-result-object v3

    invoke-virtual {v3}, Lio/realm/RealmList;->deleteAllFromRealm()Z

    goto :goto_0

    :catchall_0
    move-exception p1

    goto/16 :goto_b

    .line 673
    :cond_0
    invoke-virtual {p0}, Lcom/lostpixels/fieldservice/internal/report/ServiceReportManager;->realmGet$mlstServiceYears()Lio/realm/RealmList;

    move-result-object v3

    invoke-virtual {v3}, Lio/realm/RealmList;->clear()V

    .line 675
    :goto_0
    invoke-virtual {p1}, Lcom/fasterxml/jackson/core/JsonParser;->nextToken()Lcom/fasterxml/jackson/core/JsonToken;

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    .line 678
    :cond_1
    :goto_1
    invoke-virtual {p1}, Lcom/fasterxml/jackson/core/JsonParser;->nextToken()Lcom/fasterxml/jackson/core/JsonToken;

    move-result-object v6

    sget-object v7, Lcom/fasterxml/jackson/core/JsonToken;->END_OBJECT:Lcom/fasterxml/jackson/core/JsonToken;

    const/4 v8, 0x1

    if-eq v6, v7, :cond_14

    .line 679
    invoke-virtual {p1}, Lcom/fasterxml/jackson/core/JsonParser;->getCurrentName()Ljava/lang/String;

    move-result-object v6

    .line 680
    invoke-virtual {p1}, Lcom/fasterxml/jackson/core/JsonParser;->nextToken()Lcom/fasterxml/jackson/core/JsonToken;

    if-nez v6, :cond_2

    const/4 v7, 0x4

    if-ge v5, v7, :cond_2

    add-int/lit8 v5, v5, 0x1

    .line 683
    const-string v6, "ServiceReport loadFromFileRaw - field is null. Next value:"

    invoke-virtual {p1}, Lcom/fasterxml/jackson/core/JsonParser;->getCurrentName()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Lcom/lostpixels/fieldservice/utils/LogToSD;->write(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1

    .line 687
    :cond_2
    const-string v7, "FileVersion"

    invoke-virtual {v7, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_4

    .line 688
    invoke-virtual {p1}, Lcom/fasterxml/jackson/core/JsonParser;->getIntValue()I

    move-result v1

    .line 689
    invoke-static {}, Lcom/lostpixels/fieldservice/internal/report/ServiceReportManager;->getLatestFileVersion()I

    move-result v6

    if-gt v1, v6, :cond_3

    goto :goto_1

    .line 690
    :cond_3
    new-instance p1, Lcom/lostpixels/fieldservice/utils/FileVersionException;

    const-string v1, "Newer file version"

    invoke-direct {p1, v1}, Lcom/lostpixels/fieldservice/utils/FileVersionException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 692
    :cond_4
    const-string v7, "LastModified"

    invoke-virtual {v7, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_5

    goto :goto_1

    .line 694
    :cond_5
    const-string v7, "C1"

    invoke-virtual {v7, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_6

    .line 695
    invoke-virtual {p1}, Lcom/fasterxml/jackson/core/JsonParser;->getText()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {p0, v6}, Lcom/lostpixels/fieldservice/internal/report/ServiceReportManager;->realmSet$mCustom1(Ljava/lang/String;)V

    goto :goto_1

    .line 696
    :cond_6
    const-string v7, "C2"

    invoke-virtual {v7, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_7

    .line 697
    invoke-virtual {p1}, Lcom/fasterxml/jackson/core/JsonParser;->getText()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {p0, v6}, Lcom/lostpixels/fieldservice/internal/report/ServiceReportManager;->realmSet$mCustom2(Ljava/lang/String;)V

    goto :goto_1

    .line 698
    :cond_7
    const-string v7, "C3"

    invoke-virtual {v7, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_8

    .line 699
    invoke-virtual {p1}, Lcom/fasterxml/jackson/core/JsonParser;->getText()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {p0, v6}, Lcom/lostpixels/fieldservice/internal/report/ServiceReportManager;->realmSet$mCustom3(Ljava/lang/String;)V

    goto :goto_1

    .line 700
    :cond_8
    const-string v7, "Ct1"

    invoke-virtual {v7, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_9

    .line 701
    invoke-virtual {p1}, Lcom/fasterxml/jackson/core/JsonParser;->getBooleanValue()Z

    move-result v6

    invoke-virtual {p0, v6}, Lcom/lostpixels/fieldservice/internal/report/ServiceReportManager;->realmSet$customItem1IsTime(Z)V

    goto/16 :goto_1

    .line 702
    :cond_9
    const-string v7, "Ct2"

    invoke-virtual {v7, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_a

    .line 703
    invoke-virtual {p1}, Lcom/fasterxml/jackson/core/JsonParser;->getBooleanValue()Z

    move-result v6

    invoke-virtual {p0, v6}, Lcom/lostpixels/fieldservice/internal/report/ServiceReportManager;->realmSet$customItem2IsTime(Z)V

    goto/16 :goto_1

    .line 704
    :cond_a
    const-string v7, "Ct3"

    invoke-virtual {v7, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_b

    .line 705
    invoke-virtual {p1}, Lcom/fasterxml/jackson/core/JsonParser;->getBooleanValue()Z

    move-result v6

    invoke-virtual {p0, v6}, Lcom/lostpixels/fieldservice/internal/report/ServiceReportManager;->realmSet$customItem3IsTime(Z)V

    goto/16 :goto_1

    .line 706
    :cond_b
    const-string v7, "Cc1"

    invoke-virtual {v7, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_c

    .line 707
    invoke-virtual {p1}, Lcom/fasterxml/jackson/core/JsonParser;->getBooleanValue()Z

    move-result v6

    invoke-virtual {p0, v6}, Lcom/lostpixels/fieldservice/internal/report/ServiceReportManager;->realmSet$customItem1Caps(Z)V

    goto/16 :goto_1

    .line 708
    :cond_c
    const-string v7, "Cc2"

    invoke-virtual {v7, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_d

    .line 709
    invoke-virtual {p1}, Lcom/fasterxml/jackson/core/JsonParser;->getBooleanValue()Z

    move-result v6

    invoke-virtual {p0, v6}, Lcom/lostpixels/fieldservice/internal/report/ServiceReportManager;->realmSet$customItem2Caps(Z)V

    goto/16 :goto_1

    .line 710
    :cond_d
    const-string v7, "Cc3"

    invoke-virtual {v7, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_e

    .line 711
    invoke-virtual {p1}, Lcom/fasterxml/jackson/core/JsonParser;->getBooleanValue()Z

    move-result v6

    invoke-virtual {p0, v6}, Lcom/lostpixels/fieldservice/internal/report/ServiceReportManager;->realmSet$customItem3Caps(Z)V

    goto/16 :goto_1

    .line 712
    :cond_e
    const-string v7, "CD"

    invoke-virtual {v7, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_f

    .line 713
    new-instance v6, Ljava/util/Date;

    invoke-virtual {p1}, Lcom/fasterxml/jackson/core/JsonParser;->getLongValue()J

    move-result-wide v7

    invoke-direct {v6, v7, v8}, Ljava/util/Date;-><init>(J)V

    invoke-virtual {p0, v6}, Lcom/lostpixels/fieldservice/internal/report/ServiceReportManager;->realmSet$mCustomDate(Ljava/util/Date;)V

    goto/16 :goto_1

    .line 714
    :cond_f
    const-string v7, "Years"

    invoke-virtual {v7, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_11

    .line 715
    :goto_2
    invoke-virtual {p1}, Lcom/fasterxml/jackson/core/JsonParser;->nextToken()Lcom/fasterxml/jackson/core/JsonToken;

    move-result-object v6

    sget-object v7, Lcom/fasterxml/jackson/core/JsonToken;->END_OBJECT:Lcom/fasterxml/jackson/core/JsonToken;

    if-eq v6, v7, :cond_1

    .line 717
    new-instance v6, Lcom/lostpixels/fieldservice/internal/report/YearReport;

    invoke-direct {v6, v3}, Lcom/lostpixels/fieldservice/internal/report/YearReport;-><init>(I)V

    .line 718
    invoke-virtual {v6, p1, v1}, Lcom/lostpixels/fieldservice/internal/report/YearReport;->loadFromFileRaw(Lcom/fasterxml/jackson/core/JsonParser;I)V

    const/16 v7, 0x12

    if-gt v1, v7, :cond_10

    const/4 v7, 0x1

    :goto_3
    const/16 v9, 0xc

    if-gt v7, v9, :cond_10

    .line 723
    invoke-virtual {v6, v7}, Lcom/lostpixels/fieldservice/internal/report/YearReport;->getMonthReport(I)Lcom/lostpixels/fieldservice/internal/report/MonthReport;

    move-result-object v9

    invoke-static {v9}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    invoke-virtual {v6}, Lcom/lostpixels/fieldservice/internal/report/YearReport;->getYear()I

    move-result v10

    int-to-long v10, v10

    const-wide/16 v12, 0x64

    mul-long v10, v10, v12

    int-to-long v12, v7

    add-long/2addr v10, v12

    invoke-virtual {v9, v10, v11}, Lcom/lostpixels/fieldservice/internal/report/MonthReport;->setId(J)V

    add-int/lit8 v7, v7, 0x1

    goto :goto_3

    .line 725
    :cond_10
    invoke-virtual {p0}, Lcom/lostpixels/fieldservice/internal/report/ServiceReportManager;->realmGet$mlstServiceYears()Lio/realm/RealmList;

    move-result-object v7

    invoke-virtual {v7, v6}, Lio/realm/RealmList;->add(Ljava/lang/Object;)Z

    goto :goto_2

    .line 727
    :cond_11
    const-string v4, "Sessions"

    invoke-virtual {v4, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_13

    .line 728
    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    .line 729
    monitor-enter v4
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 730
    :goto_4
    :try_start_2
    invoke-virtual {p1}, Lcom/fasterxml/jackson/core/JsonParser;->nextToken()Lcom/fasterxml/jackson/core/JsonToken;

    move-result-object v6

    sget-object v7, Lcom/fasterxml/jackson/core/JsonToken;->END_OBJECT:Lcom/fasterxml/jackson/core/JsonToken;

    if-eq v6, v7, :cond_12

    .line 732
    new-instance v6, Lcom/lostpixels/fieldservice/internal/report/ServiceSession;

    invoke-direct {v6}, Lcom/lostpixels/fieldservice/internal/report/ServiceSession;-><init>()V

    .line 733
    invoke-virtual {v6, p1}, Lcom/lostpixels/fieldservice/internal/report/ServiceSession;->loadFromFileRaw(Lcom/fasterxml/jackson/core/JsonParser;)V

    .line 734
    invoke-virtual {v4, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_4

    :catchall_1
    move-exception p1

    goto :goto_5

    .line 737
    :cond_12
    monitor-exit v4

    goto/16 :goto_1

    :goto_5
    monitor-exit v4
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    :try_start_3
    throw p1

    .line 739
    :cond_13
    new-instance p1, Ljava/lang/IllegalStateException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Unrecognized field \'"

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, "\'!"

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p1, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_14
    const/4 p1, 0x2

    if-eqz v4, :cond_1a

    .line 745
    invoke-static {}, Lcom/lostpixels/fieldservice/internal/report/ServiceReportManager;->getThreeLastMonthStartDate()Ljava/util/Calendar;

    move-result-object v5

    .line 746
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v6

    .line 748
    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v7

    sub-int/2addr v7, v8

    :goto_6
    if-ltz v7, :cond_16

    .line 749
    invoke-virtual {v4, v7}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Lcom/lostpixels/fieldservice/internal/report/ServiceSession;

    invoke-virtual {v9}, Lcom/lostpixels/fieldservice/internal/report/ServiceSession;->getDate()Ljava/util/Date;

    move-result-object v9

    invoke-virtual {v6, v9}, Ljava/util/Calendar;->setTime(Ljava/util/Date;)V

    .line 750
    invoke-virtual {v5, v6}, Ljava/util/Calendar;->after(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_15

    .line 751
    invoke-virtual {v4, v7}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    :cond_15
    add-int/lit8 v7, v7, -0x1

    goto :goto_6

    .line 755
    :cond_16
    new-instance v5, Lcom/lostpixels/fieldservice/utils/comparators/SessionDateCompare;

    invoke-direct {v5}, Lcom/lostpixels/fieldservice/utils/comparators/SessionDateCompare;-><init>()V

    invoke-static {v4, v5}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    .line 758
    new-instance v5, Ljava/util/ArrayList;

    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V

    .line 760
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v6

    .line 761
    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v7

    const/4 v9, -0x1

    const/4 v10, 0x0

    :goto_7
    if-ge v10, v7, :cond_19

    invoke-virtual {v4, v10}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v11

    add-int/lit8 v10, v10, 0x1

    check-cast v11, Lcom/lostpixels/fieldservice/internal/report/ServiceSession;

    .line 763
    invoke-virtual {v11}, Lcom/lostpixels/fieldservice/internal/report/ServiceSession;->getDate()Ljava/util/Date;

    move-result-object v12

    invoke-virtual {v6, v12}, Ljava/util/Calendar;->setTime(Ljava/util/Date;)V

    .line 765
    invoke-virtual {v6, v8}, Ljava/util/Calendar;->get(I)I

    move-result v12

    mul-int/lit8 v12, v12, 0x64

    invoke-virtual {v6, p1}, Ljava/util/Calendar;->get(I)I

    move-result v13

    add-int/2addr v12, v13

    if-eq v12, v9, :cond_18

    .line 766
    invoke-virtual {v6, v8}, Ljava/util/Calendar;->get(I)I

    move-result v9

    mul-int/lit8 v9, v9, 0x64

    invoke-virtual {v6, p1}, Ljava/util/Calendar;->get(I)I

    move-result v12

    add-int/2addr v9, v12

    .line 767
    invoke-virtual {v5}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v12

    if-nez v12, :cond_17

    .line 768
    invoke-virtual {v5, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Lcom/lostpixels/fieldservice/internal/report/ServiceSession;

    invoke-virtual {v12}, Lcom/lostpixels/fieldservice/internal/report/ServiceSession;->getDate()Ljava/util/Date;

    move-result-object v12

    invoke-virtual {p0, v0, v12}, Lcom/lostpixels/fieldservice/internal/report/ServiceReportManager;->getServiceYear(Lio/realm/Realm;Ljava/util/Date;)Lcom/lostpixels/fieldservice/internal/report/YearReport;

    move-result-object v12

    invoke-virtual {v5, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Lcom/lostpixels/fieldservice/internal/report/ServiceSession;

    invoke-virtual {v13}, Lcom/lostpixels/fieldservice/internal/report/ServiceSession;->getDate()Ljava/util/Date;

    move-result-object v13

    invoke-virtual {v12, v13}, Lcom/lostpixels/fieldservice/internal/report/YearReport;->getMonthReport(Ljava/util/Date;)Lcom/lostpixels/fieldservice/internal/report/MonthReport;

    move-result-object v12

    invoke-static {v12}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    invoke-virtual {v12, v5}, Lcom/lostpixels/fieldservice/internal/report/MonthReport;->setDailyItems(Ljava/util/ArrayList;)V

    .line 771
    :cond_17
    invoke-virtual {v5}, Ljava/util/ArrayList;->clear()V

    .line 773
    :cond_18
    invoke-virtual {v5, v11}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_7

    .line 776
    :cond_19
    invoke-virtual {v5}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v4

    if-nez v4, :cond_1a

    .line 777
    invoke-virtual {v5, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/lostpixels/fieldservice/internal/report/ServiceSession;

    invoke-virtual {v4}, Lcom/lostpixels/fieldservice/internal/report/ServiceSession;->getDate()Ljava/util/Date;

    move-result-object v4

    invoke-virtual {p0, v0, v4}, Lcom/lostpixels/fieldservice/internal/report/ServiceReportManager;->getServiceYear(Lio/realm/Realm;Ljava/util/Date;)Lcom/lostpixels/fieldservice/internal/report/YearReport;

    move-result-object v4

    invoke-virtual {v5, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/lostpixels/fieldservice/internal/report/ServiceSession;

    invoke-virtual {v3}, Lcom/lostpixels/fieldservice/internal/report/ServiceSession;->getDate()Ljava/util/Date;

    move-result-object v3

    invoke-virtual {v4, v3}, Lcom/lostpixels/fieldservice/internal/report/YearReport;->getMonthReport(Ljava/util/Date;)Lcom/lostpixels/fieldservice/internal/report/MonthReport;

    move-result-object v3

    invoke-static {v3}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    invoke-virtual {v3, v5}, Lcom/lostpixels/fieldservice/internal/report/MonthReport;->setDailyItems(Ljava/util/ArrayList;)V

    .line 782
    :cond_1a
    invoke-static {}, Lcom/lostpixels/fieldservice/internal/report/ServiceReportManager;->getThreeLastMonthStartDate()Ljava/util/Calendar;

    move-result-object v3

    .line 783
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v4

    .line 784
    invoke-virtual {v3}, Ljava/util/Calendar;->getTime()Ljava/util/Date;

    move-result-object v5

    invoke-static {v5}, Lcom/lostpixels/fieldservice/internal/report/ServiceReportManager;->date2ServiceYear(Ljava/util/Date;)Ljava/util/Date;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/util/Calendar;->setTime(Ljava/util/Date;)V

    .line 785
    invoke-virtual {v4, v8}, Ljava/util/Calendar;->get(I)I

    move-result v4

    .line 786
    invoke-virtual {p0}, Lcom/lostpixels/fieldservice/internal/report/ServiceReportManager;->realmGet$mlstServiceYears()Lio/realm/RealmList;

    move-result-object v5

    invoke-virtual {v5}, Lio/realm/RealmList;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :cond_1b
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_1d

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/lostpixels/fieldservice/internal/report/YearReport;

    .line 787
    invoke-virtual {v6}, Lcom/lostpixels/fieldservice/internal/report/YearReport;->getYear()I

    move-result v7

    if-ge v7, v4, :cond_1c

    .line 788
    invoke-virtual {v6}, Lcom/lostpixels/fieldservice/internal/report/YearReport;->realmGet$mlstMonths()Lio/realm/RealmList;

    move-result-object v6

    invoke-virtual {v6}, Lio/realm/RealmList;->iterator()Ljava/util/Iterator;

    move-result-object v6

    :goto_8
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_1b

    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/lostpixels/fieldservice/internal/report/MonthReport;

    .line 789
    invoke-virtual {v7}, Lcom/lostpixels/fieldservice/internal/report/MonthReport;->removeDailyItems()V

    goto :goto_8

    .line 791
    :cond_1c
    invoke-virtual {v6}, Lcom/lostpixels/fieldservice/internal/report/YearReport;->getYear()I

    move-result v7

    if-ne v7, v4, :cond_1b

    .line 792
    invoke-virtual {v3, p1}, Ljava/util/Calendar;->get(I)I

    move-result v7

    add-int/2addr v7, v8

    invoke-static {v7}, Lcom/lostpixels/fieldservice/internal/report/ServiceReportManager;->month2ServiceMonth(I)I

    move-result v7

    const/4 v9, 0x1

    :goto_9
    if-ge v9, v7, :cond_1b

    .line 795
    invoke-static {v9}, Lcom/lostpixels/fieldservice/internal/report/ServiceReportManager;->serviceMonth2Month(I)I

    move-result v10

    invoke-virtual {v6, v10}, Lcom/lostpixels/fieldservice/internal/report/YearReport;->getMonthReport(I)Lcom/lostpixels/fieldservice/internal/report/MonthReport;

    move-result-object v10

    invoke-static {v10}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    invoke-virtual {v10}, Lcom/lostpixels/fieldservice/internal/report/MonthReport;->removeDailyItems()V

    add-int/lit8 v9, v9, 0x1

    goto :goto_9

    .line 801
    :cond_1d
    invoke-virtual {p0}, Lcom/lostpixels/fieldservice/internal/report/ServiceReportManager;->realmGet$mlstServiceYears()Lio/realm/RealmList;

    move-result-object p1

    invoke-virtual {p1}, Lio/realm/RealmList;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_a
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1e

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/lostpixels/fieldservice/internal/report/YearReport;

    .line 802
    invoke-virtual {v3, v1}, Lcom/lostpixels/fieldservice/internal/report/YearReport;->updateToNewVersion(I)V

    goto :goto_a

    .line 804
    :cond_1e
    monitor-exit v2
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 813
    invoke-virtual {v0}, Lio/realm/Realm;->close()V

    return-void

    .line 804
    :goto_b
    :try_start_4
    monitor-exit v2
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    :try_start_5
    throw p1
    :try_end_5
    .catch Lcom/lostpixels/fieldservice/utils/FileVersionException; {:try_start_5 .. :try_end_5} :catch_1
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_0
    .catchall {:try_start_5 .. :try_end_5} :catchall_2

    :catchall_2
    move-exception p1

    goto :goto_f

    :catch_0
    move-exception p1

    goto :goto_c

    :catch_1
    move-exception p1

    goto :goto_e

    .line 808
    :goto_c
    :try_start_6
    const-string v1, "ServiceReportManager.loadFromFileRaw 1"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Exception cought: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 809
    invoke-virtual {p1}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/Throwable;->getCause()Ljava/lang/Throwable;

    move-result-object v3

    if-eqz v3, :cond_1f

    invoke-virtual {p1}, Ljava/lang/Throwable;->getCause()Ljava/lang/Throwable;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Throwable;->toString()Ljava/lang/String;

    move-result-object v3

    goto :goto_d

    :cond_1f
    const-string v3, ""

    :goto_d
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 808
    invoke-static {v1, v2}, Lcom/lostpixels/fieldservice/utils/LogToSD;->write(Ljava/lang/String;Ljava/lang/String;)V

    .line 810
    const-string v1, "Stacktrace"

    invoke-static {p1}, Lcom/lostpixels/fieldservice/helpfunctions/HelpFunctions;->getStackTrace(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/lostpixels/fieldservice/utils/LogToSD;->write(Ljava/lang/String;Ljava/lang/String;)V

    .line 811
    throw p1

    .line 806
    :goto_e
    throw p1
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_2

    .line 813
    :goto_f
    invoke-virtual {v0}, Lio/realm/Realm;->close()V

    .line 814
    throw p1
.end method

.method public static month2ServiceMonth(I)I
    .locals 1

    if-lez p0, :cond_1

    const/16 v0, 0xd

    if-ge p0, v0, :cond_1

    const/16 v0, 0x9

    if-ge p0, v0, :cond_0

    add-int/lit8 p0, p0, 0xc

    :cond_0
    add-int/lit8 p0, p0, -0x8

    return p0

    .line 130
    :cond_1
    new-instance p0, Ljava/lang/RuntimeException;

    invoke-direct {p0}, Ljava/lang/RuntimeException;-><init>()V

    throw p0
.end method

.method private saveToFileRaw(Lcom/fasterxml/jackson/core/JsonGenerator;)V
    .locals 3

    .line 627
    :try_start_0
    invoke-virtual {p1}, Lcom/fasterxml/jackson/core/JsonGenerator;->writeStartObject()V

    .line 628
    const-string v0, "FileVersion"

    invoke-static {}, Lcom/lostpixels/fieldservice/internal/report/ServiceReportManager;->getLatestFileVersion()I

    move-result v1

    invoke-virtual {p1, v0, v1}, Lcom/fasterxml/jackson/core/JsonGenerator;->writeNumberField(Ljava/lang/String;I)V

    .line 630
    const-string v0, "Years"

    invoke-virtual {p1, v0}, Lcom/fasterxml/jackson/core/JsonGenerator;->writeObjectFieldStart(Ljava/lang/String;)V

    .line 632
    invoke-virtual {p0}, Lcom/lostpixels/fieldservice/internal/report/ServiceReportManager;->realmGet$mlstServiceYears()Lio/realm/RealmList;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 633
    invoke-virtual {p0}, Lcom/lostpixels/fieldservice/internal/report/ServiceReportManager;->realmGet$mlstServiceYears()Lio/realm/RealmList;

    move-result-object v0

    monitor-enter v0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 634
    :try_start_1
    invoke-virtual {p0}, Lcom/lostpixels/fieldservice/internal/report/ServiceReportManager;->realmGet$mlstServiceYears()Lio/realm/RealmList;

    move-result-object v1

    invoke-virtual {v1}, Lio/realm/RealmList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/lostpixels/fieldservice/internal/report/YearReport;

    .line 635
    invoke-virtual {v2, p1}, Lcom/lostpixels/fieldservice/internal/report/YearReport;->saveToFileRaw(Lcom/fasterxml/jackson/core/JsonGenerator;)V

    goto :goto_0

    :catchall_0
    move-exception p1

    goto :goto_1

    .line 636
    :cond_0
    monitor-exit v0

    goto :goto_2

    :goto_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :try_start_2
    throw p1

    :catch_0
    move-exception p1

    goto/16 :goto_3

    .line 638
    :cond_1
    :goto_2
    invoke-virtual {p1}, Lcom/fasterxml/jackson/core/JsonGenerator;->writeEndObject()V

    .line 640
    invoke-virtual {p0}, Lcom/lostpixels/fieldservice/internal/report/ServiceReportManager;->realmGet$mCustom1()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_2

    .line 641
    const-string v0, "C1"

    invoke-virtual {p0}, Lcom/lostpixels/fieldservice/internal/report/ServiceReportManager;->realmGet$mCustom1()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Lcom/fasterxml/jackson/core/JsonGenerator;->writeStringField(Ljava/lang/String;Ljava/lang/String;)V

    .line 642
    :cond_2
    const-string v0, "Ct1"

    invoke-virtual {p0}, Lcom/lostpixels/fieldservice/internal/report/ServiceReportManager;->realmGet$customItem1IsTime()Z

    move-result v1

    invoke-virtual {p1, v0, v1}, Lcom/fasterxml/jackson/core/JsonGenerator;->writeBooleanField(Ljava/lang/String;Z)V

    .line 643
    const-string v0, "Cc1"

    invoke-virtual {p0}, Lcom/lostpixels/fieldservice/internal/report/ServiceReportManager;->realmGet$customItem1Caps()Z

    move-result v1

    invoke-virtual {p1, v0, v1}, Lcom/fasterxml/jackson/core/JsonGenerator;->writeBooleanField(Ljava/lang/String;Z)V

    .line 644
    invoke-virtual {p0}, Lcom/lostpixels/fieldservice/internal/report/ServiceReportManager;->realmGet$mCustom2()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_3

    .line 645
    const-string v0, "C2"

    invoke-virtual {p0}, Lcom/lostpixels/fieldservice/internal/report/ServiceReportManager;->realmGet$mCustom2()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Lcom/fasterxml/jackson/core/JsonGenerator;->writeStringField(Ljava/lang/String;Ljava/lang/String;)V

    .line 646
    :cond_3
    const-string v0, "Ct2"

    invoke-virtual {p0}, Lcom/lostpixels/fieldservice/internal/report/ServiceReportManager;->realmGet$customItem2IsTime()Z

    move-result v1

    invoke-virtual {p1, v0, v1}, Lcom/fasterxml/jackson/core/JsonGenerator;->writeBooleanField(Ljava/lang/String;Z)V

    .line 647
    const-string v0, "Cc2"

    invoke-virtual {p0}, Lcom/lostpixels/fieldservice/internal/report/ServiceReportManager;->realmGet$customItem2Caps()Z

    move-result v1

    invoke-virtual {p1, v0, v1}, Lcom/fasterxml/jackson/core/JsonGenerator;->writeBooleanField(Ljava/lang/String;Z)V

    .line 648
    invoke-virtual {p0}, Lcom/lostpixels/fieldservice/internal/report/ServiceReportManager;->realmGet$mCustom3()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_4

    .line 649
    const-string v0, "C3"

    invoke-virtual {p0}, Lcom/lostpixels/fieldservice/internal/report/ServiceReportManager;->realmGet$mCustom3()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Lcom/fasterxml/jackson/core/JsonGenerator;->writeStringField(Ljava/lang/String;Ljava/lang/String;)V

    .line 650
    :cond_4
    const-string v0, "Ct3"

    invoke-virtual {p0}, Lcom/lostpixels/fieldservice/internal/report/ServiceReportManager;->realmGet$customItem3IsTime()Z

    move-result v1

    invoke-virtual {p1, v0, v1}, Lcom/fasterxml/jackson/core/JsonGenerator;->writeBooleanField(Ljava/lang/String;Z)V

    .line 651
    const-string v0, "Cc3"

    invoke-virtual {p0}, Lcom/lostpixels/fieldservice/internal/report/ServiceReportManager;->realmGet$customItem3Caps()Z

    move-result v1

    invoke-virtual {p1, v0, v1}, Lcom/fasterxml/jackson/core/JsonGenerator;->writeBooleanField(Ljava/lang/String;Z)V

    .line 652
    invoke-virtual {p0}, Lcom/lostpixels/fieldservice/internal/report/ServiceReportManager;->realmGet$mCustomDate()Ljava/util/Date;

    move-result-object v0

    if-eqz v0, :cond_5

    .line 653
    const-string v0, "CD"

    invoke-virtual {p0}, Lcom/lostpixels/fieldservice/internal/report/ServiceReportManager;->realmGet$mCustomDate()Ljava/util/Date;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/Date;->getTime()J

    move-result-wide v1

    invoke-virtual {p1, v0, v1, v2}, Lcom/fasterxml/jackson/core/JsonGenerator;->writeNumberField(Ljava/lang/String;J)V

    .line 655
    :cond_5
    invoke-virtual {p1}, Lcom/fasterxml/jackson/core/JsonGenerator;->writeEndObject()V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    return-void

    .line 657
    :goto_3
    const-string v0, "ServiceReportManager.saveToFileRaw 1"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Exception cought: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 658
    invoke-virtual {p1}, Ljava/lang/Throwable;->getCause()Ljava/lang/Throwable;

    move-result-object v2

    if-eqz v2, :cond_6

    invoke-virtual {p1}, Ljava/lang/Throwable;->getCause()Ljava/lang/Throwable;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Throwable;->toString()Ljava/lang/String;

    move-result-object v2

    goto :goto_4

    :cond_6
    const-string v2, ""

    :goto_4
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 657
    invoke-static {v0, v1}, Lcom/lostpixels/fieldservice/utils/LogToSD;->write(Ljava/lang/String;Ljava/lang/String;)V

    .line 659
    const-string v0, "Stacktrace"

    invoke-static {p1}, Lcom/lostpixels/fieldservice/helpfunctions/HelpFunctions;->getStackTrace(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/lostpixels/fieldservice/utils/LogToSD;->write(Ljava/lang/String;Ljava/lang/String;)V

    .line 660
    throw p1
.end method

.method public static serviceFileExists(Landroid/content/Context;)Z
    .locals 4

    .line 108
    new-instance v0, Ljava/io/File;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Landroid/content/Context;->getFilesDir()Ljava/io/File;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v2, "/"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, "Service.bin"

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 109
    new-instance v1, Ljava/io/File;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Landroid/content/Context;->getFilesDir()Ljava/io/File;

    move-result-object p0

    invoke-virtual {v3, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p0, "Service.obj"

    invoke-virtual {v3, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {v1, p0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 110
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

.method public static serviceMonth2Month(I)I
    .locals 2

    if-lez p0, :cond_1

    const/16 v0, 0xd

    if-ge p0, v0, :cond_1

    add-int/lit8 v0, p0, 0x8

    const/16 v1, 0xc

    if-le v0, v1, :cond_0

    add-int/lit8 p0, p0, -0x4

    return p0

    :cond_0
    return v0

    .line 145
    :cond_1
    new-instance p0, Ljava/lang/RuntimeException;

    invoke-direct {p0}, Ljava/lang/RuntimeException;-><init>()V

    throw p0
.end method

.method public static serviceYear2Year(II)I
    .locals 1

    const/16 v0, 0x9

    if-lt p1, v0, :cond_0

    add-int/lit8 p0, p0, -0x1

    :cond_0
    return p0
.end method


# virtual methods
.method public getCustom1()Ljava/lang/String;
    .locals 1

    .line 257
    invoke-virtual {p0}, Lcom/lostpixels/fieldservice/internal/report/ServiceReportManager;->realmGet$mCustom1()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getCustom2()Ljava/lang/String;
    .locals 1

    .line 341
    invoke-virtual {p0}, Lcom/lostpixels/fieldservice/internal/report/ServiceReportManager;->realmGet$mCustom2()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getCustom3()Ljava/lang/String;
    .locals 1

    .line 383
    invoke-virtual {p0}, Lcom/lostpixels/fieldservice/internal/report/ServiceReportManager;->realmGet$mCustom3()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getLastThreeMonthSession(Lio/realm/Realm;Ljava/util/Date;)Lcom/lostpixels/fieldservice/internal/report/ServiceSession;
    .locals 4

    .line 229
    new-instance v0, Lcom/lostpixels/fieldservice/utils/comparators/DateCompare;

    invoke-direct {v0}, Lcom/lostpixels/fieldservice/utils/comparators/DateCompare;-><init>()V

    .line 231
    invoke-virtual {p0, p1, p2}, Lcom/lostpixels/fieldservice/internal/report/ServiceReportManager;->getServiceYear(Lio/realm/Realm;Ljava/util/Date;)Lcom/lostpixels/fieldservice/internal/report/YearReport;

    move-result-object p1

    invoke-virtual {p1, p2}, Lcom/lostpixels/fieldservice/internal/report/YearReport;->getMonthReport(Ljava/util/Date;)Lcom/lostpixels/fieldservice/internal/report/MonthReport;

    move-result-object p1

    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    invoke-virtual {p1}, Lcom/lostpixels/fieldservice/internal/report/MonthReport;->getDailyItems()Ljava/util/List;

    move-result-object p1

    const/4 v1, 0x0

    if-eqz p1, :cond_2

    .line 234
    monitor-enter p1

    const/4 v2, 0x0

    .line 235
    :goto_0
    :try_start_0
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v3

    if-ge v2, v3, :cond_1

    .line 236
    invoke-interface {p1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/lostpixels/fieldservice/internal/report/ServiceSession;

    invoke-virtual {v3}, Lcom/lostpixels/fieldservice/internal/report/ServiceSession;->getDate()Ljava/util/Date;

    move-result-object v3

    invoke-static {v3}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    invoke-virtual {v0, p2, v3}, Lcom/lostpixels/fieldservice/utils/comparators/DateCompare;->compare(Ljava/util/Date;Ljava/util/Date;)I

    move-result v3

    if-nez v3, :cond_0

    .line 237
    invoke-interface {p1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p2

    move-object v1, p2

    check-cast v1, Lcom/lostpixels/fieldservice/internal/report/ServiceSession;

    goto :goto_1

    :catchall_0
    move-exception p2

    goto :goto_2

    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 241
    :cond_1
    :goto_1
    monitor-exit p1

    return-object v1

    :goto_2
    monitor-exit p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p2

    :cond_2
    return-object v1
.end method

.method public getLastThreeMonths(Lio/realm/Realm;)Ljava/util/List;
    .locals 1

    const/4 v0, 0x0

    .line 466
    invoke-virtual {p0, p1, v0}, Lcom/lostpixels/fieldservice/internal/report/ServiceReportManager;->getLastThreeMonths(Lio/realm/Realm;Z)Ljava/util/List;

    move-result-object p1

    return-object p1
.end method

.method public getLastThreeMonths(Lio/realm/Realm;Z)Ljava/util/List;
    .locals 6

    .line 471
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 472
    invoke-static {}, Lcom/lostpixels/fieldservice/internal/report/ServiceReportManager;->getThreeLastMonthStartDate()Ljava/util/Calendar;

    move-result-object v1

    .line 473
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v2

    const/4 v3, 0x1

    if-eqz p2, :cond_0

    .line 475
    invoke-virtual {v2, v3, v3}, Ljava/util/Calendar;->add(II)V

    :cond_0
    const/4 p2, 0x2

    .line 476
    invoke-virtual {v2, p2, v3}, Ljava/util/Calendar;->add(II)V

    const/4 v4, 0x5

    .line 477
    invoke-virtual {v2, v4, v3}, Ljava/util/Calendar;->set(II)V

    const/16 v4, 0xb

    const/4 v5, 0x0

    .line 478
    invoke-virtual {v2, v4, v5}, Ljava/util/Calendar;->set(II)V

    const/16 v4, 0xc

    .line 479
    invoke-virtual {v2, v4, v5}, Ljava/util/Calendar;->set(II)V

    const/16 v4, 0xd

    .line 480
    invoke-virtual {v2, v4, v5}, Ljava/util/Calendar;->set(II)V

    .line 481
    :goto_0
    invoke-virtual {v1, v2}, Ljava/util/Calendar;->before(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_2

    .line 482
    invoke-virtual {v1}, Ljava/util/Calendar;->getTime()Ljava/util/Date;

    move-result-object v4

    invoke-virtual {p0, p1, v4}, Lcom/lostpixels/fieldservice/internal/report/ServiceReportManager;->getServiceYear(Lio/realm/Realm;Ljava/util/Date;)Lcom/lostpixels/fieldservice/internal/report/YearReport;

    move-result-object v4

    invoke-virtual {v1}, Ljava/util/Calendar;->getTime()Ljava/util/Date;

    move-result-object v5

    invoke-virtual {v4, v5}, Lcom/lostpixels/fieldservice/internal/report/YearReport;->getMonthReport(Ljava/util/Date;)Lcom/lostpixels/fieldservice/internal/report/MonthReport;

    move-result-object v4

    invoke-static {v4}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    invoke-virtual {v4}, Lcom/lostpixels/fieldservice/internal/report/MonthReport;->getDailyItems()Ljava/util/List;

    move-result-object v4

    if-eqz v4, :cond_1

    .line 484
    invoke-virtual {v0, v4}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    .line 486
    :cond_1
    invoke-virtual {v1, p2, v3}, Ljava/util/Calendar;->add(II)V

    goto :goto_0

    .line 489
    :cond_2
    new-instance p1, Lcom/lostpixels/fieldservice/utils/comparators/SessionDateCompare;

    invoke-direct {p1}, Lcom/lostpixels/fieldservice/utils/comparators/SessionDateCompare;-><init>()V

    invoke-static {v0, p1}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    .line 490
    invoke-static {v0}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object p1

    return-object p1
.end method

.method public getServiceYear(Lio/realm/Realm;I)Lcom/lostpixels/fieldservice/internal/report/YearReport;
    .locals 4

    .line 441
    const-class v0, Lcom/lostpixels/fieldservice/internal/report/YearReport;

    invoke-virtual {p1, v0}, Lio/realm/Realm;->where(Ljava/lang/Class;)Lio/realm/RealmQuery;

    move-result-object v1

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    const-string v3, "miYear"

    invoke-virtual {v1, v3, v2}, Lio/realm/RealmQuery;->equalTo(Ljava/lang/String;Ljava/lang/Integer;)Lio/realm/RealmQuery;

    move-result-object v1

    invoke-virtual {v1}, Lio/realm/RealmQuery;->findFirst()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/lostpixels/fieldservice/internal/report/YearReport;

    if-nez v1, :cond_0

    .line 448
    new-instance v1, Lcom/lostpixels/fieldservice/internal/report/ServiceReportManager$13;

    invoke-direct {v1, p0, p2, p1}, Lcom/lostpixels/fieldservice/internal/report/ServiceReportManager$13;-><init>(Lcom/lostpixels/fieldservice/internal/report/ServiceReportManager;ILio/realm/Realm;)V

    invoke-static {v1}, Lcom/lostpixels/fieldservice/realm/RealmHelper;->write(Lcom/lostpixels/fieldservice/realm/RealmHelper$Writer;)Z

    .line 457
    invoke-virtual {p1, v0}, Lio/realm/Realm;->where(Ljava/lang/Class;)Lio/realm/RealmQuery;

    move-result-object p1

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    invoke-virtual {p1, v3, p2}, Lio/realm/RealmQuery;->equalTo(Ljava/lang/String;Ljava/lang/Integer;)Lio/realm/RealmQuery;

    move-result-object p1

    invoke-virtual {p1}, Lio/realm/RealmQuery;->findFirst()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/lostpixels/fieldservice/internal/report/YearReport;

    return-object p1

    :cond_0
    return-object v1
.end method

.method public getServiceYear(Lio/realm/Realm;Ljava/util/Date;)Lcom/lostpixels/fieldservice/internal/report/YearReport;
    .locals 1

    .line 430
    new-instance v0, Ljava/util/GregorianCalendar;

    invoke-direct {v0}, Ljava/util/GregorianCalendar;-><init>()V

    .line 431
    invoke-static {p2}, Lcom/lostpixels/fieldservice/internal/report/ServiceReportManager;->date2ServiceYear(Ljava/util/Date;)Ljava/util/Date;

    move-result-object p2

    invoke-virtual {v0, p2}, Ljava/util/Calendar;->setTime(Ljava/util/Date;)V

    const/4 p2, 0x1

    .line 432
    invoke-virtual {v0, p2}, Ljava/util/Calendar;->get(I)I

    move-result p2

    invoke-virtual {p0, p1, p2}, Lcom/lostpixels/fieldservice/internal/report/ServiceReportManager;->getServiceYear(Lio/realm/Realm;I)Lcom/lostpixels/fieldservice/internal/report/YearReport;

    move-result-object p1

    return-object p1
.end method

.method public isAnyCustomItemTime()Z
    .locals 1

    .line 425
    invoke-virtual {p0}, Lcom/lostpixels/fieldservice/internal/report/ServiceReportManager;->realmGet$customItem1IsTime()Z

    move-result v0

    if-nez v0, :cond_1

    invoke-virtual {p0}, Lcom/lostpixels/fieldservice/internal/report/ServiceReportManager;->realmGet$customItem2IsTime()Z

    move-result v0

    if-nez v0, :cond_1

    invoke-virtual {p0}, Lcom/lostpixels/fieldservice/internal/report/ServiceReportManager;->realmGet$customItem3IsTime()Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    return v0

    :cond_1
    :goto_0
    const/4 v0, 0x1

    return v0
.end method

.method public isCustomItem1Caps()Z
    .locals 1

    .line 271
    invoke-virtual {p0}, Lcom/lostpixels/fieldservice/internal/report/ServiceReportManager;->realmGet$customItem1Caps()Z

    move-result v0

    return v0
.end method

.method public isCustomItem1IsTime()Z
    .locals 1

    .line 327
    invoke-virtual {p0}, Lcom/lostpixels/fieldservice/internal/report/ServiceReportManager;->realmGet$customItem1IsTime()Z

    move-result v0

    return v0
.end method

.method public isCustomItem2Caps()Z
    .locals 1

    .line 355
    invoke-virtual {p0}, Lcom/lostpixels/fieldservice/internal/report/ServiceReportManager;->realmGet$customItem2Caps()Z

    move-result v0

    return v0
.end method

.method public isCustomItem2IsTime()Z
    .locals 1

    .line 369
    invoke-virtual {p0}, Lcom/lostpixels/fieldservice/internal/report/ServiceReportManager;->realmGet$customItem2IsTime()Z

    move-result v0

    return v0
.end method

.method public isCustomItem3Caps()Z
    .locals 1

    .line 397
    invoke-virtual {p0}, Lcom/lostpixels/fieldservice/internal/report/ServiceReportManager;->realmGet$customItem3Caps()Z

    move-result v0

    return v0
.end method

.method public isCustomItem3IsTime()Z
    .locals 1

    .line 411
    invoke-virtual {p0}, Lcom/lostpixels/fieldservice/internal/report/ServiceReportManager;->realmGet$customItem3IsTime()Z

    move-result v0

    return v0
.end method

.method public isFileLoaded()Z
    .locals 1

    .line 223
    iget-boolean v0, p0, Lcom/lostpixels/fieldservice/internal/report/ServiceReportManager;->mbFileLoaded:Z

    return v0
.end method

.method public isUsingCustom1()Z
    .locals 1

    .line 285
    invoke-virtual {p0}, Lcom/lostpixels/fieldservice/internal/report/ServiceReportManager;->realmGet$usingCustom1()Z

    move-result v0

    return v0
.end method

.method public isUsingCustom2()Z
    .locals 1

    .line 299
    invoke-virtual {p0}, Lcom/lostpixels/fieldservice/internal/report/ServiceReportManager;->realmGet$usingCustom2()Z

    move-result v0

    return v0
.end method

.method public isUsingCustom3()Z
    .locals 1

    .line 313
    invoke-virtual {p0}, Lcom/lostpixels/fieldservice/internal/report/ServiceReportManager;->realmGet$usingCustom3()Z

    move-result v0

    return v0
.end method

.method public loadFromDataStream(Lcom/lostpixels/fieldservice/utils/ObjectDataInputStream;)Z
    .locals 6

    .line 558
    const-string v0, " "

    invoke-static {}, Lio/realm/Realm;->getDefaultInstance()Lio/realm/Realm;

    move-result-object v1

    const/4 v2, 0x0

    .line 560
    :try_start_0
    invoke-static {}, Lcom/lostpixels/fieldservice/utils/PerfToSD;->start()V

    .line 562
    invoke-virtual {v1}, Lio/realm/Realm;->beginTransaction()V

    .line 563
    invoke-direct {p0, p1}, Lcom/lostpixels/fieldservice/internal/report/ServiceReportManager;->loadFromDataStreamInternal(Lcom/lostpixels/fieldservice/utils/ObjectDataInputStream;)V

    .line 564
    invoke-virtual {v1}, Lio/realm/Realm;->commitTransaction()V

    .line 566
    const-string p1, "loadFromDataStream"

    invoke-static {p1}, Lcom/lostpixels/fieldservice/utils/PerfToSD;->stop(Ljava/lang/String;)V
    :try_end_0
    .catch Lcom/lostpixels/fieldservice/utils/FileVersionException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 584
    invoke-virtual {v1}, Lio/realm/Realm;->close()V

    const/4 p1, 0x1

    .line 586
    iput-boolean p1, p0, Lcom/lostpixels/fieldservice/internal/report/ServiceReportManager;->mbFileLoaded:Z

    return p1

    :catchall_0
    move-exception p1

    goto :goto_3

    :catch_0
    move-exception p1

    goto :goto_0

    :catch_1
    move-exception p1

    goto :goto_2

    .line 572
    :goto_0
    :try_start_1
    iput-boolean v2, p0, Lcom/lostpixels/fieldservice/internal/report/ServiceReportManager;->mbFileLoaded:Z

    .line 573
    const-string v3, "ServiceReportManager.loadFromDataStream 1 "

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 574
    invoke-virtual {p1}, Ljava/lang/Throwable;->getCause()Ljava/lang/Throwable;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {p1}, Ljava/lang/Throwable;->getCause()Ljava/lang/Throwable;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v0

    goto :goto_1

    :cond_0
    const-string v0, ""

    :goto_1
    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 573
    invoke-static {v3, v0}, Lcom/lostpixels/fieldservice/utils/LogToSD;->write(Ljava/lang/String;Ljava/lang/String;)V

    .line 575
    instance-of v0, p1, Ljava/lang/IllegalStateException;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    if-nez v0, :cond_1

    .line 577
    :try_start_2
    invoke-static {}, Lcom/google/firebase/crashlytics/FirebaseCrashlytics;->getInstance()Lcom/google/firebase/crashlytics/FirebaseCrashlytics;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/google/firebase/crashlytics/FirebaseCrashlytics;->recordException(Ljava/lang/Throwable;)V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 581
    :catch_2
    :cond_1
    :try_start_3
    invoke-virtual {v1}, Lio/realm/Realm;->cancelTransaction()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 584
    invoke-virtual {v1}, Lio/realm/Realm;->close()V

    return v2

    .line 568
    :goto_2
    :try_start_4
    iput-boolean v2, p0, Lcom/lostpixels/fieldservice/internal/report/ServiceReportManager;->mbFileLoaded:Z

    .line 569
    invoke-virtual {v1}, Lio/realm/Realm;->cancelTransaction()V

    .line 570
    throw p1
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    .line 584
    :goto_3
    invoke-virtual {v1}, Lio/realm/Realm;->close()V

    .line 585
    throw p1
.end method

.method public loadFromFile(Lcom/fasterxml/jackson/core/JsonParser;)Z
    .locals 6

    .line 521
    const-string v0, " "

    invoke-static {}, Lio/realm/Realm;->getDefaultInstance()Lio/realm/Realm;

    move-result-object v1

    const/4 v2, 0x0

    .line 523
    :try_start_0
    invoke-static {}, Lcom/lostpixels/fieldservice/utils/PerfToSD;->start()V

    .line 525
    invoke-virtual {v1}, Lio/realm/Realm;->beginTransaction()V

    .line 526
    invoke-direct {p0, p1}, Lcom/lostpixels/fieldservice/internal/report/ServiceReportManager;->loadFromFileRaw(Lcom/fasterxml/jackson/core/JsonParser;)V

    .line 527
    invoke-virtual {v1}, Lio/realm/Realm;->isInTransaction()Z

    move-result p1

    if-eqz p1, :cond_0

    .line 529
    invoke-virtual {v1}, Lio/realm/Realm;->commitTransaction()V

    .line 532
    const-string p1, "LoadFrom Smile file"

    invoke-static {p1}, Lcom/lostpixels/fieldservice/utils/PerfToSD;->stop(Ljava/lang/String;)V
    :try_end_0
    .catch Lcom/lostpixels/fieldservice/utils/FileVersionException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 550
    invoke-virtual {v1}, Lio/realm/Realm;->close()V

    const/4 p1, 0x1

    .line 553
    iput-boolean p1, p0, Lcom/lostpixels/fieldservice/internal/report/ServiceReportManager;->mbFileLoaded:Z

    return p1

    :catchall_0
    move-exception p1

    goto :goto_3

    :catch_0
    move-exception p1

    goto :goto_0

    :catch_1
    move-exception p1

    goto :goto_2

    .line 528
    :cond_0
    :try_start_1
    new-instance p1, Ljava/lang/RuntimeException;

    invoke-direct {p1}, Ljava/lang/RuntimeException;-><init>()V

    throw p1
    :try_end_1
    .catch Lcom/lostpixels/fieldservice/utils/FileVersionException; {:try_start_1 .. :try_end_1} :catch_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 538
    :goto_0
    :try_start_2
    iput-boolean v2, p0, Lcom/lostpixels/fieldservice/internal/report/ServiceReportManager;->mbFileLoaded:Z

    .line 539
    const-string v3, "ServiceReportManager.loadFromFileRaw 1 "

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 540
    invoke-virtual {p1}, Ljava/lang/Throwable;->getCause()Ljava/lang/Throwable;

    move-result-object v0

    if-eqz v0, :cond_1

    invoke-virtual {p1}, Ljava/lang/Throwable;->getCause()Ljava/lang/Throwable;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v0

    goto :goto_1

    :cond_1
    const-string v0, ""

    :goto_1
    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 539
    invoke-static {v3, v0}, Lcom/lostpixels/fieldservice/utils/LogToSD;->write(Ljava/lang/String;Ljava/lang/String;)V

    .line 541
    instance-of v0, p1, Ljava/lang/IllegalStateException;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    if-nez v0, :cond_2

    .line 543
    :try_start_3
    invoke-static {}, Lcom/google/firebase/crashlytics/FirebaseCrashlytics;->getInstance()Lcom/google/firebase/crashlytics/FirebaseCrashlytics;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/google/firebase/crashlytics/FirebaseCrashlytics;->recordException(Ljava/lang/Throwable;)V
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_2
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 547
    :catch_2
    :cond_2
    :try_start_4
    invoke-virtual {v1}, Lio/realm/Realm;->cancelTransaction()V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    .line 550
    invoke-virtual {v1}, Lio/realm/Realm;->close()V

    return v2

    .line 534
    :goto_2
    :try_start_5
    iput-boolean v2, p0, Lcom/lostpixels/fieldservice/internal/report/ServiceReportManager;->mbFileLoaded:Z

    .line 535
    invoke-virtual {v1}, Lio/realm/Realm;->cancelTransaction()V

    .line 536
    throw p1
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    .line 550
    :goto_3
    invoke-virtual {v1}, Lio/realm/Realm;->close()V

    .line 551
    throw p1
.end method

.method public merge(Lcom/fasterxml/jackson/core/JsonParser;)Z
    .locals 1

    .line 818
    new-instance v0, Lcom/lostpixels/fieldservice/internal/report/ServiceReportManager;

    invoke-direct {v0}, Lcom/lostpixels/fieldservice/internal/report/ServiceReportManager;-><init>()V

    .line 819
    invoke-direct {v0, p1}, Lcom/lostpixels/fieldservice/internal/report/ServiceReportManager;->loadFromFileRaw(Lcom/fasterxml/jackson/core/JsonParser;)V

    .line 820
    new-instance p1, Lcom/lostpixels/fieldservice/internal/report/ServiceReportManager$14;

    invoke-direct {p1, p0, v0}, Lcom/lostpixels/fieldservice/internal/report/ServiceReportManager$14;-><init>(Lcom/lostpixels/fieldservice/internal/report/ServiceReportManager;Lcom/lostpixels/fieldservice/internal/report/ServiceReportManager;)V

    invoke-static {p1}, Lcom/lostpixels/fieldservice/realm/RealmHelper;->write(Lcom/lostpixels/fieldservice/realm/RealmHelper$Writer;)Z

    const/4 p1, 0x1

    return p1
.end method

.method public realmGet$customItem1Caps()Z
    .locals 1

    iget-boolean v0, p0, Lcom/lostpixels/fieldservice/internal/report/ServiceReportManager;->customItem1Caps:Z

    return v0
.end method

.method public realmGet$customItem1IsTime()Z
    .locals 1

    iget-boolean v0, p0, Lcom/lostpixels/fieldservice/internal/report/ServiceReportManager;->customItem1IsTime:Z

    return v0
.end method

.method public realmGet$customItem2Caps()Z
    .locals 1

    iget-boolean v0, p0, Lcom/lostpixels/fieldservice/internal/report/ServiceReportManager;->customItem2Caps:Z

    return v0
.end method

.method public realmGet$customItem2IsTime()Z
    .locals 1

    iget-boolean v0, p0, Lcom/lostpixels/fieldservice/internal/report/ServiceReportManager;->customItem2IsTime:Z

    return v0
.end method

.method public realmGet$customItem3Caps()Z
    .locals 1

    iget-boolean v0, p0, Lcom/lostpixels/fieldservice/internal/report/ServiceReportManager;->customItem3Caps:Z

    return v0
.end method

.method public realmGet$customItem3IsTime()Z
    .locals 1

    iget-boolean v0, p0, Lcom/lostpixels/fieldservice/internal/report/ServiceReportManager;->customItem3IsTime:Z

    return v0
.end method

.method public realmGet$id()J
    .locals 2

    iget-wide v0, p0, Lcom/lostpixels/fieldservice/internal/report/ServiceReportManager;->id:J

    return-wide v0
.end method

.method public realmGet$mCustom1()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/lostpixels/fieldservice/internal/report/ServiceReportManager;->mCustom1:Ljava/lang/String;

    return-object v0
.end method

.method public realmGet$mCustom2()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/lostpixels/fieldservice/internal/report/ServiceReportManager;->mCustom2:Ljava/lang/String;

    return-object v0
.end method

.method public realmGet$mCustom3()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/lostpixels/fieldservice/internal/report/ServiceReportManager;->mCustom3:Ljava/lang/String;

    return-object v0
.end method

.method public realmGet$mCustomDate()Ljava/util/Date;
    .locals 1

    iget-object v0, p0, Lcom/lostpixels/fieldservice/internal/report/ServiceReportManager;->mCustomDate:Ljava/util/Date;

    return-object v0
.end method

.method public realmGet$mlstServiceYears()Lio/realm/RealmList;
    .locals 1

    iget-object v0, p0, Lcom/lostpixels/fieldservice/internal/report/ServiceReportManager;->mlstServiceYears:Lio/realm/RealmList;

    return-object v0
.end method

.method public realmGet$usingCustom1()Z
    .locals 1

    iget-boolean v0, p0, Lcom/lostpixels/fieldservice/internal/report/ServiceReportManager;->usingCustom1:Z

    return v0
.end method

.method public realmGet$usingCustom2()Z
    .locals 1

    iget-boolean v0, p0, Lcom/lostpixels/fieldservice/internal/report/ServiceReportManager;->usingCustom2:Z

    return v0
.end method

.method public realmGet$usingCustom3()Z
    .locals 1

    iget-boolean v0, p0, Lcom/lostpixels/fieldservice/internal/report/ServiceReportManager;->usingCustom3:Z

    return v0
.end method

.method public realmSet$customItem1Caps(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/lostpixels/fieldservice/internal/report/ServiceReportManager;->customItem1Caps:Z

    return-void
.end method

.method public realmSet$customItem1IsTime(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/lostpixels/fieldservice/internal/report/ServiceReportManager;->customItem1IsTime:Z

    return-void
.end method

.method public realmSet$customItem2Caps(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/lostpixels/fieldservice/internal/report/ServiceReportManager;->customItem2Caps:Z

    return-void
.end method

.method public realmSet$customItem2IsTime(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/lostpixels/fieldservice/internal/report/ServiceReportManager;->customItem2IsTime:Z

    return-void
.end method

.method public realmSet$customItem3Caps(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/lostpixels/fieldservice/internal/report/ServiceReportManager;->customItem3Caps:Z

    return-void
.end method

.method public realmSet$customItem3IsTime(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/lostpixels/fieldservice/internal/report/ServiceReportManager;->customItem3IsTime:Z

    return-void
.end method

.method public realmSet$id(J)V
    .locals 0

    iput-wide p1, p0, Lcom/lostpixels/fieldservice/internal/report/ServiceReportManager;->id:J

    return-void
.end method

.method public realmSet$mCustom1(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/lostpixels/fieldservice/internal/report/ServiceReportManager;->mCustom1:Ljava/lang/String;

    return-void
.end method

.method public realmSet$mCustom2(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/lostpixels/fieldservice/internal/report/ServiceReportManager;->mCustom2:Ljava/lang/String;

    return-void
.end method

.method public realmSet$mCustom3(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/lostpixels/fieldservice/internal/report/ServiceReportManager;->mCustom3:Ljava/lang/String;

    return-void
.end method

.method public realmSet$mCustomDate(Ljava/util/Date;)V
    .locals 0

    iput-object p1, p0, Lcom/lostpixels/fieldservice/internal/report/ServiceReportManager;->mCustomDate:Ljava/util/Date;

    return-void
.end method

.method public realmSet$mlstServiceYears(Lio/realm/RealmList;)V
    .locals 0

    iput-object p1, p0, Lcom/lostpixels/fieldservice/internal/report/ServiceReportManager;->mlstServiceYears:Lio/realm/RealmList;

    return-void
.end method

.method public realmSet$usingCustom1(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/lostpixels/fieldservice/internal/report/ServiceReportManager;->usingCustom1:Z

    return-void
.end method

.method public realmSet$usingCustom2(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/lostpixels/fieldservice/internal/report/ServiceReportManager;->usingCustom2:Z

    return-void
.end method

.method public realmSet$usingCustom3(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/lostpixels/fieldservice/internal/report/ServiceReportManager;->usingCustom3:Z

    return-void
.end method

.method public saveToFile(Lcom/fasterxml/jackson/core/JsonGenerator;)Z
    .locals 5

    .line 497
    :try_start_0
    invoke-static {}, Lcom/lostpixels/fieldservice/utils/PerfToSD;->start()V

    .line 498
    invoke-direct {p0, p1}, Lcom/lostpixels/fieldservice/internal/report/ServiceReportManager;->saveToFileRaw(Lcom/fasterxml/jackson/core/JsonGenerator;)V

    .line 499
    const-string p1, "Save service"

    invoke-static {p1}, Lcom/lostpixels/fieldservice/utils/PerfToSD;->stop(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    const/4 p1, 0x1

    return p1

    :catch_0
    move-exception p1

    .line 502
    const-string v0, "ServiceReportManager.saveToFileRaw 1"

    invoke-virtual {p1}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/lostpixels/fieldservice/utils/LogToSD;->write(Ljava/lang/String;Ljava/lang/String;)V

    .line 504
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    sget-wide v2, Lcom/lostpixels/fieldservice/internal/report/ServiceReportManager;->lastReportTime:J

    sub-long/2addr v0, v2

    const-wide/32 v2, 0x2932e00

    cmp-long v4, v0, v2

    if-lez v4, :cond_1

    .line 505
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    sput-wide v0, Lcom/lostpixels/fieldservice/internal/report/ServiceReportManager;->lastReportTime:J

    .line 506
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

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 507
    invoke-virtual {p1}, Ljava/lang/Throwable;->getCause()Ljava/lang/Throwable;

    move-result-object v1

    if-eqz v1, :cond_0

    invoke-virtual {p1}, Ljava/lang/Throwable;->getCause()Ljava/lang/Throwable;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v1

    goto :goto_0

    :cond_0
    const-string v1, ""

    :goto_0
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 506
    const-string v1, "ServiceReportManager.saveToFileRaw 1 "

    invoke-static {v1, v0}, Lcom/lostpixels/fieldservice/utils/LogToSD;->write(Ljava/lang/String;Ljava/lang/String;)V

    .line 509
    :try_start_1
    invoke-static {}, Lcom/google/firebase/crashlytics/FirebaseCrashlytics;->getInstance()Lcom/google/firebase/crashlytics/FirebaseCrashlytics;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/google/firebase/crashlytics/FirebaseCrashlytics;->recordException(Ljava/lang/Throwable;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    :catch_1
    :cond_1
    const/4 p1, 0x0

    return p1
.end method

.method public setCustom1(Ljava/lang/String;)V
    .locals 1

    .line 261
    new-instance v0, Lcom/lostpixels/fieldservice/internal/report/ServiceReportManager$1;

    invoke-direct {v0, p0, p1}, Lcom/lostpixels/fieldservice/internal/report/ServiceReportManager$1;-><init>(Lcom/lostpixels/fieldservice/internal/report/ServiceReportManager;Ljava/lang/String;)V

    invoke-static {v0}, Lcom/lostpixels/fieldservice/realm/RealmHelper;->write(Lcom/lostpixels/fieldservice/realm/RealmHelper$Writer;)Z

    return-void
.end method

.method public setCustom2(Ljava/lang/String;)V
    .locals 1

    .line 345
    new-instance v0, Lcom/lostpixels/fieldservice/internal/report/ServiceReportManager$7;

    invoke-direct {v0, p0, p1}, Lcom/lostpixels/fieldservice/internal/report/ServiceReportManager$7;-><init>(Lcom/lostpixels/fieldservice/internal/report/ServiceReportManager;Ljava/lang/String;)V

    invoke-static {v0}, Lcom/lostpixels/fieldservice/realm/RealmHelper;->write(Lcom/lostpixels/fieldservice/realm/RealmHelper$Writer;)Z

    return-void
.end method

.method public setCustom3(Ljava/lang/String;)V
    .locals 1

    .line 387
    new-instance v0, Lcom/lostpixels/fieldservice/internal/report/ServiceReportManager$10;

    invoke-direct {v0, p0, p1}, Lcom/lostpixels/fieldservice/internal/report/ServiceReportManager$10;-><init>(Lcom/lostpixels/fieldservice/internal/report/ServiceReportManager;Ljava/lang/String;)V

    invoke-static {v0}, Lcom/lostpixels/fieldservice/realm/RealmHelper;->write(Lcom/lostpixels/fieldservice/realm/RealmHelper$Writer;)Z

    return-void
.end method

.method public setCustomItem1Caps(Z)V
    .locals 1

    .line 275
    new-instance v0, Lcom/lostpixels/fieldservice/internal/report/ServiceReportManager$2;

    invoke-direct {v0, p0, p1}, Lcom/lostpixels/fieldservice/internal/report/ServiceReportManager$2;-><init>(Lcom/lostpixels/fieldservice/internal/report/ServiceReportManager;Z)V

    invoke-static {v0}, Lcom/lostpixels/fieldservice/realm/RealmHelper;->write(Lcom/lostpixels/fieldservice/realm/RealmHelper$Writer;)Z

    return-void
.end method

.method public setCustomItem1IsTime(Z)V
    .locals 1

    .line 331
    new-instance v0, Lcom/lostpixels/fieldservice/internal/report/ServiceReportManager$6;

    invoke-direct {v0, p0, p1}, Lcom/lostpixels/fieldservice/internal/report/ServiceReportManager$6;-><init>(Lcom/lostpixels/fieldservice/internal/report/ServiceReportManager;Z)V

    invoke-static {v0}, Lcom/lostpixels/fieldservice/realm/RealmHelper;->write(Lcom/lostpixels/fieldservice/realm/RealmHelper$Writer;)Z

    return-void
.end method

.method public setCustomItem2Caps(Z)V
    .locals 1

    .line 359
    new-instance v0, Lcom/lostpixels/fieldservice/internal/report/ServiceReportManager$8;

    invoke-direct {v0, p0, p1}, Lcom/lostpixels/fieldservice/internal/report/ServiceReportManager$8;-><init>(Lcom/lostpixels/fieldservice/internal/report/ServiceReportManager;Z)V

    invoke-static {v0}, Lcom/lostpixels/fieldservice/realm/RealmHelper;->write(Lcom/lostpixels/fieldservice/realm/RealmHelper$Writer;)Z

    return-void
.end method

.method public setCustomItem2IsTime(Z)V
    .locals 1

    .line 373
    new-instance v0, Lcom/lostpixels/fieldservice/internal/report/ServiceReportManager$9;

    invoke-direct {v0, p0, p1}, Lcom/lostpixels/fieldservice/internal/report/ServiceReportManager$9;-><init>(Lcom/lostpixels/fieldservice/internal/report/ServiceReportManager;Z)V

    invoke-static {v0}, Lcom/lostpixels/fieldservice/realm/RealmHelper;->write(Lcom/lostpixels/fieldservice/realm/RealmHelper$Writer;)Z

    return-void
.end method

.method public setCustomItem3Caps(Z)V
    .locals 1

    .line 401
    new-instance v0, Lcom/lostpixels/fieldservice/internal/report/ServiceReportManager$11;

    invoke-direct {v0, p0, p1}, Lcom/lostpixels/fieldservice/internal/report/ServiceReportManager$11;-><init>(Lcom/lostpixels/fieldservice/internal/report/ServiceReportManager;Z)V

    invoke-static {v0}, Lcom/lostpixels/fieldservice/realm/RealmHelper;->write(Lcom/lostpixels/fieldservice/realm/RealmHelper$Writer;)Z

    return-void
.end method

.method public setCustomItem3IsTime(Z)V
    .locals 1

    .line 415
    new-instance v0, Lcom/lostpixels/fieldservice/internal/report/ServiceReportManager$12;

    invoke-direct {v0, p0, p1}, Lcom/lostpixels/fieldservice/internal/report/ServiceReportManager$12;-><init>(Lcom/lostpixels/fieldservice/internal/report/ServiceReportManager;Z)V

    invoke-static {v0}, Lcom/lostpixels/fieldservice/realm/RealmHelper;->write(Lcom/lostpixels/fieldservice/realm/RealmHelper$Writer;)Z

    return-void
.end method

.method public setUsingCustom1(Z)V
    .locals 1

    .line 289
    new-instance v0, Lcom/lostpixels/fieldservice/internal/report/ServiceReportManager$3;

    invoke-direct {v0, p0, p1}, Lcom/lostpixels/fieldservice/internal/report/ServiceReportManager$3;-><init>(Lcom/lostpixels/fieldservice/internal/report/ServiceReportManager;Z)V

    invoke-static {v0}, Lcom/lostpixels/fieldservice/realm/RealmHelper;->write(Lcom/lostpixels/fieldservice/realm/RealmHelper$Writer;)Z

    return-void
.end method

.method public setUsingCustom2(Z)V
    .locals 1

    .line 303
    new-instance v0, Lcom/lostpixels/fieldservice/internal/report/ServiceReportManager$4;

    invoke-direct {v0, p0, p1}, Lcom/lostpixels/fieldservice/internal/report/ServiceReportManager$4;-><init>(Lcom/lostpixels/fieldservice/internal/report/ServiceReportManager;Z)V

    invoke-static {v0}, Lcom/lostpixels/fieldservice/realm/RealmHelper;->write(Lcom/lostpixels/fieldservice/realm/RealmHelper$Writer;)Z

    return-void
.end method

.method public setUsingCustom3(Z)V
    .locals 1

    .line 317
    new-instance v0, Lcom/lostpixels/fieldservice/internal/report/ServiceReportManager$5;

    invoke-direct {v0, p0, p1}, Lcom/lostpixels/fieldservice/internal/report/ServiceReportManager$5;-><init>(Lcom/lostpixels/fieldservice/internal/report/ServiceReportManager;Z)V

    invoke-static {v0}, Lcom/lostpixels/fieldservice/realm/RealmHelper;->write(Lcom/lostpixels/fieldservice/realm/RealmHelper$Writer;)Z

    return-void
.end method
