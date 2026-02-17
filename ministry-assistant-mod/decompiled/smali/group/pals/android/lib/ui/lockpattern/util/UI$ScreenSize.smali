.class public final enum Lgroup/pals/android/lib/ui/lockpattern/util/UI$ScreenSize;
.super Ljava/lang/Enum;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lgroup/pals/android/lib/ui/lockpattern/util/UI;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "ScreenSize"
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lgroup/pals/android/lib/ui/lockpattern/util/UI$ScreenSize;

.field public static final enum LARGE:Lgroup/pals/android/lib/ui/lockpattern/util/UI$ScreenSize;

.field public static final enum NORMAL:Lgroup/pals/android/lib/ui/lockpattern/util/UI$ScreenSize;

.field public static final enum SMALL:Lgroup/pals/android/lib/ui/lockpattern/util/UI$ScreenSize;

.field public static final enum UNDEFINED:Lgroup/pals/android/lib/ui/lockpattern/util/UI$ScreenSize;

.field public static final enum XLARGE:Lgroup/pals/android/lib/ui/lockpattern/util/UI$ScreenSize;


# instance fields
.field public final fixedHeightMajor:F

.field public final fixedHeightMinor:F

.field public final fixedWidthMajor:F

.field public final fixedWidthMinor:F


# direct methods
.method private static synthetic $values()[Lgroup/pals/android/lib/ui/lockpattern/util/UI$ScreenSize;
    .locals 3

    const/4 v0, 0x5

    .line 45
    new-array v0, v0, [Lgroup/pals/android/lib/ui/lockpattern/util/UI$ScreenSize;

    sget-object v1, Lgroup/pals/android/lib/ui/lockpattern/util/UI$ScreenSize;->SMALL:Lgroup/pals/android/lib/ui/lockpattern/util/UI$ScreenSize;

    const/4 v2, 0x0

    aput-object v1, v0, v2

    sget-object v1, Lgroup/pals/android/lib/ui/lockpattern/util/UI$ScreenSize;->NORMAL:Lgroup/pals/android/lib/ui/lockpattern/util/UI$ScreenSize;

    const/4 v2, 0x1

    aput-object v1, v0, v2

    sget-object v1, Lgroup/pals/android/lib/ui/lockpattern/util/UI$ScreenSize;->LARGE:Lgroup/pals/android/lib/ui/lockpattern/util/UI$ScreenSize;

    const/4 v2, 0x2

    aput-object v1, v0, v2

    sget-object v1, Lgroup/pals/android/lib/ui/lockpattern/util/UI$ScreenSize;->XLARGE:Lgroup/pals/android/lib/ui/lockpattern/util/UI$ScreenSize;

    const/4 v2, 0x3

    aput-object v1, v0, v2

    sget-object v1, Lgroup/pals/android/lib/ui/lockpattern/util/UI$ScreenSize;->UNDEFINED:Lgroup/pals/android/lib/ui/lockpattern/util/UI$ScreenSize;

    const/4 v2, 0x4

    aput-object v1, v0, v2

    return-object v0
.end method

.method static constructor <clinit>()V
    .locals 11

    .line 49
    new-instance v0, Lgroup/pals/android/lib/ui/lockpattern/util/UI$ScreenSize;

    const/high16 v5, 0x3f800000    # 1.0f

    const/high16 v6, 0x3f800000    # 1.0f

    const-string v1, "SMALL"

    const/4 v2, 0x0

    const/high16 v3, 0x3f800000    # 1.0f

    const/high16 v4, 0x3f800000    # 1.0f

    invoke-direct/range {v0 .. v6}, Lgroup/pals/android/lib/ui/lockpattern/util/UI$ScreenSize;-><init>(Ljava/lang/String;IFFFF)V

    sput-object v0, Lgroup/pals/android/lib/ui/lockpattern/util/UI$ScreenSize;->SMALL:Lgroup/pals/android/lib/ui/lockpattern/util/UI$ScreenSize;

    .line 53
    new-instance v1, Lgroup/pals/android/lib/ui/lockpattern/util/UI$ScreenSize;

    const/high16 v7, 0x3f800000    # 1.0f

    const-string v2, "NORMAL"

    const/4 v3, 0x1

    invoke-direct/range {v1 .. v7}, Lgroup/pals/android/lib/ui/lockpattern/util/UI$ScreenSize;-><init>(Ljava/lang/String;IFFFF)V

    sput-object v1, Lgroup/pals/android/lib/ui/lockpattern/util/UI$ScreenSize;->NORMAL:Lgroup/pals/android/lib/ui/lockpattern/util/UI$ScreenSize;

    .line 57
    new-instance v2, Lgroup/pals/android/lib/ui/lockpattern/util/UI$ScreenSize;

    const v7, 0x3f19999a    # 0.6f

    const v8, 0x3f666666    # 0.9f

    const-string v3, "LARGE"

    const/4 v4, 0x2

    const v5, 0x3f19999a    # 0.6f

    const v6, 0x3f666666    # 0.9f

    invoke-direct/range {v2 .. v8}, Lgroup/pals/android/lib/ui/lockpattern/util/UI$ScreenSize;-><init>(Ljava/lang/String;IFFFF)V

    sput-object v2, Lgroup/pals/android/lib/ui/lockpattern/util/UI$ScreenSize;->LARGE:Lgroup/pals/android/lib/ui/lockpattern/util/UI$ScreenSize;

    .line 61
    new-instance v3, Lgroup/pals/android/lib/ui/lockpattern/util/UI$ScreenSize;

    const/high16 v8, 0x3f000000    # 0.5f

    const v9, 0x3f333333    # 0.7f

    const-string v4, "XLARGE"

    const/4 v5, 0x3

    const v6, 0x3f19999a    # 0.6f

    const v7, 0x3f666666    # 0.9f

    invoke-direct/range {v3 .. v9}, Lgroup/pals/android/lib/ui/lockpattern/util/UI$ScreenSize;-><init>(Ljava/lang/String;IFFFF)V

    sput-object v3, Lgroup/pals/android/lib/ui/lockpattern/util/UI$ScreenSize;->XLARGE:Lgroup/pals/android/lib/ui/lockpattern/util/UI$ScreenSize;

    .line 65
    new-instance v4, Lgroup/pals/android/lib/ui/lockpattern/util/UI$ScreenSize;

    const/high16 v9, 0x3f800000    # 1.0f

    const/high16 v10, 0x3f800000    # 1.0f

    const-string v5, "UNDEFINED"

    const/4 v6, 0x4

    const/high16 v7, 0x3f800000    # 1.0f

    const/high16 v8, 0x3f800000    # 1.0f

    invoke-direct/range {v4 .. v10}, Lgroup/pals/android/lib/ui/lockpattern/util/UI$ScreenSize;-><init>(Ljava/lang/String;IFFFF)V

    sput-object v4, Lgroup/pals/android/lib/ui/lockpattern/util/UI$ScreenSize;->UNDEFINED:Lgroup/pals/android/lib/ui/lockpattern/util/UI$ScreenSize;

    .line 45
    invoke-static {}, Lgroup/pals/android/lib/ui/lockpattern/util/UI$ScreenSize;->$values()[Lgroup/pals/android/lib/ui/lockpattern/util/UI$ScreenSize;

    move-result-object v0

    sput-object v0, Lgroup/pals/android/lib/ui/lockpattern/util/UI$ScreenSize;->$VALUES:[Lgroup/pals/android/lib/ui/lockpattern/util/UI$ScreenSize;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;IFFFF)V
    .locals 0

    .line 83
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 84
    iput p3, p0, Lgroup/pals/android/lib/ui/lockpattern/util/UI$ScreenSize;->fixedHeightMajor:F

    .line 85
    iput p4, p0, Lgroup/pals/android/lib/ui/lockpattern/util/UI$ScreenSize;->fixedHeightMinor:F

    .line 86
    iput p5, p0, Lgroup/pals/android/lib/ui/lockpattern/util/UI$ScreenSize;->fixedWidthMajor:F

    .line 87
    iput p6, p0, Lgroup/pals/android/lib/ui/lockpattern/util/UI$ScreenSize;->fixedWidthMinor:F

    return-void
.end method

.method public static getCurrent(Landroid/content/Context;)Lgroup/pals/android/lib/ui/lockpattern/util/UI$ScreenSize;
    .locals 1

    .line 98
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    invoke-virtual {p0}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object p0

    iget p0, p0, Landroid/content/res/Configuration;->screenLayout:I

    and-int/lit8 p0, p0, 0xf

    const/4 v0, 0x1

    if-eq p0, v0, :cond_3

    const/4 v0, 0x2

    if-eq p0, v0, :cond_2

    const/4 v0, 0x3

    if-eq p0, v0, :cond_1

    const/4 v0, 0x4

    if-eq p0, v0, :cond_0

    .line 109
    sget-object p0, Lgroup/pals/android/lib/ui/lockpattern/util/UI$ScreenSize;->UNDEFINED:Lgroup/pals/android/lib/ui/lockpattern/util/UI$ScreenSize;

    return-object p0

    .line 107
    :cond_0
    sget-object p0, Lgroup/pals/android/lib/ui/lockpattern/util/UI$ScreenSize;->XLARGE:Lgroup/pals/android/lib/ui/lockpattern/util/UI$ScreenSize;

    return-object p0

    .line 105
    :cond_1
    sget-object p0, Lgroup/pals/android/lib/ui/lockpattern/util/UI$ScreenSize;->LARGE:Lgroup/pals/android/lib/ui/lockpattern/util/UI$ScreenSize;

    return-object p0

    .line 103
    :cond_2
    sget-object p0, Lgroup/pals/android/lib/ui/lockpattern/util/UI$ScreenSize;->NORMAL:Lgroup/pals/android/lib/ui/lockpattern/util/UI$ScreenSize;

    return-object p0

    .line 101
    :cond_3
    sget-object p0, Lgroup/pals/android/lib/ui/lockpattern/util/UI$ScreenSize;->SMALL:Lgroup/pals/android/lib/ui/lockpattern/util/UI$ScreenSize;

    return-object p0
.end method

.method public static valueOf(Ljava/lang/String;)Lgroup/pals/android/lib/ui/lockpattern/util/UI$ScreenSize;
    .locals 1

    .line 45
    const-class v0, Lgroup/pals/android/lib/ui/lockpattern/util/UI$ScreenSize;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lgroup/pals/android/lib/ui/lockpattern/util/UI$ScreenSize;

    return-object p0
.end method

.method public static values()[Lgroup/pals/android/lib/ui/lockpattern/util/UI$ScreenSize;
    .locals 1

    .line 45
    sget-object v0, Lgroup/pals/android/lib/ui/lockpattern/util/UI$ScreenSize;->$VALUES:[Lgroup/pals/android/lib/ui/lockpattern/util/UI$ScreenSize;

    invoke-virtual {v0}, [Lgroup/pals/android/lib/ui/lockpattern/util/UI$ScreenSize;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lgroup/pals/android/lib/ui/lockpattern/util/UI$ScreenSize;

    return-object v0
.end method
