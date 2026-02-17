.class Lcom/lostpixels/fieldservice/internal/ministry/Visit$10;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/lostpixels/fieldservice/realm/RealmHelper$Writer;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/lostpixels/fieldservice/internal/ministry/Visit;->setPosition(Lcom/google/android/gms/maps/model/LatLng;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/lostpixels/fieldservice/internal/ministry/Visit;

.field final synthetic val$pos:Lcom/google/android/gms/maps/model/LatLng;


# direct methods
.method constructor <init>(Lcom/lostpixels/fieldservice/internal/ministry/Visit;Lcom/google/android/gms/maps/model/LatLng;)V
    .locals 0

    .line 773
    iput-object p1, p0, Lcom/lostpixels/fieldservice/internal/ministry/Visit$10;->this$0:Lcom/lostpixels/fieldservice/internal/ministry/Visit;

    iput-object p2, p0, Lcom/lostpixels/fieldservice/internal/ministry/Visit$10;->val$pos:Lcom/google/android/gms/maps/model/LatLng;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public write()V
    .locals 4

    .line 776
    iget-object v0, p0, Lcom/lostpixels/fieldservice/internal/ministry/Visit$10;->val$pos:Lcom/google/android/gms/maps/model/LatLng;

    if-eqz v0, :cond_0

    .line 777
    iget-object v1, p0, Lcom/lostpixels/fieldservice/internal/ministry/Visit$10;->this$0:Lcom/lostpixels/fieldservice/internal/ministry/Visit;

    iget-wide v2, v0, Lcom/google/android/gms/maps/model/LatLng;->latitude:D

    invoke-virtual {v1, v2, v3}, Lcom/lostpixels/fieldservice/internal/ministry/Visit;->realmSet$latitude(D)V

    .line 778
    iget-object v0, p0, Lcom/lostpixels/fieldservice/internal/ministry/Visit$10;->this$0:Lcom/lostpixels/fieldservice/internal/ministry/Visit;

    iget-object v1, p0, Lcom/lostpixels/fieldservice/internal/ministry/Visit$10;->val$pos:Lcom/google/android/gms/maps/model/LatLng;

    iget-wide v1, v1, Lcom/google/android/gms/maps/model/LatLng;->longitude:D

    invoke-virtual {v0, v1, v2}, Lcom/lostpixels/fieldservice/internal/ministry/Visit;->realmSet$longitude(D)V

    goto :goto_0

    .line 780
    :cond_0
    iget-object v0, p0, Lcom/lostpixels/fieldservice/internal/ministry/Visit$10;->this$0:Lcom/lostpixels/fieldservice/internal/ministry/Visit;

    const-wide/16 v1, 0x0

    invoke-virtual {v0, v1, v2}, Lcom/lostpixels/fieldservice/internal/ministry/Visit;->realmSet$latitude(D)V

    .line 781
    iget-object v0, p0, Lcom/lostpixels/fieldservice/internal/ministry/Visit$10;->this$0:Lcom/lostpixels/fieldservice/internal/ministry/Visit;

    invoke-virtual {v0, v1, v2}, Lcom/lostpixels/fieldservice/internal/ministry/Visit;->realmSet$longitude(D)V

    .line 783
    :goto_0
    iget-object v0, p0, Lcom/lostpixels/fieldservice/internal/ministry/Visit$10;->this$0:Lcom/lostpixels/fieldservice/internal/ministry/Visit;

    new-instance v1, Ljava/util/Date;

    invoke-direct {v1}, Ljava/util/Date;-><init>()V

    invoke-virtual {v0, v1}, Lcom/lostpixels/fieldservice/internal/ministry/Visit;->realmSet$syncDate(Ljava/util/Date;)V

    return-void
.end method
