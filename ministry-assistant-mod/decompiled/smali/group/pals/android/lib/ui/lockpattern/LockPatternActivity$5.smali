.class abstract synthetic Lgroup/pals/android/lib/ui/lockpattern/LockPatternActivity$5;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lgroup/pals/android/lib/ui/lockpattern/LockPatternActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1008
    name = null
.end annotation


# static fields
.field static final synthetic $SwitchMap$group$pals$android$lib$ui$lockpattern$LockPatternActivity$ButtonOkCommand:[I


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .line 461
    invoke-static {}, Lgroup/pals/android/lib/ui/lockpattern/LockPatternActivity$ButtonOkCommand;->values()[Lgroup/pals/android/lib/ui/lockpattern/LockPatternActivity$ButtonOkCommand;

    move-result-object v0

    array-length v0, v0

    new-array v0, v0, [I

    sput-object v0, Lgroup/pals/android/lib/ui/lockpattern/LockPatternActivity$5;->$SwitchMap$group$pals$android$lib$ui$lockpattern$LockPatternActivity$ButtonOkCommand:[I

    :try_start_0
    sget-object v1, Lgroup/pals/android/lib/ui/lockpattern/LockPatternActivity$ButtonOkCommand;->CONTINUE:Lgroup/pals/android/lib/ui/lockpattern/LockPatternActivity$ButtonOkCommand;

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    const/4 v2, 0x1

    aput v2, v0, v1
    :try_end_0
    .catch Ljava/lang/NoSuchFieldError; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    :try_start_1
    sget-object v0, Lgroup/pals/android/lib/ui/lockpattern/LockPatternActivity$5;->$SwitchMap$group$pals$android$lib$ui$lockpattern$LockPatternActivity$ButtonOkCommand:[I

    sget-object v1, Lgroup/pals/android/lib/ui/lockpattern/LockPatternActivity$ButtonOkCommand;->DONE:Lgroup/pals/android/lib/ui/lockpattern/LockPatternActivity$ButtonOkCommand;

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    const/4 v2, 0x2

    aput v2, v0, v1
    :try_end_1
    .catch Ljava/lang/NoSuchFieldError; {:try_start_1 .. :try_end_1} :catch_1

    :catch_1
    return-void
.end method
