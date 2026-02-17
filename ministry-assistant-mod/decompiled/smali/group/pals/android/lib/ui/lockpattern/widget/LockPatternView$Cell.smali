.class public Lgroup/pals/android/lib/ui/lockpattern/widget/LockPatternView$Cell;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/os/Parcelable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lgroup/pals/android/lib/ui/lockpattern/widget/LockPatternView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Cell"
.end annotation


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Lgroup/pals/android/lib/ui/lockpattern/widget/LockPatternView$Cell;",
            ">;"
        }
    .end annotation
.end field

.field static final sCells:[[Lgroup/pals/android/lib/ui/lockpattern/widget/LockPatternView$Cell;


# instance fields
.field mColumn:I

.field mRow:I


# direct methods
.method static constructor <clinit>()V
    .locals 6

    const/4 v0, 0x2

    .line 159
    new-array v0, v0, [I

    const/4 v1, 0x1

    const/4 v2, 0x3

    aput v2, v0, v1

    const/4 v1, 0x0

    aput v2, v0, v1

    const-class v3, Lgroup/pals/android/lib/ui/lockpattern/widget/LockPatternView$Cell;

    invoke-static {v3, v0}, Ljava/lang/reflect/Array;->newInstance(Ljava/lang/Class;[I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [[Lgroup/pals/android/lib/ui/lockpattern/widget/LockPatternView$Cell;

    sput-object v0, Lgroup/pals/android/lib/ui/lockpattern/widget/LockPatternView$Cell;->sCells:[[Lgroup/pals/android/lib/ui/lockpattern/widget/LockPatternView$Cell;

    const/4 v0, 0x0

    :goto_0
    if-ge v0, v2, :cond_1

    const/4 v3, 0x0

    :goto_1
    if-ge v3, v2, :cond_0

    .line 163
    sget-object v4, Lgroup/pals/android/lib/ui/lockpattern/widget/LockPatternView$Cell;->sCells:[[Lgroup/pals/android/lib/ui/lockpattern/widget/LockPatternView$Cell;

    aget-object v4, v4, v0

    new-instance v5, Lgroup/pals/android/lib/ui/lockpattern/widget/LockPatternView$Cell;

    invoke-direct {v5, v0, v3}, Lgroup/pals/android/lib/ui/lockpattern/widget/LockPatternView$Cell;-><init>(II)V

    aput-object v5, v4, v3

    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 282
    :cond_1
    new-instance v0, Lgroup/pals/android/lib/ui/lockpattern/widget/LockPatternView$Cell$1;

    invoke-direct {v0}, Lgroup/pals/android/lib/ui/lockpattern/widget/LockPatternView$Cell$1;-><init>()V

    sput-object v0, Lgroup/pals/android/lib/ui/lockpattern/widget/LockPatternView$Cell;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method private constructor <init>(II)V
    .locals 0

    .line 174
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 175
    invoke-static {p1, p2}, Lgroup/pals/android/lib/ui/lockpattern/widget/LockPatternView$Cell;->checkRange(II)V

    .line 176
    iput p1, p0, Lgroup/pals/android/lib/ui/lockpattern/widget/LockPatternView$Cell;->mRow:I

    .line 177
    iput p2, p0, Lgroup/pals/android/lib/ui/lockpattern/widget/LockPatternView$Cell;->mColumn:I

    return-void
.end method

.method private constructor <init>(Landroid/os/Parcel;)V
    .locals 0

    .line 293
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 294
    invoke-virtual {p0, p1}, Lgroup/pals/android/lib/ui/lockpattern/widget/LockPatternView$Cell;->readFromParcel(Landroid/os/Parcel;)V

    return-void
.end method

.method synthetic constructor <init>(Landroid/os/Parcel;Lgroup/pals/android/lib/ui/lockpattern/widget/LockPatternView$1;)V
    .locals 0

    .line 153
    invoke-direct {p0, p1}, Lgroup/pals/android/lib/ui/lockpattern/widget/LockPatternView$Cell;-><init>(Landroid/os/Parcel;)V

    return-void
.end method

.method private static checkRange(II)V
    .locals 1

    if-ltz p0, :cond_1

    const/4 v0, 0x2

    if-gt p0, v0, :cond_1

    if-ltz p1, :cond_0

    if-gt p1, v0, :cond_0

    return-void

    .line 238
    :cond_0
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "column must be in range 0-2"

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 234
    :cond_1
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "row must be in range 0-2"

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public static declared-synchronized of(I)Lgroup/pals/android/lib/ui/lockpattern/widget/LockPatternView$Cell;
    .locals 2

    const-class v0, Lgroup/pals/android/lib/ui/lockpattern/widget/LockPatternView$Cell;

    monitor-enter v0

    .line 229
    :try_start_0
    div-int/lit8 v1, p0, 0x3

    rem-int/lit8 p0, p0, 0x3

    invoke-static {v1, p0}, Lgroup/pals/android/lib/ui/lockpattern/widget/LockPatternView$Cell;->of(II)Lgroup/pals/android/lib/ui/lockpattern/widget/LockPatternView$Cell;

    move-result-object p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v0

    return-object p0

    :catchall_0
    move-exception p0

    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p0
.end method

.method public static declared-synchronized of(II)Lgroup/pals/android/lib/ui/lockpattern/widget/LockPatternView$Cell;
    .locals 2

    const-class v0, Lgroup/pals/android/lib/ui/lockpattern/widget/LockPatternView$Cell;

    monitor-enter v0

    .line 215
    :try_start_0
    invoke-static {p0, p1}, Lgroup/pals/android/lib/ui/lockpattern/widget/LockPatternView$Cell;->checkRange(II)V

    .line 216
    sget-object v1, Lgroup/pals/android/lib/ui/lockpattern/widget/LockPatternView$Cell;->sCells:[[Lgroup/pals/android/lib/ui/lockpattern/widget/LockPatternView$Cell;

    aget-object p0, v1, p0

    aget-object p0, p0, p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v0

    return-object p0

    :catchall_0
    move-exception p0

    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p0
.end method


# virtual methods
.method public describeContents()I
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 2

    .line 250
    instance-of v0, p1, Lgroup/pals/android/lib/ui/lockpattern/widget/LockPatternView$Cell;

    if-eqz v0, :cond_1

    .line 251
    invoke-virtual {p0}, Lgroup/pals/android/lib/ui/lockpattern/widget/LockPatternView$Cell;->getColumn()I

    move-result v0

    check-cast p1, Lgroup/pals/android/lib/ui/lockpattern/widget/LockPatternView$Cell;

    invoke-virtual {p1}, Lgroup/pals/android/lib/ui/lockpattern/widget/LockPatternView$Cell;->getColumn()I

    move-result v1

    if-ne v0, v1, :cond_0

    .line 252
    invoke-virtual {p0}, Lgroup/pals/android/lib/ui/lockpattern/widget/LockPatternView$Cell;->getRow()I

    move-result v0

    invoke-virtual {p1}, Lgroup/pals/android/lib/ui/lockpattern/widget/LockPatternView$Cell;->getRow()I

    move-result p1

    if-ne v0, p1, :cond_0

    const/4 p1, 0x1

    return p1

    :cond_0
    const/4 p1, 0x0

    return p1

    .line 253
    :cond_1
    invoke-super {p0, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result p1

    return p1
.end method

.method public getColumn()I
    .locals 1

    .line 195
    iget v0, p0, Lgroup/pals/android/lib/ui/lockpattern/widget/LockPatternView$Cell;->mColumn:I

    return v0
.end method

.method public getRow()I
    .locals 1

    .line 186
    iget v0, p0, Lgroup/pals/android/lib/ui/lockpattern/widget/LockPatternView$Cell;->mRow:I

    return v0
.end method

.method public readFromParcel(Landroid/os/Parcel;)V
    .locals 1

    .line 278
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lgroup/pals/android/lib/ui/lockpattern/widget/LockPatternView$Cell;->mColumn:I

    .line 279
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result p1

    iput p1, p0, Lgroup/pals/android/lib/ui/lockpattern/widget/LockPatternView$Cell;->mRow:I

    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .line 245
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "(ROW="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lgroup/pals/android/lib/ui/lockpattern/widget/LockPatternView$Cell;->getRow()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ",COL="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lgroup/pals/android/lib/ui/lockpattern/widget/LockPatternView$Cell;->getColumn()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ")"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 0

    .line 267
    invoke-virtual {p0}, Lgroup/pals/android/lib/ui/lockpattern/widget/LockPatternView$Cell;->getColumn()I

    move-result p2

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 268
    invoke-virtual {p0}, Lgroup/pals/android/lib/ui/lockpattern/widget/LockPatternView$Cell;->getRow()I

    move-result p2

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    return-void
.end method
