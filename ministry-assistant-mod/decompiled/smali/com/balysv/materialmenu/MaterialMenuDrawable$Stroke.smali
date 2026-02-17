.class public final enum Lcom/balysv/materialmenu/MaterialMenuDrawable$Stroke;
.super Ljava/lang/Enum;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/balysv/materialmenu/MaterialMenuDrawable;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "Stroke"
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/balysv/materialmenu/MaterialMenuDrawable$Stroke;

.field public static final enum EXTRA_THIN:Lcom/balysv/materialmenu/MaterialMenuDrawable$Stroke;

.field public static final enum REGULAR:Lcom/balysv/materialmenu/MaterialMenuDrawable$Stroke;

.field public static final enum THIN:Lcom/balysv/materialmenu/MaterialMenuDrawable$Stroke;


# instance fields
.field private final strokeWidth:I


# direct methods
.method static constructor <clinit>()V
    .locals 8

    .line 94
    new-instance v0, Lcom/balysv/materialmenu/MaterialMenuDrawable$Stroke;

    const-string v1, "REGULAR"

    const/4 v2, 0x0

    const/4 v3, 0x3

    invoke-direct {v0, v1, v2, v3}, Lcom/balysv/materialmenu/MaterialMenuDrawable$Stroke;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/balysv/materialmenu/MaterialMenuDrawable$Stroke;->REGULAR:Lcom/balysv/materialmenu/MaterialMenuDrawable$Stroke;

    .line 98
    new-instance v1, Lcom/balysv/materialmenu/MaterialMenuDrawable$Stroke;

    const-string v4, "THIN"

    const/4 v5, 0x1

    const/4 v6, 0x2

    invoke-direct {v1, v4, v5, v6}, Lcom/balysv/materialmenu/MaterialMenuDrawable$Stroke;-><init>(Ljava/lang/String;II)V

    sput-object v1, Lcom/balysv/materialmenu/MaterialMenuDrawable$Stroke;->THIN:Lcom/balysv/materialmenu/MaterialMenuDrawable$Stroke;

    .line 102
    new-instance v4, Lcom/balysv/materialmenu/MaterialMenuDrawable$Stroke;

    const-string v7, "EXTRA_THIN"

    invoke-direct {v4, v7, v6, v5}, Lcom/balysv/materialmenu/MaterialMenuDrawable$Stroke;-><init>(Ljava/lang/String;II)V

    sput-object v4, Lcom/balysv/materialmenu/MaterialMenuDrawable$Stroke;->EXTRA_THIN:Lcom/balysv/materialmenu/MaterialMenuDrawable$Stroke;

    .line 90
    new-array v3, v3, [Lcom/balysv/materialmenu/MaterialMenuDrawable$Stroke;

    aput-object v0, v3, v2

    aput-object v1, v3, v5

    aput-object v4, v3, v6

    sput-object v3, Lcom/balysv/materialmenu/MaterialMenuDrawable$Stroke;->$VALUES:[Lcom/balysv/materialmenu/MaterialMenuDrawable$Stroke;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;II)V
    .locals 0

    .line 106
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 107
    iput p3, p0, Lcom/balysv/materialmenu/MaterialMenuDrawable$Stroke;->strokeWidth:I

    return-void
.end method

.method static synthetic access$000(Lcom/balysv/materialmenu/MaterialMenuDrawable$Stroke;)I
    .locals 0

    .line 90
    iget p0, p0, Lcom/balysv/materialmenu/MaterialMenuDrawable$Stroke;->strokeWidth:I

    return p0
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/balysv/materialmenu/MaterialMenuDrawable$Stroke;
    .locals 1

    .line 90
    const-class v0, Lcom/balysv/materialmenu/MaterialMenuDrawable$Stroke;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/balysv/materialmenu/MaterialMenuDrawable$Stroke;

    return-object p0
.end method

.method public static values()[Lcom/balysv/materialmenu/MaterialMenuDrawable$Stroke;
    .locals 1

    .line 90
    sget-object v0, Lcom/balysv/materialmenu/MaterialMenuDrawable$Stroke;->$VALUES:[Lcom/balysv/materialmenu/MaterialMenuDrawable$Stroke;

    invoke-virtual {v0}, [Lcom/balysv/materialmenu/MaterialMenuDrawable$Stroke;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/balysv/materialmenu/MaterialMenuDrawable$Stroke;

    return-object v0
.end method
