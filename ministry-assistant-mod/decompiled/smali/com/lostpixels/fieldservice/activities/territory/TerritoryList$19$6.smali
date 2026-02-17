.class Lcom/lostpixels/fieldservice/activities/territory/TerritoryList$19$6;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/lostpixels/fieldservice/activities/territory/TerritoryList$19;->onItemClick(Landroid/widget/AdapterView;Landroid/view/View;IJ)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/lostpixels/fieldservice/activities/territory/TerritoryList$19;


# direct methods
.method constructor <init>(Lcom/lostpixels/fieldservice/activities/territory/TerritoryList$19;)V
    .locals 0

    .line 2729
    iput-object p1, p0, Lcom/lostpixels/fieldservice/activities/territory/TerritoryList$19$6;->this$1:Lcom/lostpixels/fieldservice/activities/territory/TerritoryList$19;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 2

    .line 2731
    iget-object p1, p0, Lcom/lostpixels/fieldservice/activities/territory/TerritoryList$19$6;->this$1:Lcom/lostpixels/fieldservice/activities/territory/TerritoryList$19;

    iget-object p1, p1, Lcom/lostpixels/fieldservice/activities/territory/TerritoryList$19;->val$visit:Lcom/lostpixels/fieldservice/internal/ministry/Visit;

    invoke-virtual {p1}, Lcom/lostpixels/fieldservice/internal/ministry/Visit;->getParent()Lcom/lostpixels/fieldservice/internal/ministry/Address;

    move-result-object p1

    invoke-virtual {p1}, Lcom/lostpixels/fieldservice/internal/ministry/Address;->isBuilding()Z

    move-result p1

    const/4 p2, 0x1

    if-eqz p1, :cond_0

    iget-object p1, p0, Lcom/lostpixels/fieldservice/activities/territory/TerritoryList$19$6;->this$1:Lcom/lostpixels/fieldservice/activities/territory/TerritoryList$19;

    iget-object p1, p1, Lcom/lostpixels/fieldservice/activities/territory/TerritoryList$19;->val$visit:Lcom/lostpixels/fieldservice/internal/ministry/Visit;

    invoke-virtual {p1}, Lcom/lostpixels/fieldservice/internal/ministry/Visit;->getParent()Lcom/lostpixels/fieldservice/internal/ministry/Address;

    move-result-object p1

    invoke-virtual {p1}, Lcom/lostpixels/fieldservice/internal/ministry/Address;->getVisits()Ljava/util/List;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result p1

    if-gt p1, p2, :cond_1

    :cond_0
    iget-object p1, p0, Lcom/lostpixels/fieldservice/activities/territory/TerritoryList$19$6;->this$1:Lcom/lostpixels/fieldservice/activities/territory/TerritoryList$19;

    iget-object p1, p1, Lcom/lostpixels/fieldservice/activities/territory/TerritoryList$19;->val$visit:Lcom/lostpixels/fieldservice/internal/ministry/Visit;

    invoke-virtual {p1}, Lcom/lostpixels/fieldservice/internal/ministry/Visit;->getParent()Lcom/lostpixels/fieldservice/internal/ministry/Address;

    move-result-object p1

    invoke-virtual {p1}, Lcom/lostpixels/fieldservice/internal/ministry/Address;->getVisits()Ljava/util/List;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result p1

    if-le p1, p2, :cond_2

    .line 2732
    :cond_1
    iget-object p1, p0, Lcom/lostpixels/fieldservice/activities/territory/TerritoryList$19$6;->this$1:Lcom/lostpixels/fieldservice/activities/territory/TerritoryList$19;

    iget-object p1, p1, Lcom/lostpixels/fieldservice/activities/territory/TerritoryList$19;->val$visit:Lcom/lostpixels/fieldservice/internal/ministry/Visit;

    invoke-virtual {p1}, Lcom/lostpixels/fieldservice/internal/ministry/Visit;->getParent()Lcom/lostpixels/fieldservice/internal/ministry/Address;

    move-result-object p1

    iget-object v0, p0, Lcom/lostpixels/fieldservice/activities/territory/TerritoryList$19$6;->this$1:Lcom/lostpixels/fieldservice/activities/territory/TerritoryList$19;

    iget-object v1, v0, Lcom/lostpixels/fieldservice/activities/territory/TerritoryList$19;->this$0:Lcom/lostpixels/fieldservice/activities/territory/TerritoryList;

    iget-object v0, v0, Lcom/lostpixels/fieldservice/activities/territory/TerritoryList$19;->val$visit:Lcom/lostpixels/fieldservice/internal/ministry/Visit;

    invoke-virtual {p1, v1, v0}, Lcom/lostpixels/fieldservice/internal/ministry/Address;->removeVisit(Landroid/content/Context;Lcom/lostpixels/fieldservice/internal/ministry/Visit;)V

    goto :goto_0

    .line 2734
    :cond_2
    iget-object p1, p0, Lcom/lostpixels/fieldservice/activities/territory/TerritoryList$19$6;->this$1:Lcom/lostpixels/fieldservice/activities/territory/TerritoryList$19;

    iget-object v0, p1, Lcom/lostpixels/fieldservice/activities/territory/TerritoryList$19;->val$street:Lcom/lostpixels/fieldservice/internal/ministry/Street;

    iget-object v1, p1, Lcom/lostpixels/fieldservice/activities/territory/TerritoryList$19;->this$0:Lcom/lostpixels/fieldservice/activities/territory/TerritoryList;

    iget-object p1, p1, Lcom/lostpixels/fieldservice/activities/territory/TerritoryList$19;->val$visit:Lcom/lostpixels/fieldservice/internal/ministry/Visit;

    invoke-virtual {p1}, Lcom/lostpixels/fieldservice/internal/ministry/Visit;->getParent()Lcom/lostpixels/fieldservice/internal/ministry/Address;

    move-result-object p1

    invoke-virtual {v0, v1, p1}, Lcom/lostpixels/fieldservice/internal/ministry/Street;->removeAddress(Landroid/content/Context;Lcom/lostpixels/fieldservice/internal/ministry/Address;)V

    .line 2737
    :goto_0
    iget-object p1, p0, Lcom/lostpixels/fieldservice/activities/territory/TerritoryList$19$6;->this$1:Lcom/lostpixels/fieldservice/activities/territory/TerritoryList$19;

    iget-object p1, p1, Lcom/lostpixels/fieldservice/activities/territory/TerritoryList$19;->val$street:Lcom/lostpixels/fieldservice/internal/ministry/Street;

    invoke-virtual {p1}, Lcom/lostpixels/fieldservice/internal/ministry/Street;->removeEmptyAddresses()V

    .line 2739
    iget-object p1, p0, Lcom/lostpixels/fieldservice/activities/territory/TerritoryList$19$6;->this$1:Lcom/lostpixels/fieldservice/activities/territory/TerritoryList$19;

    iget-object p1, p1, Lcom/lostpixels/fieldservice/activities/territory/TerritoryList$19;->val$street:Lcom/lostpixels/fieldservice/internal/ministry/Street;

    invoke-virtual {p1}, Lcom/lostpixels/fieldservice/internal/ministry/Street;->getAddresses()Ljava/util/List;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/List;->isEmpty()Z

    move-result p1

    if-eqz p1, :cond_3

    .line 2742
    iget-object p1, p0, Lcom/lostpixels/fieldservice/activities/territory/TerritoryList$19$6;->this$1:Lcom/lostpixels/fieldservice/activities/territory/TerritoryList$19;

    iget-object p1, p1, Lcom/lostpixels/fieldservice/activities/territory/TerritoryList$19;->this$0:Lcom/lostpixels/fieldservice/activities/territory/TerritoryList;

    invoke-static {p1}, Lcom/lostpixels/fieldservice/activities/territory/TerritoryList;->-$$Nest$fgetmTerritory(Lcom/lostpixels/fieldservice/activities/territory/TerritoryList;)Lcom/lostpixels/fieldservice/internal/ministry/Territory;

    move-result-object p1

    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v0, p0, Lcom/lostpixels/fieldservice/activities/territory/TerritoryList$19$6;->this$1:Lcom/lostpixels/fieldservice/activities/territory/TerritoryList$19;

    iget-object v1, v0, Lcom/lostpixels/fieldservice/activities/territory/TerritoryList$19;->this$0:Lcom/lostpixels/fieldservice/activities/territory/TerritoryList;

    iget-object v0, v0, Lcom/lostpixels/fieldservice/activities/territory/TerritoryList$19;->val$street:Lcom/lostpixels/fieldservice/internal/ministry/Street;

    invoke-virtual {p1, v1, v0}, Lcom/lostpixels/fieldservice/internal/ministry/Territory;->removeStreet(Landroid/content/Context;Lcom/lostpixels/fieldservice/internal/ministry/Street;)V

    .line 2744
    :cond_3
    iget-object p1, p0, Lcom/lostpixels/fieldservice/activities/territory/TerritoryList$19$6;->this$1:Lcom/lostpixels/fieldservice/activities/territory/TerritoryList$19;

    iget-object p1, p1, Lcom/lostpixels/fieldservice/activities/territory/TerritoryList$19;->this$0:Lcom/lostpixels/fieldservice/activities/territory/TerritoryList;

    invoke-static {p1}, Lcom/lostpixels/fieldservice/activities/territory/TerritoryList;->-$$Nest$fgetmListFragment(Lcom/lostpixels/fieldservice/activities/territory/TerritoryList;)Lcom/lostpixels/fieldservice/activities/territory/TerritoryListFragment;

    move-result-object p1

    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    invoke-virtual {p1, p2}, Lcom/lostpixels/fieldservice/activities/territory/TerritoryListFragment;->update(Z)V

    .line 2745
    iget-object p1, p0, Lcom/lostpixels/fieldservice/activities/territory/TerritoryList$19$6;->this$1:Lcom/lostpixels/fieldservice/activities/territory/TerritoryList$19;

    iget-object p1, p1, Lcom/lostpixels/fieldservice/activities/territory/TerritoryList$19;->this$0:Lcom/lostpixels/fieldservice/activities/territory/TerritoryList;

    invoke-virtual {p1}, Lcom/lostpixels/fieldservice/activities/territory/TerritoryList;->isMapView()Z

    move-result p1

    if-eqz p1, :cond_4

    .line 2746
    iget-object p1, p0, Lcom/lostpixels/fieldservice/activities/territory/TerritoryList$19$6;->this$1:Lcom/lostpixels/fieldservice/activities/territory/TerritoryList$19;

    iget-object p1, p1, Lcom/lostpixels/fieldservice/activities/territory/TerritoryList$19;->this$0:Lcom/lostpixels/fieldservice/activities/territory/TerritoryList;

    invoke-static {p1}, Lcom/lostpixels/fieldservice/activities/territory/TerritoryList;->-$$Nest$fgetmMapFragment(Lcom/lostpixels/fieldservice/activities/territory/TerritoryList;)Lcom/lostpixels/fieldservice/activities/territory/TerritoryListMapFragment;

    move-result-object p1

    if-eqz p1, :cond_4

    .line 2747
    iget-object p1, p0, Lcom/lostpixels/fieldservice/activities/territory/TerritoryList$19$6;->this$1:Lcom/lostpixels/fieldservice/activities/territory/TerritoryList$19;

    iget-object p1, p1, Lcom/lostpixels/fieldservice/activities/territory/TerritoryList$19;->this$0:Lcom/lostpixels/fieldservice/activities/territory/TerritoryList;

    invoke-static {p1}, Lcom/lostpixels/fieldservice/activities/territory/TerritoryList;->-$$Nest$fgetmMapFragment(Lcom/lostpixels/fieldservice/activities/territory/TerritoryList;)Lcom/lostpixels/fieldservice/activities/territory/TerritoryListMapFragment;

    move-result-object p1

    invoke-virtual {p1}, Lcom/lostpixels/fieldservice/activities/territory/TerritoryListMapFragment;->update()V

    .line 2749
    :cond_4
    iget-object p1, p0, Lcom/lostpixels/fieldservice/activities/territory/TerritoryList$19$6;->this$1:Lcom/lostpixels/fieldservice/activities/territory/TerritoryList$19;

    iget-object p1, p1, Lcom/lostpixels/fieldservice/activities/territory/TerritoryList$19;->this$0:Lcom/lostpixels/fieldservice/activities/territory/TerritoryList;

    invoke-static {p1}, Lcom/lostpixels/fieldservice/activities/territory/TerritoryList;->-$$Nest$mupdateStatistics(Lcom/lostpixels/fieldservice/activities/territory/TerritoryList;)V

    .line 2750
    iget-object p1, p0, Lcom/lostpixels/fieldservice/activities/territory/TerritoryList$19$6;->this$1:Lcom/lostpixels/fieldservice/activities/territory/TerritoryList$19;

    iget-object p1, p1, Lcom/lostpixels/fieldservice/activities/territory/TerritoryList$19;->this$0:Lcom/lostpixels/fieldservice/activities/territory/TerritoryList;

    invoke-virtual {p1}, Lcom/lostpixels/fieldservice/activities/territory/TerritoryList;->saveFile()V

    .line 2751
    iget-object p1, p0, Lcom/lostpixels/fieldservice/activities/territory/TerritoryList$19$6;->this$1:Lcom/lostpixels/fieldservice/activities/territory/TerritoryList$19;

    iget-object p1, p1, Lcom/lostpixels/fieldservice/activities/territory/TerritoryList$19;->this$0:Lcom/lostpixels/fieldservice/activities/territory/TerritoryList;

    invoke-virtual {p1}, Lcom/lostpixels/fieldservice/activities/territory/TerritoryList;->isEditMode()Z

    move-result p1

    if-nez p1, :cond_5

    .line 2752
    iget-object p1, p0, Lcom/lostpixels/fieldservice/activities/territory/TerritoryList$19$6;->this$1:Lcom/lostpixels/fieldservice/activities/territory/TerritoryList$19;

    iget-object p1, p1, Lcom/lostpixels/fieldservice/activities/territory/TerritoryList$19;->this$0:Lcom/lostpixels/fieldservice/activities/territory/TerritoryList;

    invoke-static {p1}, Lcom/lostpixels/fieldservice/activities/territory/TerritoryList;->access$4200(Lcom/lostpixels/fieldservice/activities/territory/TerritoryList;)Lio/realm/Realm;

    move-result-object p1

    invoke-static {p1}, Lcom/lostpixels/fieldservice/internal/ministry/MinistryManager;->getInstance(Lio/realm/Realm;)Lcom/lostpixels/fieldservice/internal/ministry/MinistryManager;

    move-result-object p1

    iget-object p2, p0, Lcom/lostpixels/fieldservice/activities/territory/TerritoryList$19$6;->this$1:Lcom/lostpixels/fieldservice/activities/territory/TerritoryList$19;

    iget-object p2, p2, Lcom/lostpixels/fieldservice/activities/territory/TerritoryList$19;->this$0:Lcom/lostpixels/fieldservice/activities/territory/TerritoryList;

    invoke-static {p2}, Lcom/lostpixels/fieldservice/activities/territory/TerritoryList;->access$4100(Lcom/lostpixels/fieldservice/activities/territory/TerritoryList;)Lio/realm/Realm;

    move-result-object p2

    invoke-virtual {p1, p2}, Lcom/lostpixels/fieldservice/internal/ministry/MinistryManager;->forceCleanUpPersons(Lio/realm/Realm;)V

    :cond_5
    return-void
.end method
