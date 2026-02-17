.class Lcom/lostpixels/fieldservice/activities/territory/TerritoryListMapFragment$8;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/lostpixels/fieldservice/ui/QuickAction$OnActionItemClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/lostpixels/fieldservice/activities/territory/TerritoryListMapFragment;->showQuickAction(IILcom/google/android/gms/maps/model/LatLng;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/lostpixels/fieldservice/activities/territory/TerritoryListMapFragment;

.field final synthetic val$point:Lcom/google/android/gms/maps/model/LatLng;


# direct methods
.method constructor <init>(Lcom/lostpixels/fieldservice/activities/territory/TerritoryListMapFragment;Lcom/google/android/gms/maps/model/LatLng;)V
    .locals 0

    .line 832
    iput-object p1, p0, Lcom/lostpixels/fieldservice/activities/territory/TerritoryListMapFragment$8;->this$0:Lcom/lostpixels/fieldservice/activities/territory/TerritoryListMapFragment;

    iput-object p2, p0, Lcom/lostpixels/fieldservice/activities/territory/TerritoryListMapFragment$8;->val$point:Lcom/google/android/gms/maps/model/LatLng;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onItemClick(Lcom/lostpixels/fieldservice/ui/QuickAction;II)V
    .locals 0

    const/4 p1, 0x4

    if-ne p3, p1, :cond_0

    .line 837
    :try_start_0
    iget-object p1, p0, Lcom/lostpixels/fieldservice/activities/territory/TerritoryListMapFragment$8;->this$0:Lcom/lostpixels/fieldservice/activities/territory/TerritoryListMapFragment;

    invoke-static {p1}, Lcom/lostpixels/fieldservice/activities/territory/TerritoryListMapFragment;->-$$Nest$fgetaddHandler(Lcom/lostpixels/fieldservice/activities/territory/TerritoryListMapFragment;)Lcom/lostpixels/fieldservice/activities/territory/TerritoryListMapFragment$OnAddVisitListener;

    move-result-object p1

    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    check-cast p1, Lcom/lostpixels/fieldservice/activities/territory/TerritoryListMapFragment$OnAddVisitListener;

    iget-object p2, p0, Lcom/lostpixels/fieldservice/activities/territory/TerritoryListMapFragment$8;->val$point:Lcom/google/android/gms/maps/model/LatLng;

    invoke-interface {p1, p2}, Lcom/lostpixels/fieldservice/activities/territory/TerritoryListMapFragment$OnAddVisitListener;->onShouldCreateVisit(Lcom/google/android/gms/maps/model/LatLng;)Z

    return-void

    :cond_0
    const/4 p1, 0x7

    if-ne p3, p1, :cond_1

    .line 839
    iget-object p1, p0, Lcom/lostpixels/fieldservice/activities/territory/TerritoryListMapFragment$8;->this$0:Lcom/lostpixels/fieldservice/activities/territory/TerritoryListMapFragment;

    invoke-static {p1}, Lcom/lostpixels/fieldservice/activities/territory/TerritoryListMapFragment;->-$$Nest$fgetaddHandler(Lcom/lostpixels/fieldservice/activities/territory/TerritoryListMapFragment;)Lcom/lostpixels/fieldservice/activities/territory/TerritoryListMapFragment$OnAddVisitListener;

    move-result-object p1

    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    check-cast p1, Lcom/lostpixels/fieldservice/activities/territory/TerritoryListMapFragment$OnAddVisitListener;

    iget-object p2, p0, Lcom/lostpixels/fieldservice/activities/territory/TerritoryListMapFragment$8;->val$point:Lcom/google/android/gms/maps/model/LatLng;

    invoke-interface {p1, p2}, Lcom/lostpixels/fieldservice/activities/territory/TerritoryListMapFragment$OnAddVisitListener;->onShouldTagVisit(Lcom/google/android/gms/maps/model/LatLng;)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    :cond_1
    return-void
.end method
