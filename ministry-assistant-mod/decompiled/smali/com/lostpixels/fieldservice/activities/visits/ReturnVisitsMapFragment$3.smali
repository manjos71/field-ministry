.class Lcom/lostpixels/fieldservice/activities/visits/ReturnVisitsMapFragment$3;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/lostpixels/fieldservice/realm/RealmHelper$Writer;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/lostpixels/fieldservice/activities/visits/ReturnVisitsMapFragment;->onMarkerDragEnd(Lcom/google/android/gms/maps/model/Marker;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/lostpixels/fieldservice/activities/visits/ReturnVisitsMapFragment;

.field final synthetic val$person:Lcom/lostpixels/fieldservice/internal/ministry/Person;


# direct methods
.method constructor <init>(Lcom/lostpixels/fieldservice/activities/visits/ReturnVisitsMapFragment;Lcom/lostpixels/fieldservice/internal/ministry/Person;)V
    .locals 0

    .line 672
    iput-object p1, p0, Lcom/lostpixels/fieldservice/activities/visits/ReturnVisitsMapFragment$3;->this$0:Lcom/lostpixels/fieldservice/activities/visits/ReturnVisitsMapFragment;

    iput-object p2, p0, Lcom/lostpixels/fieldservice/activities/visits/ReturnVisitsMapFragment$3;->val$person:Lcom/lostpixels/fieldservice/internal/ministry/Person;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public write()V
    .locals 3

    .line 675
    iget-object v0, p0, Lcom/lostpixels/fieldservice/activities/visits/ReturnVisitsMapFragment$3;->this$0:Lcom/lostpixels/fieldservice/activities/visits/ReturnVisitsMapFragment;

    iget-object v0, v0, Lcom/lostpixels/fieldservice/activities/visits/ReturnVisitsMapFragment;->realm:Lio/realm/Realm;

    iget-object v1, p0, Lcom/lostpixels/fieldservice/activities/visits/ReturnVisitsMapFragment$3;->val$person:Lcom/lostpixels/fieldservice/internal/ministry/Person;

    const/4 v2, 0x0

    new-array v2, v2, [Lio/realm/ImportFlag;

    invoke-virtual {v0, v1, v2}, Lio/realm/Realm;->copyToRealmOrUpdate(Lio/realm/RealmModel;[Lio/realm/ImportFlag;)Lio/realm/RealmModel;

    return-void
.end method
