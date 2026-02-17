.class Lcom/lostpixels/fieldservice/activities/visits/AttachRVToTerritoryDlg$TreeItem;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/lostpixels/fieldservice/activities/visits/AttachRVToTerritoryDlg;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "TreeItem"
.end annotation


# instance fields
.field final ID:J

.field final name:Ljava/lang/String;

.field final visit:Lcom/lostpixels/fieldservice/internal/ministry/Visit;


# direct methods
.method constructor <init>(JLcom/lostpixels/fieldservice/internal/ministry/Visit;Ljava/lang/String;)V
    .locals 0

    .line 232
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 233
    iput-wide p1, p0, Lcom/lostpixels/fieldservice/activities/visits/AttachRVToTerritoryDlg$TreeItem;->ID:J

    .line 234
    iput-object p3, p0, Lcom/lostpixels/fieldservice/activities/visits/AttachRVToTerritoryDlg$TreeItem;->visit:Lcom/lostpixels/fieldservice/internal/ministry/Visit;

    .line 235
    iput-object p4, p0, Lcom/lostpixels/fieldservice/activities/visits/AttachRVToTerritoryDlg$TreeItem;->name:Ljava/lang/String;

    return-void
.end method
