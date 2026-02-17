.class public final enum Lcom/lostpixels/fieldservice/helpfunctions/PublicConstants$EColorBy;
.super Ljava/lang/Enum;
.source "SourceFile"


# static fields
.field private static final synthetic $VALUES:[Lcom/lostpixels/fieldservice/helpfunctions/PublicConstants$EColorBy;

.field public static final enum eColorByDate:Lcom/lostpixels/fieldservice/helpfunctions/PublicConstants$EColorBy;

.field public static final enum eColorByType:Lcom/lostpixels/fieldservice/helpfunctions/PublicConstants$EColorBy;


# direct methods
.method private static synthetic $values()[Lcom/lostpixels/fieldservice/helpfunctions/PublicConstants$EColorBy;
    .locals 3

    const/4 v0, 0x2

    .line 87
    new-array v0, v0, [Lcom/lostpixels/fieldservice/helpfunctions/PublicConstants$EColorBy;

    sget-object v1, Lcom/lostpixels/fieldservice/helpfunctions/PublicConstants$EColorBy;->eColorByDate:Lcom/lostpixels/fieldservice/helpfunctions/PublicConstants$EColorBy;

    const/4 v2, 0x0

    aput-object v1, v0, v2

    sget-object v1, Lcom/lostpixels/fieldservice/helpfunctions/PublicConstants$EColorBy;->eColorByType:Lcom/lostpixels/fieldservice/helpfunctions/PublicConstants$EColorBy;

    const/4 v2, 0x1

    aput-object v1, v0, v2

    return-object v0
.end method

.method static constructor <clinit>()V
    .locals 3

    .line 88
    new-instance v0, Lcom/lostpixels/fieldservice/helpfunctions/PublicConstants$EColorBy;

    const-string v1, "eColorByDate"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcom/lostpixels/fieldservice/helpfunctions/PublicConstants$EColorBy;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/lostpixels/fieldservice/helpfunctions/PublicConstants$EColorBy;->eColorByDate:Lcom/lostpixels/fieldservice/helpfunctions/PublicConstants$EColorBy;

    new-instance v0, Lcom/lostpixels/fieldservice/helpfunctions/PublicConstants$EColorBy;

    const-string v1, "eColorByType"

    const/4 v2, 0x1

    invoke-direct {v0, v1, v2}, Lcom/lostpixels/fieldservice/helpfunctions/PublicConstants$EColorBy;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/lostpixels/fieldservice/helpfunctions/PublicConstants$EColorBy;->eColorByType:Lcom/lostpixels/fieldservice/helpfunctions/PublicConstants$EColorBy;

    .line 87
    invoke-static {}, Lcom/lostpixels/fieldservice/helpfunctions/PublicConstants$EColorBy;->$values()[Lcom/lostpixels/fieldservice/helpfunctions/PublicConstants$EColorBy;

    move-result-object v0

    sput-object v0, Lcom/lostpixels/fieldservice/helpfunctions/PublicConstants$EColorBy;->$VALUES:[Lcom/lostpixels/fieldservice/helpfunctions/PublicConstants$EColorBy;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0

    .line 87
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static token(Lcom/lostpixels/fieldservice/helpfunctions/PublicConstants$EColorBy;)Ljava/lang/String;
    .locals 0

    .line 97
    invoke-virtual {p0}, Ljava/lang/Enum;->name()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static type(Ljava/lang/String;)Lcom/lostpixels/fieldservice/helpfunctions/PublicConstants$EColorBy;
    .locals 0

    .line 92
    invoke-static {p0}, Lcom/lostpixels/fieldservice/helpfunctions/PublicConstants$EColorBy;->valueOf(Ljava/lang/String;)Lcom/lostpixels/fieldservice/helpfunctions/PublicConstants$EColorBy;

    move-result-object p0

    return-object p0
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/lostpixels/fieldservice/helpfunctions/PublicConstants$EColorBy;
    .locals 1

    .line 87
    const-class v0, Lcom/lostpixels/fieldservice/helpfunctions/PublicConstants$EColorBy;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/lostpixels/fieldservice/helpfunctions/PublicConstants$EColorBy;

    return-object p0
.end method

.method public static values()[Lcom/lostpixels/fieldservice/helpfunctions/PublicConstants$EColorBy;
    .locals 1

    .line 87
    sget-object v0, Lcom/lostpixels/fieldservice/helpfunctions/PublicConstants$EColorBy;->$VALUES:[Lcom/lostpixels/fieldservice/helpfunctions/PublicConstants$EColorBy;

    invoke-virtual {v0}, [Lcom/lostpixels/fieldservice/helpfunctions/PublicConstants$EColorBy;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/lostpixels/fieldservice/helpfunctions/PublicConstants$EColorBy;

    return-object v0
.end method
