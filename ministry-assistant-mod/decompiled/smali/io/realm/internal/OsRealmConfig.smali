.class public Lio/realm/internal/OsRealmConfig;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lio/realm/internal/NativeObject;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lio/realm/internal/OsRealmConfig$Builder;,
        Lio/realm/internal/OsRealmConfig$SchemaMode;,
        Lio/realm/internal/OsRealmConfig$Durability;
    }
.end annotation


# static fields
.field private static final nativeFinalizerPtr:J


# instance fields
.field private final afterClientResetHandler:Ljava/lang/Object;

.field private final beforeClientResetHandler:Ljava/lang/Object;

.field private final compactOnLaunchCallback:Lio/realm/CompactOnLaunchCallback;

.field private final context:Lio/realm/internal/NativeContext;

.field private final initializationCallback:Lio/realm/internal/OsSharedRealm$InitializationCallback;

.field private final migrationCallback:Lio/realm/internal/OsSharedRealm$MigrationCallback;

.field private final nativePtr:J

.field private final realmConfiguration:Lio/realm/RealmConfiguration;

.field private final resolvedRealmURI:Ljava/net/URI;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 193
    invoke-static {}, Lio/realm/internal/OsRealmConfig;->nativeGetFinalizerPtr()J

    move-result-wide v0

    sput-wide v0, Lio/realm/internal/OsRealmConfig;->nativeFinalizerPtr:J

    return-void
.end method

