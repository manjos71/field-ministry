.class final enum Lgroup/pals/android/lib/ui/lockpattern/LockPatternActivity$ButtonOkCommand;
.super Ljava/lang/Enum;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lgroup/pals/android/lib/ui/lockpattern/LockPatternActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x401a
    name = "ButtonOkCommand"
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lgroup/pals/android/lib/ui/lockpattern/LockPatternActivity$ButtonOkCommand;

.field public static final enum CONTINUE:Lgroup/pals/android/lib/ui/lockpattern/LockPatternActivity$ButtonOkCommand;

.field public static final enum DONE:Lgroup/pals/android/lib/ui/lockpattern/LockPatternActivity$ButtonOkCommand;

.field public static final enum FORGOT_PATTERN:Lgroup/pals/android/lib/ui/lockpattern/LockPatternActivity$ButtonOkCommand;


# direct methods
.method private static synthetic $values()[Lgroup/pals/android/lib/ui/lockpattern/LockPatternActivity$ButtonOkCommand;
    .locals 3

    const/4 v0, 0x3

    .line 274
    new-array v0, v0, [Lgroup/pals/android/lib/ui/lockpattern/LockPatternActivity$ButtonOkCommand;

    sget-object v1, Lgroup/pals/android/lib/ui/lockpattern/LockPatternActivity$ButtonOkCommand;->CONTINUE:Lgroup/pals/android/lib/ui/lockpattern/LockPatternActivity$ButtonOkCommand;

    const/4 v2, 0x0

    aput-object v1, v0, v2

    sget-object v1, Lgroup/pals/android/lib/ui/lockpattern/LockPatternActivity$ButtonOkCommand;->FORGOT_PATTERN:Lgroup/pals/android/lib/ui/lockpattern/LockPatternActivity$ButtonOkCommand;

    const/4 v2, 0x1

    aput-object v1, v0, v2

    sget-object v1, Lgroup/pals/android/lib/ui/lockpattern/LockPatternActivity$ButtonOkCommand;->DONE:Lgroup/pals/android/lib/ui/lockpattern/LockPatternActivity$ButtonOkCommand;

    const/4 v2, 0x2

    aput-object v1, v0, v2

    return-object v0
.end method

.method static constructor <clinit>()V
    .locals 3

    .line 275
    new-instance v0, Lgroup/pals/android/lib/ui/lockpattern/LockPatternActivity$ButtonOkCommand;

    const-string v1, "CONTINUE"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lgroup/pals/android/lib/ui/lockpattern/LockPatternActivity$ButtonOkCommand;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lgroup/pals/android/lib/ui/lockpattern/LockPatternActivity$ButtonOkCommand;->CONTINUE:Lgroup/pals/android/lib/ui/lockpattern/LockPatternActivity$ButtonOkCommand;

    new-instance v0, Lgroup/pals/android/lib/ui/lockpattern/LockPatternActivity$ButtonOkCommand;

    const-string v1, "FORGOT_PATTERN"

    const/4 v2, 0x1

    invoke-direct {v0, v1, v2}, Lgroup/pals/android/lib/ui/lockpattern/LockPatternActivity$ButtonOkCommand;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lgroup/pals/android/lib/ui/lockpattern/LockPatternActivity$ButtonOkCommand;->FORGOT_PATTERN:Lgroup/pals/android/lib/ui/lockpattern/LockPatternActivity$ButtonOkCommand;

    new-instance v0, Lgroup/pals/android/lib/ui/lockpattern/LockPatternActivity$ButtonOkCommand;

    const-string v1, "DONE"

    const/4 v2, 0x2

    invoke-direct {v0, v1, v2}, Lgroup/pals/android/lib/ui/lockpattern/LockPatternActivity$ButtonOkCommand;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lgroup/pals/android/lib/ui/lockpattern/LockPatternActivity$ButtonOkCommand;->DONE:Lgroup/pals/android/lib/ui/lockpattern/LockPatternActivity$ButtonOkCommand;

    .line 274
    invoke-static {}, Lgroup/pals/android/lib/ui/lockpattern/LockPatternActivity$ButtonOkCommand;->$values()[Lgroup/pals/android/lib/ui/lockpattern/LockPatternActivity$ButtonOkCommand;

    move-result-object v0

    sput-object v0, Lgroup/pals/android/lib/ui/lockpattern/LockPatternActivity$ButtonOkCommand;->$VALUES:[Lgroup/pals/android/lib/ui/lockpattern/LockPatternActivity$ButtonOkCommand;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0

    .line 274
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lgroup/pals/android/lib/ui/lockpattern/LockPatternActivity$ButtonOkCommand;
    .locals 1

    .line 274
    const-class v0, Lgroup/pals/android/lib/ui/lockpattern/LockPatternActivity$ButtonOkCommand;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lgroup/pals/android/lib/ui/lockpattern/LockPatternActivity$ButtonOkCommand;

    return-object p0
.end method

.method public static values()[Lgroup/pals/android/lib/ui/lockpattern/LockPatternActivity$ButtonOkCommand;
    .locals 1

    .line 274
    sget-object v0, Lgroup/pals/android/lib/ui/lockpattern/LockPatternActivity$ButtonOkCommand;->$VALUES:[Lgroup/pals/android/lib/ui/lockpattern/LockPatternActivity$ButtonOkCommand;

    invoke-virtual {v0}, [Lgroup/pals/android/lib/ui/lockpattern/LockPatternActivity$ButtonOkCommand;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lgroup/pals/android/lib/ui/lockpattern/LockPatternActivity$ButtonOkCommand;

    return-object v0
.end method
