.class public Lezvcard/util/PartialDate$Builder;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lezvcard/util/PartialDate;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Builder"
.end annotation


# instance fields
.field private final components:[Ljava/lang/Integer;

.field private offset:Lezvcard/util/UtcOffset;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 468
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x6

    .line 469
    new-array v0, v0, [Ljava/lang/Integer;

    iput-object v0, p0, Lezvcard/util/PartialDate$Builder;->components:[Ljava/lang/Integer;

    return-void
.end method

.method static synthetic access$000(Lezvcard/util/PartialDate$Builder;)[Ljava/lang/Integer;
    .locals 0

    .line 464
    iget-object p0, p0, Lezvcard/util/PartialDate$Builder;->components:[Ljava/lang/Integer;

    return-object p0
.end method

.method static synthetic access$102(Lezvcard/util/PartialDate$Builder;Lezvcard/util/UtcOffset;)Lezvcard/util/UtcOffset;
    .locals 0

    .line 464
    iput-object p1, p0, Lezvcard/util/PartialDate$Builder;->offset:Lezvcard/util/UtcOffset;

    return-object p1
.end method


# virtual methods
.method public build()Lezvcard/util/PartialDate;
    .locals 4

    .line 556
    iget-object v0, p0, Lezvcard/util/PartialDate$Builder;->components:[Ljava/lang/Integer;

    const/4 v1, 0x0

    aget-object v1, v0, v1

    if-eqz v1, :cond_1

    const/4 v1, 0x1

    aget-object v1, v0, v1

    if-nez v1, :cond_1

    const/4 v1, 0x2

    aget-object v1, v0, v1

    if-nez v1, :cond_0

    goto :goto_0

    .line 557
    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Invalid date component combination: year, date"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_1
    :goto_0
    const/4 v1, 0x3

    .line 559
    aget-object v1, v0, v1

    if-eqz v1, :cond_3

    const/4 v1, 0x4

    aget-object v1, v0, v1

    if-nez v1, :cond_3

    const/4 v1, 0x5

    aget-object v0, v0, v1

    if-nez v0, :cond_2

    goto :goto_1

    .line 560
    :cond_2
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Invalid time component combination: hour, second"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 563
    :cond_3
    :goto_1
    new-instance v0, Lezvcard/util/PartialDate;

    iget-object v1, p0, Lezvcard/util/PartialDate$Builder;->components:[Ljava/lang/Integer;

    iget-object v2, p0, Lezvcard/util/PartialDate$Builder;->offset:Lezvcard/util/UtcOffset;

    const/4 v3, 0x0

    invoke-direct {v0, v1, v2, v3}, Lezvcard/util/PartialDate;-><init>([Ljava/lang/Integer;Lezvcard/util/UtcOffset;Lezvcard/util/PartialDate$1;)V

    return-object v0
.end method
