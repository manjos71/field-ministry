.class public final enum Lio/codetail/animation/arcanimator/Side;
.super Ljava/lang/Enum;
.source "SourceFile"


# static fields
.field private static final synthetic $VALUES:[Lio/codetail/animation/arcanimator/Side;

.field public static final enum LEFT:Lio/codetail/animation/arcanimator/Side;

.field public static final enum RIGHT:Lio/codetail/animation/arcanimator/Side;


# instance fields
.field final value:I


# direct methods
.method private static synthetic $values()[Lio/codetail/animation/arcanimator/Side;
    .locals 3

    const/4 v0, 0x2

    .line 3
    new-array v0, v0, [Lio/codetail/animation/arcanimator/Side;

    sget-object v1, Lio/codetail/animation/arcanimator/Side;->RIGHT:Lio/codetail/animation/arcanimator/Side;

    const/4 v2, 0x0

    aput-object v1, v0, v2

    sget-object v1, Lio/codetail/animation/arcanimator/Side;->LEFT:Lio/codetail/animation/arcanimator/Side;

    const/4 v2, 0x1

    aput-object v1, v0, v2

    return-object v0
.end method

.method static constructor <clinit>()V
    .locals 3

    .line 4
    new-instance v0, Lio/codetail/animation/arcanimator/Side;

    const-string v1, "RIGHT"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2, v2}, Lio/codetail/animation/arcanimator/Side;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lio/codetail/animation/arcanimator/Side;->RIGHT:Lio/codetail/animation/arcanimator/Side;

    new-instance v0, Lio/codetail/animation/arcanimator/Side;

    const-string v1, "LEFT"

    const/4 v2, 0x1

    invoke-direct {v0, v1, v2, v2}, Lio/codetail/animation/arcanimator/Side;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lio/codetail/animation/arcanimator/Side;->LEFT:Lio/codetail/animation/arcanimator/Side;

    .line 3
    invoke-static {}, Lio/codetail/animation/arcanimator/Side;->$values()[Lio/codetail/animation/arcanimator/Side;

    move-result-object v0

    sput-object v0, Lio/codetail/animation/arcanimator/Side;->$VALUES:[Lio/codetail/animation/arcanimator/Side;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;II)V
    .locals 0

    .line 8
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 9
    iput p3, p0, Lio/codetail/animation/arcanimator/Side;->value:I

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lio/codetail/animation/arcanimator/Side;
    .locals 1

    .line 3
    const-class v0, Lio/codetail/animation/arcanimator/Side;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lio/codetail/animation/arcanimator/Side;

    return-object p0
.end method

.method public static values()[Lio/codetail/animation/arcanimator/Side;
    .locals 1

    .line 3
    sget-object v0, Lio/codetail/animation/arcanimator/Side;->$VALUES:[Lio/codetail/animation/arcanimator/Side;

    invoke-virtual {v0}, [Lio/codetail/animation/arcanimator/Side;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lio/codetail/animation/arcanimator/Side;

    return-object v0
.end method
