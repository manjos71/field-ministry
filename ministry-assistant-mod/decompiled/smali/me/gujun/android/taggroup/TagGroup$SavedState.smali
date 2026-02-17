.class Lme/gujun/android/taggroup/TagGroup$SavedState;
.super Landroid/view/View$BaseSavedState;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lme/gujun/android/taggroup/TagGroup;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "SavedState"
.end annotation


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Lme/gujun/android/taggroup/TagGroup$SavedState;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field checkedPosition:I

.field input:Ljava/lang/String;

.field tagCount:I

.field tags:[Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 772
    new-instance v0, Lme/gujun/android/taggroup/TagGroup$SavedState$1;

    invoke-direct {v0}, Lme/gujun/android/taggroup/TagGroup$SavedState$1;-><init>()V

    sput-object v0, Lme/gujun/android/taggroup/TagGroup$SavedState;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>(Landroid/os/Parcel;)V
    .locals 1

    .line 788
    invoke-direct {p0, p1}, Landroid/view/View$BaseSavedState;-><init>(Landroid/os/Parcel;)V

    .line 789
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lme/gujun/android/taggroup/TagGroup$SavedState;->tagCount:I

    .line 790
    new-array v0, v0, [Ljava/lang/String;

    iput-object v0, p0, Lme/gujun/android/taggroup/TagGroup$SavedState;->tags:[Ljava/lang/String;

    .line 791
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->readStringArray([Ljava/lang/String;)V

    .line 792
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lme/gujun/android/taggroup/TagGroup$SavedState;->checkedPosition:I

    .line 793
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lme/gujun/android/taggroup/TagGroup$SavedState;->input:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Landroid/os/Parcelable;)V
    .locals 0

    .line 797
    invoke-direct {p0, p1}, Landroid/view/View$BaseSavedState;-><init>(Landroid/os/Parcelable;)V

    return-void
.end method


# virtual methods
.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 0

    .line 802
    invoke-super {p0, p1, p2}, Landroid/view/View$BaseSavedState;->writeToParcel(Landroid/os/Parcel;I)V

    .line 803
    iget-object p2, p0, Lme/gujun/android/taggroup/TagGroup$SavedState;->tags:[Ljava/lang/String;

    array-length p2, p2

    iput p2, p0, Lme/gujun/android/taggroup/TagGroup$SavedState;->tagCount:I

    .line 804
    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 805
    iget-object p2, p0, Lme/gujun/android/taggroup/TagGroup$SavedState;->tags:[Ljava/lang/String;

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeStringArray([Ljava/lang/String;)V

    .line 806
    iget p2, p0, Lme/gujun/android/taggroup/TagGroup$SavedState;->checkedPosition:I

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 807
    iget-object p2, p0, Lme/gujun/android/taggroup/TagGroup$SavedState;->input:Ljava/lang/String;

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    return-void
.end method
