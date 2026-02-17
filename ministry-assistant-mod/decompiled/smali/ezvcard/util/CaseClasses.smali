.class public abstract Lezvcard/util/CaseClasses;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field protected final clazz:Ljava/lang/Class;

.field private volatile preDefined:Ljava/util/Collection;

.field private runtimeDefined:Ljava/util/Collection;


# direct methods
.method public constructor <init>(Ljava/lang/Class;)V
    .locals 1

    .line 58
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 51
    iput-object v0, p0, Lezvcard/util/CaseClasses;->preDefined:Ljava/util/Collection;

    .line 52
    iput-object v0, p0, Lezvcard/util/CaseClasses;->runtimeDefined:Ljava/util/Collection;

    .line 59
    iput-object p1, p0, Lezvcard/util/CaseClasses;->clazz:Ljava/lang/Class;

    return-void
.end method

.method private checkInit()V
    .locals 1

    .line 129
    iget-object v0, p0, Lezvcard/util/CaseClasses;->preDefined:Ljava/util/Collection;

    if-nez v0, :cond_1

    .line 130
    monitor-enter p0

    .line 132
    :try_start_0
    iget-object v0, p0, Lezvcard/util/CaseClasses;->preDefined:Ljava/util/Collection;

    if-nez v0, :cond_0

    .line 133
    invoke-direct {p0}, Lezvcard/util/CaseClasses;->init()V

    goto :goto_0

    :catchall_0
    move-exception v0

    goto :goto_1

    .line 135
    :cond_0
    :goto_0
    monitor-exit p0

    return-void

    :goto_1
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0

    :cond_1
    return-void
.end method

.method private init()V
    .locals 8

    .line 140
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 141
    iget-object v1, p0, Lezvcard/util/CaseClasses;->clazz:Ljava/lang/Class;

    invoke-virtual {v1}, Ljava/lang/Class;->getFields()[Ljava/lang/reflect/Field;

    move-result-object v1

    array-length v2, v1

    const/4 v3, 0x0

    const/4 v4, 0x0

    :goto_0
    if-ge v4, v2, :cond_1

    aget-object v5, v1, v4

    .line 142
    invoke-virtual {v5}, Ljava/lang/reflect/Field;->getModifiers()I

    move-result v6

    .line 144
    invoke-static {v6}, Ljava/lang/reflect/Modifier;->isStatic(I)Z

    move-result v7

    if-eqz v7, :cond_0

    invoke-static {v6}, Ljava/lang/reflect/Modifier;->isPublic(I)Z

    move-result v6

    if-eqz v6, :cond_0

    invoke-virtual {v5}, Ljava/lang/reflect/Field;->getDeclaringClass()Ljava/lang/Class;

    move-result-object v6

    iget-object v7, p0, Lezvcard/util/CaseClasses;->clazz:Ljava/lang/Class;

    if-ne v6, v7, :cond_0

    invoke-virtual {v5}, Ljava/lang/reflect/Field;->getType()Ljava/lang/Class;

    move-result-object v6

    iget-object v7, p0, Lezvcard/util/CaseClasses;->clazz:Ljava/lang/Class;

    if-ne v6, v7, :cond_0

    const/4 v6, 0x0

    .line 150
    :try_start_0
    invoke-virtual {v5, v6}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    if-eqz v5, :cond_0

    .line 152
    iget-object v6, p0, Lezvcard/util/CaseClasses;->clazz:Ljava/lang/Class;

    invoke-virtual {v6, v5}, Ljava/lang/Class;->cast(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    .line 153
    invoke-interface {v0, v5}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    move-exception v0

    .line 158
    new-instance v1, Ljava/lang/RuntimeException;

    invoke-direct {v1, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v1

    :cond_0
    :goto_1
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .line 163
    :cond_1
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1, v3}, Ljava/util/ArrayList;-><init>(I)V

    iput-object v1, p0, Lezvcard/util/CaseClasses;->runtimeDefined:Ljava/util/Collection;

    .line 164
    invoke-static {v0}, Ljava/util/Collections;->unmodifiableCollection(Ljava/util/Collection;)Ljava/util/Collection;

    move-result-object v0

    iput-object v0, p0, Lezvcard/util/CaseClasses;->preDefined:Ljava/util/Collection;

    return-void
.end method


# virtual methods
.method protected abstract create(Ljava/lang/Object;)Ljava/lang/Object;
.end method

.method public find(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 3

    .line 84
    invoke-direct {p0}, Lezvcard/util/CaseClasses;->checkInit()V

    .line 86
    iget-object v0, p0, Lezvcard/util/CaseClasses;->preDefined:Ljava/util/Collection;

    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    .line 87
    invoke-virtual {p0, v1, p1}, Lezvcard/util/CaseClasses;->matches(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    return-object v1

    :cond_1
    const/4 p1, 0x0

    return-object p1
.end method

.method public get(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 4

    .line 101
    invoke-virtual {p0, p1}, Lezvcard/util/CaseClasses;->find(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_0

    return-object v0

    .line 106
    :cond_0
    iget-object v0, p0, Lezvcard/util/CaseClasses;->runtimeDefined:Ljava/util/Collection;

    monitor-enter v0

    .line 107
    :try_start_0
    iget-object v1, p0, Lezvcard/util/CaseClasses;->runtimeDefined:Ljava/util/Collection;

    invoke-interface {v1}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    .line 108
    invoke-virtual {p0, v2, p1}, Lezvcard/util/CaseClasses;->matches(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 109
    monitor-exit v0

    return-object v2

    :catchall_0
    move-exception p1

    goto :goto_0

    .line 113
    :cond_2
    invoke-virtual {p0, p1}, Lezvcard/util/CaseClasses;->create(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    .line 114
    iget-object v1, p0, Lezvcard/util/CaseClasses;->runtimeDefined:Ljava/util/Collection;

    invoke-interface {v1, p1}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    .line 115
    monitor-exit v0

    return-object p1

    .line 116
    :goto_0
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1
.end method

.method protected abstract matches(Ljava/lang/Object;Ljava/lang/Object;)Z
.end method
