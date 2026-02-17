.class Lcom/lostpixels/fieldservice/download/UrlDownloader$UrlTerritoryAddress;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/lostpixels/fieldservice/download/UrlDownloader;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "UrlTerritoryAddress"
.end annotation


# instance fields
.field public number:Ljava/lang/String;

.field public pos:Lcom/google/android/gms/maps/model/LatLng;

.field public street:Ljava/lang/String;


# direct methods
.method private constructor <init>()V
    .locals 0

    .line 447
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/lostpixels/fieldservice/download/UrlDownloader-IA;)V
    .locals 0

    .line 0
    invoke-direct {p0}, Lcom/lostpixels/fieldservice/download/UrlDownloader$UrlTerritoryAddress;-><init>()V

    return-void
.end method
