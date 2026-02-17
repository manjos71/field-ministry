.class public final enum Lcom/aurelhubert/ahbottomnavigation/AHBottomNavigation$TitleState;
.super Ljava/lang/Enum;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/aurelhubert/ahbottomnavigation/AHBottomNavigation;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "TitleState"
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/aurelhubert/ahbottomnavigation/AHBottomNavigation$TitleState;

.field public static final enum ALWAYS_HIDE:Lcom/aurelhubert/ahbottomnavigation/AHBottomNavigation$TitleState;

.field public static final enum ALWAYS_SHOW:Lcom/aurelhubert/ahbottomnavigation/AHBottomNavigation$TitleState;

.field public static final enum SHOW_WHEN_ACTIVE:Lcom/aurelhubert/ahbottomnavigation/AHBottomNavigation$TitleState;

.field public static final enum SHOW_WHEN_ACTIVE_FORCE:Lcom/aurelhubert/ahbottomnavigation/AHBottomNavigation$TitleState;


# direct methods
.method static constructor <clinit>()V
    .locals 9

    .line 60
    new-instance v0, Lcom/aurelhubert/ahbottomnavigation/AHBottomNavigation$TitleState;

    const-string v1, "SHOW_WHEN_ACTIVE"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcom/aurelhubert/ahbottomnavigation/AHBottomNavigation$TitleState;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/aurelhubert/ahbottomnavigation/AHBottomNavigation$TitleState;->SHOW_WHEN_ACTIVE:Lcom/aurelhubert/ahbottomnavigation/AHBottomNavigation$TitleState;

    .line 61
    new-instance v1, Lcom/aurelhubert/ahbottomnavigation/AHBottomNavigation$TitleState;

    const-string v3, "SHOW_WHEN_ACTIVE_FORCE"

    const/4 v4, 0x1

    invoke-direct {v1, v3, v4}, Lcom/aurelhubert/ahbottomnavigation/AHBottomNavigation$TitleState;-><init>(Ljava/lang/String;I)V

    sput-object v1, Lcom/aurelhubert/ahbottomnavigation/AHBottomNavigation$TitleState;->SHOW_WHEN_ACTIVE_FORCE:Lcom/aurelhubert/ahbottomnavigation/AHBottomNavigation$TitleState;

    .line 62
    new-instance v3, Lcom/aurelhubert/ahbottomnavigation/AHBottomNavigation$TitleState;

    const-string v5, "ALWAYS_SHOW"

    const/4 v6, 0x2

    invoke-direct {v3, v5, v6}, Lcom/aurelhubert/ahbottomnavigation/AHBottomNavigation$TitleState;-><init>(Ljava/lang/String;I)V

    sput-object v3, Lcom/aurelhubert/ahbottomnavigation/AHBottomNavigation$TitleState;->ALWAYS_SHOW:Lcom/aurelhubert/ahbottomnavigation/AHBottomNavigation$TitleState;

    .line 63
    new-instance v5, Lcom/aurelhubert/ahbottomnavigation/AHBottomNavigation$TitleState;

    const-string v7, "ALWAYS_HIDE"

    const/4 v8, 0x3

    invoke-direct {v5, v7, v8}, Lcom/aurelhubert/ahbottomnavigation/AHBottomNavigation$TitleState;-><init>(Ljava/lang/String;I)V

    sput-object v5, Lcom/aurelhubert/ahbottomnavigation/AHBottomNavigation$TitleState;->ALWAYS_HIDE:Lcom/aurelhubert/ahbottomnavigation/AHBottomNavigation$TitleState;

    const/4 v7, 0x4

    .line 59
    new-array v7, v7, [Lcom/aurelhubert/ahbottomnavigation/AHBottomNavigation$TitleState;

    aput-object v0, v7, v2

    aput-object v1, v7, v4

    aput-object v3, v7, v6

    aput-object v5, v7, v8

    sput-object v7, Lcom/aurelhubert/ahbottomnavigation/AHBottomNavigation$TitleState;->$VALUES:[Lcom/aurelhubert/ahbottomnavigation/AHBottomNavigation$TitleState;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0

    .line 59
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/aurelhubert/ahbottomnavigation/AHBottomNavigation$TitleState;
    .locals 1

    .line 59
    const-class v0, Lcom/aurelhubert/ahbottomnavigation/AHBottomNavigation$TitleState;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/aurelhubert/ahbottomnavigation/AHBottomNavigation$TitleState;

    return-object p0
.end method

.method public static values()[Lcom/aurelhubert/ahbottomnavigation/AHBottomNavigation$TitleState;
    .locals 1

    .line 59
    sget-object v0, Lcom/aurelhubert/ahbottomnavigation/AHBottomNavigation$TitleState;->$VALUES:[Lcom/aurelhubert/ahbottomnavigation/AHBottomNavigation$TitleState;

    invoke-virtual {v0}, [Lcom/aurelhubert/ahbottomnavigation/AHBottomNavigation$TitleState;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/aurelhubert/ahbottomnavigation/AHBottomNavigation$TitleState;

    return-object v0
.end method
