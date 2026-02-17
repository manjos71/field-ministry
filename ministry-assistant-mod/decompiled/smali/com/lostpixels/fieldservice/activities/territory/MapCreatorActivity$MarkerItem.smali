.class Lcom/lostpixels/fieldservice/activities/territory/MapCreatorActivity$MarkerItem;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/lostpixels/fieldservice/activities/territory/MapCreatorActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "MarkerItem"
.end annotation


# instance fields
.field public marker:Lcom/google/android/gms/maps/model/Marker;

.field public middle:Z

.field final synthetic this$0:Lcom/lostpixels/fieldservice/activities/territory/MapCreatorActivity;


# direct methods
.method public constructor <init>(Lcom/lostpixels/fieldservice/activities/territory/MapCreatorActivity;Lcom/google/android/gms/maps/model/Marker;Z)V
    .locals 0

    .line 658
    iput-object p1, p0, Lcom/lostpixels/fieldservice/activities/territory/MapCreatorActivity$MarkerItem;->this$0:Lcom/lostpixels/fieldservice/activities/territory/MapCreatorActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 659
    iput-object p2, p0, Lcom/lostpixels/fieldservice/activities/territory/MapCreatorActivity$MarkerItem;->marker:Lcom/google/android/gms/maps/model/Marker;

    .line 660
    iput-boolean p3, p0, Lcom/lostpixels/fieldservice/activities/territory/MapCreatorActivity$MarkerItem;->middle:Z

    return-void
.end method
