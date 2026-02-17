.class Lcom/nightlynexus/viewstatepageradapter/ViewStatePagerAdapter$SavedState$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/os/Parcelable$Creator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/nightlynexus/viewstatepageradapter/ViewStatePagerAdapter$SavedState;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .line 114
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public createFromParcel(Landroid/os/Parcel;)Lcom/nightlynexus/viewstatepageradapter/ViewStatePagerAdapter$SavedState;
    .locals 1

    .line 116
    const-class v0, Lcom/nightlynexus/viewstatepageradapter/ViewStatePagerAdapter$SavedState;

    .line 117
    invoke-virtual {v0}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v0

    invoke-static {p1, v0}, Lcom/nightlynexus/viewstatepageradapter/ViewStatePagerAdapter$SavedState;->readNestedSparseArray(Landroid/os/Parcel;Ljava/lang/ClassLoader;)Landroid/util/SparseArray;

    move-result-object p1

    .line 118
    new-instance v0, Lcom/nightlynexus/viewstatepageradapter/ViewStatePagerAdapter$SavedState;

    invoke-direct {v0, p1}, Lcom/nightlynexus/viewstatepageradapter/ViewStatePagerAdapter$SavedState;-><init>(Landroid/util/SparseArray;)V

    return-object v0
.end method

.method public bridge synthetic createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;
    .locals 0

    .line 114
    invoke-virtual {p0, p1}, Lcom/nightlynexus/viewstatepageradapter/ViewStatePagerAdapter$SavedState$1;->createFromParcel(Landroid/os/Parcel;)Lcom/nightlynexus/viewstatepageradapter/ViewStatePagerAdapter$SavedState;

    move-result-object p1

    return-object p1
.end method

.method public newArray(I)[Lcom/nightlynexus/viewstatepageradapter/ViewStatePagerAdapter$SavedState;
    .locals 0

    .line 122
    new-array p1, p1, [Lcom/nightlynexus/viewstatepageradapter/ViewStatePagerAdapter$SavedState;

    return-object p1
.end method

.method public bridge synthetic newArray(I)[Ljava/lang/Object;
    .locals 0

    .line 114
    invoke-virtual {p0, p1}, Lcom/nightlynexus/viewstatepageradapter/ViewStatePagerAdapter$SavedState$1;->newArray(I)[Lcom/nightlynexus/viewstatepageradapter/ViewStatePagerAdapter$SavedState;

    move-result-object p1

    return-object p1
.end method
