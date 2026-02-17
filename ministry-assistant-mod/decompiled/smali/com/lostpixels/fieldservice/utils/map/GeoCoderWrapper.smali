.class public Lcom/lostpixels/fieldservice/utils/map/GeoCoderWrapper;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/lostpixels/fieldservice/utils/map/GeoCoderWrapper$GeocoderAddress;
    }
.end annotation


# static fields
.field private static instance:Lcom/lostpixels/fieldservice/utils/map/GeoCoderWrapper;

.field private static final rand:Ljava/util/Random;


# instance fields
.field private androidGeocoder:Landroid/location/Geocoder;

.field private geocoderToUse:I

.field private geocoderWithKey:Lcom/doctoror/geocoder/Geocoder;

.field private locatiomIqGeocoder:Lcom/doctoror/geocoder/LocationIQGeocoder;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 25
    new-instance v0, Ljava/util/Random;

    invoke-direct {v0}, Ljava/util/Random;-><init>()V

    sput-object v0, Lcom/lostpixels/fieldservice/utils/map/GeoCoderWrapper;->rand:Ljava/util/Random;

    return-void
.end method

.method private constructor <init>()V
    .locals 1

    .line 35
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 27
    iput v0, p0, Lcom/lostpixels/fieldservice/utils/map/GeoCoderWrapper;->geocoderToUse:I

    const/4 v0, 0x0

    .line 28
    iput-object v0, p0, Lcom/lostpixels/fieldservice/utils/map/GeoCoderWrapper;->geocoderWithKey:Lcom/doctoror/geocoder/Geocoder;

    .line 30
    iput-object v0, p0, Lcom/lostpixels/fieldservice/utils/map/GeoCoderWrapper;->androidGeocoder:Landroid/location/Geocoder;

    .line 32
    iput-object v0, p0, Lcom/lostpixels/fieldservice/utils/map/GeoCoderWrapper;->locatiomIqGeocoder:Lcom/doctoror/geocoder/LocationIQGeocoder;

    return-void
.end method

.method private static getGeoCoderKey()Ljava/lang/String;
    .locals 2

    .line 49
    sget-object v0, Lcom/lostpixels/fieldservice/utils/map/GeoCoderWrapper;->rand:Ljava/util/Random;

    const/16 v1, 0xa

    invoke-virtual {v0, v1}, Ljava/util/Random;->nextInt(I)I

    move-result v0

    packed-switch v0, :pswitch_data_0

    .line 69
    const-string v0, "AIzaSyCmMtAwOqWPv5Pk2RGAdcVJ-Lvv4CSrz9A"

    return-object v0

    .line 67
    :pswitch_0
    const-string v0, "AIzaSyCG2NleeOgkqLd5re0SYnht1DRBP8ElWI8"

    return-object v0

    .line 65
    :pswitch_1
    const-string v0, "AIzaSyASmCmMNd6LQWYx2f56qpRb4r7MjODskjU"

    return-object v0

    .line 63
    :pswitch_2
    const-string v0, "AIzaSyDyd9V2KYQhEcEscuOaLCcOLV2DiUDb_Gk"

    return-object v0

    .line 61
    :pswitch_3
    const-string v0, "AIzaSyCyqv1x03b_ROnQ_sQbHDUURSHYwlQFWEk"

    return-object v0

    .line 59
    :pswitch_4
    const-string v0, "AIzaSyCzVvFk9lSsVpK3_nKYNh-RCXfgSkZmC_k"

    return-object v0

    .line 57
    :pswitch_5
    const-string v0, "AIzaSyAH6iEoh9c6qEoAZlg0wVaM3uRE2mzL4aE"

    return-object v0

    .line 55
    :pswitch_6
    const-string v0, "AIzaSyCylM4H3xHJ_ocI49kkB3vJ_kX67JpHLkY"

    return-object v0

    .line 53
    :pswitch_7
    const-string v0, "AIzaSyDQBopaf-E21P8UaB9IelZVPlgyc5SlnSs"

    return-object v0

    .line 51
    :pswitch_8
    const-string v0, "AIzaSyCr9-WD8K0W8VSz3_hmUjyg9q90yqWUshs"

    return-object v0

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_8
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public static getInstance()Lcom/lostpixels/fieldservice/utils/map/GeoCoderWrapper;
    .locals 1

    .line 41
    sget-object v0, Lcom/lostpixels/fieldservice/utils/map/GeoCoderWrapper;->instance:Lcom/lostpixels/fieldservice/utils/map/GeoCoderWrapper;

    if-nez v0, :cond_0

    .line 42
    new-instance v0, Lcom/lostpixels/fieldservice/utils/map/GeoCoderWrapper;

    invoke-direct {v0}, Lcom/lostpixels/fieldservice/utils/map/GeoCoderWrapper;-><init>()V

    sput-object v0, Lcom/lostpixels/fieldservice/utils/map/GeoCoderWrapper;->instance:Lcom/lostpixels/fieldservice/utils/map/GeoCoderWrapper;

    .line 44
    :cond_0
    sget-object v0, Lcom/lostpixels/fieldservice/utils/map/GeoCoderWrapper;->instance:Lcom/lostpixels/fieldservice/utils/map/GeoCoderWrapper;

    return-object v0
