.class public Lcom/lostpixels/fieldservice/download/UrlDownloader$UrlTerritory;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/lostpixels/fieldservice/download/UrlDownloader;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "UrlTerritory"
.end annotation


# instance fields
.field public assignmentDate:Ljava/util/Date;

.field public id:J

.field public image:Ljava/lang/String;

.field public label:Ljava/lang/String;

.field public name:Ljava/lang/String;

.field public notes:Ljava/lang/String;

.field public url:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 455
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 456
    const-string v0, ""

    iput-object v0, p0, Lcom/lostpixels/fieldservice/download/UrlDownloader$UrlTerritory;->name:Ljava/lang/String;

    .line 458
    iput-object v0, p0, Lcom/lostpixels/fieldservice/download/UrlDownloader$UrlTerritory;->label:Ljava/lang/String;

    .line 459
    iput-object v0, p0, Lcom/lostpixels/fieldservice/download/UrlDownloader$UrlTerritory;->notes:Ljava/lang/String;

    .line 460
    iput-object v0, p0, Lcom/lostpixels/fieldservice/download/UrlDownloader$UrlTerritory;->image:Ljava/lang/String;

    .line 462
    iput-object v0, p0, Lcom/lostpixels/fieldservice/download/UrlDownloader$UrlTerritory;->url:Ljava/lang/String;

    .line 464
    new-instance v0, Ljava/util/Date;

    invoke-direct {v0}, Ljava/util/Date;-><init>()V

    iput-object v0, p0, Lcom/lostpixels/fieldservice/download/UrlDownloader$UrlTerritory;->assignmentDate:Ljava/util/Date;

    return-void
.end method
