.class public abstract Lio/realm/internal/RealmProxyMediator;
.super Ljava/lang/Object;
.source "SourceFile"


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 45
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method protected static checkClass(Ljava/lang/Class;)V
    .locals 1

    if-eqz p0, :cond_0

    return-void

    .line 287
    :cond_0
    new-instance p0, Ljava/lang/NullPointerException;

    const-string v0, "A class extending RealmObject must be provided"

    invoke-direct {p0, v0}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method protected static checkClassName(Ljava/lang/String;)V
    .locals 1

    if-eqz p0, :cond_0

    .line 293
    invoke-virtual {p0}, Ljava/lang/String;->isEmpty()Z

    move-result p0

    if-nez p0, :cond_0

    return-void

    .line 294
    :cond_0
    new-instance p0, Ljava/lang/NullPointerException;

    const-string v0, "A class extending RealmObject must be provided"

    invoke-direct {p0, v0}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method protected static getMissingProxyClassException(Ljava/lang/Class;)Lio/realm/exceptions/RealmException;
    .locals 3

    .line 299
    new-instance v0, Lio/realm/exceptions/RealmException;

    .line 300
    invoke-virtual {p0}, Ljava/lang/Class;->toString()Ljava/lang/String;

    move-result-object p0

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    aput-object p0, v1, v2

    const-string p0, "\'%s\' is not part of the schema for this Realm."

    invoke-static {p0, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    invoke-direct {v0, p0}, Lio/realm/exceptions/RealmException;-><init>(Ljava/lang/String;)V

    return-object v0
.end method

.method protected static getMissingProxyClassException(Ljava/lang/String;)Lio/realm/exceptions/RealmException;
    .locals 3

    .line 304
    new-instance v0, Lio/realm/exceptions/RealmException;

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    aput-object p0, v1, v2

    .line 305
    const-string p0, "\'%s\' is not part of the schema for this Realm."

    invoke-static {p0, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    invoke-direct {v0, p0}, Lio/realm/exceptions/RealmException;-><init>(Ljava/lang/String;)V

    return-object v0
.end method

.method protected static getNotEmbeddedClassException(Ljava/lang/String;)Ljava/lang/IllegalStateException;
    .locals 3

    .line 309
    new-instance v0, Ljava/lang/IllegalStateException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "This class is not marked embedded: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {v0, p0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    return-object v0
.end method


# virtual methods
.method public abstract copyOrUpdate(Lio/realm/Realm;Lio/realm/RealmModel;ZLjava/util/Map;Ljava/util/Set;)Lio/realm/RealmModel;
.end method

.method public abstract createColumnInfo(Ljava/lang/Class;Lio/realm/internal/OsSchemaInfo;)Lio/realm/internal/ColumnInfo;
.end method

.method public abstract createDetachedCopy(Lio/realm/RealmModel;ILjava/util/Map;)Lio/realm/RealmModel;
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 1

    .line 272
    instance-of v0, p1, Lio/realm/internal/RealmProxyMediator;

    if-nez v0, :cond_0

    const/4 p1, 0x0

    return p1

    .line 275
    :cond_0
    check-cast p1, Lio/realm/internal/RealmProxyMediator;

    .line 276
    invoke-virtual {p0}, Lio/realm/internal/RealmProxyMediator;->getModelClasses()Ljava/util/Set;

    move-result-object v0

    invoke-virtual {p1}, Lio/realm/internal/RealmProxyMediator;->getModelClasses()Ljava/util/Set;

    move-result-object p1

    invoke-interface {v0, p1}, Ljava/util/Set;->equals(Ljava/lang/Object;)Z

    move-result p1

    return p1
.end method

.method public final getClazz(Ljava/lang/String;)Ljava/lang/Class;
    .locals 0

    .line 92
    invoke-virtual {p0, p1}, Lio/realm/internal/RealmProxyMediator;->getClazzImpl(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object p1

    return-object p1
.end method

.method protected abstract getClazzImpl(Ljava/lang/String;)Ljava/lang/Class;
.end method

.method public abstract getExpectedObjectSchemaInfoMap()Ljava/util/Map;
.end method

.method public abstract getModelClasses()Ljava/util/Set;
.end method

.method public final getSimpleClassName(Ljava/lang/Class;)Ljava/lang/String;
    .locals 0

    .line 72
    invoke-static {p1}, Lio/realm/internal/Util;->getOriginalModelClass(Ljava/lang/Class;)Ljava/lang/Class;

    move-result-object p1

    invoke-virtual {p0, p1}, Lio/realm/internal/RealmProxyMediator;->getSimpleClassNameImpl(Ljava/lang/Class;)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method protected abstract getSimpleClassNameImpl(Ljava/lang/Class;)Ljava/lang/String;
.end method

.method public hasPrimaryKey(Ljava/lang/Class;)Z
    .locals 0

    .line 111
    invoke-virtual {p0, p1}, Lio/realm/internal/RealmProxyMediator;->hasPrimaryKeyImpl(Ljava/lang/Class;)Z

    move-result p1

    return p1
.end method

.method protected abstract hasPrimaryKeyImpl(Ljava/lang/Class;)Z
.end method

.method public hashCode()I
    .locals 1

    .line 281
    invoke-virtual {p0}, Lio/realm/internal/RealmProxyMediator;->getModelClasses()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->hashCode()I

    move-result v0

    return v0
.end method

.method public abstract isEmbedded(Ljava/lang/Class;)Z
.end method

.method public abstract newInstance(Ljava/lang/Class;Ljava/lang/Object;Lio/realm/internal/Row;Lio/realm/internal/ColumnInfo;ZLjava/util/List;)Lio/realm/RealmModel;
.end method

.method public abstract transformerApplied()Z
.end method

.method public abstract updateEmbeddedObject(Lio/realm/Realm;Lio/realm/RealmModel;Lio/realm/RealmModel;Ljava/util/Map;Ljava/util/Set;)V
.end method