.end method


# virtual methods
.method public getFromLocation(Landroid/content/Context;DDI)Ljava/util/List;
    .locals 11

    .line 75
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 78
    iget v0, p0, Lcom/lostpixels/fieldservice/utils/map/GeoCoderWrapper;->geocoderToUse:I

    const/4 v2, 0x1

    const/4 v3, 0x0

    if-nez v0, :cond_3

    .line 80
    :try_start_0
    iget-object v0, p0, Lcom/lostpixels/fieldservice/utils/map/GeoCoderWrapper;->androidGeocoder:Landroid/location/Geocoder;

    if-nez v0, :cond_0

    .line 81
    new-instance v0, Landroid/location/Geocoder;

    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v4

    invoke-direct {v0, p1, v4}, Landroid/location/Geocoder;-><init>(Landroid/content/Context;Ljava/util/Locale;)V

    iput-object v0, p0, Lcom/lostpixels/fieldservice/utils/map/GeoCoderWrapper;->androidGeocoder:Landroid/location/Geocoder;

    goto :goto_0

    :catch_0
    move-exception v0

    goto :goto_1

    .line 83
    :cond_0
    :goto_0
    iget-object v4, p0, Lcom/lostpixels/fieldservice/utils/map/GeoCoderWrapper;->androidGeocoder:Landroid/location/Geocoder;

    move-wide v5, p2

    move-wide v7, p4

    move/from16 v9, p6

    invoke-virtual/range {v4 .. v9}, Landroid/location/Geocoder;->getFromLocation(DDI)Ljava/util/List;

    move-result-object v0

    .line 84
    invoke-static {v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-object v4, v0

    check-cast v4, Ljava/util/List;

    invoke-interface {v4}, Ljava/util/List;->isEmpty()Z

    move-result v4

    if-nez v4, :cond_2

    .line 85
    new-instance v4, Lcom/lostpixels/fieldservice/utils/map/GeoCoderWrapper$GeocoderAddress;

    invoke-interface {v0, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/location/Address;

    invoke-direct {v4, v0}, Lcom/lostpixels/fieldservice/utils/map/GeoCoderWrapper$GeocoderAddress;-><init>(Landroid/location/Address;)V

    .line 86
    iget-object v0, v4, Lcom/lostpixels/fieldservice/utils/map/GeoCoderWrapper$GeocoderAddress;->city:Ljava/lang/String;

    if-nez v0, :cond_1

    .line 87
    iput v2, p0, Lcom/lostpixels/fieldservice/utils/map/GeoCoderWrapper;->geocoderToUse:I

    goto :goto_2

    .line 89
    :cond_1
    invoke-interface {v1, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_2

    :cond_2
    const/4 v0, 0x1

    goto :goto_3

    .line 94
    :goto_1
    invoke-virtual {v0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v4

    invoke-static {v0}, Lcom/lostpixels/fieldservice/helpfunctions/HelpFunctions;->getStackTrace(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v4, v0}, Lcom/lostpixels/fieldservice/utils/LogToSD;->write(Ljava/lang/String;Ljava/lang/String;)V

    .line 95
    iput v2, p0, Lcom/lostpixels/fieldservice/utils/map/GeoCoderWrapper;->geocoderToUse:I

    :cond_3
    :goto_2
    const/4 v0, 0x0

    .line 100
    :goto_3
    iget v4, p0, Lcom/lostpixels/fieldservice/utils/map/GeoCoderWrapper;->geocoderToUse:I

    if-eq v4, v2, :cond_4

    if-ne v0, v2, :cond_8

    .line 103
    :cond_4
    :try_start_1
    sget-object v0, Lcom/lostpixels/fieldservice/utils/map/GeoCoderWrapper;->rand:Ljava/util/Random;

    invoke-virtual {v0}, Ljava/util/Random;->nextInt()I

    move-result v0

    rem-int/lit8 v0, v0, 0x3

    if-nez v0, :cond_6

    .line 104
    iget-object v0, p0, Lcom/lostpixels/fieldservice/utils/map/GeoCoderWrapper;->geocoderWithKey:Lcom/doctoror/geocoder/Geocoder;

    if-nez v0, :cond_5

    .line 105
    new-instance v0, Lcom/doctoror/geocoder/Geocoder;

    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v2

    invoke-static {}, Lcom/lostpixels/fieldservice/utils/map/GeoCoderWrapper;->getGeoCoderKey()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v0, p1, v2, v4}, Lcom/doctoror/geocoder/Geocoder;-><init>(Landroid/content/Context;Ljava/util/Locale;Ljava/lang/String;)V

    iput-object v0, p0, Lcom/lostpixels/fieldservice/utils/map/GeoCoderWrapper;->geocoderWithKey:Lcom/doctoror/geocoder/Geocoder;

    goto :goto_4

    :catch_1
    move-exception v0

    move-object p1, v0

    goto :goto_6

    .line 106
    :cond_5
    :goto_4
    iget-object v4, p0, Lcom/lostpixels/fieldservice/utils/map/GeoCoderWrapper;->geocoderWithKey:Lcom/doctoror/geocoder/Geocoder;

    const/4 v10, 0x1

    move-wide v5, p2

    move-wide v7, p4

    move/from16 v9, p6

    invoke-virtual/range {v4 .. v10}, Lcom/doctoror/geocoder/Geocoder;->getFromLocation(DDIZ)Ljava/util/List;

    move-result-object p1

    goto :goto_5

    .line 108
    :cond_6
    iget-object v0, p0, Lcom/lostpixels/fieldservice/utils/map/GeoCoderWrapper;->locatiomIqGeocoder:Lcom/doctoror/geocoder/LocationIQGeocoder;

    if-nez v0, :cond_7

    .line 109
    new-instance v0, Lcom/doctoror/geocoder/LocationIQGeocoder;

    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v2

    const-string v4, "875ad37ec3d81a"

    invoke-direct {v0, p1, v2, v4}, Lcom/doctoror/geocoder/LocationIQGeocoder;-><init>(Landroid/content/Context;Ljava/util/Locale;Ljava/lang/String;)V

    iput-object v0, p0, Lcom/lostpixels/fieldservice/utils/map/GeoCoderWrapper;->locatiomIqGeocoder:Lcom/doctoror/geocoder/LocationIQGeocoder;

    .line 110
    :cond_7
    iget-object v4, p0, Lcom/lostpixels/fieldservice/utils/map/GeoCoderWrapper;->locatiomIqGeocoder:Lcom/doctoror/geocoder/LocationIQGeocoder;

    const/4 v10, 0x1

    move-wide v5, p2

    move-wide v7, p4

    move/from16 v9, p6

    invoke-virtual/range {v4 .. v10}, Lcom/doctoror/geocoder/LocationIQGeocoder;->getFromLocation(DDIZ)Ljava/util/List;

    move-result-object p1

    .line 113
    :goto_5
    invoke-interface {p1}, Ljava/util/List;->isEmpty()Z

    move-result p2

    if-nez p2, :cond_8

    .line 114
    new-instance p2, Lcom/lostpixels/fieldservice/utils/map/GeoCoderWrapper$GeocoderAddress;

    invoke-interface {p1, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/doctoror/geocoder/Address;

    invoke-direct {p2, p1}, Lcom/lostpixels/fieldservice/utils/map/GeoCoderWrapper$GeocoderAddress;-><init>(Lcom/doctoror/geocoder/Address;)V

    .line 115
    invoke-interface {v1, p2}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_7

    .line 118
    :goto_6
    invoke-virtual {p1}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object p2

    invoke-static {p1}, Lcom/lostpixels/fieldservice/helpfunctions/HelpFunctions;->getStackTrace(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object p1

    invoke-static {p2, p1}, Lcom/lostpixels/fieldservice/utils/LogToSD;->write(Ljava/lang/String;Ljava/lang/String;)V

    .line 119
    iput v3, p0, Lcom/lostpixels/fieldservice/utils/map/GeoCoderWrapper;->geocoderToUse:I

    :cond_8
    :goto_7
    return-object v1
.end method

.method public getFromLocationName(Landroid/content/Context;Ljava/lang/String;ILjava/lang/String;)Ljava/util/List;
    .locals 6

    .line 128
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 132
    iget v1, p0, Lcom/lostpixels/fieldservice/utils/map/GeoCoderWrapper;->geocoderToUse:I

    const/4 v2, 0x1

    const/4 v3, 0x0

    if-nez v1, :cond_2

    .line 134
    :try_start_0
    iget-object v1, p0, Lcom/lostpixels/fieldservice/utils/map/GeoCoderWrapper;->androidGeocoder:Landroid/location/Geocoder;

    if-nez v1, :cond_0

    .line 135
    new-instance v1, Landroid/location/Geocoder;

    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v4

    invoke-direct {v1, p1, v4}, Landroid/location/Geocoder;-><init>(Landroid/content/Context;Ljava/util/Locale;)V

    iput-object v1, p0, Lcom/lostpixels/fieldservice/utils/map/GeoCoderWrapper;->androidGeocoder:Landroid/location/Geocoder;

    goto :goto_0

    :catch_0
    move-exception v1

    goto :goto_2

    .line 137
    :cond_0
    :goto_0
    iget-object v1, p0, Lcom/lostpixels/fieldservice/utils/map/GeoCoderWrapper;->androidGeocoder:Landroid/location/Geocoder;

    invoke-virtual {v1, p2, p3}, Landroid/location/Geocoder;->getFromLocationName(Ljava/lang/String;I)Ljava/util/List;

    move-result-object v1

    .line 138
    invoke-static {v1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-object v4, v1

    check-cast v4, Ljava/util/List;

    invoke-interface {v4}, Ljava/util/List;->isEmpty()Z

    move-result v4

    if-nez v4, :cond_1

    .line 139
    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_2

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/location/Address;

    .line 140
    new-instance v5, Lcom/lostpixels/fieldservice/utils/map/GeoCoderWrapper$GeocoderAddress;

    invoke-direct {v5, v4}, Lcom/lostpixels/fieldservice/utils/map/GeoCoderWrapper$GeocoderAddress;-><init>(Landroid/location/Address;)V

    .line 141
    invoke-interface {v0, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :cond_1
    const/4 v1, 0x1

    goto :goto_3

    .line 147
    :goto_2
    invoke-virtual {v1}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v4

    invoke-static {v1}, Lcom/lostpixels/fieldservice/helpfunctions/HelpFunctions;->getStackTrace(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v4, v1}, Lcom/lostpixels/fieldservice/utils/LogToSD;->write(Ljava/lang/String;Ljava/lang/String;)V

    .line 148
    iput v2, p0, Lcom/lostpixels/fieldservice/utils/map/GeoCoderWrapper;->geocoderToUse:I

    :cond_2
    const/4 v1, 0x0

    .line 153
    :goto_3
    iget v4, p0, Lcom/lostpixels/fieldservice/utils/map/GeoCoderWrapper;->geocoderToUse:I

    if-eq v4, v2, :cond_3

    if-ne v1, v2, :cond_5

    .line 161
    :cond_3
    :try_start_1
    iget-object v1, p0, Lcom/lostpixels/fieldservice/utils/map/GeoCoderWrapper;->locatiomIqGeocoder:Lcom/doctoror/geocoder/LocationIQGeocoder;

    if-nez v1, :cond_4

    .line 162
    new-instance v1, Lcom/doctoror/geocoder/LocationIQGeocoder;

    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v4

    const-string v5, "875ad37ec3d81a"

    invoke-direct {v1, p1, v4, v5}, Lcom/doctoror/geocoder/LocationIQGeocoder;-><init>(Landroid/content/Context;Ljava/util/Locale;Ljava/lang/String;)V

    iput-object v1, p0, Lcom/lostpixels/fieldservice/utils/map/GeoCoderWrapper;->locatiomIqGeocoder:Lcom/doctoror/geocoder/LocationIQGeocoder;

    goto :goto_4

    :catch_1
    move-exception p1

    goto :goto_6

    .line 163
    :cond_4
    :goto_4
    iget-object p1, p0, Lcom/lostpixels/fieldservice/utils/map/GeoCoderWrapper;->locatiomIqGeocoder:Lcom/doctoror/geocoder/LocationIQGeocoder;

    invoke-virtual {p1, p2, p4, p3, v2}, Lcom/doctoror/geocoder/LocationIQGeocoder;->getFromLocationName(Ljava/lang/String;Ljava/lang/String;IZ)Ljava/util/List;

    move-result-object p1

    .line 165
    invoke-interface {p1}, Ljava/util/List;->isEmpty()Z

    move-result p2

    if-nez p2, :cond_5

    .line 166
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_5
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result p2

    if-eqz p2, :cond_5

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lcom/doctoror/geocoder/Address;

    .line 167
    new-instance p3, Lcom/lostpixels/fieldservice/utils/map/GeoCoderWrapper$GeocoderAddress;

    invoke-direct {p3, p2}, Lcom/lostpixels/fieldservice/utils/map/GeoCoderWrapper$GeocoderAddress;-><init>(Lcom/doctoror/geocoder/Address;)V

    .line 168
    invoke-interface {v0, p3}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_5

    .line 172
    :goto_6
    invoke-virtual {p1}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object p2

    invoke-static {p1}, Lcom/lostpixels/fieldservice/helpfunctions/HelpFunctions;->getStackTrace(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object p1

    invoke-static {p2, p1}, Lcom/lostpixels/fieldservice/utils/LogToSD;->write(Ljava/lang/String;Ljava/lang/String;)V

    .line 173
    iput v3, p0, Lcom/lostpixels/fieldservice/utils/map/GeoCoderWrapper;->geocoderToUse:I

    :cond_5
    return-object v0
.end method
