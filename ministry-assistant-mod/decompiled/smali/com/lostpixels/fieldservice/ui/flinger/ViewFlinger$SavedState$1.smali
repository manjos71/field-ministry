.class Lcom/lostpixels/fieldservice/ui/flinger/ViewFlinger$SavedState$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/os/Parcelable$Creator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/lostpixels/fieldservice/ui/flinger/ViewFlinger$SavedState;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .line 1021
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public createFromParcel(Landroid/os/Parcel;)Lcom/lostpixels/fieldservice/ui/flinger/ViewFlinger$SavedState;
    .locals 2

    .line 1024
    new-instance v0, Lcom/lostpixels/fieldservice/ui/flinger/ViewFlinger$SavedState;

    const/4 v1, 0x0

    invoke-direct {v0, p1, v1}, Lcom/lostpixels/fieldservice/ui/flinger/ViewFlinger$SavedState;-><init>(Landroid/os/Parcel;Lcom/lostpixels/fieldservice/ui/flinger/ViewFlinger-IA;)V

    return-object v0
.end method

.method public bridge synthetic createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;
    .locals 0

    .line 1021
    invoke-virtual {p0, p1}, Lcom/lostpixels/fieldservice/ui/flinger/ViewFlinger$SavedState$1;->createFromParcel(Landroid/os/Parcel;)Lcom/lostpixels/fieldservice/ui/flinger/ViewFlinger$SavedState;

    move-result-object p1

    return-object p1
.end method

.method public newArray(I)[Lcom/lostpixels/fieldservice/ui/flinger/ViewFlinger$SavedState;
    .locals 0

    .line 1028
    new-array p1, p1, [Lcom/lostpixels/fieldservice/ui/flinger/ViewFlinger$SavedState;

    return-object p1
.end method

.method public bridge synthetic newArray(I)[Ljava/lang/Object;
    .locals 0

    .line 1021
    invoke-virtual {p0, p1}, Lcom/lostpixels/fieldservice/ui/flinger/ViewFlinger$SavedState$1;->newArray(I)[Lcom/lostpixels/fieldservice/ui/flinger/ViewFlinger$SavedState;

    move-result-object p1

    return-object p1
.end method
