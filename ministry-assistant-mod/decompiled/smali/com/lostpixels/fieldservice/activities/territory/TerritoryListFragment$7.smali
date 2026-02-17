.class Lcom/lostpixels/fieldservice/activities/territory/TerritoryListFragment$7;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/widget/AdapterView$OnItemClickListener;


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

    .line 668
    iput-object p1, p0, Lcom/lostpixels/fieldservice/activities/territory/TerritoryListFragment$7;->this$0:Lcom/lostpixels/fieldservice/activities/territory/TerritoryListFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onItemClick(Landroid/widget/AdapterView;Landroid/view/View;IJ)V
    .locals 2

    .line 670
    instance-of p1, p2, Landroid/widget/TextView;

    if-nez p1, :cond_0

    .line 671
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide p3

    iget-object p1, p0, Lcom/lostpixels/fieldservice/activities/territory/TerritoryListFragment$7;->this$0:Lcom/lostpixels/fieldservice/activities/territory/TerritoryListFragment;

    invoke-static {p1}, Lcom/lostpixels/fieldservice/activities/territory/TerritoryListFragment;->-$$Nest$fgettime(Lcom/lostpixels/fieldservice/activities/territory/TerritoryListFragment;)J

    move-result-wide v0

    sub-long/2addr p3, v0

    const-wide/16 v0, 0x3e8

    cmp-long p1, p3, v0

    if-lez p1, :cond_0

    const p1, 0x7f090054

    .line 672
    invoke-virtual {p2, p1}, Landroid/view/View;->getTag(I)Ljava/lang/Object;

    move-result-object p3

    if-eqz p3, :cond_0

    const p3, 0x7f090002

    .line 673
    invoke-virtual {p2, p3}, Landroid/view/View;->getTag(I)Ljava/lang/Object;

    move-result-object p4

    if-eqz p4, :cond_0

    const p4, 0x7f090060

    .line 674
    invoke-virtual {p2, p4}, Landroid/view/View;->getTag(I)Ljava/lang/Object;

    move-result-object p5

    if-eqz p5, :cond_0

    .line 675
    iget-object p5, p0, Lcom/lostpixels/fieldservice/activities/territory/TerritoryListFragment$7;->this$0:Lcom/lostpixels/fieldservice/activities/territory/TerritoryListFragment;

    invoke-virtual {p2, p1}, Landroid/view/View;->getTag(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Long;

    invoke-virtual {p1}, Ljava/lang/Long;->longValue()J

    move-result-wide v0

    invoke-static {p5, v0, v1}, Lcom/lostpixels/fieldservice/activities/territory/TerritoryListFragment;->-$$Nest$fputmiTmpStreetIx(Lcom/lostpixels/fieldservice/activities/territory/TerritoryListFragment;J)V

    .line 676
    iget-object p1, p0, Lcom/lostpixels/fieldservice/activities/territory/TerritoryListFragment$7;->this$0:Lcom/lostpixels/fieldservice/activities/territory/TerritoryListFragment;

    invoke-virtual {p2, p3}, Landroid/view/View;->getTag(I)Ljava/lang/Object;

    move-result-object p3

    check-cast p3, Ljava/lang/Long;

    invoke-virtual {p3}, Ljava/lang/Long;->longValue()J

    move-result-wide v0

    invoke-static {p1, v0, v1}, Lcom/lostpixels/fieldservice/activities/territory/TerritoryListFragment;->-$$Nest$fputmiTmpAddressIx(Lcom/lostpixels/fieldservice/activities/territory/TerritoryListFragment;J)V

    .line 677
    iget-object p1, p0, Lcom/lostpixels/fieldservice/activities/territory/TerritoryListFragment$7;->this$0:Lcom/lostpixels/fieldservice/activities/territory/TerritoryListFragment;

    invoke-virtual {p2, p4}, Landroid/view/View;->getTag(I)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Ljava/lang/Long;

    invoke-virtual {p2}, Ljava/lang/Long;->longValue()J

    move-result-wide p2

    invoke-static {p1, p2, p3}, Lcom/lostpixels/fieldservice/activities/territory/TerritoryListFragment;->-$$Nest$fputmiTmpVisitIx(Lcom/lostpixels/fieldservice/activities/territory/TerritoryListFragment;J)V

    .line 678
    iget-object p1, p0, Lcom/lostpixels/fieldservice/activities/territory/TerritoryListFragment$7;->this$0:Lcom/lostpixels/fieldservice/activities/territory/TerritoryListFragment;

    iget-object p2, p1, Lcom/lostpixels/fieldservice/activities/territory/TerritoryListFragment;->realm:Lio/realm/Realm;

    invoke-static {p1}, Lcom/lostpixels/fieldservice/activities/territory/TerritoryListFragment;->-$$Nest$fgetmiTmpStreetIx(Lcom/lostpixels/fieldservice/activities/territory/TerritoryListFragment;)J

    move-result-wide p3

    invoke-static {p2, p3, p4}, Lcom/lostpixels/fieldservice/internal/ministry/Street;->getStreet(Lio/realm/Realm;J)Lcom/lostpixels/fieldservice/internal/ministry/Street;

    move-result-object p1

    .line 680
    iget-object p2, p0, Lcom/lostpixels/fieldservice/activities/territory/TerritoryListFragment$7;->this$0:Lcom/lostpixels/fieldservice/activities/territory/TerritoryListFragment;

    iget-object p3, p2, Lcom/lostpixels/fieldservice/activities/territory/TerritoryListFragment;->realm:Lio/realm/Realm;

    invoke-static {p2}, Lcom/lostpixels/fieldservice/activities/territory/TerritoryListFragment;->-$$Nest$fgetmiTmpVisitIx(Lcom/lostpixels/fieldservice/activities/territory/TerritoryListFragment;)J

    move-result-wide p4

    invoke-static {p3, p4, p5}, Lcom/lostpixels/fieldservice/internal/ministry/Visit;->getVisit(Lio/realm/Realm;J)Lcom/lostpixels/fieldservice/internal/ministry/Visit;

    move-result-object p2

    .line 682
    iget-object p3, p0, Lcom/lostpixels/fieldservice/activities/territory/TerritoryListFragment$7;->this$0:Lcom/lostpixels/fieldservice/activities/territory/TerritoryListFragment;

    invoke-static {p3}, Lcom/lostpixels/fieldservice/activities/territory/TerritoryListFragment;->-$$Nest$fgetlistener(Lcom/lostpixels/fieldservice/activities/territory/TerritoryListFragment;)Lcom/lostpixels/fieldservice/activities/territory/TerritoryListFragment$OnListItemClickListener;

    move-result-object p3

    invoke-static {p3}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    check-cast p3, Lcom/lostpixels/fieldservice/activities/territory/TerritoryListFragment$OnListItemClickListener;

    invoke-interface {p3, p2, p1}, Lcom/lostpixels/fieldservice/activities/territory/TerritoryListFragment$OnListItemClickListener;->onVisitClicked(Lcom/lostpixels/fieldservice/internal/ministry/Visit;Lcom/lostpixels/fieldservice/internal/ministry/Street;)V

    :cond_0
    return-void
.end method
