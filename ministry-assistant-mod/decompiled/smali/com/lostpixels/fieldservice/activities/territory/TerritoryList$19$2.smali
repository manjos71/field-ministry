.class Lcom/lostpixels/fieldservice/activities/territory/TerritoryList$19$2;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnClickListener;


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

.field final synthetic val$dialog:Landroid/app/Dialog;

.field final synthetic val$text:Landroid/widget/EditText;


# direct methods
.method constructor <init>(Lcom/lostpixels/fieldservice/activities/territory/TerritoryList$19;Landroid/widget/EditText;Landroid/app/Dialog;)V
    .locals 0

    .line 2579
    iput-object p1, p0, Lcom/lostpixels/fieldservice/activities/territory/TerritoryList$19$2;->this$1:Lcom/lostpixels/fieldservice/activities/territory/TerritoryList$19;

    iput-object p2, p0, Lcom/lostpixels/fieldservice/activities/territory/TerritoryList$19$2;->val$text:Landroid/widget/EditText;

    iput-object p3, p0, Lcom/lostpixels/fieldservice/activities/territory/TerritoryList$19$2;->val$dialog:Landroid/app/Dialog;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 4

    .line 2583
    iget-object p1, p0, Lcom/lostpixels/fieldservice/activities/territory/TerritoryList$19$2;->this$1:Lcom/lostpixels/fieldservice/activities/territory/TerritoryList$19;

    iget-object p1, p1, Lcom/lostpixels/fieldservice/activities/territory/TerritoryList$19;->val$visit:Lcom/lostpixels/fieldservice/internal/ministry/Visit;

    invoke-virtual {p1}, Lcom/lostpixels/fieldservice/internal/ministry/Visit;->getParent()Lcom/lostpixels/fieldservice/internal/ministry/Address;

    move-result-object p1

    invoke-virtual {p1}, Lcom/lostpixels/fieldservice/internal/ministry/Address;->isBuilding()Z

    move-result p1

    if-eqz p1, :cond_1

    iget-object p1, p0, Lcom/lostpixels/fieldservice/activities/territory/TerritoryList$19$2;->this$1:Lcom/lostpixels/fieldservice/activities/territory/TerritoryList$19;

    iget-object p1, p1, Lcom/lostpixels/fieldservice/activities/territory/TerritoryList$19;->val$visit:Lcom/lostpixels/fieldservice/internal/ministry/Visit;

    invoke-virtual {p1}, Lcom/lostpixels/fieldservice/internal/ministry/Visit;->getHouseHolder()J

    move-result-wide v0

    const-wide/16 v2, 0x0

    cmp-long p1, v0, v2

    if-eqz p1, :cond_1

    .line 2584
    iget-object p1, p0, Lcom/lostpixels/fieldservice/activities/territory/TerritoryList$19$2;->this$1:Lcom/lostpixels/fieldservice/activities/territory/TerritoryList$19;

    iget-object p1, p1, Lcom/lostpixels/fieldservice/activities/territory/TerritoryList$19;->this$0:Lcom/lostpixels/fieldservice/activities/territory/TerritoryList;

    invoke-static {p1}, Lcom/lostpixels/fieldservice/activities/territory/TerritoryList;->access$3800(Lcom/lostpixels/fieldservice/activities/territory/TerritoryList;)Lio/realm/Realm;

    move-result-object p1

    invoke-static {p1}, Lcom/lostpixels/fieldservice/internal/ministry/MinistryManager;->getInstance(Lio/realm/Realm;)Lcom/lostpixels/fieldservice/internal/ministry/MinistryManager;

    move-result-object p1

    iget-object v0, p0, Lcom/lostpixels/fieldservice/activities/territory/TerritoryList$19$2;->this$1:Lcom/lostpixels/fieldservice/activities/territory/TerritoryList$19;

    iget-object v0, v0, Lcom/lostpixels/fieldservice/activities/territory/TerritoryList$19;->this$0:Lcom/lostpixels/fieldservice/activities/territory/TerritoryList;

    invoke-static {v0}, Lcom/lostpixels/fieldservice/activities/territory/TerritoryList;->access$3700(Lcom/lostpixels/fieldservice/activities/territory/TerritoryList;)Lio/realm/Realm;

    move-result-object v0

    iget-object v1, p0, Lcom/lostpixels/fieldservice/activities/territory/TerritoryList$19$2;->this$1:Lcom/lostpixels/fieldservice/activities/territory/TerritoryList$19;

    iget-object v1, v1, Lcom/lostpixels/fieldservice/activities/territory/TerritoryList$19;->val$visit:Lcom/lostpixels/fieldservice/internal/ministry/Visit;

    invoke-virtual {v1}, Lcom/lostpixels/fieldservice/internal/ministry/Visit;->getHouseHolder()J

    move-result-wide v1

    invoke-virtual {p1, v0, v1, v2}, Lcom/lostpixels/fieldservice/internal/ministry/MinistryManager;->getPerson(Lio/realm/Realm;J)Lcom/lostpixels/fieldservice/internal/ministry/Person;

    move-result-object p1

    if-eqz p1, :cond_0

    .line 2586
    iget-object v0, p0, Lcom/lostpixels/fieldservice/activities/territory/TerritoryList$19$2;->val$text:Landroid/widget/EditText;

    invoke-virtual {v0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/lostpixels/fieldservice/internal/ministry/Person;->setApartment(Ljava/lang/String;)V

    .line 2589
    :cond_0
    iget-object p1, p0, Lcom/lostpixels/fieldservice/activities/territory/TerritoryList$19$2;->this$1:Lcom/lostpixels/fieldservice/activities/territory/TerritoryList$19;

    iget-object p1, p1, Lcom/lostpixels/fieldservice/activities/territory/TerritoryList$19;->val$visit:Lcom/lostpixels/fieldservice/internal/ministry/Visit;

    iget-object v0, p0, Lcom/lostpixels/fieldservice/activities/territory/TerritoryList$19$2;->val$text:Landroid/widget/EditText;

    invoke-virtual {v0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/lostpixels/fieldservice/internal/ministry/Visit;->setName(Ljava/lang/String;)V

    goto :goto_0

    .line 2591
    :cond_1
    iget-object p1, p0, Lcom/lostpixels/fieldservice/activities/territory/TerritoryList$19$2;->this$1:Lcom/lostpixels/fieldservice/activities/territory/TerritoryList$19;

    iget-object p1, p1, Lcom/lostpixels/fieldservice/activities/territory/TerritoryList$19;->val$visit:Lcom/lostpixels/fieldservice/internal/ministry/Visit;

    iget-object v0, p0, Lcom/lostpixels/fieldservice/activities/territory/TerritoryList$19$2;->val$text:Landroid/widget/EditText;

    invoke-virtual {v0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/lostpixels/fieldservice/internal/ministry/Visit;->setName(Ljava/lang/String;)V

    .line 2594
    :goto_0
    iget-object p1, p0, Lcom/lostpixels/fieldservice/activities/territory/TerritoryList$19$2;->this$1:Lcom/lostpixels/fieldservice/activities/territory/TerritoryList$19;

    iget-object p1, p1, Lcom/lostpixels/fieldservice/activities/territory/TerritoryList$19;->val$visit:Lcom/lostpixels/fieldservice/internal/ministry/Visit;

    iget-object v0, p0, Lcom/lostpixels/fieldservice/activities/territory/TerritoryList$19$2;->val$text:Landroid/widget/EditText;

    invoke-virtual {v0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/lostpixels/fieldservice/internal/ministry/Visit;->setName(Ljava/lang/String;)V

    .line 2598
    iget-object p1, p0, Lcom/lostpixels/fieldservice/activities/territory/TerritoryList$19$2;->this$1:Lcom/lostpixels/fieldservice/activities/territory/TerritoryList$19;

    iget-object p1, p1, Lcom/lostpixels/fieldservice/activities/territory/TerritoryList$19;->this$0:Lcom/lostpixels/fieldservice/activities/territory/TerritoryList;

    invoke-virtual {p1}, Lcom/lostpixels/fieldservice/activities/territory/TerritoryList;->isMapView()Z

    move-result p1

    if-eqz p1, :cond_2

    iget-object p1, p0, Lcom/lostpixels/fieldservice/activities/territory/TerritoryList$19$2;->this$1:Lcom/lostpixels/fieldservice/activities/territory/TerritoryList$19;

    iget-object p1, p1, Lcom/lostpixels/fieldservice/activities/territory/TerritoryList$19;->this$0:Lcom/lostpixels/fieldservice/activities/territory/TerritoryList;

    invoke-static {p1}, Lcom/lostpixels/fieldservice/activities/territory/TerritoryList;->-$$Nest$fgetmMapFragment(Lcom/lostpixels/fieldservice/activities/territory/TerritoryList;)Lcom/lostpixels/fieldservice/activities/territory/TerritoryListMapFragment;

    move-result-object p1

    if-eqz p1, :cond_2

    .line 2599
    iget-object p1, p0, Lcom/lostpixels/fieldservice/activities/territory/TerritoryList$19$2;->this$1:Lcom/lostpixels/fieldservice/activities/territory/TerritoryList$19;

    iget-object p1, p1, Lcom/lostpixels/fieldservice/activities/territory/TerritoryList$19;->this$0:Lcom/lostpixels/fieldservice/activities/territory/TerritoryList;

    invoke-static {p1}, Lcom/lostpixels/fieldservice/activities/territory/TerritoryList;->-$$Nest$fgetmMapFragment(Lcom/lostpixels/fieldservice/activities/territory/TerritoryList;)Lcom/lostpixels/fieldservice/activities/territory/TerritoryListMapFragment;

    move-result-object p1

    invoke-virtual {p1}, Lcom/lostpixels/fieldservice/activities/territory/TerritoryListMapFragment;->updateInfoWindow()V

    .line 2603
    :cond_2
    :try_start_0
    iget-object p1, p0, Lcom/lostpixels/fieldservice/activities/territory/TerritoryList$19$2;->val$dialog:Landroid/app/Dialog;

    invoke-virtual {p1}, Landroid/app/Dialog;->dismiss()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 2607
    :catch_0
    iget-object p1, p0, Lcom/lostpixels/fieldservice/activities/territory/TerritoryList$19$2;->this$1:Lcom/lostpixels/fieldservice/activities/territory/TerritoryList$19;

    iget-object p1, p1, Lcom/lostpixels/fieldservice/activities/territory/TerritoryList$19;->this$0:Lcom/lostpixels/fieldservice/activities/territory/TerritoryList;

    invoke-virtual {p1}, Lcom/lostpixels/fieldservice/activities/territory/TerritoryList;->saveFile()V

    .line 2608
    iget-object p1, p0, Lcom/lostpixels/fieldservice/activities/territory/TerritoryList$19$2;->this$1:Lcom/lostpixels/fieldservice/activities/territory/TerritoryList$19;

    iget-object p1, p1, Lcom/lostpixels/fieldservice/activities/territory/TerritoryList$19;->this$0:Lcom/lostpixels/fieldservice/activities/territory/TerritoryList;

    invoke-static {p1}, Lcom/lostpixels/fieldservice/activities/territory/TerritoryList;->-$$Nest$fgetmListFragment(Lcom/lostpixels/fieldservice/activities/territory/TerritoryList;)Lcom/lostpixels/fieldservice/activities/territory/TerritoryListFragment;

    move-result-object p1

    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Lcom/lostpixels/fieldservice/activities/territory/TerritoryListFragment;->update(Z)V

    return-void
.end method
