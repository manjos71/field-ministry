.class public final enum Lcom/lostpixels/fieldservice/ui/ThemeManager$ThemeMode;
.super Ljava/lang/Enum;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/lostpixels/fieldservice/ui/ThemeManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "ThemeMode"
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/lostpixels/fieldservice/ui/ThemeManager$ThemeMode;

.field public static final enum eThemeDark:Lcom/lostpixels/fieldservice/ui/ThemeManager$ThemeMode;

.field public static final enum eThemeDefault:Lcom/lostpixels/fieldservice/ui/ThemeManager$ThemeMode;

.field public static final enum eThemeLight:Lcom/lostpixels/fieldservice/ui/ThemeManager$ThemeMode;


# direct methods
.method private static synthetic $values()[Lcom/lostpixels/fieldservice/ui/ThemeManager$ThemeMode;
    .locals 3

    const/4 v0, 0x3

    .line 57
    new-array v0, v0, [Lcom/lostpixels/fieldservice/ui/ThemeManager$ThemeMode;

    sget-object v1, Lcom/lostpixels/fieldservice/ui/ThemeManager$ThemeMode;->eThemeLight:Lcom/lostpixels/fieldservice/ui/ThemeManager$ThemeMode;

    const/4 v2, 0x0

    aput-object v1, v0, v2

    sget-object v1, Lcom/lostpixels/fieldservice/ui/ThemeManager$ThemeMode;->eThemeDark:Lcom/lostpixels/fieldservice/ui/ThemeManager$ThemeMode;

    const/4 v2, 0x1

    aput-object v1, v0, v2

    sget-object v1, Lcom/lostpixels/fieldservice/ui/ThemeManager$ThemeMode;->eThemeDefault:Lcom/lostpixels/fieldservice/ui/ThemeManager$ThemeMode;

    const/4 v2, 0x2

    aput-object v1, v0, v2

    return-object v0
.end method

.method static constructor <clinit>()V
    .locals 3

    .line 58
    new-instance v0, Lcom/lostpixels/fieldservice/ui/ThemeManager$ThemeMode;

    const-string v1, "eThemeLight"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcom/lostpixels/fieldservice/ui/ThemeManager$ThemeMode;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/lostpixels/fieldservice/ui/ThemeManager$ThemeMode;->eThemeLight:Lcom/lostpixels/fieldservice/ui/ThemeManager$ThemeMode;

    .line 59
    new-instance v0, Lcom/lostpixels/fieldservice/ui/ThemeManager$ThemeMode;

    const-string v1, "eThemeDark"

    const/4 v2, 0x1

    invoke-direct {v0, v1, v2}, Lcom/lostpixels/fieldservice/ui/ThemeManager$ThemeMode;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/lostpixels/fieldservice/ui/ThemeManager$ThemeMode;->eThemeDark:Lcom/lostpixels/fieldservice/ui/ThemeManager$ThemeMode;

    .line 60
    new-instance v0, Lcom/lostpixels/fieldservice/ui/ThemeManager$ThemeMode;

    const-string v1, "eThemeDefault"

    const/4 v2, 0x2

    invoke-direct {v0, v1, v2}, Lcom/lostpixels/fieldservice/ui/ThemeManager$ThemeMode;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/lostpixels/fieldservice/ui/ThemeManager$ThemeMode;->eThemeDefault:Lcom/lostpixels/fieldservice/ui/ThemeManager$ThemeMode;

    .line 57
    invoke-static {}, Lcom/lostpixels/fieldservice/ui/ThemeManager$ThemeMode;->$values()[Lcom/lostpixels/fieldservice/ui/ThemeManager$ThemeMode;

    move-result-object v0

    sput-object v0, Lcom/lostpixels/fieldservice/ui/ThemeManager$ThemeMode;->$VALUES:[Lcom/lostpixels/fieldservice/ui/ThemeManager$ThemeMode;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0

    .line 57
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/lostpixels/fieldservice/ui/ThemeManager$ThemeMode;
    .locals 1

    .line 57
    const-class v0, Lcom/lostpixels/fieldservice/ui/ThemeManager$ThemeMode;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/lostpixels/fieldservice/ui/ThemeManager$ThemeMode;

    return-object p0
.end method

.method public static values()[Lcom/lostpixels/fieldservice/ui/ThemeManager$ThemeMode;
    .locals 1

    .line 57
    sget-object v0, Lcom/lostpixels/fieldservice/ui/ThemeManager$ThemeMode;->$VALUES:[Lcom/lostpixels/fieldservice/ui/ThemeManager$ThemeMode;

    invoke-virtual {v0}, [Lcom/lostpixels/fieldservice/ui/ThemeManager$ThemeMode;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/lostpixels/fieldservice/ui/ThemeManager$ThemeMode;

    return-object v0
.end method
