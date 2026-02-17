.class public final enum Lcom/github/mikephil/charting/components/Legend$LegendPosition;
.super Ljava/lang/Enum;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/github/mikephil/charting/components/Legend;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "LegendPosition"
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/github/mikephil/charting/components/Legend$LegendPosition;

.field public static final enum BELOW_CHART_CENTER:Lcom/github/mikephil/charting/components/Legend$LegendPosition;

.field public static final enum BELOW_CHART_LEFT:Lcom/github/mikephil/charting/components/Legend$LegendPosition;

.field public static final enum BELOW_CHART_RIGHT:Lcom/github/mikephil/charting/components/Legend$LegendPosition;

.field public static final enum LEFT_OF_CHART:Lcom/github/mikephil/charting/components/Legend$LegendPosition;

.field public static final enum LEFT_OF_CHART_CENTER:Lcom/github/mikephil/charting/components/Legend$LegendPosition;

.field public static final enum LEFT_OF_CHART_INSIDE:Lcom/github/mikephil/charting/components/Legend$LegendPosition;

.field public static final enum PIECHART_CENTER:Lcom/github/mikephil/charting/components/Legend$LegendPosition;

.field public static final enum RIGHT_OF_CHART:Lcom/github/mikephil/charting/components/Legend$LegendPosition;

.field public static final enum RIGHT_OF_CHART_CENTER:Lcom/github/mikephil/charting/components/Legend$LegendPosition;

.field public static final enum RIGHT_OF_CHART_INSIDE:Lcom/github/mikephil/charting/components/Legend$LegendPosition;


