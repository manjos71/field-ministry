.class abstract synthetic Lgroup/pals/android/lib/ui/lockpattern/util/UI$1;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lgroup/pals/android/lib/ui/lockpattern/util/UI;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1008
    name = null
.end annotation


# static fields
.field static final synthetic $SwitchMap$group$pals$android$lib$ui$lockpattern$util$UI$ScreenSize:[I


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .line 140
    invoke-static {}, Lgroup/pals/android/lib/ui/lockpattern/util/UI$ScreenSize;->values()[Lgroup/pals/android/lib/ui/lockpattern/util/UI$ScreenSize;

    move-result-object v0

    array-length v0, v0

    new-array v0, v0, [I

    sput-object v0, Lgroup/pals/android/lib/ui/lockpattern/util/UI$1;->$SwitchMap$group$pals$android$lib$ui$lockpattern$util$UI$ScreenSize:[I

    :try_start_0
    sget-object v1, Lgroup/pals/android/lib/ui/lockpattern/util/UI$ScreenSize;->LARGE:Lgroup/pals/android/lib/ui/lockpattern/util/UI$ScreenSize;

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    const/4 v2, 0x1

    aput v2, v0, v1
    :try_end_0
    .catch Ljava/lang/NoSuchFieldError; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    :try_start_1
    sget-object v0, Lgroup/pals/android/lib/ui/lockpattern/util/UI$1;->$SwitchMap$group$pals$android$lib$ui$lockpattern$util$UI$ScreenSize:[I

    sget-object v1, Lgroup/pals/android/lib/ui/lockpattern/util/UI$ScreenSize;->XLARGE:Lgroup/pals/android/lib/ui/lockpattern/util/UI$ScreenSize;

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    const/4 v2, 0x2

    aput v2, v0, v1
    :try_end_1
    .catch Ljava/lang/NoSuchFieldError; {:try_start_1 .. :try_end_1} :catch_1

    :catch_1
    return-void
.end method
