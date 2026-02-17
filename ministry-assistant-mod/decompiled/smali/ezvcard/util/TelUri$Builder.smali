.class public Lezvcard/util/TelUri$Builder;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lezvcard/util/TelUri;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Builder"
.end annotation


# instance fields
.field private extension:Ljava/lang/String;

.field private isdnSubaddress:Ljava/lang/String;

.field private number:Ljava/lang/String;

.field private parameters:Ljava/util/Map;

.field private phoneContext:Ljava/lang/String;


# direct methods
.method private constructor <init>()V
    .locals 1

    .line 352
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 354
    new-instance v0, Ljava/util/TreeMap;

    invoke-direct {v0}, Ljava/util/TreeMap;-><init>()V

    iput-object v0, p0, Lezvcard/util/TelUri$Builder;->parameters:Ljava/util/Map;

    return-void
.end method

.method synthetic constructor <init>(Lezvcard/util/TelUri$1;)V
    .locals 0

    .line 345
    invoke-direct {p0}, Lezvcard/util/TelUri$Builder;-><init>()V

    return-void
.end method

.method static synthetic access$000(Lezvcard/util/TelUri$Builder;)Ljava/lang/String;
    .locals 0

    .line 345
    iget-object p0, p0, Lezvcard/util/TelUri$Builder;->number:Ljava/lang/String;

    return-object p0
.end method

.method static synthetic access$002(Lezvcard/util/TelUri$Builder;Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    .line 345
    iput-object p1, p0, Lezvcard/util/TelUri$Builder;->number:Ljava/lang/String;

    return-object p1
.end method

.method static synthetic access$100(Lezvcard/util/TelUri$Builder;)Ljava/lang/String;
    .locals 0

    .line 345
    iget-object p0, p0, Lezvcard/util/TelUri$Builder;->extension:Ljava/lang/String;

    return-object p0
.end method

.method static synthetic access$102(Lezvcard/util/TelUri$Builder;Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    .line 345
    iput-object p1, p0, Lezvcard/util/TelUri$Builder;->extension:Ljava/lang/String;

    return-object p1
.end method

.method static synthetic access$200(Lezvcard/util/TelUri$Builder;)Ljava/lang/String;
    .locals 0

    .line 345
    iget-object p0, p0, Lezvcard/util/TelUri$Builder;->isdnSubaddress:Ljava/lang/String;

    return-object p0
.end method

.method static synthetic access$202(Lezvcard/util/TelUri$Builder;Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    .line 345
    iput-object p1, p0, Lezvcard/util/TelUri$Builder;->isdnSubaddress:Ljava/lang/String;

    return-object p1
.end method

.method static synthetic access$300(Lezvcard/util/TelUri$Builder;)Ljava/lang/String;
    .locals 0

    .line 345
    iget-object p0, p0, Lezvcard/util/TelUri$Builder;->phoneContext:Ljava/lang/String;

    return-object p0
.end method

.method static synthetic access$302(Lezvcard/util/TelUri$Builder;Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    .line 345
    iput-object p1, p0, Lezvcard/util/TelUri$Builder;->phoneContext:Ljava/lang/String;

    return-object p1
.end method

.method static synthetic access$400(Lezvcard/util/TelUri$Builder;)Ljava/util/Map;
    .locals 0

    .line 345
    iget-object p0, p0, Lezvcard/util/TelUri$Builder;->parameters:Ljava/util/Map;

    return-object p0
.end method


# virtual methods
.method public build()Lezvcard/util/TelUri;
    .locals 2

    .line 576
    new-instance v0, Lezvcard/util/TelUri;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lezvcard/util/TelUri;-><init>(Lezvcard/util/TelUri$Builder;Lezvcard/util/TelUri$1;)V

    return-object v0
.end method
