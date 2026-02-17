.class public abstract Lio/realm/internal/RealmCore;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field private static final BINARIES_PATH:Ljava/lang/String;

.field private static final FILE_SEP:Ljava/lang/String;

.field private static final PATH_SEP:Ljava/lang/String;

.field private static libraryIsLoaded:Z


# direct methods
.method static constructor <clinit>()V
    .locals 4

    .line 35
    sget-object v0, Ljava/io/File;->separator:Ljava/lang/String;

    sput-object v0, Lio/realm/internal/RealmCore;->FILE_SEP:Ljava/lang/String;

    .line 36
    sget-object v1, Ljava/io/File;->pathSeparator:Ljava/lang/String;

    sput-object v1, Lio/realm/internal/RealmCore;->PATH_SEP:Ljava/lang/String;

    .line 37
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "lib"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ".."

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lio/realm/internal/RealmCore;->BINARIES_PATH:Ljava/lang/String;

    const/4 v0, 0x0

    .line 40
    sput-boolean v0, Lio/realm/internal/RealmCore;->libraryIsLoaded:Z

    return-void
.end method

.method public static declared-synchronized loadLibrary(Landroid/content/Context;)V
    .locals 3

    const-class v0, Lio/realm/internal/RealmCore;

    monitor-enter v0

    .line 57
    :try_start_0
    sget-boolean v1, Lio/realm/internal/RealmCore;->libraryIsLoaded:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v1, :cond_0

    .line 58
    monitor-exit v0

    return-void

    .line 60
    :cond_0
    :try_start_1
    const-string v1, "realm-jni"

    const-string v2, "10.19.0"

    invoke-static {p0, v1, v2}, Lcom/getkeepsafe/relinker/ReLinker;->loadLibrary(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    const/4 p0, 0x1

    .line 61
    sput-boolean p0, Lio/realm/internal/RealmCore;->libraryIsLoaded:Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 62
    monitor-exit v0

    return-void

    :catchall_0
    move-exception p0

    :try_start_2
    monitor-exit v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw p0
.end method
