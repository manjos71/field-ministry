.class public final Lcom/nightlynexus/viewstatepageradapter/ViewStatePagerAdapter$SavedState;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/os/Parcelable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/nightlynexus/viewstatepageradapter/ViewStatePagerAdapter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "SavedState"
.end annotation


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Lcom/nightlynexus/viewstatepageradapter/ViewStatePagerAdapter$SavedState;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field final detached:Landroid/util/SparseArray;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 114
    new-instance v0, Lcom/nightlynexus/viewstatepageradapter/ViewStatePagerAdapter$SavedState$1;

    invoke-direct {v0}, Lcom/nightlynexus/viewstatepageradapter/ViewStatePagerAdapter$SavedState$1;-><init>()V

    sput-object v0, Lcom/nightlynexus/viewstatepageradapter/ViewStatePagerAdapter$SavedState;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method constructor <init>(Landroid/util/SparseArray;)V
    .locals 0

    .line 106
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 107
    iput-object p1, p0, Lcom/nightlynexus/viewstatepageradapter/ViewStatePagerAdapter$SavedState;->detached:Landroid/util/SparseArray;

    return-void
.end method

.method static readNestedSparseArray(Landroid/os/Parcel;Ljava/lang/ClassLoader;)Landroid/util/SparseArray;
    .locals 4

    .line 132
    invoke-virtual {p0}, Landroid/os/Parcel;->readInt()I

    move-result v0

    const/4 v1, -0x1

    if-ne v0, v1, :cond_0

    const/4 p0, 0x0

    return-object p0

    .line 136
    :cond_0
    new-instance v1, Landroid/util/SparseArray;

    invoke-direct {v1, v0}, Landroid/util/SparseArray;-><init>(I)V

    :goto_0
    if-eqz v0, :cond_1

    .line 138
    invoke-virtual {p0}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 139
    invoke-static {p0, p1}, Lcom/nightlynexus/viewstatepageradapter/ViewStatePagerAdapter$SavedState;->readSparseArray(Landroid/os/Parcel;Ljava/lang/ClassLoader;)Landroid/util/SparseArray;

    move-result-object v3

    .line 140
    invoke-virtual {v1, v2, v3}, Landroid/util/SparseArray;->append(ILjava/lang/Object;)V

    add-int/lit8 v0, v0, -0x1

    goto :goto_0

    :cond_1
    return-object v1
.end method

.method static readSparseArray(Landroid/os/Parcel;Ljava/lang/ClassLoader;)Landroid/util/SparseArray;
    .locals 4

    .line 147
    invoke-virtual {p0}, Landroid/os/Parcel;->readInt()I

    move-result v0

    const/4 v1, -0x1

    if-ne v0, v1, :cond_0

    const/4 p0, 0x0

    return-object p0

    .line 151
    :cond_0
    new-instance v1, Landroid/util/SparseArray;

    invoke-direct {v1, v0}, Landroid/util/SparseArray;-><init>(I)V

    :goto_0
    if-eqz v0, :cond_1

    .line 153
    invoke-virtual {p0}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 154
    invoke-virtual {p0, p1}, Landroid/os/Parcel;->readParcelable(Ljava/lang/ClassLoader;)Landroid/os/Parcelable;

    move-result-object v3

    .line 155
    invoke-virtual {v1, v2, v3}, Landroid/util/SparseArray;->append(ILjava/lang/Object;)V

    add-int/lit8 v0, v0, -0x1

    goto :goto_0

    :cond_1
    return-object v1
.end method

.method static writeNestedSparseArray(Landroid/os/Parcel;Landroid/util/SparseArray;I)V
    .locals 3

    if-nez p1, :cond_0

    const/4 p1, -0x1

    .line 164
    invoke-virtual {p0, p1}, Landroid/os/Parcel;->writeInt(I)V

    return-void

    .line 167
    :cond_0
    invoke-virtual {p1}, Landroid/util/SparseArray;->size()I

    move-result v0

    .line 168
    invoke-virtual {p0, v0}, Landroid/os/Parcel;->writeInt(I)V

    const/4 v1, 0x0

    :goto_0
    if-eq v1, v0, :cond_1

    .line 171
    invoke-virtual {p1, v1}, Landroid/util/SparseArray;->keyAt(I)I

    move-result v2

    invoke-virtual {p0, v2}, Landroid/os/Parcel;->writeInt(I)V

    .line 172
    invoke-virtual {p1, v1}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/util/SparseArray;

    invoke-static {p0, v2, p2}, Lcom/nightlynexus/viewstatepageradapter/ViewStatePagerAdapter$SavedState;->writeSparseArray(Landroid/os/Parcel;Landroid/util/SparseArray;I)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    return-void
.end method

.method static writeSparseArray(Landroid/os/Parcel;Landroid/util/SparseArray;I)V
    .locals 3

    if-nez p1, :cond_0

    const/4 p1, -0x1

    .line 179
    invoke-virtual {p0, p1}, Landroid/os/Parcel;->writeInt(I)V

    return-void

    .line 182
    :cond_0
    invoke-virtual {p1}, Landroid/util/SparseArray;->size()I

    move-result v0

    .line 183
    invoke-virtual {p0, v0}, Landroid/os/Parcel;->writeInt(I)V

    const/4 v1, 0x0

    :goto_0
    if-eq v1, v0, :cond_1

    .line 186
    invoke-virtual {p1, v1}, Landroid/util/SparseArray;->keyAt(I)I

    move-result v2

    invoke-virtual {p0, v2}, Landroid/os/Parcel;->writeInt(I)V

    .line 187
    invoke-virtual {p1, v1}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/os/Parcelable;

    invoke-virtual {p0, v2, p2}, Landroid/os/Parcel;->writeParcelable(Landroid/os/Parcelable;I)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    return-void
.end method


# virtual methods
.method public describeContents()I
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 1

    .line 111
    iget-object v0, p0, Lcom/nightlynexus/viewstatepageradapter/ViewStatePagerAdapter$SavedState;->detached:Landroid/util/SparseArray;

    invoke-static {p1, v0, p2}, Lcom/nightlynexus/viewstatepageradapter/ViewStatePagerAdapter$SavedState;->writeNestedSparseArray(Landroid/os/Parcel;Landroid/util/SparseArray;I)V

    return-void
.end method
