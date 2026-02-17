.class Lcom/lostpixels/fieldservice/activities/visits/ReturnVisitsTab$PersonItem;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/lostpixels/fieldservice/activities/visits/ReturnVisitsTab;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "PersonItem"
.end annotation


# instance fields
.field key:J

.field person:Lcom/lostpixels/fieldservice/internal/ministry/Person;


# direct methods
.method public constructor <init>(Lcom/lostpixels/fieldservice/internal/ministry/Person;J)V
    .locals 0

    .line 1669
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1670
    iput-object p1, p0, Lcom/lostpixels/fieldservice/activities/visits/ReturnVisitsTab$PersonItem;->person:Lcom/lostpixels/fieldservice/internal/ministry/Person;

    .line 1671
    iput-wide p2, p0, Lcom/lostpixels/fieldservice/activities/visits/ReturnVisitsTab$PersonItem;->key:J

    return-void
.end method
