.class Lcom/lostpixels/fieldservice/activities/territory/TerritoryListMapFragment$6;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/lostpixels/fieldservice/realm/RealmHelper$Writer;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/lostpixels/fieldservice/activities/territory/TerritoryListMapFragment;->onMarkerDragEnd(Lcom/google/android/gms/maps/model/Marker;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/lostpixels/fieldservice/activities/territory/TerritoryListMapFragment;

.field final synthetic val$visit:Lcom/lostpixels/fieldservice/internal/ministry/Visit;


# direct methods
.method constructor <init>(Lcom/lostpixels/fieldservice/activities/territory/TerritoryListMapFragment;Lcom/lostpixels/fieldservice/internal/ministry/Visit;)V
    .locals 0

    .line 721
    iput-object p1, p0, Lcom/lostpixels/fieldservice/activities/territory/TerritoryListMapFragment$6;->this$0:Lcom/lostpixels/fieldservice/activities/territory/TerritoryListMapFragment;

    iput-object p2, p0, Lcom/lostpixels/fieldservice/activities/territory/TerritoryListMapFragment$6;->val$visit:Lcom/lostpixels/fieldservice/internal/ministry/Visit;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public write()V
    .locals 3

    .line 724
    iget-object v0, p0, Lcom/lostpixels/fieldservice/activities/territory/TerritoryListMapFragment$6;->this$0:Lcom/lostpixels/fieldservice/activities/territory/TerritoryListMapFragment;

    iget-object v0, v0, Lcom/lostpixels/fieldservice/activities/territory/TerritoryListMapFragment;->realm:Lio/realm/Realm;

    iget-object v1, p0, Lcom/lostpixels/fieldservice/activities/territory/TerritoryListMapFragment$6;->val$visit:Lcom/lostpixels/fieldservice/internal/ministry/Visit;

    const/4 v2, 0x0

    new-array v2, v2, [Lio/realm/ImportFlag;

    invoke-virtual {v0, v1, v2}, Lio/realm/Realm;->copyToRealmOrUpdate(Lio/realm/RealmModel;[Lio/realm/ImportFlag;)Lio/realm/RealmModel;

    return-void
.end method