.method private constructor <init>(Lio/realm/RealmConfiguration;Ljava/lang/String;ZLio/realm/internal/OsSchemaInfo;Lio/realm/internal/OsSharedRealm$MigrationCallback;Lio/realm/internal/OsSharedRealm$InitializationCallback;)V
    .locals 35

    move-object/from16 v1, p0

    move-object/from16 v0, p1

    move-object/from16 v10, p6

    .line 220
    const-string v11, "Cannot create a URI from the Realm URL address"

    invoke-direct {v1}, Ljava/lang/Object;-><init>()V

    .line 203
    new-instance v2, Lio/realm/internal/NativeContext;

    invoke-direct {v2}, Lio/realm/internal/NativeContext;-><init>()V

    iput-object v2, v1, Lio/realm/internal/OsRealmConfig;->context:Lio/realm/internal/NativeContext;

    .line 221
    iput-object v0, v1, Lio/realm/internal/OsRealmConfig;->realmConfiguration:Lio/realm/RealmConfiguration;

    .line 222
    invoke-virtual {v0}, Lio/realm/RealmConfiguration;->getPath()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0}, Lio/realm/RealmConfiguration;->getMaxNumberOfActiveVersions()J

    move-result-wide v3

    const/4 v12, 0x1

    move-object/from16 v5, p2

    invoke-static {v2, v5, v12, v3, v4}, Lio/realm/internal/OsRealmConfig;->nativeCreate(Ljava/lang/String;Ljava/lang/String;ZJ)J

    move-result-wide v2

    iput-wide v2, v1, Lio/realm/internal/OsRealmConfig;->nativePtr:J

    .line 223
    sget-object v2, Lio/realm/internal/NativeContext;->dummyContext:Lio/realm/internal/NativeContext;

    invoke-virtual {v2, v1}, Lio/realm/internal/NativeContext;->addReference(Lio/realm/internal/NativeObject;)V

    .line 227
    invoke-static {}, Lio/realm/internal/ObjectServerFacade;->getSyncFacadeIfPossible()Lio/realm/internal/ObjectServerFacade;

    move-result-object v2

    invoke-virtual {v2, v0}, Lio/realm/internal/ObjectServerFacade;->getSyncConfigurationOptions(Lio/realm/RealmConfiguration;)[Ljava/lang/Object;

    move-result-object v2

    const/4 v13, 0x0

    .line 228
    aget-object v3, v2, v13

    move-object v14, v3

    check-cast v14, Ljava/lang/String;

    .line 229
    aget-object v3, v2, v12

    move-object v15, v3

    check-cast v15, Ljava/lang/String;

    const/4 v3, 0x2

    .line 230
    aget-object v4, v2, v3

    move-object/from16 v16, v4

    check-cast v16, Ljava/lang/String;

    const/4 v4, 0x3

    .line 231
    aget-object v4, v2, v4

    check-cast v4, Ljava/lang/String;

    const/4 v5, 0x4

    .line 232
    aget-object v5, v2, v5

    move-object/from16 v17, v5

    check-cast v17, Ljava/lang/String;

    const/4 v5, 0x5

    .line 233
    aget-object v5, v2, v5

    move-object/from16 v18, v5

    check-cast v18, Ljava/lang/String;

    const/4 v5, 0x6

    .line 234
    aget-object v5, v2, v5

    move-object/from16 v19, v5

    check-cast v19, Ljava/lang/String;

    const/4 v5, 0x7

    .line 235
    aget-object v5, v2, v5

    move-object/from16 v20, v5

    check-cast v20, Ljava/lang/Byte;

    const/16 v5, 0x8

    .line 236
    aget-object v5, v2, v5

    move-object/from16 v21, v5

    check-cast v21, Ljava/lang/String;

    const/16 v5, 0x9

    .line 237
    aget-object v5, v2, v5

    move-object/from16 v22, v5

    check-cast v22, Ljava/lang/String;

    const/16 v5, 0xa

    .line 239
    aget-object v5, v2, v5

    check-cast v5, Ljava/util/Map;

    const/16 v6, 0xb

    .line 240
    aget-object v6, v2, v6

    move-object/from16 v23, v6

    check-cast v23, Ljava/lang/Byte;

    const/16 v6, 0xc

    .line 241
    aget-object v6, v2, v6

    iput-object v6, v1, Lio/realm/internal/OsRealmConfig;->beforeClientResetHandler:Ljava/lang/Object;

    const/16 v6, 0xd

    .line 242
    aget-object v6, v2, v6

    iput-object v6, v1, Lio/realm/internal/OsRealmConfig;->afterClientResetHandler:Ljava/lang/Object;

    const/16 v6, 0xe

    .line 243
    aget-object v6, v2, v6

    move-object/from16 v24, v6

    check-cast v24, Ljava/lang/String;

    const/16 v6, 0xf

    .line 244
    aget-object v25, v2, v6

    const/16 v6, 0x10

    .line 245
    aget-object v6, v2, v6

    move-object/from16 v26, v6

    check-cast v26, Ljava/lang/Long;

    .line 246
    sget-object v6, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    const/16 v7, 0x11

    aget-object v7, v2, v7

    invoke-virtual {v6, v7}, Ljava/lang/Boolean;->equals(Ljava/lang/Object;)Z

    move-result v6

    const/16 v7, 0x12

    .line 247
    aget-object v2, v2, v7

    check-cast v2, Ljava/lang/String;

    if-eqz v5, :cond_0

    .line 251
    invoke-interface {v5}, Ljava/util/Map;->size()I

    move-result v7

    mul-int/lit8 v7, v7, 0x2

    goto :goto_0

    :cond_0
    const/4 v7, 0x0

    :goto_0
    new-array v7, v7, [Ljava/lang/String;

    if-eqz v5, :cond_1

    .line 254
    invoke-interface {v5}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v5

    invoke-interface {v5}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v5

    const/4 v8, 0x0

    :goto_1
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v9

    if-eqz v9, :cond_1

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Ljava/util/Map$Entry;

    .line 255
    invoke-interface {v9}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v27

    check-cast v27, Ljava/lang/String;

    aput-object v27, v7, v8

    add-int/lit8 v27, v8, 0x1

    .line 256
    invoke-interface {v9}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Ljava/lang/String;

    aput-object v9, v7, v27

    add-int/2addr v8, v3

    goto :goto_1

    .line 262
    :cond_1
    invoke-virtual {v0}, Lio/realm/RealmConfiguration;->getEncryptionKey()[B

    move-result-object v3

    if-eqz v3, :cond_2

    .line 264
    iget-wide v8, v1, Lio/realm/internal/OsRealmConfig;->nativePtr:J

    invoke-static {v8, v9, v3}, Lio/realm/internal/OsRealmConfig;->nativeSetEncryptionKey(J[B)V

    .line 268
    :cond_2
    iget-wide v8, v1, Lio/realm/internal/OsRealmConfig;->nativePtr:J

    invoke-virtual {v0}, Lio/realm/RealmConfiguration;->getDurability()Lio/realm/internal/OsRealmConfig$Durability;

    move-result-object v3

    sget-object v5, Lio/realm/internal/OsRealmConfig$Durability;->MEM_ONLY:Lio/realm/internal/OsRealmConfig$Durability;

    if-ne v3, v5, :cond_3

    const/4 v3, 0x1

    goto :goto_2

    :cond_3
    const/4 v3, 0x0

    :goto_2
    invoke-static {v8, v9, v3}, Lio/realm/internal/OsRealmConfig;->nativeSetInMemory(JZ)V

    .line 271
    iget-wide v8, v1, Lio/realm/internal/OsRealmConfig;->nativePtr:J

    move/from16 v3, p3

    invoke-static {v8, v9, v3}, Lio/realm/internal/OsRealmConfig;->nativeEnableChangeNotification(JZ)V

    .line 274
    sget-object v3, Lio/realm/internal/OsRealmConfig$SchemaMode;->SCHEMA_MODE_MANUAL:Lio/realm/internal/OsRealmConfig$SchemaMode;

    .line 275
    invoke-virtual {v0}, Lio/realm/RealmConfiguration;->isRecoveryConfiguration()Z

    move-result v5

    if-eqz v5, :cond_5

    .line 276
    sget-object v3, Lio/realm/internal/OsRealmConfig$SchemaMode;->SCHEMA_MODE_IMMUTABLE:Lio/realm/internal/OsRealmConfig$SchemaMode;

    :cond_4
    :goto_3
    move v8, v6

    goto :goto_4

    .line 277
    :cond_5
    invoke-virtual {v0}, Lio/realm/RealmConfiguration;->isReadOnly()Z

    move-result v5

    if-eqz v5, :cond_6

    .line 278
    sget-object v3, Lio/realm/internal/OsRealmConfig$SchemaMode;->SCHEMA_MODE_READONLY:Lio/realm/internal/OsRealmConfig$SchemaMode;

    goto :goto_3

    :cond_6
    if-eqz v16, :cond_7

    .line 280
    sget-object v3, Lio/realm/internal/OsRealmConfig$SchemaMode;->SCHEMA_MODE_ADDITIVE_DISCOVERED:Lio/realm/internal/OsRealmConfig$SchemaMode;

    goto :goto_3

    .line 281
    :cond_7
    invoke-virtual {v0}, Lio/realm/RealmConfiguration;->shouldDeleteRealmIfMigrationNeeded()Z

    move-result v5

    if-eqz v5, :cond_4

    .line 282
    sget-object v3, Lio/realm/internal/OsRealmConfig$SchemaMode;->SCHEMA_MODE_SOFT_RESET_FILE:Lio/realm/internal/OsRealmConfig$SchemaMode;

    goto :goto_3

    .line 284
    :goto_4
    invoke-virtual {v0}, Lio/realm/RealmConfiguration;->getSchemaVersion()J

    move-result-wide v5

    if-nez p4, :cond_8

    const-wide/16 v27, 0x0

    :goto_5
    move-object/from16 v9, p5

    goto :goto_6

    .line 285
    :cond_8
    invoke-virtual/range {p4 .. p4}, Lio/realm/internal/OsSchemaInfo;->getNativePtr()J

    move-result-wide v27

    goto :goto_5

    .line 286
    :goto_6
    iput-object v9, v1, Lio/realm/internal/OsRealmConfig;->migrationCallback:Lio/realm/internal/OsSharedRealm$MigrationCallback;

    move-object/from16 v29, v2

    move-object/from16 v30, v3

    .line 287
    iget-wide v2, v1, Lio/realm/internal/OsRealmConfig;->nativePtr:J

    invoke-virtual/range {v30 .. v30}, Lio/realm/internal/OsRealmConfig$SchemaMode;->getNativeValue()B

    move-result v30

    move-object v0, v4

    move/from16 v31, v8

    move-object/from16 v32, v29

    move/from16 v4, v30

    move-object/from16 v34, v16

    move-object/from16 v16, v7

    move-wide/from16 v7, v27

    move-object/from16 v27, v34

    invoke-direct/range {v1 .. v9}, Lio/realm/internal/OsRealmConfig;->nativeSetSchemaConfig(JBJJLio/realm/internal/OsSharedRealm$MigrationCallback;)V

    .line 290
    invoke-virtual/range {p1 .. p1}, Lio/realm/RealmConfiguration;->getCompactOnLaunchCallback()Lio/realm/CompactOnLaunchCallback;

    move-result-object v2

    iput-object v2, v1, Lio/realm/internal/OsRealmConfig;->compactOnLaunchCallback:Lio/realm/CompactOnLaunchCallback;

    if-eqz v2, :cond_9

    .line 292
    iget-wide v3, v1, Lio/realm/internal/OsRealmConfig;->nativePtr:J

    invoke-static {v3, v4, v2}, Lio/realm/internal/OsRealmConfig;->nativeSetCompactOnLaunchCallback(JLio/realm/CompactOnLaunchCallback;)V

    .line 296
    :cond_9
    iput-object v10, v1, Lio/realm/internal/OsRealmConfig;->initializationCallback:Lio/realm/internal/OsSharedRealm$InitializationCallback;

    if-eqz v10, :cond_a

    .line 298
    iget-wide v2, v1, Lio/realm/internal/OsRealmConfig;->nativePtr:J

    invoke-direct {v1, v2, v3, v10}, Lio/realm/internal/OsRealmConfig;->nativeSetInitializationCallback(JLio/realm/internal/OsSharedRealm$InitializationCallback;)V

    :cond_a
    const/16 v28, 0x0

    if-eqz v27, :cond_f

    .line 305
    invoke-virtual/range {v26 .. v26}, Ljava/lang/Long;->longValue()J

    move-result-wide v3

    iget-wide v5, v1, Lio/realm/internal/OsRealmConfig;->nativePtr:J

    .line 313
    invoke-virtual/range {v20 .. v20}, Ljava/lang/Byte;->byteValue()B

    move-result v2

    .line 317
    invoke-virtual/range {v23 .. v23}, Ljava/lang/Byte;->byteValue()B

    move-result v7

    iget-object v8, v1, Lio/realm/internal/OsRealmConfig;->beforeClientResetHandler:Ljava/lang/Object;

    iget-object v9, v1, Lio/realm/internal/OsRealmConfig;->afterClientResetHandler:Ljava/lang/Object;

    move v13, v2

    move-object/from16 v33, v11

    move-object/from16 v10, v17

    move-object/from16 v11, v18

    move-object/from16 v12, v19

    move-object/from16 v20, v24

    move-object v2, v1

    move/from16 v17, v7

    move-object/from16 v18, v8

    move-object/from16 v19, v9

    move-object v8, v14

    move-object v9, v15

    move-object/from16 v14, v21

    move-object/from16 v15, v22

    move-object/from16 v21, v25

    move-object/from16 v7, v27

    const/4 v1, 0x1

    .line 304
    invoke-direct/range {v2 .. v21}, Lio/realm/internal/OsRealmConfig;->nativeCreateAndSetSyncConfig(JJLjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;BLjava/lang/String;Ljava/lang/String;[Ljava/lang/String;BLjava/lang/Object;Ljava/lang/Object;Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    .line 323
    :try_start_0
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v14, v1}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 324
    new-instance v0, Ljava/net/URI;

    invoke-direct {v0, v3}, Ljava/net/URI;-><init>(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/net/URISyntaxException; {:try_start_0 .. :try_end_0} :catch_0

    move-object v4, v3

    move-object v3, v0

    move-object v0, v4

    move-object/from16 v4, v33

    goto :goto_7

    :catch_0
    move-exception v0

    const/4 v4, 0x0

    .line 326
    new-array v5, v4, [Ljava/lang/Object;

    move-object/from16 v4, v33

    invoke-static {v0, v4, v5}, Lio/realm/log/RealmLog;->error(Ljava/lang/Throwable;Ljava/lang/String;[Ljava/lang/Object;)V

    move-object v0, v3

    move-object/from16 v3, v28

    .line 328
    :goto_7
    iget-wide v5, v2, Lio/realm/internal/OsRealmConfig;->nativePtr:J

    move/from16 v8, v31

    move-object/from16 v7, v32

    invoke-static {v5, v6, v8, v7}, Lio/realm/internal/OsRealmConfig;->nativeSetSyncConfigSslSettings(JZLjava/lang/String;)V

    .line 331
    invoke-static {}, Ljava/net/ProxySelector;->getDefault()Ljava/net/ProxySelector;

    move-result-object v5

    if-eqz v3, :cond_10

    if-eqz v5, :cond_10

    .line 336
    :try_start_1
    new-instance v6, Ljava/net/URI;

    const-string v7, "ws"

    const-string v8, "http"

    invoke-virtual {v0, v7, v8}, Ljava/lang/String;->replaceFirst(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-direct {v6, v0}, Ljava/net/URI;-><init>(Ljava/lang/String;)V
    :try_end_1
    .catch Ljava/net/URISyntaxException; {:try_start_1 .. :try_end_1} :catch_1

    move-object v0, v6

    const/4 v6, 0x0

    goto :goto_8

    :catch_1
    move-exception v0

    const/4 v6, 0x0

    .line 339
    new-array v7, v6, [Ljava/lang/Object;

    invoke-static {v0, v4, v7}, Lio/realm/log/RealmLog;->error(Ljava/lang/Throwable;Ljava/lang/String;[Ljava/lang/Object;)V

    move-object/from16 v0, v28

    .line 341
    :goto_8
    invoke-virtual {v5, v0}, Ljava/net/ProxySelector;->select(Ljava/net/URI;)Ljava/util/List;

    move-result-object v0

    if-eqz v0, :cond_10

    .line 342
    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v4

    if-nez v4, :cond_10

    .line 343
    invoke-interface {v0, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/net/Proxy;

    .line 344
    invoke-virtual {v0}, Ljava/net/Proxy;->type()Ljava/net/Proxy$Type;

    move-result-object v4

    sget-object v5, Ljava/net/Proxy$Type;->DIRECT:Ljava/net/Proxy$Type;

    if-eq v4, v5, :cond_10

    .line 346
    sget-object v4, Lio/realm/internal/OsRealmConfig$1;->$SwitchMap$java$net$Proxy$Type:[I

    invoke-virtual {v0}, Ljava/net/Proxy;->type()Ljava/net/Proxy$Type;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/Enum;->ordinal()I

    move-result v5

    aget v4, v4, v5

    if-eq v4, v1, :cond_b

    const/4 v13, -0x1

    goto :goto_9

    :cond_b
    const/4 v13, 0x0

    .line 354
    :goto_9
    invoke-virtual {v0}, Ljava/net/Proxy;->type()Ljava/net/Proxy$Type;

    move-result-object v1

    sget-object v4, Ljava/net/Proxy$Type;->HTTP:Ljava/net/Proxy$Type;

    if-ne v1, v4, :cond_e

    .line 355
    invoke-virtual {v0}, Ljava/net/Proxy;->address()Ljava/net/SocketAddress;

    move-result-object v0

    .line 356
    instance-of v1, v0, Ljava/net/InetSocketAddress;

    if-eqz v1, :cond_d

    .line 357
    check-cast v0, Ljava/net/InetSocketAddress;

    .line 358
    invoke-direct {v2, v0}, Lio/realm/internal/OsRealmConfig;->getHostString(Ljava/net/InetSocketAddress;)Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_c

    .line 360
    iget-wide v4, v2, Lio/realm/internal/OsRealmConfig;->nativePtr:J

    .line 364
    invoke-virtual {v0}, Ljava/net/InetSocketAddress;->getPort()I

    move-result v0

    .line 360
    invoke-static {v4, v5, v13, v1, v0}, Lio/realm/internal/OsRealmConfig;->nativeSetSyncConfigProxySettings(JBLjava/lang/String;I)V

    goto :goto_a

    .line 367
    :cond_c
    const-string v0, "Could not retrieve proxy\'s hostname."

    const/4 v4, 0x0

    new-array v1, v4, [Ljava/lang/Object;

    invoke-static {v0, v1}, Lio/realm/log/RealmLog;->error(Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_a

    .line 370
    :cond_d
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Unsupported proxy socket address type: "

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const/4 v4, 0x0

    new-array v1, v4, [Ljava/lang/Object;

    invoke-static {v0, v1}, Lio/realm/log/RealmLog;->error(Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_a

    :cond_e
    const/4 v4, 0x0

    .line 374
    const-string v0, "SOCKS proxies are not supported."

    new-array v1, v4, [Ljava/lang/Object;

    invoke-static {v0, v1}, Lio/realm/log/RealmLog;->error(Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_a

    :cond_f
    move-object v2, v1

    move-object/from16 v3, v28

    .line 382
    :cond_10
    :goto_a
    iput-object v3, v2, Lio/realm/internal/OsRealmConfig;->resolvedRealmURI:Ljava/net/URI;

    return-void
.end method

.method synthetic constructor <init>(Lio/realm/RealmConfiguration;Ljava/lang/String;ZLio/realm/internal/OsSchemaInfo;Lio/realm/internal/OsSharedRealm$MigrationCallback;Lio/realm/internal/OsSharedRealm$InitializationCallback;Lio/realm/internal/OsRealmConfig$1;)V
    .locals 0

    .line 41
    invoke-direct/range {p0 .. p6}, Lio/realm/internal/OsRealmConfig;-><init>(Lio/realm/RealmConfiguration;Ljava/lang/String;ZLio/realm/internal/OsSchemaInfo;Lio/realm/internal/OsSharedRealm$MigrationCallback;Lio/realm/internal/OsSharedRealm$InitializationCallback;)V

    return-void
.end method

.method private getHostString(Ljava/net/InetSocketAddress;)Ljava/lang/String;
    .locals 1

    .line 393
    invoke-virtual {p1}, Ljava/net/InetSocketAddress;->getHostName()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 394
    invoke-virtual {p1}, Ljava/net/InetSocketAddress;->getHostName()Ljava/lang/String;

    move-result-object p1

    return-object p1

    .line 396
    :cond_0
    invoke-virtual {p1}, Ljava/net/InetSocketAddress;->getAddress()Ljava/net/InetAddress;

    move-result-object v0

    if-eqz v0, :cond_2

    .line 397
    invoke-virtual {p1}, Ljava/net/InetSocketAddress;->getAddress()Ljava/net/InetAddress;

    move-result-object p1

    .line 399
    invoke-virtual {p1}, Ljava/net/InetAddress;->getHostName()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 400
    invoke-virtual {p1}, Ljava/net/InetAddress;->getHostName()Ljava/lang/String;

    move-result-object p1

    return-object p1

    .line 402
    :cond_1
    invoke-virtual {p1}, Ljava/net/InetAddress;->getHostAddress()Ljava/lang/String;

    move-result-object p1

    return-object p1

    :cond_2
    const/4 p1, 0x0

    return-object p1
.end method

.method private static native nativeCreate(Ljava/lang/String;Ljava/lang/String;ZJ)J
.end method

.method private native nativeCreateAndSetSyncConfig(JJLjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;BLjava/lang/String;Ljava/lang/String;[Ljava/lang/String;BLjava/lang/Object;Ljava/lang/Object;Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/String;
.end method

.method private static native nativeEnableChangeNotification(JZ)V
.end method

.method private static native nativeGetFinalizerPtr()J
.end method

.method private static native nativeSetCompactOnLaunchCallback(JLio/realm/CompactOnLaunchCallback;)V
.end method

.method private static native nativeSetEncryptionKey(J[B)V
.end method

.method private static native nativeSetInMemory(JZ)V
.end method

.method private native nativeSetInitializationCallback(JLio/realm/internal/OsSharedRealm$InitializationCallback;)V
.end method

.method private native nativeSetSchemaConfig(JBJJLio/realm/internal/OsSharedRealm$MigrationCallback;)V
.end method

.method private static native nativeSetSyncConfigProxySettings(JBLjava/lang/String;I)V
.end method

.method private static native nativeSetSyncConfigSslSettings(JZLjava/lang/String;)V
.end method


# virtual methods
.method getContext()Lio/realm/internal/NativeContext;
    .locals 1

    .line 426
    iget-object v0, p0, Lio/realm/internal/OsRealmConfig;->context:Lio/realm/internal/NativeContext;

    return-object v0
.end method

.method public getNativeFinalizerPtr()J
    .locals 2

    .line 414
    sget-wide v0, Lio/realm/internal/OsRealmConfig;->nativeFinalizerPtr:J

    return-wide v0
.end method

.method public getNativePtr()J
    .locals 2

    .line 409
    iget-wide v0, p0, Lio/realm/internal/OsRealmConfig;->nativePtr:J

    return-wide v0
.end method

.method public getRealmConfiguration()Lio/realm/RealmConfiguration;
    .locals 1

    .line 418
    iget-object v0, p0, Lio/realm/internal/OsRealmConfig;->realmConfiguration:Lio/realm/RealmConfiguration;

    return-object v0
.end method

.method public getResolvedRealmURI()Ljava/net/URI;
    .locals 1

    .line 422
    iget-object v0, p0, Lio/realm/internal/OsRealmConfig;->resolvedRealmURI:Ljava/net/URI;

    return-object v0
.end method
