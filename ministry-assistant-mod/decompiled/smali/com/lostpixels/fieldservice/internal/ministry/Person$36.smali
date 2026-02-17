.class Lcom/lostpixels/fieldservice/internal/ministry/Person$36;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/lostpixels/fieldservice/realm/RealmHelper$Writer;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/lostpixels/fieldservice/internal/ministry/Person;->setPosition(Lcom/google/android/gms/maps/model/LatLng;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/lostpixels/fieldservice/internal/ministry/Person;

.field final synthetic val$pos:Lcom/google/android/gms/maps/model/LatLng;


# direct methods
.method constructor <init>(Lcom/lostpixels/fieldservice/internal/ministry/Person;Lcom/google/android/gms/maps/model/LatLng;)V
    .locals 0

    .line 1407
    iput-object p1, p0, Lcom/lostpixels/fieldservice/internal/ministry/Person$36;->this$0:Lcom/lostpixels/fieldservice/internal/ministry/Person;

    iput-object p2, p0, Lcom/lostpixels/fieldservice/internal/ministry/Person$36;->val$pos:Lcom/google/android/gms/maps/model/LatLng;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public write()V
    .locals 4

    .line 1410
    iget-object v0, p0, Lcom/lostpixels/fieldservice/internal/ministry/Person$36;->val$pos:Lcom/google/android/gms/maps/model/LatLng;

    if-eqz v0, :cond_0

    .line 1411
    iget-object v1, p0, Lcom/lostpixels/fieldservice/internal/ministry/Person$36;->this$0:Lcom/lostpixels/fieldservice/internal/ministry/Person;

    iget-wide v2, v0, Lcom/google/android/gms/maps/model/LatLng;->latitude:D

    invoke-virtual {v1, v2, v3}, Lcom/lostpixels/fieldservice/internal/ministry/Person;->realmSet$latitude(D)V

    .line 1412
    iget-object v0, p0, Lcom/lostpixels/fieldservice/internal/ministry/Person$36;->this$0:Lcom/lostpixels/fieldservice/internal/ministry/Person;

    iget-object v1, p0, Lcom/lostpixels/fieldservice/internal/ministry/Person$36;->val$pos:Lcom/google/android/gms/maps/model/LatLng;

    iget-wide v1, v1, Lcom/google/android/gms/maps/model/LatLng;->longitude:D

    invoke-virtual {v0, v1, v2}, Lcom/lostpixels/fieldservice/internal/ministry/Person;->realmSet$longitude(D)V

    goto :goto_0

    .line 1414
    :cond_0
    iget-object v0, p0, Lcom/lostpixels/fieldservice/internal/ministry/Person$36;->this$0:Lcom/lostpixels/fieldservice/internal/ministry/Person;

    const-wide/16 v1, 0x0

    invoke-virtual {v0, v1, v2}, Lcom/lostpixels/fieldservice/internal/ministry/Person;->realmSet$longitude(D)V

    invoke-virtual {v0, v1, v2}, Lcom/lostpixels/fieldservice/internal/ministry/Person;->realmSet$latitude(D)V

    .line 1416
    :goto_0
    iget-object v0, p0, Lcom/lostpixels/fieldservice/internal/ministry/Person$36;->this$0:Lcom/lostpixels/fieldservice/internal/ministry/Person;

    new-instance v1, Ljava/util/Date;

    invoke-direct {v1}, Ljava/util/Date;-><init>()V

    invoke-virtual {v0, v1}, Lcom/lostpixels/fieldservice/internal/ministry/Person;->realmSet$date(Ljava/util/Date;)V

    return-void
.end method
