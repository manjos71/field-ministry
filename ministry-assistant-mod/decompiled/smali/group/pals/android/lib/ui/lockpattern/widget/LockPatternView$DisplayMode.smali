.class public final enum Lgroup/pals/android/lib/ui/lockpattern/widget/LockPatternView$DisplayMode;
.super Ljava/lang/Enum;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lgroup/pals/android/lib/ui/lockpattern/widget/LockPatternView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "DisplayMode"
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lgroup/pals/android/lib/ui/lockpattern/widget/LockPatternView$DisplayMode;

.field public static final enum Animate:Lgroup/pals/android/lib/ui/lockpattern/widget/LockPatternView$DisplayMode;

.field public static final enum Correct:Lgroup/pals/android/lib/ui/lockpattern/widget/LockPatternView$DisplayMode;

.field public static final enum Wrong:Lgroup/pals/android/lib/ui/lockpattern/widget/LockPatternView$DisplayMode;


# direct methods
.method private static synthetic $values()[Lgroup/pals/android/lib/ui/lockpattern/widget/LockPatternView$DisplayMode;
    .locals 3

    const/4 v0, 0x3

    .line 301
    new-array v0, v0, [Lgroup/pals/android/lib/ui/lockpattern/widget/LockPatternView$DisplayMode;

    sget-object v1, Lgroup/pals/android/lib/ui/lockpattern/widget/LockPatternView$DisplayMode;->Correct:Lgroup/pals/android/lib/ui/lockpattern/widget/LockPatternView$DisplayMode;

    const/4 v2, 0x0

    aput-object v1, v0, v2

    sget-object v1, Lgroup/pals/android/lib/ui/lockpattern/widget/LockPatternView$DisplayMode;->Animate:Lgroup/pals/android/lib/ui/lockpattern/widget/LockPatternView$DisplayMode;

    const/4 v2, 0x1

    aput-object v1, v0, v2

    sget-object v1, Lgroup/pals/android/lib/ui/lockpattern/widget/LockPatternView$DisplayMode;->Wrong:Lgroup/pals/android/lib/ui/lockpattern/widget/LockPatternView$DisplayMode;

    const/4 v2, 0x2

    aput-object v1, v0, v2

    return-object v0
.end method

.method static constructor <clinit>()V
    .locals 3

    .line 306
    new-instance v0, Lgroup/pals/android/lib/ui/lockpattern/widget/LockPatternView$DisplayMode;

    const-string v1, "Correct"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lgroup/pals/android/lib/ui/lockpattern/widget/LockPatternView$DisplayMode;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lgroup/pals/android/lib/ui/lockpattern/widget/LockPatternView$DisplayMode;->Correct:Lgroup/pals/android/lib/ui/lockpattern/widget/LockPatternView$DisplayMode;

    .line 311
    new-instance v0, Lgroup/pals/android/lib/ui/lockpattern/widget/LockPatternView$DisplayMode;

    const-string v1, "Animate"

    const/4 v2, 0x1

    invoke-direct {v0, v1, v2}, Lgroup/pals/android/lib/ui/lockpattern/widget/LockPatternView$DisplayMode;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lgroup/pals/android/lib/ui/lockpattern/widget/LockPatternView$DisplayMode;->Animate:Lgroup/pals/android/lib/ui/lockpattern/widget/LockPatternView$DisplayMode;

    .line 316
    new-instance v0, Lgroup/pals/android/lib/ui/lockpattern/widget/LockPatternView$DisplayMode;

    const-string v1, "Wrong"

    const/4 v2, 0x2

    invoke-direct {v0, v1, v2}, Lgroup/pals/android/lib/ui/lockpattern/widget/LockPatternView$DisplayMode;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lgroup/pals/android/lib/ui/lockpattern/widget/LockPatternView$DisplayMode;->Wrong:Lgroup/pals/android/lib/ui/lockpattern/widget/LockPatternView$DisplayMode;

    .line 301
    invoke-static {}, Lgroup/pals/android/lib/ui/lockpattern/widget/LockPatternView$DisplayMode;->$values()[Lgroup/pals/android/lib/ui/lockpattern/widget/LockPatternView$DisplayMode;

    move-result-object v0

    sput-object v0, Lgroup/pals/android/lib/ui/lockpattern/widget/LockPatternView$DisplayMode;->$VALUES:[Lgroup/pals/android/lib/ui/lockpattern/widget/LockPatternView$DisplayMode;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0

    .line 301
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lgroup/pals/android/lib/ui/lockpattern/widget/LockPatternView$DisplayMode;
    .locals 1

    .line 301
    const-class v0, Lgroup/pals/android/lib/ui/lockpattern/widget/LockPatternView$DisplayMode;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lgroup/pals/android/lib/ui/lockpattern/widget/LockPatternView$DisplayMode;

    return-object p0
.end method

.method public static values()[Lgroup/pals/android/lib/ui/lockpattern/widget/LockPatternView$DisplayMode;
    .locals 1

    .line 301
    sget-object v0, Lgroup/pals/android/lib/ui/lockpattern/widget/LockPatternView$DisplayMode;->$VALUES:[Lgroup/pals/android/lib/ui/lockpattern/widget/LockPatternView$DisplayMode;

    invoke-virtual {v0}, [Lgroup/pals/android/lib/ui/lockpattern/widget/LockPatternView$DisplayMode;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lgroup/pals/android/lib/ui/lockpattern/widget/LockPatternView$DisplayMode;

    return-object v0
.end method
