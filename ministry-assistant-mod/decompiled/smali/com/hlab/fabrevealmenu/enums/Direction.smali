.class public final enum Lcom/hlab/fabrevealmenu/enums/Direction;
.super Ljava/lang/Enum;
.source "SourceFile"


# static fields
.field private static final synthetic $VALUES:[Lcom/hlab/fabrevealmenu/enums/Direction;

.field public static final enum DOWN:Lcom/hlab/fabrevealmenu/enums/Direction;

.field public static final enum LEFT:Lcom/hlab/fabrevealmenu/enums/Direction;

.field public static final enum RIGHT:Lcom/hlab/fabrevealmenu/enums/Direction;

.field public static final enum UP:Lcom/hlab/fabrevealmenu/enums/Direction;


# instance fields
.field private id:I


# direct methods
.method private static synthetic $values()[Lcom/hlab/fabrevealmenu/enums/Direction;
    .locals 3

    const/4 v0, 0x4

    .line 3
    new-array v0, v0, [Lcom/hlab/fabrevealmenu/enums/Direction;

    sget-object v1, Lcom/hlab/fabrevealmenu/enums/Direction;->LEFT:Lcom/hlab/fabrevealmenu/enums/Direction;

    const/4 v2, 0x0

    aput-object v1, v0, v2

    sget-object v1, Lcom/hlab/fabrevealmenu/enums/Direction;->UP:Lcom/hlab/fabrevealmenu/enums/Direction;

    const/4 v2, 0x1

    aput-object v1, v0, v2

    sget-object v1, Lcom/hlab/fabrevealmenu/enums/Direction;->RIGHT:Lcom/hlab/fabrevealmenu/enums/Direction;

    const/4 v2, 0x2

    aput-object v1, v0, v2

    sget-object v1, Lcom/hlab/fabrevealmenu/enums/Direction;->DOWN:Lcom/hlab/fabrevealmenu/enums/Direction;

    const/4 v2, 0x3

    aput-object v1, v0, v2

    return-object v0
.end method

.method static constructor <clinit>()V
    .locals 3

    .line 4
    new-instance v0, Lcom/hlab/fabrevealmenu/enums/Direction;

    const-string v1, "LEFT"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2, v2}, Lcom/hlab/fabrevealmenu/enums/Direction;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/hlab/fabrevealmenu/enums/Direction;->LEFT:Lcom/hlab/fabrevealmenu/enums/Direction;

    new-instance v0, Lcom/hlab/fabrevealmenu/enums/Direction;

    const-string v1, "UP"

    const/4 v2, 0x1

    invoke-direct {v0, v1, v2, v2}, Lcom/hlab/fabrevealmenu/enums/Direction;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/hlab/fabrevealmenu/enums/Direction;->UP:Lcom/hlab/fabrevealmenu/enums/Direction;

    new-instance v0, Lcom/hlab/fabrevealmenu/enums/Direction;

    const-string v1, "RIGHT"

    const/4 v2, 0x2

    invoke-direct {v0, v1, v2, v2}, Lcom/hlab/fabrevealmenu/enums/Direction;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/hlab/fabrevealmenu/enums/Direction;->RIGHT:Lcom/hlab/fabrevealmenu/enums/Direction;

    new-instance v0, Lcom/hlab/fabrevealmenu/enums/Direction;

    const-string v1, "DOWN"

    const/4 v2, 0x3

    invoke-direct {v0, v1, v2, v2}, Lcom/hlab/fabrevealmenu/enums/Direction;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/hlab/fabrevealmenu/enums/Direction;->DOWN:Lcom/hlab/fabrevealmenu/enums/Direction;

    .line 3
    invoke-static {}, Lcom/hlab/fabrevealmenu/enums/Direction;->$values()[Lcom/hlab/fabrevealmenu/enums/Direction;

    move-result-object v0

    sput-object v0, Lcom/hlab/fabrevealmenu/enums/Direction;->$VALUES:[Lcom/hlab/fabrevealmenu/enums/Direction;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;II)V
    .locals 0

    .line 7
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 8
    iput p3, p0, Lcom/hlab/fabrevealmenu/enums/Direction;->id:I

    return-void
.end method

.method public static fromId(I)Lcom/hlab/fabrevealmenu/enums/Direction;
    .locals 5

    .line 12
    invoke-static {}, Lcom/hlab/fabrevealmenu/enums/Direction;->values()[Lcom/hlab/fabrevealmenu/enums/Direction;

    move-result-object v0

    array-length v1, v0

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_1

    aget-object v3, v0, v2

    .line 13
    iget v4, v3, Lcom/hlab/fabrevealmenu/enums/Direction;->id:I

    if-ne v4, p0, :cond_0

    return-object v3

    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 15
    :cond_1
    new-instance p0, Ljava/lang/IllegalArgumentException;

    invoke-direct {p0}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw p0
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/hlab/fabrevealmenu/enums/Direction;
    .locals 1

    .line 3
    const-class v0, Lcom/hlab/fabrevealmenu/enums/Direction;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/hlab/fabrevealmenu/enums/Direction;

    return-object p0
.end method

.method public static values()[Lcom/hlab/fabrevealmenu/enums/Direction;
    .locals 1

    .line 3
    sget-object v0, Lcom/hlab/fabrevealmenu/enums/Direction;->$VALUES:[Lcom/hlab/fabrevealmenu/enums/Direction;

    invoke-virtual {v0}, [Lcom/hlab/fabrevealmenu/enums/Direction;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/hlab/fabrevealmenu/enums/Direction;

    return-object v0
.end method
