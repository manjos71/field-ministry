.class public final Lcom/jaredrummler/android/device/DeviceName$DeviceInfo;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/jaredrummler/android/device/DeviceName;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "DeviceInfo"
.end annotation


# instance fields
.field public final codename:Ljava/lang/String;

.field public final manufacturer:Ljava/lang/String;

.field public final marketName:Ljava/lang/String;

.field public final model:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    const/4 v0, 0x0

    .line 363
    invoke-direct {p0, v0, p1, p2, p3}, Lcom/jaredrummler/android/device/DeviceName$DeviceInfo;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    .line 366
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 367
    iput-object p1, p0, Lcom/jaredrummler/android/device/DeviceName$DeviceInfo;->manufacturer:Ljava/lang/String;

    .line 368
    iput-object p2, p0, Lcom/jaredrummler/android/device/DeviceName$DeviceInfo;->marketName:Ljava/lang/String;

    .line 369
    iput-object p3, p0, Lcom/jaredrummler/android/device/DeviceName$DeviceInfo;->codename:Ljava/lang/String;

    .line 370
    iput-object p4, p0, Lcom/jaredrummler/android/device/DeviceName$DeviceInfo;->model:Ljava/lang/String;

    return-void
.end method

.method private constructor <init>(Lorg/json/JSONObject;)V
    .locals 1

    .line 373
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 374
    const-string v0, "manufacturer"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/jaredrummler/android/device/DeviceName$DeviceInfo;->manufacturer:Ljava/lang/String;

    .line 375
    const-string v0, "market_name"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/jaredrummler/android/device/DeviceName$DeviceInfo;->marketName:Ljava/lang/String;

    .line 376
    const-string v0, "codename"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/jaredrummler/android/device/DeviceName$DeviceInfo;->codename:Ljava/lang/String;

    .line 377
    const-string v0, "model"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/jaredrummler/android/device/DeviceName$DeviceInfo;->model:Ljava/lang/String;

    return-void
.end method

.method synthetic constructor <init>(Lorg/json/JSONObject;Lcom/jaredrummler/android/device/DeviceName$1;)V
    .locals 0

    .line 347
    invoke-direct {p0, p1}, Lcom/jaredrummler/android/device/DeviceName$DeviceInfo;-><init>(Lorg/json/JSONObject;)V

    return-void
.end method
