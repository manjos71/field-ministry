.class public Lcom/aurelhubert/ahbottomnavigation/notification/AHNotification;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/os/Parcelable;


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Lcom/aurelhubert/ahbottomnavigation/notification/AHNotification;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private backgroundColor:I

.field private text:Ljava/lang/String;

.field private textColor:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 108
    new-instance v0, Lcom/aurelhubert/ahbottomnavigation/notification/AHNotification$1;

    invoke-direct {v0}, Lcom/aurelhubert/ahbottomnavigation/notification/AHNotification$1;-><init>()V

    sput-object v0, Lcom/aurelhubert/ahbottomnavigation/notification/AHNotification;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 26
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private constructor <init>(Landroid/os/Parcel;)V
    .locals 1

    .line 30
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 31
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/aurelhubert/ahbottomnavigation/notification/AHNotification;->text:Ljava/lang/String;

    .line 32
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/aurelhubert/ahbottomnavigation/notification/AHNotification;->textColor:I

    .line 33
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result p1

    iput p1, p0, Lcom/aurelhubert/ahbottomnavigation/notification/AHNotification;->backgroundColor:I

    return-void
.end method

.method synthetic constructor <init>(Landroid/os/Parcel;Lcom/aurelhubert/ahbottomnavigation/notification/AHNotification$1;)V
    .locals 0

    .line 15
    invoke-direct {p0, p1}, Lcom/aurelhubert/ahbottomnavigation/notification/AHNotification;-><init>(Landroid/os/Parcel;)V

    return-void
.end method

.method public static generateEmptyList(I)Ljava/util/List;
    .locals 3

    .line 57
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    const/4 v1, 0x0

    :goto_0
    if-ge v1, p0, :cond_0

    .line 59
    new-instance v2, Lcom/aurelhubert/ahbottomnavigation/notification/AHNotification;

    invoke-direct {v2}, Lcom/aurelhubert/ahbottomnavigation/notification/AHNotification;-><init>()V

    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    return-object v0
.end method


# virtual methods
.method public describeContents()I
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public getBackgroundColor()I
    .locals 1

    .line 49
    iget v0, p0, Lcom/aurelhubert/ahbottomnavigation/notification/AHNotification;->backgroundColor:I

    return v0
.end method

.method public getText()Ljava/lang/String;
    .locals 1

    .line 41
    iget-object v0, p0, Lcom/aurelhubert/ahbottomnavigation/notification/AHNotification;->text:Ljava/lang/String;

    return-object v0
.end method

.method public getTextColor()I
    .locals 1

    .line 45
    iget v0, p0, Lcom/aurelhubert/ahbottomnavigation/notification/AHNotification;->textColor:I

    return v0
.end method

.method public isEmpty()Z
    .locals 1

    .line 37
    iget-object v0, p0, Lcom/aurelhubert/ahbottomnavigation/notification/AHNotification;->text:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    return v0
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 0

    .line 71
    iget-object p2, p0, Lcom/aurelhubert/ahbottomnavigation/notification/AHNotification;->text:Ljava/lang/String;

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 72
    iget p2, p0, Lcom/aurelhubert/ahbottomnavigation/notification/AHNotification;->textColor:I

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 73
    iget p2, p0, Lcom/aurelhubert/ahbottomnavigation/notification/AHNotification;->backgroundColor:I

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    return-void
.end method
