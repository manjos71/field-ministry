.class public final enum Lcom/lostpixels/fieldservice/helpfunctions/PublicConstants$EGroupBy;
.super Ljava/lang/Enum;
.source "SourceFile"


# static fields
.field private static final synthetic $VALUES:[Lcom/lostpixels/fieldservice/helpfunctions/PublicConstants$EGroupBy;

.field public static final enum eByBestVisit:Lcom/lostpixels/fieldservice/helpfunctions/PublicConstants$EGroupBy;

.field public static final enum eByCity:Lcom/lostpixels/fieldservice/helpfunctions/PublicConstants$EGroupBy;

.field public static final enum eByDate:Lcom/lostpixels/fieldservice/helpfunctions/PublicConstants$EGroupBy;

.field public static final enum eByNeighborhood:Lcom/lostpixels/fieldservice/helpfunctions/PublicConstants$EGroupBy;

.field public static final enum eByPriority:Lcom/lostpixels/fieldservice/helpfunctions/PublicConstants$EGroupBy;

.field public static final enum eByScheduledTime:Lcom/lostpixels/fieldservice/helpfunctions/PublicConstants$EGroupBy;

.field public static final enum eNoGrouping:Lcom/lostpixels/fieldservice/helpfunctions/PublicConstants$EGroupBy;


# direct methods
.method private static synthetic $values()[Lcom/lostpixels/fieldservice/helpfunctions/PublicConstants$EGroupBy;
    .locals 3

    const/4 v0, 0x7

    .line 116
    new-array v0, v0, [Lcom/lostpixels/fieldservice/helpfunctions/PublicConstants$EGroupBy;

    sget-object v1, Lcom/lostpixels/fieldservice/helpfunctions/PublicConstants$EGroupBy;->eByNeighborhood:Lcom/lostpixels/fieldservice/helpfunctions/PublicConstants$EGroupBy;

    const/4 v2, 0x0

    aput-object v1, v0, v2

    sget-object v1, Lcom/lostpixels/fieldservice/helpfunctions/PublicConstants$EGroupBy;->eByCity:Lcom/lostpixels/fieldservice/helpfunctions/PublicConstants$EGroupBy;

    const/4 v2, 0x1

    aput-object v1, v0, v2

    sget-object v1, Lcom/lostpixels/fieldservice/helpfunctions/PublicConstants$EGroupBy;->eByPriority:Lcom/lostpixels/fieldservice/helpfunctions/PublicConstants$EGroupBy;

    const/4 v2, 0x2

    aput-object v1, v0, v2

    sget-object v1, Lcom/lostpixels/fieldservice/helpfunctions/PublicConstants$EGroupBy;->eByBestVisit:Lcom/lostpixels/fieldservice/helpfunctions/PublicConstants$EGroupBy;

    const/4 v2, 0x3

    aput-object v1, v0, v2

    sget-object v1, Lcom/lostpixels/fieldservice/helpfunctions/PublicConstants$EGroupBy;->eByScheduledTime:Lcom/lostpixels/fieldservice/helpfunctions/PublicConstants$EGroupBy;

    const/4 v2, 0x4

    aput-object v1, v0, v2

    sget-object v1, Lcom/lostpixels/fieldservice/helpfunctions/PublicConstants$EGroupBy;->eByDate:Lcom/lostpixels/fieldservice/helpfunctions/PublicConstants$EGroupBy;

    const/4 v2, 0x5

    aput-object v1, v0, v2

    sget-object v1, Lcom/lostpixels/fieldservice/helpfunctions/PublicConstants$EGroupBy;->eNoGrouping:Lcom/lostpixels/fieldservice/helpfunctions/PublicConstants$EGroupBy;

    const/4 v2, 0x6

    aput-object v1, v0, v2

    return-object v0
.end method

.method static constructor <clinit>()V
    .locals 3

    .line 117
    new-instance v0, Lcom/lostpixels/fieldservice/helpfunctions/PublicConstants$EGroupBy;

    const-string v1, "eByNeighborhood"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcom/lostpixels/fieldservice/helpfunctions/PublicConstants$EGroupBy;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/lostpixels/fieldservice/helpfunctions/PublicConstants$EGroupBy;->eByNeighborhood:Lcom/lostpixels/fieldservice/helpfunctions/PublicConstants$EGroupBy;

    new-instance v0, Lcom/lostpixels/fieldservice/helpfunctions/PublicConstants$EGroupBy;

    const-string v1, "eByCity"

    const/4 v2, 0x1

    invoke-direct {v0, v1, v2}, Lcom/lostpixels/fieldservice/helpfunctions/PublicConstants$EGroupBy;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/lostpixels/fieldservice/helpfunctions/PublicConstants$EGroupBy;->eByCity:Lcom/lostpixels/fieldservice/helpfunctions/PublicConstants$EGroupBy;

    new-instance v0, Lcom/lostpixels/fieldservice/helpfunctions/PublicConstants$EGroupBy;

    const-string v1, "eByPriority"

    const/4 v2, 0x2

    invoke-direct {v0, v1, v2}, Lcom/lostpixels/fieldservice/helpfunctions/PublicConstants$EGroupBy;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/lostpixels/fieldservice/helpfunctions/PublicConstants$EGroupBy;->eByPriority:Lcom/lostpixels/fieldservice/helpfunctions/PublicConstants$EGroupBy;

    new-instance v0, Lcom/lostpixels/fieldservice/helpfunctions/PublicConstants$EGroupBy;

    const-string v1, "eByBestVisit"

    const/4 v2, 0x3

    invoke-direct {v0, v1, v2}, Lcom/lostpixels/fieldservice/helpfunctions/PublicConstants$EGroupBy;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/lostpixels/fieldservice/helpfunctions/PublicConstants$EGroupBy;->eByBestVisit:Lcom/lostpixels/fieldservice/helpfunctions/PublicConstants$EGroupBy;

    new-instance v0, Lcom/lostpixels/fieldservice/helpfunctions/PublicConstants$EGroupBy;

    const-string v1, "eByScheduledTime"

    const/4 v2, 0x4

    invoke-direct {v0, v1, v2}, Lcom/lostpixels/fieldservice/helpfunctions/PublicConstants$EGroupBy;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/lostpixels/fieldservice/helpfunctions/PublicConstants$EGroupBy;->eByScheduledTime:Lcom/lostpixels/fieldservice/helpfunctions/PublicConstants$EGroupBy;

    new-instance v0, Lcom/lostpixels/fieldservice/helpfunctions/PublicConstants$EGroupBy;

    const-string v1, "eByDate"

    const/4 v2, 0x5

    invoke-direct {v0, v1, v2}, Lcom/lostpixels/fieldservice/helpfunctions/PublicConstants$EGroupBy;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/lostpixels/fieldservice/helpfunctions/PublicConstants$EGroupBy;->eByDate:Lcom/lostpixels/fieldservice/helpfunctions/PublicConstants$EGroupBy;

    new-instance v0, Lcom/lostpixels/fieldservice/helpfunctions/PublicConstants$EGroupBy;

    const-string v1, "eNoGrouping"

    const/4 v2, 0x6

    invoke-direct {v0, v1, v2}, Lcom/lostpixels/fieldservice/helpfunctions/PublicConstants$EGroupBy;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/lostpixels/fieldservice/helpfunctions/PublicConstants$EGroupBy;->eNoGrouping:Lcom/lostpixels/fieldservice/helpfunctions/PublicConstants$EGroupBy;

    .line 116
    invoke-static {}, Lcom/lostpixels/fieldservice/helpfunctions/PublicConstants$EGroupBy;->$values()[Lcom/lostpixels/fieldservice/helpfunctions/PublicConstants$EGroupBy;

    move-result-object v0

    sput-object v0, Lcom/lostpixels/fieldservice/helpfunctions/PublicConstants$EGroupBy;->$VALUES:[Lcom/lostpixels/fieldservice/helpfunctions/PublicConstants$EGroupBy;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0

    .line 116
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static token(Lcom/lostpixels/fieldservice/helpfunctions/PublicConstants$EGroupBy;)Ljava/lang/String;
    .locals 0

    .line 126
    invoke-virtual {p0}, Ljava/lang/Enum;->name()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static type(Ljava/lang/String;)Lcom/lostpixels/fieldservice/helpfunctions/PublicConstants$EGroupBy;
    .locals 0

    .line 121
    invoke-static {p0}, Lcom/lostpixels/fieldservice/helpfunctions/PublicConstants$EGroupBy;->valueOf(Ljava/lang/String;)Lcom/lostpixels/fieldservice/helpfunctions/PublicConstants$EGroupBy;

    move-result-object p0

    return-object p0
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/lostpixels/fieldservice/helpfunctions/PublicConstants$EGroupBy;
    .locals 1

    .line 116
    const-class v0, Lcom/lostpixels/fieldservice/helpfunctions/PublicConstants$EGroupBy;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/lostpixels/fieldservice/helpfunctions/PublicConstants$EGroupBy;

    return-object p0
.end method

.method public static values()[Lcom/lostpixels/fieldservice/helpfunctions/PublicConstants$EGroupBy;
    .locals 1

    .line 116
    sget-object v0, Lcom/lostpixels/fieldservice/helpfunctions/PublicConstants$EGroupBy;->$VALUES:[Lcom/lostpixels/fieldservice/helpfunctions/PublicConstants$EGroupBy;

    invoke-virtual {v0}, [Lcom/lostpixels/fieldservice/helpfunctions/PublicConstants$EGroupBy;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/lostpixels/fieldservice/helpfunctions/PublicConstants$EGroupBy;

    return-object v0
.end method
