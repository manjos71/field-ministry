.class public abstract Lcom/nineoldandroids/util/Property;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private final mName:Ljava/lang/String;

.field private final mType:Ljava/lang/Class;


# direct methods
.method public constructor <init>(Ljava/lang/Class;Ljava/lang/String;)V
    .locals 0

    .line 61
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 62
    iput-object p2, p0, Lcom/nineoldandroids/util/Property;->mName:Ljava/lang/String;

    .line 63
    iput-object p1, p0, Lcom/nineoldandroids/util/Property;->mType:Ljava/lang/Class;

    return-void
.end method


# virtual methods
.method public abstract get(Ljava/lang/Object;)Ljava/lang/Object;
.end method

.method public getName()Ljava/lang/String;
    .locals 1

    .line 97
    iget-object v0, p0, Lcom/nineoldandroids/util/Property;->mName:Ljava/lang/String;

    return-object v0
.end method

.method public abstract set(Ljava/lang/Object;Ljava/lang/Object;)V
.end method
