.class Lnet/simonvt/widget/TimePicker$SavedState$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/os/Parcelable$Creator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lnet/simonvt/widget/TimePicker$SavedState;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .line 341
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public bridge synthetic createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;
    .locals 0

    .line 341
    invoke-virtual {p0, p1}, Lnet/simonvt/widget/TimePicker$SavedState$1;->createFromParcel(Landroid/os/Parcel;)Lnet/simonvt/widget/TimePicker$SavedState;

    move-result-object p1

    return-object p1
.end method

.method public createFromParcel(Landroid/os/Parcel;)Lnet/simonvt/widget/TimePicker$SavedState;
    .locals 2

    .line 343
    new-instance v0, Lnet/simonvt/widget/TimePicker$SavedState;

    const/4 v1, 0x0

    invoke-direct {v0, p1, v1}, Lnet/simonvt/widget/TimePicker$SavedState;-><init>(Landroid/os/Parcel;Lnet/simonvt/widget/TimePicker$1;)V

    return-object v0
.end method

.method public bridge synthetic newArray(I)[Ljava/lang/Object;
    .locals 0

    .line 341
    invoke-virtual {p0, p1}, Lnet/simonvt/widget/TimePicker$SavedState$1;->newArray(I)[Lnet/simonvt/widget/TimePicker$SavedState;

    move-result-object p1

    return-object p1
.end method

.method public newArray(I)[Lnet/simonvt/widget/TimePicker$SavedState;
    .locals 0

    .line 347
    new-array p1, p1, [Lnet/simonvt/widget/TimePicker$SavedState;

    return-object p1
.end method
