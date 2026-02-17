.class Lcom/lostpixels/fieldservice/activities/territory/TerritoryListMapFragment$VisitInfoWindowAdapter$1;
.super Lcom/lostpixels/fieldservice/ui/OnInfoWindowElementTouchListener;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/lostpixels/fieldservice/activities/territory/TerritoryListMapFragment$VisitInfoWindowAdapter;->setData(Lcom/lostpixels/fieldservice/internal/ministry/Visit;Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/lostpixels/fieldservice/activities/territory/TerritoryListMapFragment$VisitInfoWindowAdapter;


# direct methods
.method constructor <init>(Lcom/lostpixels/fieldservice/activities/territory/TerritoryListMapFragment$VisitInfoWindowAdapter;Landroid/widget/ImageView;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;)V
    .locals 0

    .line 1020
    iput-object p1, p0, Lcom/lostpixels/fieldservice/activities/territory/TerritoryListMapFragment$VisitInfoWindowAdapter$1;->this$1:Lcom/lostpixels/fieldservice/activities/territory/TerritoryListMapFragment$VisitInfoWindowAdapter;

    invoke-direct {p0, p2, p3, p4}, Lcom/lostpixels/fieldservice/ui/OnInfoWindowElementTouchListener;-><init>(Landroid/widget/ImageView;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;)V

    return-void
.end method


# virtual methods
.method protected onClickConfirmed(Landroid/view/View;Lcom/google/android/gms/maps/model/Marker;)V
    .locals 1

    .line 1024
    iget-object p1, p0, Lcom/lostpixels/fieldservice/activities/territory/TerritoryListMapFragment$VisitInfoWindowAdapter$1;->this$1:Lcom/lostpixels/fieldservice/activities/territory/TerritoryListMapFragment$VisitInfoWindowAdapter;

    iget-object p1, p1, Lcom/lostpixels/fieldservice/activities/territory/TerritoryListMapFragment$VisitInfoWindowAdapter;->this$0:Lcom/lostpixels/fieldservice/activities/territory/TerritoryListMapFragment;

    invoke-static {p1, p2}, Lcom/lostpixels/fieldservice/activities/territory/TerritoryListMapFragment;->-$$Nest$mgetMarkerData(Lcom/lostpixels/fieldservice/activities/territory/TerritoryListMapFragment;Lcom/google/android/gms/maps/model/Marker;)Lcom/lostpixels/fieldservice/activities/territory/TerritoryListMapFragment$MarkerInfoData;

    move-result-object p1

    if-eqz p1, :cond_0

    .line 1026
    iget-object p2, p1, Lcom/lostpixels/fieldservice/activities/territory/TerritoryListMapFragment$MarkerInfoData;->visit:Lcom/lostpixels/fieldservice/internal/ministry/Visit;

    if-eqz p2, :cond_0

    iget-object p2, p1, Lcom/lostpixels/fieldservice/activities/territory/TerritoryListMapFragment$MarkerInfoData;->street:Lcom/lostpixels/fieldservice/internal/ministry/Street;

    if-eqz p2, :cond_0

    .line 1027
    iget-object p2, p0, Lcom/lostpixels/fieldservice/activities/territory/TerritoryListMapFragment$VisitInfoWindowAdapter$1;->this$1:Lcom/lostpixels/fieldservice/activities/territory/TerritoryListMapFragment$VisitInfoWindowAdapter;

    iget-object p2, p2, Lcom/lostpixels/fieldservice/activities/territory/TerritoryListMapFragment$VisitInfoWindowAdapter;->this$0:Lcom/lostpixels/fieldservice/activities/territory/TerritoryListMapFragment;

    invoke-static {p2}, Lcom/lostpixels/fieldservice/activities/territory/TerritoryListMapFragment;->-$$Nest$fgetlistener(Lcom/lostpixels/fieldservice/activities/territory/TerritoryListMapFragment;)Lcom/lostpixels/fieldservice/activities/territory/TerritoryListMapFragment$OnListItemClickListener;

    move-result-object p2

    invoke-static {p2}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    check-cast p2, Lcom/lostpixels/fieldservice/activities/territory/TerritoryListMapFragment$OnListItemClickListener;

    iget-object v0, p1, Lcom/lostpixels/fieldservice/activities/territory/TerritoryListMapFragment$MarkerInfoData;->visit:Lcom/lostpixels/fieldservice/internal/ministry/Visit;

    iget-object p1, p1, Lcom/lostpixels/fieldservice/activities/territory/TerritoryListMapFragment$MarkerInfoData;->street:Lcom/lostpixels/fieldservice/internal/ministry/Street;

    invoke-interface {p2, v0, p1}, Lcom/lostpixels/fieldservice/activities/territory/TerritoryListMapFragment$OnListItemClickListener;->onVisitLongClicked(Lcom/lostpixels/fieldservice/internal/ministry/Visit;Lcom/lostpixels/fieldservice/internal/ministry/Street;)V

    :cond_0
    return-void
.end method
