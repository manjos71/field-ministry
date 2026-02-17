.class Lcom/lostpixels/fieldservice/activities/territory/TerritoryListFragment$8;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/widget/AdapterView$OnItemLongClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/lostpixels/fieldservice/activities/territory/TerritoryListFragment;->createStreetList()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/lostpixels/fieldservice/activities/territory/TerritoryListFragment;


# direct methods
.method constructor <init>(Lcom/lostpixels/fieldservice/activities/territory/TerritoryListFragment;)V
    .locals 0

    .line 689
    iput-object p1, p0, Lcom/lostpixels/fieldservice/activities/territory/TerritoryListFragment$8;->this$0:Lcom/lostpixels/fieldservice/activities/territory/TerritoryListFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onItemLongClick(Landroid/widget/AdapterView;Landroid/view/View;IJ)Z
    .locals 2

    .line 693
    instance-of p1, p2, Landroid/widget/TextView;

    if-nez p1, :cond_1

    .line 694
    iget-object p1, p0, Lcom/lostpixels/fieldservice/activities/territory/TerritoryListFragment$8;->this$0:Lcom/lostpixels/fieldservice/activities/territory/TerritoryListFragment;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide p3

    invoke-static {p1, p3, p4}, Lcom/lostpixels/fieldservice/activities/territory/TerritoryListFragment;->-$$Nest$fputtime(Lcom/lostpixels/fieldservice/activities/territory/TerritoryListFragment;J)V

    const p1, 0x7f090054

    .line 695
    invoke-virtual {p2, p1}, Landroid/view/View;->getTag(I)Ljava/lang/Object;

    move-result-object p3

    if-eqz p3, :cond_1

    const p3, 0x7f090002

    .line 696
    invoke-virtual {p2, p3}, Landroid/view/View;->getTag(I)Ljava/lang/Object;

    move-result-object p4

    if-eqz p4, :cond_1

    const p4, 0x7f090060

    .line 697
    invoke-virtual {p2, p4}, Landroid/view/View;->getTag(I)Ljava/lang/Object;

    move-result-object p5

    if-eqz p5, :cond_1

    .line 698
    iget-object p5, p0, Lcom/lostpixels/fieldservice/activities/territory/TerritoryListFragment$8;->this$0:Lcom/lostpixels/fieldservice/activities/territory/TerritoryListFragment;

    invoke-virtual {p2, p1}, Landroid/view/View;->getTag(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Long;

    invoke-virtual {p1}, Ljava/lang/Long;->longValue()J

    move-result-wide v0

    invoke-static {p5, v0, v1}, Lcom/lostpixels/fieldservice/activities/territory/TerritoryListFragment;->-$$Nest$fputmiTmpStreetIx(Lcom/lostpixels/fieldservice/activities/territory/TerritoryListFragment;J)V

    .line 699
    iget-object p1, p0, Lcom/lostpixels/fieldservice/activities/territory/TerritoryListFragment$8;->this$0:Lcom/lostpixels/fieldservice/activities/territory/TerritoryListFragment;

    invoke-virtual {p2, p3}, Landroid/view/View;->getTag(I)Ljava/lang/Object;

    move-result-object p3

    check-cast p3, Ljava/lang/Long;

    invoke-virtual {p3}, Ljava/lang/Long;->longValue()J

    move-result-wide v0

    invoke-static {p1, v0, v1}, Lcom/lostpixels/fieldservice/activities/territory/TerritoryListFragment;->-$$Nest$fputmiTmpAddressIx(Lcom/lostpixels/fieldservice/activities/territory/TerritoryListFragment;J)V

    .line 700
    iget-object p1, p0, Lcom/lostpixels/fieldservice/activities/territory/TerritoryListFragment$8;->this$0:Lcom/lostpixels/fieldservice/activities/territory/TerritoryListFragment;

    invoke-virtual {p2, p4}, Landroid/view/View;->getTag(I)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Ljava/lang/Long;

    invoke-virtual {p2}, Ljava/lang/Long;->longValue()J

    move-result-wide p2

    invoke-static {p1, p2, p3}, Lcom/lostpixels/fieldservice/activities/territory/TerritoryListFragment;->-$$Nest$fputmiTmpVisitIx(Lcom/lostpixels/fieldservice/activities/territory/TerritoryListFragment;J)V

    .line 701
    iget-object p1, p0, Lcom/lostpixels/fieldservice/activities/territory/TerritoryListFragment$8;->this$0:Lcom/lostpixels/fieldservice/activities/territory/TerritoryListFragment;

    iget-object p2, p1, Lcom/lostpixels/fieldservice/activities/territory/TerritoryListFragment;->realm:Lio/realm/Realm;

    invoke-static {p1}, Lcom/lostpixels/fieldservice/activities/territory/TerritoryListFragment;->-$$Nest$fgetmiTmpStreetIx(Lcom/lostpixels/fieldservice/activities/territory/TerritoryListFragment;)J

    move-result-wide p3

    invoke-static {p2, p3, p4}, Lcom/lostpixels/fieldservice/internal/ministry/Street;->getStreet(Lio/realm/Realm;J)Lcom/lostpixels/fieldservice/internal/ministry/Street;

    move-result-object p1

    .line 703
    iget-object p2, p0, Lcom/lostpixels/fieldservice/activities/territory/TerritoryListFragment$8;->this$0:Lcom/lostpixels/fieldservice/activities/territory/TerritoryListFragment;

    iget-object p3, p2, Lcom/lostpixels/fieldservice/activities/territory/TerritoryListFragment;->realm:Lio/realm/Realm;

    invoke-static {p2}, Lcom/lostpixels/fieldservice/activities/territory/TerritoryListFragment;->-$$Nest$fgetmiTmpVisitIx(Lcom/lostpixels/fieldservice/activities/territory/TerritoryListFragment;)J

    move-result-wide p4

    invoke-static {p3, p4, p5}, Lcom/lostpixels/fieldservice/internal/ministry/Visit;->getVisit(Lio/realm/Realm;J)Lcom/lostpixels/fieldservice/internal/ministry/Visit;

    move-result-object p2

    .line 705
    iget-object p3, p0, Lcom/lostpixels/fieldservice/activities/territory/TerritoryListFragment$8;->this$0:Lcom/lostpixels/fieldservice/activities/territory/TerritoryListFragment;

    invoke-static {p3}, Lcom/lostpixels/fieldservice/activities/territory/TerritoryListFragment;->-$$Nest$fgetlistener(Lcom/lostpixels/fieldservice/activities/territory/TerritoryListFragment;)Lcom/lostpixels/fieldservice/activities/territory/TerritoryListFragment$OnListItemClickListener;

    move-result-object p3

    if-eqz p3, :cond_0

    .line 706
    iget-object p3, p0, Lcom/lostpixels/fieldservice/activities/territory/TerritoryListFragment$8;->this$0:Lcom/lostpixels/fieldservice/activities/territory/TerritoryListFragment;

    invoke-static {p3}, Lcom/lostpixels/fieldservice/activities/territory/TerritoryListFragment;->-$$Nest$fgetlistener(Lcom/lostpixels/fieldservice/activities/territory/TerritoryListFragment;)Lcom/lostpixels/fieldservice/activities/territory/TerritoryListFragment$OnListItemClickListener;

    move-result-object p3

    invoke-interface {p3, p2, p1}, Lcom/lostpixels/fieldservice/activities/territory/TerritoryListFragment$OnListItemClickListener;->onVisitLongClicked(Lcom/lostpixels/fieldservice/internal/ministry/Visit;Lcom/lostpixels/fieldservice/internal/ministry/Street;)V

    :cond_0
    const/4 p1, 0x1

    return p1

    :cond_1
    const/4 p1, 0x0

    return p1
.end method
