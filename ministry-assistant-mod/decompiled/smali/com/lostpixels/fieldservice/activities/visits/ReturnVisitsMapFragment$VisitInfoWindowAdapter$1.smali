.class Lcom/lostpixels/fieldservice/activities/visits/ReturnVisitsMapFragment$VisitInfoWindowAdapter$1;
.super Lcom/lostpixels/fieldservice/ui/OnInfoWindowElementTouchListener;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/lostpixels/fieldservice/activities/visits/ReturnVisitsMapFragment$VisitInfoWindowAdapter;->setData(Lcom/lostpixels/fieldservice/internal/ministry/Person;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/lostpixels/fieldservice/activities/visits/ReturnVisitsMapFragment$VisitInfoWindowAdapter;


# direct methods
.method constructor <init>(Lcom/lostpixels/fieldservice/activities/visits/ReturnVisitsMapFragment$VisitInfoWindowAdapter;Landroid/widget/ImageView;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;)V
    .locals 0

    .line 761
    iput-object p1, p0, Lcom/lostpixels/fieldservice/activities/visits/ReturnVisitsMapFragment$VisitInfoWindowAdapter$1;->this$1:Lcom/lostpixels/fieldservice/activities/visits/ReturnVisitsMapFragment$VisitInfoWindowAdapter;

    invoke-direct {p0, p2, p3, p4}, Lcom/lostpixels/fieldservice/ui/OnInfoWindowElementTouchListener;-><init>(Landroid/widget/ImageView;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;)V

    return-void
.end method


# virtual methods
.method protected onClickConfirmed(Landroid/view/View;Lcom/google/android/gms/maps/model/Marker;)V
    .locals 3

    .line 765
    iget-object p1, p0, Lcom/lostpixels/fieldservice/activities/visits/ReturnVisitsMapFragment$VisitInfoWindowAdapter$1;->this$1:Lcom/lostpixels/fieldservice/activities/visits/ReturnVisitsMapFragment$VisitInfoWindowAdapter;

    iget-object p1, p1, Lcom/lostpixels/fieldservice/activities/visits/ReturnVisitsMapFragment$VisitInfoWindowAdapter;->this$0:Lcom/lostpixels/fieldservice/activities/visits/ReturnVisitsMapFragment;

    invoke-static {p1, p2}, Lcom/lostpixels/fieldservice/activities/visits/ReturnVisitsMapFragment;->-$$Nest$mgetMarkerData(Lcom/lostpixels/fieldservice/activities/visits/ReturnVisitsMapFragment;Lcom/google/android/gms/maps/model/Marker;)Ljava/lang/Long;

    move-result-object p1

    if-eqz p1, :cond_0

    .line 767
    iget-object p2, p0, Lcom/lostpixels/fieldservice/activities/visits/ReturnVisitsMapFragment$VisitInfoWindowAdapter$1;->this$1:Lcom/lostpixels/fieldservice/activities/visits/ReturnVisitsMapFragment$VisitInfoWindowAdapter;

    iget-object p2, p2, Lcom/lostpixels/fieldservice/activities/visits/ReturnVisitsMapFragment$VisitInfoWindowAdapter;->this$0:Lcom/lostpixels/fieldservice/activities/visits/ReturnVisitsMapFragment;

    iget-object p2, p2, Lcom/lostpixels/fieldservice/activities/visits/ReturnVisitsMapFragment;->realm:Lio/realm/Realm;

    invoke-static {p2}, Lcom/lostpixels/fieldservice/internal/ministry/MinistryManager;->getInstance(Lio/realm/Realm;)Lcom/lostpixels/fieldservice/internal/ministry/MinistryManager;

    move-result-object p2

    iget-object v0, p0, Lcom/lostpixels/fieldservice/activities/visits/ReturnVisitsMapFragment$VisitInfoWindowAdapter$1;->this$1:Lcom/lostpixels/fieldservice/activities/visits/ReturnVisitsMapFragment$VisitInfoWindowAdapter;

    iget-object v0, v0, Lcom/lostpixels/fieldservice/activities/visits/ReturnVisitsMapFragment$VisitInfoWindowAdapter;->this$0:Lcom/lostpixels/fieldservice/activities/visits/ReturnVisitsMapFragment;

    iget-object v0, v0, Lcom/lostpixels/fieldservice/activities/visits/ReturnVisitsMapFragment;->realm:Lio/realm/Realm;

    invoke-virtual {p1}, Ljava/lang/Long;->longValue()J

    move-result-wide v1

    invoke-virtual {p2, v0, v1, v2}, Lcom/lostpixels/fieldservice/internal/ministry/MinistryManager;->getPerson(Lio/realm/Realm;J)Lcom/lostpixels/fieldservice/internal/ministry/Person;

    move-result-object p1

    .line 768
    iget-object p2, p0, Lcom/lostpixels/fieldservice/activities/visits/ReturnVisitsMapFragment$VisitInfoWindowAdapter$1;->this$1:Lcom/lostpixels/fieldservice/activities/visits/ReturnVisitsMapFragment$VisitInfoWindowAdapter;

    iget-object p2, p2, Lcom/lostpixels/fieldservice/activities/visits/ReturnVisitsMapFragment$VisitInfoWindowAdapter;->this$0:Lcom/lostpixels/fieldservice/activities/visits/ReturnVisitsMapFragment;

    invoke-static {p2}, Lcom/lostpixels/fieldservice/activities/visits/ReturnVisitsMapFragment;->-$$Nest$fgetlistener(Lcom/lostpixels/fieldservice/activities/visits/ReturnVisitsMapFragment;)Lcom/lostpixels/fieldservice/activities/visits/ReturnVisitsMapFragment$OnMapFragmentListener;

    move-result-object p2

    invoke-static {p2}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    check-cast p2, Lcom/lostpixels/fieldservice/activities/visits/ReturnVisitsMapFragment$OnMapFragmentListener;

    invoke-interface {p2, p1}, Lcom/lostpixels/fieldservice/activities/visits/ReturnVisitsMapFragment$OnMapFragmentListener;->onPersonLongClicked(Lcom/lostpixels/fieldservice/internal/ministry/Person;)V

    :cond_0
    return-void
.end method
