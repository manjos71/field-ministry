.class public Lezvcard/util/GeoUri$Builder;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lezvcard/util/GeoUri;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Builder"
.end annotation


# instance fields
.field private coordA:Ljava/lang/Double;

.field private coordB:Ljava/lang/Double;

.field private coordC:Ljava/lang/Double;

.field private crs:Ljava/lang/String;

.field private parameters:Ljava/util/Map;

.field private uncertainty:Ljava/lang/Double;


# direct methods
.method public constructor <init>(Ljava/lang/Double;Ljava/lang/Double;)V
    .locals 2

    .line 346
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 347
    new-instance v0, Ljava/util/LinkedHashMap;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Ljava/util/LinkedHashMap;-><init>(I)V

    iput-object v0, p0, Lezvcard/util/GeoUri$Builder;->parameters:Ljava/util/Map;

    .line 348
    invoke-virtual {p0, p1}, Lezvcard/util/GeoUri$Builder;->coordA(Ljava/lang/Double;)Lezvcard/util/GeoUri$Builder;

    .line 349
    invoke-virtual {p0, p2}, Lezvcard/util/GeoUri$Builder;->coordB(Ljava/lang/Double;)Lezvcard/util/GeoUri$Builder;

    return-void
.end method

.method static synthetic access$000(Lezvcard/util/GeoUri$Builder;)Ljava/lang/Double;
    .locals 0

    .line 333
    iget-object p0, p0, Lezvcard/util/GeoUri$Builder;->coordA:Ljava/lang/Double;

    return-object p0
.end method

.method static synthetic access$100(Lezvcard/util/GeoUri$Builder;)Ljava/lang/Double;
    .locals 0

    .line 333
    iget-object p0, p0, Lezvcard/util/GeoUri$Builder;->coordB:Ljava/lang/Double;

    return-object p0
.end method

.method static synthetic access$200(Lezvcard/util/GeoUri$Builder;)Ljava/lang/Double;
    .locals 0

    .line 333
    iget-object p0, p0, Lezvcard/util/GeoUri$Builder;->coordC:Ljava/lang/Double;

    return-object p0
.end method

.method static synthetic access$202(Lezvcard/util/GeoUri$Builder;Ljava/lang/Double;)Ljava/lang/Double;
    .locals 0

    .line 333
    iput-object p1, p0, Lezvcard/util/GeoUri$Builder;->coordC:Ljava/lang/Double;

    return-object p1
.end method

.method static synthetic access$300(Lezvcard/util/GeoUri$Builder;)Ljava/lang/String;
    .locals 0

    .line 333
    iget-object p0, p0, Lezvcard/util/GeoUri$Builder;->crs:Ljava/lang/String;

    return-object p0
.end method

.method static synthetic access$302(Lezvcard/util/GeoUri$Builder;Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    .line 333
    iput-object p1, p0, Lezvcard/util/GeoUri$Builder;->crs:Ljava/lang/String;

    return-object p1
.end method

.method static synthetic access$400(Lezvcard/util/GeoUri$Builder;)Ljava/lang/Double;
    .locals 0

    .line 333
    iget-object p0, p0, Lezvcard/util/GeoUri$Builder;->uncertainty:Ljava/lang/Double;

    return-object p0
.end method

.method static synthetic access$402(Lezvcard/util/GeoUri$Builder;Ljava/lang/Double;)Ljava/lang/Double;
    .locals 0

    .line 333
    iput-object p1, p0, Lezvcard/util/GeoUri$Builder;->uncertainty:Ljava/lang/Double;

    return-object p1
.end method

.method static synthetic access$500(Lezvcard/util/GeoUri$Builder;)Ljava/util/Map;
    .locals 0

    .line 333
    iget-object p0, p0, Lezvcard/util/GeoUri$Builder;->parameters:Ljava/util/Map;

    return-object p0
.end method


# virtual methods
.method public build()Lezvcard/util/GeoUri;
    .locals 2

    .line 448
    new-instance v0, Lezvcard/util/GeoUri;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lezvcard/util/GeoUri;-><init>(Lezvcard/util/GeoUri$Builder;Lezvcard/util/GeoUri$1;)V

    return-object v0
.end method

.method public coordA(Ljava/lang/Double;)Lezvcard/util/GeoUri$Builder;
    .locals 2

    if-nez p1, :cond_0

    const-wide/16 v0, 0x0

    goto :goto_0

    .line 371
    :cond_0
    invoke-virtual {p1}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v0

    :goto_0
    invoke-static {v0, v1}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object p1

    iput-object p1, p0, Lezvcard/util/GeoUri$Builder;->coordA:Ljava/lang/Double;

    return-object p0
.end method

.method public coordB(Ljava/lang/Double;)Lezvcard/util/GeoUri$Builder;
    .locals 2

    if-nez p1, :cond_0

    const-wide/16 v0, 0x0

    goto :goto_0

    .line 381
    :cond_0
    invoke-virtual {p1}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v0

    :goto_0
    invoke-static {v0, v1}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object p1

    iput-object p1, p0, Lezvcard/util/GeoUri$Builder;->coordB:Ljava/lang/Double;

    return-object p0
.end method
