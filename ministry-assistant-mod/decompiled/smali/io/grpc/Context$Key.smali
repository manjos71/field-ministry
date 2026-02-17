.class public final Lio/grpc/Context$Key;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lio/grpc/Context;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Key"
.end annotation


# instance fields
.field private final defaultValue:Ljava/lang/Object;

.field private final name:Ljava/lang/String;


# direct methods
.method constructor <init>(Ljava/lang/String;)V
    .locals 1

    const/4 v0, 0x0

    .line 911
    invoke-direct {p0, p1, v0}, Lio/grpc/Context$Key;-><init>(Ljava/lang/String;Ljava/lang/Object;)V

    return-void
.end method

.method constructor <init>(Ljava/lang/String;Ljava/lang/Object;)V
    .locals 1

    .line 914
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 915
    const-string v0, "name"

    invoke-static {p1, v0}, Lio/grpc/Context;->checkNotNull(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/String;

    iput-object p1, p0, Lio/grpc/Context$Key;->name:Ljava/lang/String;

    .line 916
    iput-object p2, p0, Lio/grpc/Context$Key;->defaultValue:Ljava/lang/Object;

    return-void
.end method


# virtual methods
.method public get(Lio/grpc/Context;)Ljava/lang/Object;
    .locals 0

    .line 932
    invoke-virtual {p1, p0}, Lio/grpc/Context;->lookup(Lio/grpc/Context$Key;)Ljava/lang/Object;

    move-result-object p1

    if-nez p1, :cond_0

    .line 933
    iget-object p1, p0, Lio/grpc/Context$Key;->defaultValue:Ljava/lang/Object;

    :cond_0
    return-object p1
.end method

.method public toString()Ljava/lang/String;
    .locals 1

    .line 938
    iget-object v0, p0, Lio/grpc/Context$Key;->name:Ljava/lang/String;

    return-object v0
.end method
