.class final enum Lcom/thebnich/floatinghintedittext/FloatingHintEditText$Animation;
.super Ljava/lang/Enum;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/thebnich/floatinghintedittext/FloatingHintEditText;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x401a
    name = "Animation"
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/thebnich/floatinghintedittext/FloatingHintEditText$Animation;

.field public static final enum GROW:Lcom/thebnich/floatinghintedittext/FloatingHintEditText$Animation;

.field public static final enum NONE:Lcom/thebnich/floatinghintedittext/FloatingHintEditText$Animation;

.field public static final enum SHRINK:Lcom/thebnich/floatinghintedittext/FloatingHintEditText$Animation;


# direct methods
.method private static synthetic $values()[Lcom/thebnich/floatinghintedittext/FloatingHintEditText$Animation;
    .locals 3

    const/4 v0, 0x3

    .line 15
    new-array v0, v0, [Lcom/thebnich/floatinghintedittext/FloatingHintEditText$Animation;

    sget-object v1, Lcom/thebnich/floatinghintedittext/FloatingHintEditText$Animation;->NONE:Lcom/thebnich/floatinghintedittext/FloatingHintEditText$Animation;

    const/4 v2, 0x0

    aput-object v1, v0, v2

    sget-object v1, Lcom/thebnich/floatinghintedittext/FloatingHintEditText$Animation;->SHRINK:Lcom/thebnich/floatinghintedittext/FloatingHintEditText$Animation;

    const/4 v2, 0x1

    aput-object v1, v0, v2

    sget-object v1, Lcom/thebnich/floatinghintedittext/FloatingHintEditText$Animation;->GROW:Lcom/thebnich/floatinghintedittext/FloatingHintEditText$Animation;

    const/4 v2, 0x2

    aput-object v1, v0, v2

    return-object v0
.end method

.method static constructor <clinit>()V
    .locals 3

    .line 15
    new-instance v0, Lcom/thebnich/floatinghintedittext/FloatingHintEditText$Animation;

    const-string v1, "NONE"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcom/thebnich/floatinghintedittext/FloatingHintEditText$Animation;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/thebnich/floatinghintedittext/FloatingHintEditText$Animation;->NONE:Lcom/thebnich/floatinghintedittext/FloatingHintEditText$Animation;

    new-instance v0, Lcom/thebnich/floatinghintedittext/FloatingHintEditText$Animation;

    const-string v1, "SHRINK"

    const/4 v2, 0x1

    invoke-direct {v0, v1, v2}, Lcom/thebnich/floatinghintedittext/FloatingHintEditText$Animation;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/thebnich/floatinghintedittext/FloatingHintEditText$Animation;->SHRINK:Lcom/thebnich/floatinghintedittext/FloatingHintEditText$Animation;

    new-instance v0, Lcom/thebnich/floatinghintedittext/FloatingHintEditText$Animation;

    const-string v1, "GROW"

    const/4 v2, 0x2

    invoke-direct {v0, v1, v2}, Lcom/thebnich/floatinghintedittext/FloatingHintEditText$Animation;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/thebnich/floatinghintedittext/FloatingHintEditText$Animation;->GROW:Lcom/thebnich/floatinghintedittext/FloatingHintEditText$Animation;

    invoke-static {}, Lcom/thebnich/floatinghintedittext/FloatingHintEditText$Animation;->$values()[Lcom/thebnich/floatinghintedittext/FloatingHintEditText$Animation;

    move-result-object v0

    sput-object v0, Lcom/thebnich/floatinghintedittext/FloatingHintEditText$Animation;->$VALUES:[Lcom/thebnich/floatinghintedittext/FloatingHintEditText$Animation;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0

    .line 15
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/thebnich/floatinghintedittext/FloatingHintEditText$Animation;
    .locals 1

    .line 15
    const-class v0, Lcom/thebnich/floatinghintedittext/FloatingHintEditText$Animation;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/thebnich/floatinghintedittext/FloatingHintEditText$Animation;

    return-object p0
.end method

.method public static values()[Lcom/thebnich/floatinghintedittext/FloatingHintEditText$Animation;
    .locals 1

    .line 15
    sget-object v0, Lcom/thebnich/floatinghintedittext/FloatingHintEditText$Animation;->$VALUES:[Lcom/thebnich/floatinghintedittext/FloatingHintEditText$Animation;

    invoke-virtual {v0}, [Lcom/thebnich/floatinghintedittext/FloatingHintEditText$Animation;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/thebnich/floatinghintedittext/FloatingHintEditText$Animation;

    return-object v0
.end method
