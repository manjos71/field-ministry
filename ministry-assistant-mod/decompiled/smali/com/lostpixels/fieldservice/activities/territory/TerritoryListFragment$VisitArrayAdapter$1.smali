.class Lcom/lostpixels/fieldservice/activities/territory/TerritoryListFragment$VisitArrayAdapter$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/lostpixels/fieldservice/activities/territory/TerritoryListFragment$VisitArrayAdapter;->getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/lostpixels/fieldservice/activities/territory/TerritoryListFragment$VisitArrayAdapter;


# direct methods
.method constructor <init>(Lcom/lostpixels/fieldservice/activities/territory/TerritoryListFragment$VisitArrayAdapter;)V
    .locals 0

    .line 902
    iput-object p1, p0, Lcom/lostpixels/fieldservice/activities/territory/TerritoryListFragment$VisitArrayAdapter$1;->this$1:Lcom/lostpixels/fieldservice/activities/territory/TerritoryListFragment$VisitArrayAdapter;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 4

    const v0, 0x7f090054

    .line 905
    invoke-virtual {p1, v0}, Landroid/view/View;->getTag(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Long;

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v0

    const v2, 0x7f090002

    .line 906
    invoke-virtual {p1, v2}, Landroid/view/View;->getTag(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Long;

    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const v2, 0x7f090060

    .line 907
    invoke-virtual {p1, v2}, Landroid/view/View;->getTag(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Long;

    invoke-virtual {p1}, Ljava/lang/Long;->longValue()J

    move-result-wide v2

    .line 909
    iget-object p1, p0, Lcom/lostpixels/fieldservice/activities/territory/TerritoryListFragment$VisitArrayAdapter$1;->this$1:Lcom/lostpixels/fieldservice/activities/territory/TerritoryListFragment$VisitArrayAdapter;

    iget-object p1, p1, Lcom/lostpixels/fieldservice/activities/territory/TerritoryListFragment$VisitArrayAdapter;->this$0:Lcom/lostpixels/fieldservice/activities/territory/TerritoryListFragment;

    iget-object p1, p1, Lcom/lostpixels/fieldservice/activities/territory/TerritoryListFragment;->realm:Lio/realm/Realm;

    invoke-static {p1, v0, v1}, Lcom/lostpixels/fieldservice/internal/ministry/Street;->getStreet(Lio/realm/Realm;J)Lcom/lostpixels/fieldservice/internal/ministry/Street;

    move-result-object p1

    .line 911
    iget-object v0, p0, Lcom/lostpixels/fieldservice/activities/territory/TerritoryListFragment$VisitArrayAdapter$1;->this$1:Lcom/lostpixels/fieldservice/activities/territory/TerritoryListFragment$VisitArrayAdapter;

    iget-object v0, v0, Lcom/lostpixels/fieldservice/activities/territory/TerritoryListFragment$VisitArrayAdapter;->this$0:Lcom/lostpixels/fieldservice/activities/territory/TerritoryListFragment;

    iget-object v0, v0, Lcom/lostpixels/fieldservice/activities/territory/TerritoryListFragment;->realm:Lio/realm/Realm;

    invoke-static {v0, v2, v3}, Lcom/lostpixels/fieldservice/internal/ministry/Visit;->getVisit(Lio/realm/Realm;J)Lcom/lostpixels/fieldservice/internal/ministry/Visit;

    move-result-object v0

    .line 912
    iget-object v1, p0, Lcom/lostpixels/fieldservice/activities/territory/TerritoryListFragment$VisitArrayAdapter$1;->this$1:Lcom/lostpixels/fieldservice/activities/territory/TerritoryListFragment$VisitArrayAdapter;

    iget-object v1, v1, Lcom/lostpixels/fieldservice/activities/territory/TerritoryListFragment$VisitArrayAdapter;->this$0:Lcom/lostpixels/fieldservice/activities/territory/TerritoryListFragment;

    invoke-static {v1}, Lcom/lostpixels/fieldservice/activities/territory/TerritoryListFragment;->-$$Nest$fgetlistener(Lcom/lostpixels/fieldservice/activities/territory/TerritoryListFragment;)Lcom/lostpixels/fieldservice/activities/territory/TerritoryListFragment$OnListItemClickListener;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 913
    iget-object v1, p0, Lcom/lostpixels/fieldservice/activities/territory/TerritoryListFragment$VisitArrayAdapter$1;->this$1:Lcom/lostpixels/fieldservice/activities/territory/TerritoryListFragment$VisitArrayAdapter;

    iget-object v1, v1, Lcom/lostpixels/fieldservice/activities/territory/TerritoryListFragment$VisitArrayAdapter;->this$0:Lcom/lostpixels/fieldservice/activities/territory/TerritoryListFragment;

    invoke-static {v1}, Lcom/lostpixels/fieldservice/activities/territory/TerritoryListFragment;->-$$Nest$fgetlistener(Lcom/lostpixels/fieldservice/activities/territory/TerritoryListFragment;)Lcom/lostpixels/fieldservice/activities/territory/TerritoryListFragment$OnListItemClickListener;

    move-result-object v1

    invoke-interface {v1, v0, p1}, Lcom/lostpixels/fieldservice/activities/territory/TerritoryListFragment$OnListItemClickListener;->onVisitLongClicked(Lcom/lostpixels/fieldservice/internal/ministry/Visit;Lcom/lostpixels/fieldservice/internal/ministry/Street;)V

    :cond_0
    return-void
.end method