# direct methods
.method static constructor <clinit>()V
    .locals 21

    .line 24
    new-instance v0, Lcom/github/mikephil/charting/components/Legend$LegendPosition;

    const-string v1, "RIGHT_OF_CHART"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcom/github/mikephil/charting/components/Legend$LegendPosition;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/github/mikephil/charting/components/Legend$LegendPosition;->RIGHT_OF_CHART:Lcom/github/mikephil/charting/components/Legend$LegendPosition;

    new-instance v1, Lcom/github/mikephil/charting/components/Legend$LegendPosition;

    const-string v3, "RIGHT_OF_CHART_CENTER"

    const/4 v4, 0x1

    invoke-direct {v1, v3, v4}, Lcom/github/mikephil/charting/components/Legend$LegendPosition;-><init>(Ljava/lang/String;I)V

    sput-object v1, Lcom/github/mikephil/charting/components/Legend$LegendPosition;->RIGHT_OF_CHART_CENTER:Lcom/github/mikephil/charting/components/Legend$LegendPosition;

    new-instance v3, Lcom/github/mikephil/charting/components/Legend$LegendPosition;

    const-string v5, "RIGHT_OF_CHART_INSIDE"

    const/4 v6, 0x2

    invoke-direct {v3, v5, v6}, Lcom/github/mikephil/charting/components/Legend$LegendPosition;-><init>(Ljava/lang/String;I)V

    sput-object v3, Lcom/github/mikephil/charting/components/Legend$LegendPosition;->RIGHT_OF_CHART_INSIDE:Lcom/github/mikephil/charting/components/Legend$LegendPosition;

    .line 25
    new-instance v5, Lcom/github/mikephil/charting/components/Legend$LegendPosition;

    const-string v7, "LEFT_OF_CHART"

    const/4 v8, 0x3

    invoke-direct {v5, v7, v8}, Lcom/github/mikephil/charting/components/Legend$LegendPosition;-><init>(Ljava/lang/String;I)V

    sput-object v5, Lcom/github/mikephil/charting/components/Legend$LegendPosition;->LEFT_OF_CHART:Lcom/github/mikephil/charting/components/Legend$LegendPosition;

    new-instance v7, Lcom/github/mikephil/charting/components/Legend$LegendPosition;

    const-string v9, "LEFT_OF_CHART_CENTER"

    const/4 v10, 0x4

    invoke-direct {v7, v9, v10}, Lcom/github/mikephil/charting/components/Legend$LegendPosition;-><init>(Ljava/lang/String;I)V

    sput-object v7, Lcom/github/mikephil/charting/components/Legend$LegendPosition;->LEFT_OF_CHART_CENTER:Lcom/github/mikephil/charting/components/Legend$LegendPosition;

    new-instance v9, Lcom/github/mikephil/charting/components/Legend$LegendPosition;

    const-string v11, "LEFT_OF_CHART_INSIDE"

    const/4 v12, 0x5

    invoke-direct {v9, v11, v12}, Lcom/github/mikephil/charting/components/Legend$LegendPosition;-><init>(Ljava/lang/String;I)V

    sput-object v9, Lcom/github/mikephil/charting/components/Legend$LegendPosition;->LEFT_OF_CHART_INSIDE:Lcom/github/mikephil/charting/components/Legend$LegendPosition;

    .line 26
    new-instance v11, Lcom/github/mikephil/charting/components/Legend$LegendPosition;

    const-string v13, "BELOW_CHART_LEFT"

    const/4 v14, 0x6

    invoke-direct {v11, v13, v14}, Lcom/github/mikephil/charting/components/Legend$LegendPosition;-><init>(Ljava/lang/String;I)V

    sput-object v11, Lcom/github/mikephil/charting/components/Legend$LegendPosition;->BELOW_CHART_LEFT:Lcom/github/mikephil/charting/components/Legend$LegendPosition;

    new-instance v13, Lcom/github/mikephil/charting/components/Legend$LegendPosition;

    const-string v15, "BELOW_CHART_RIGHT"

    const/16 v16, 0x0

    const/4 v2, 0x7

    invoke-direct {v13, v15, v2}, Lcom/github/mikephil/charting/components/Legend$LegendPosition;-><init>(Ljava/lang/String;I)V

    sput-object v13, Lcom/github/mikephil/charting/components/Legend$LegendPosition;->BELOW_CHART_RIGHT:Lcom/github/mikephil/charting/components/Legend$LegendPosition;

    new-instance v15, Lcom/github/mikephil/charting/components/Legend$LegendPosition;

    const/16 v17, 0x7

    const-string v2, "BELOW_CHART_CENTER"

    const/16 v18, 0x1

    const/16 v4, 0x8

    invoke-direct {v15, v2, v4}, Lcom/github/mikephil/charting/components/Legend$LegendPosition;-><init>(Ljava/lang/String;I)V

    sput-object v15, Lcom/github/mikephil/charting/components/Legend$LegendPosition;->BELOW_CHART_CENTER:Lcom/github/mikephil/charting/components/Legend$LegendPosition;

    .line 27
    new-instance v2, Lcom/github/mikephil/charting/components/Legend$LegendPosition;

    const/16 v19, 0x8

    const-string v4, "PIECHART_CENTER"

    const/16 v20, 0x2

    const/16 v6, 0x9

    invoke-direct {v2, v4, v6}, Lcom/github/mikephil/charting/components/Legend$LegendPosition;-><init>(Ljava/lang/String;I)V

    sput-object v2, Lcom/github/mikephil/charting/components/Legend$LegendPosition;->PIECHART_CENTER:Lcom/github/mikephil/charting/components/Legend$LegendPosition;

    const/16 v4, 0xa

    .line 23
    new-array v4, v4, [Lcom/github/mikephil/charting/components/Legend$LegendPosition;

    aput-object v0, v4, v16

    aput-object v1, v4, v18

    aput-object v3, v4, v20

    aput-object v5, v4, v8

    aput-object v7, v4, v10

    aput-object v9, v4, v12

    aput-object v11, v4, v14

    aput-object v13, v4, v17

    aput-object v15, v4, v19

    aput-object v2, v4, v6

    sput-object v4, Lcom/github/mikephil/charting/components/Legend$LegendPosition;->$VALUES:[Lcom/github/mikephil/charting/components/Legend$LegendPosition;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0

    .line 23
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/github/mikephil/charting/components/Legend$LegendPosition;
    .locals 1

    .line 23
    const-class v0, Lcom/github/mikephil/charting/components/Legend$LegendPosition;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/github/mikephil/charting/components/Legend$LegendPosition;

    return-object p0
.end method

.method public static values()[Lcom/github/mikephil/charting/components/Legend$LegendPosition;
    .locals 1

    .line 23
    sget-object v0, Lcom/github/mikephil/charting/components/Legend$LegendPosition;->$VALUES:[Lcom/github/mikephil/charting/components/Legend$LegendPosition;

    invoke-virtual {v0}, [Lcom/github/mikephil/charting/components/Legend$LegendPosition;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/github/mikephil/charting/components/Legend$LegendPosition;

    return-object v0
.end method
