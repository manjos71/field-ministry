.class public Lio/realm/RealmAny;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lio/realm/RealmAny$Type;
    }
.end annotation


# instance fields
.field private final operator:Lio/realm/RealmAnyOperator;


# direct methods
.method constructor <init>(Lio/realm/RealmAnyOperator;)V
    .locals 0

    .line 136
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 137
    iput-object p1, p0, Lio/realm/RealmAny;->operator:Lio/realm/RealmAnyOperator;

    return-void
.end method

.method public static valueOf(Lio/realm/RealmModel;)Lio/realm/RealmAny;
    .locals 2

    .line 323
    new-instance v0, Lio/realm/RealmAny;

    if-nez p0, :cond_0

    new-instance p0, Lio/realm/NullRealmAnyOperator;

    invoke-direct {p0}, Lio/realm/NullRealmAnyOperator;-><init>()V

    goto :goto_0

    :cond_0
    new-instance v1, Lio/realm/RealmModelOperator;

    invoke-direct {v1, p0}, Lio/realm/RealmModelOperator;-><init>(Lio/realm/RealmModel;)V

    move-object p0, v1

    :goto_0
    invoke-direct {v0, p0}, Lio/realm/RealmAny;-><init>(Lio/realm/RealmAnyOperator;)V

    return-object v0
.end method

.method public static valueOf(Ljava/lang/Boolean;)Lio/realm/RealmAny;
    .locals 2

    .line 216
    new-instance v0, Lio/realm/RealmAny;

    if-nez p0, :cond_0

    new-instance p0, Lio/realm/NullRealmAnyOperator;

    invoke-direct {p0}, Lio/realm/NullRealmAnyOperator;-><init>()V

    goto :goto_0

    :cond_0
    new-instance v1, Lio/realm/BooleanRealmAnyOperator;

    invoke-direct {v1, p0}, Lio/realm/BooleanRealmAnyOperator;-><init>(Ljava/lang/Boolean;)V

    move-object p0, v1

    :goto_0
    invoke-direct {v0, p0}, Lio/realm/RealmAny;-><init>(Lio/realm/RealmAnyOperator;)V

    return-object v0
.end method

.method public static valueOf(Ljava/lang/Integer;)Lio/realm/RealmAny;
    .locals 2

    .line 193
    new-instance v0, Lio/realm/RealmAny;

    if-nez p0, :cond_0

    new-instance p0, Lio/realm/NullRealmAnyOperator;

    invoke-direct {p0}, Lio/realm/NullRealmAnyOperator;-><init>()V

    goto :goto_0

    :cond_0
    new-instance v1, Lio/realm/IntegerRealmAnyOperator;

    invoke-direct {v1, p0}, Lio/realm/IntegerRealmAnyOperator;-><init>(Ljava/lang/Integer;)V

    move-object p0, v1

    :goto_0
    invoke-direct {v0, p0}, Lio/realm/RealmAny;-><init>(Lio/realm/RealmAnyOperator;)V

    return-object v0
.end method

.method public static valueOf(Ljava/lang/Long;)Lio/realm/RealmAny;
    .locals 2

    .line 204
    new-instance v0, Lio/realm/RealmAny;

    if-nez p0, :cond_0

    new-instance p0, Lio/realm/NullRealmAnyOperator;

    invoke-direct {p0}, Lio/realm/NullRealmAnyOperator;-><init>()V

    goto :goto_0

    :cond_0
    new-instance v1, Lio/realm/IntegerRealmAnyOperator;

    invoke-direct {v1, p0}, Lio/realm/IntegerRealmAnyOperator;-><init>(Ljava/lang/Long;)V

    move-object p0, v1

    :goto_0
    invoke-direct {v0, p0}, Lio/realm/RealmAny;-><init>(Lio/realm/RealmAnyOperator;)V

    return-object v0
.end method

.method public static valueOf(Ljava/lang/String;)Lio/realm/RealmAny;
    .locals 2

    .line 249
    new-instance v0, Lio/realm/RealmAny;

    if-nez p0, :cond_0

    new-instance p0, Lio/realm/NullRealmAnyOperator;

    invoke-direct {p0}, Lio/realm/NullRealmAnyOperator;-><init>()V

    goto :goto_0

    :cond_0
    new-instance v1, Lio/realm/StringRealmAnyOperator;

    invoke-direct {v1, p0}, Lio/realm/StringRealmAnyOperator;-><init>(Ljava/lang/String;)V

    move-object p0, v1

    :goto_0
    invoke-direct {v0, p0}, Lio/realm/RealmAny;-><init>(Lio/realm/RealmAnyOperator;)V

    return-object v0
.end method


# virtual methods
.method public asRealmModel(Ljava/lang/Class;)Lio/realm/RealmModel;
    .locals 1

    .line 477
    iget-object v0, p0, Lio/realm/RealmAny;->operator:Lio/realm/RealmAnyOperator;

    invoke-virtual {v0, p1}, Lio/realm/RealmAnyOperator;->getValue(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lio/realm/RealmModel;

    return-object p1
.end method

.method public final equals(Ljava/lang/Object;)Z
    .locals 1

    if-ne p1, p0, :cond_0

    const/4 p1, 0x1

    return p1

    .line 551
    :cond_0
    instance-of v0, p1, Lio/realm/RealmAny;

    if-nez v0, :cond_1

    const/4 p1, 0x0

    return p1

    .line 552
    :cond_1
    check-cast p1, Lio/realm/RealmAny;

    .line 553
    iget-object v0, p0, Lio/realm/RealmAny;->operator:Lio/realm/RealmAnyOperator;

    iget-object p1, p1, Lio/realm/RealmAny;->operator:Lio/realm/RealmAnyOperator;

    invoke-virtual {v0, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result p1

    return p1
.end method

.method final getNativePtr()J
    .locals 2

    .line 141
    iget-object v0, p0, Lio/realm/RealmAny;->operator:Lio/realm/RealmAnyOperator;

    invoke-virtual {v0}, Lio/realm/RealmAnyOperator;->getNativePtr()J

    move-result-wide v0

    return-wide v0
.end method

.method public getType()Lio/realm/RealmAny$Type;
    .locals 1

    .line 150
    iget-object v0, p0, Lio/realm/RealmAny;->operator:Lio/realm/RealmAnyOperator;

    invoke-virtual {v0}, Lio/realm/RealmAnyOperator;->getType()Lio/realm/RealmAny$Type;

    move-result-object v0

    return-object v0
.end method

.method public getValueClass()Ljava/lang/Class;
    .locals 1

    .line 160
    iget-object v0, p0, Lio/realm/RealmAny;->operator:Lio/realm/RealmAnyOperator;

    invoke-virtual {v0}, Lio/realm/RealmAnyOperator;->getTypedClass()Ljava/lang/Class;

    move-result-object v0

    return-object v0
.end method

.method public final hashCode()I
    .locals 1

    .line 538
    iget-object v0, p0, Lio/realm/RealmAny;->operator:Lio/realm/RealmAnyOperator;

    invoke-virtual {v0}, Ljava/lang/Object;->hashCode()I

    move-result v0

    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 1

    .line 563
    iget-object v0, p0, Lio/realm/RealmAny;->operator:Lio/realm/RealmAnyOperator;

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
