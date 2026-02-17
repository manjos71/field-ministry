.class public final enum Lcom/balysv/materialmenu/MaterialMenuDrawable$AnimationState;
.super Ljava/lang/Enum;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/balysv/materialmenu/MaterialMenuDrawable;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "AnimationState"
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/balysv/materialmenu/MaterialMenuDrawable$AnimationState;

.field public static final enum ARROW_CHECK:Lcom/balysv/materialmenu/MaterialMenuDrawable$AnimationState;

.field public static final enum ARROW_X:Lcom/balysv/materialmenu/MaterialMenuDrawable$AnimationState;

.field public static final enum BURGER_ARROW:Lcom/balysv/materialmenu/MaterialMenuDrawable$AnimationState;

.field public static final enum BURGER_CHECK:Lcom/balysv/materialmenu/MaterialMenuDrawable$AnimationState;

.field public static final enum BURGER_X:Lcom/balysv/materialmenu/MaterialMenuDrawable$AnimationState;

.field public static final enum X_CHECK:Lcom/balysv/materialmenu/MaterialMenuDrawable$AnimationState;


# direct methods
.method static constructor <clinit>()V
    .locals 13

    .line 49
    new-instance v0, Lcom/balysv/materialmenu/MaterialMenuDrawable$AnimationState;

    const-string v1, "BURGER_ARROW"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcom/balysv/materialmenu/MaterialMenuDrawable$AnimationState;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/balysv/materialmenu/MaterialMenuDrawable$AnimationState;->BURGER_ARROW:Lcom/balysv/materialmenu/MaterialMenuDrawable$AnimationState;

    new-instance v1, Lcom/balysv/materialmenu/MaterialMenuDrawable$AnimationState;

    const-string v3, "BURGER_X"

    const/4 v4, 0x1

    invoke-direct {v1, v3, v4}, Lcom/balysv/materialmenu/MaterialMenuDrawable$AnimationState;-><init>(Ljava/lang/String;I)V

    sput-object v1, Lcom/balysv/materialmenu/MaterialMenuDrawable$AnimationState;->BURGER_X:Lcom/balysv/materialmenu/MaterialMenuDrawable$AnimationState;

    new-instance v3, Lcom/balysv/materialmenu/MaterialMenuDrawable$AnimationState;

    const-string v5, "ARROW_X"

    const/4 v6, 0x2

    invoke-direct {v3, v5, v6}, Lcom/balysv/materialmenu/MaterialMenuDrawable$AnimationState;-><init>(Ljava/lang/String;I)V

    sput-object v3, Lcom/balysv/materialmenu/MaterialMenuDrawable$AnimationState;->ARROW_X:Lcom/balysv/materialmenu/MaterialMenuDrawable$AnimationState;

    new-instance v5, Lcom/balysv/materialmenu/MaterialMenuDrawable$AnimationState;

    const-string v7, "ARROW_CHECK"

    const/4 v8, 0x3

    invoke-direct {v5, v7, v8}, Lcom/balysv/materialmenu/MaterialMenuDrawable$AnimationState;-><init>(Ljava/lang/String;I)V

    sput-object v5, Lcom/balysv/materialmenu/MaterialMenuDrawable$AnimationState;->ARROW_CHECK:Lcom/balysv/materialmenu/MaterialMenuDrawable$AnimationState;

    new-instance v7, Lcom/balysv/materialmenu/MaterialMenuDrawable$AnimationState;

    const-string v9, "BURGER_CHECK"

    const/4 v10, 0x4

    invoke-direct {v7, v9, v10}, Lcom/balysv/materialmenu/MaterialMenuDrawable$AnimationState;-><init>(Ljava/lang/String;I)V

    sput-object v7, Lcom/balysv/materialmenu/MaterialMenuDrawable$AnimationState;->BURGER_CHECK:Lcom/balysv/materialmenu/MaterialMenuDrawable$AnimationState;

    new-instance v9, Lcom/balysv/materialmenu/MaterialMenuDrawable$AnimationState;

    const-string v11, "X_CHECK"

    const/4 v12, 0x5

    invoke-direct {v9, v11, v12}, Lcom/balysv/materialmenu/MaterialMenuDrawable$AnimationState;-><init>(Ljava/lang/String;I)V

    sput-object v9, Lcom/balysv/materialmenu/MaterialMenuDrawable$AnimationState;->X_CHECK:Lcom/balysv/materialmenu/MaterialMenuDrawable$AnimationState;

    const/4 v11, 0x6

    .line 48
    new-array v11, v11, [Lcom/balysv/materialmenu/MaterialMenuDrawable$AnimationState;

    aput-object v0, v11, v2

    aput-object v1, v11, v4

    aput-object v3, v11, v6

    aput-object v5, v11, v8

    aput-object v7, v11, v10

    aput-object v9, v11, v12

    sput-object v11, Lcom/balysv/materialmenu/MaterialMenuDrawable$AnimationState;->$VALUES:[Lcom/balysv/materialmenu/MaterialMenuDrawable$AnimationState;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0

    .line 48
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/balysv/materialmenu/MaterialMenuDrawable$AnimationState;
    .locals 1

    .line 48
    const-class v0, Lcom/balysv/materialmenu/MaterialMenuDrawable$AnimationState;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/balysv/materialmenu/MaterialMenuDrawable$AnimationState;

    return-object p0
.end method

.method public static values()[Lcom/balysv/materialmenu/MaterialMenuDrawable$AnimationState;
    .locals 1

    .line 48
    sget-object v0, Lcom/balysv/materialmenu/MaterialMenuDrawable$AnimationState;->$VALUES:[Lcom/balysv/materialmenu/MaterialMenuDrawable$AnimationState;

    invoke-virtual {v0}, [Lcom/balysv/materialmenu/MaterialMenuDrawable$AnimationState;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/balysv/materialmenu/MaterialMenuDrawable$AnimationState;

    return-object v0
.end method
