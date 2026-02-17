.class Lcom/lostpixels/fieldservice/ui/TwoLinesButton$SavedState;
.super Landroid/view/View$BaseSavedState;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/lostpixels/fieldservice/ui/TwoLinesButton;
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
            "Lcom/lostpixels/fieldservice/ui/TwoLinesButton$SavedState;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field stateToSave:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 121
    new-instance v0, Lcom/lostpixels/fieldservice/ui/TwoLinesButton$SavedState$1;

    invoke-direct {v0}, Lcom/lostpixels/fieldservice/ui/TwoLinesButton$SavedState$1;-><init>()V

    sput-object v0, Lcom/lostpixels/fieldservice/ui/TwoLinesButton$SavedState;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method private constructor <init>(Landroid/os/Parcel;)V
    .locals 0

    .line 140
    invoke-direct {p0, p1}, Landroid/view/View$BaseSavedState;-><init>(Landroid/os/Parcel;)V

    .line 141
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/lostpixels/fieldservice/ui/TwoLinesButton$SavedState;->stateToSave:Ljava/lang/String;

    return-void
.end method

.method synthetic constructor <init>(Landroid/os/Parcel;Lcom/lostpixels/fieldservice/ui/TwoLinesButton-IA;)V
    .locals 0

    .line 0
    invoke-direct {p0, p1}, Lcom/lostpixels/fieldservice/ui/TwoLinesButton$SavedState;-><init>(Landroid/os/Parcel;)V

    return-void
.end method

.method constructor <init>(Landroid/os/Parcelable;)V
    .locals 0

    .line 136
    invoke-direct {p0, p1}, Landroid/view/View$BaseSavedState;-><init>(Landroid/os/Parcelable;)V

    return-void
.end method


# virtual methods
.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 0

    .line 146
    invoke-super {p0, p1, p2}, Landroid/view/View$BaseSavedState;->writeToParcel(Landroid/os/Parcel;I)V

    .line 147
    iget-object p2, p0, Lcom/lostpixels/fieldservice/ui/TwoLinesButton$SavedState;->stateToSave:Ljava/lang/String;

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    return-void
.end method
