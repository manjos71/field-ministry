.class Lcom/lostpixels/fieldservice/activities/visits/ReturnVisitsTab$13;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/lostpixels/fieldservice/utils/map/PositionUpdater$PositionFoundListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/lostpixels/fieldservice/activities/visits/ReturnVisitsTab;->setPersonPosition()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/lostpixels/fieldservice/activities/visits/ReturnVisitsTab;

.field final synthetic val$person:Lcom/lostpixels/fieldservice/internal/ministry/Person;


# direct methods
.method constructor <init>(Lcom/lostpixels/fieldservice/activities/visits/ReturnVisitsTab;Lcom/lostpixels/fieldservice/internal/ministry/Person;)V
    .locals 0

    .line 1010
    iput-object p1, p0, Lcom/lostpixels/fieldservice/activities/visits/ReturnVisitsTab$13;->this$0:Lcom/lostpixels/fieldservice/activities/visits/ReturnVisitsTab;

    iput-object p2, p0, Lcom/lostpixels/fieldservice/activities/visits/ReturnVisitsTab$13;->val$person:Lcom/lostpixels/fieldservice/internal/ministry/Person;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onPositionFound(Lcom/google/android/gms/maps/model/LatLng;)V
    .locals 1

    .line 1013
    iget-object p1, p0, Lcom/lostpixels/fieldservice/activities/visits/ReturnVisitsTab$13;->this$0:Lcom/lostpixels/fieldservice/activities/visits/ReturnVisitsTab;

    invoke-static {p1}, Lcom/lostpixels/fieldservice/activities/visits/ReturnVisitsTab;->access$1100(Lcom/lostpixels/fieldservice/activities/visits/ReturnVisitsTab;)Lio/realm/Realm;

    move-result-object p1

    invoke-static {p1}, Lcom/lostpixels/fieldservice/internal/ministry/MinistryManager;->getInstance(Lio/realm/Realm;)Lcom/lostpixels/fieldservice/internal/ministry/MinistryManager;

    move-result-object p1

    iget-object v0, p0, Lcom/lostpixels/fieldservice/activities/visits/ReturnVisitsTab$13;->val$person:Lcom/lostpixels/fieldservice/internal/ministry/Person;

    invoke-virtual {p1, v0}, Lcom/lostpixels/fieldservice/internal/ministry/MinistryManager;->updatePerson(Lcom/lostpixels/fieldservice/internal/ministry/Person;)V

    .line 1014
    iget-object p1, p0, Lcom/lostpixels/fieldservice/activities/visits/ReturnVisitsTab$13;->this$0:Lcom/lostpixels/fieldservice/activities/visits/ReturnVisitsTab;

    invoke-static {p1}, Lcom/lostpixels/fieldservice/activities/visits/ReturnVisitsTab;->-$$Nest$fgetmListFragment(Lcom/lostpixels/fieldservice/activities/visits/ReturnVisitsTab;)Lcom/lostpixels/fieldservice/activities/visits/ReturnVisitsListFragment;

    move-result-object p1

    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    invoke-virtual {p1}, Lcom/lostpixels/fieldservice/activities/visits/ReturnVisitsListFragment;->notifyData()V

    .line 1015
    iget-object p1, p0, Lcom/lostpixels/fieldservice/activities/visits/ReturnVisitsTab$13;->this$0:Lcom/lostpixels/fieldservice/activities/visits/ReturnVisitsTab;

    invoke-static {p1}, Lcom/lostpixels/fieldservice/activities/visits/ReturnVisitsTab;->-$$Nest$fgetmMapFragment(Lcom/lostpixels/fieldservice/activities/visits/ReturnVisitsTab;)Lcom/lostpixels/fieldservice/activities/visits/ReturnVisitsMapFragment;

    move-result-object p1

    if-eqz p1, :cond_0

    .line 1016
    iget-object p1, p0, Lcom/lostpixels/fieldservice/activities/visits/ReturnVisitsTab$13;->this$0:Lcom/lostpixels/fieldservice/activities/visits/ReturnVisitsTab;

    invoke-static {p1}, Lcom/lostpixels/fieldservice/activities/visits/ReturnVisitsTab;->-$$Nest$fgetmMapFragment(Lcom/lostpixels/fieldservice/activities/visits/ReturnVisitsTab;)Lcom/lostpixels/fieldservice/activities/visits/ReturnVisitsMapFragment;

    move-result-object p1

    invoke-virtual {p1}, Lcom/lostpixels/fieldservice/activities/visits/ReturnVisitsMapFragment;->updateMap()V

    :cond_0
    return-void
.end method
