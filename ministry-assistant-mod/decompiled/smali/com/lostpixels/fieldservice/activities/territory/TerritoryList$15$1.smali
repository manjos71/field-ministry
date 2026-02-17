.class Lcom/lostpixels/fieldservice/activities/territory/TerritoryList$15$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/lostpixels/fieldservice/activities/territory/TerritoryList$15;->onItemClick(Landroid/widget/AdapterView;Landroid/view/View;IJ)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/lostpixels/fieldservice/activities/territory/TerritoryList$15;

.field final synthetic val$dialog5:Landroid/app/Dialog;

.field final synthetic val$text5:Landroid/widget/EditText;


# direct methods
.method constructor <init>(Lcom/lostpixels/fieldservice/activities/territory/TerritoryList$15;Landroid/widget/EditText;Landroid/app/Dialog;)V
    .locals 0

    .line 2029
    iput-object p1, p0, Lcom/lostpixels/fieldservice/activities/territory/TerritoryList$15$1;->this$1:Lcom/lostpixels/fieldservice/activities/territory/TerritoryList$15;

    iput-object p2, p0, Lcom/lostpixels/fieldservice/activities/territory/TerritoryList$15$1;->val$text5:Landroid/widget/EditText;

    iput-object p3, p0, Lcom/lostpixels/fieldservice/activities/territory/TerritoryList$15$1;->val$dialog5:Landroid/app/Dialog;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 8

    .line 2034
    iget-object p1, p0, Lcom/lostpixels/fieldservice/activities/territory/TerritoryList$15$1;->this$1:Lcom/lostpixels/fieldservice/activities/territory/TerritoryList$15;

    iget-object p1, p1, Lcom/lostpixels/fieldservice/activities/territory/TerritoryList$15;->val$visit:Lcom/lostpixels/fieldservice/internal/ministry/Visit;

    invoke-virtual {p1}, Lcom/lostpixels/fieldservice/internal/ministry/Visit;->getParent()Lcom/lostpixels/fieldservice/internal/ministry/Address;

    move-result-object p1

    invoke-virtual {p1}, Lcom/lostpixels/fieldservice/internal/ministry/Address;->getId()J

    move-result-wide v0

    .line 2035
    iget-object p1, p0, Lcom/lostpixels/fieldservice/activities/territory/TerritoryList$15$1;->this$1:Lcom/lostpixels/fieldservice/activities/territory/TerritoryList$15;

    iget-object p1, p1, Lcom/lostpixels/fieldservice/activities/territory/TerritoryList$15;->this$0:Lcom/lostpixels/fieldservice/activities/territory/TerritoryList;

    invoke-static {p1}, Lcom/lostpixels/fieldservice/activities/territory/TerritoryList;->-$$Nest$fgetmTerritory(Lcom/lostpixels/fieldservice/activities/territory/TerritoryList;)Lcom/lostpixels/fieldservice/internal/ministry/Territory;

    move-result-object p1

    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    invoke-virtual {p1}, Lcom/lostpixels/fieldservice/internal/ministry/Territory;->getStreets()Ljava/util/List;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    const/4 v2, 0x0

    :cond_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_3

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/lostpixels/fieldservice/internal/ministry/Street;

    .line 2036
    invoke-virtual {v3}, Lcom/lostpixels/fieldservice/internal/ministry/Street;->getAddresses()Ljava/util/List;

    move-result-object v4

    invoke-interface {v4}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :cond_1
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_2

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/lostpixels/fieldservice/internal/ministry/Address;

    .line 2037
    invoke-virtual {v5}, Lcom/lostpixels/fieldservice/internal/ministry/Address;->getId()J

    move-result-wide v5

    cmp-long v7, v5, v0

    if-nez v7, :cond_1

    move-object v2, v3

    :cond_2
    if-eqz v2, :cond_0

    .line 2046
    :cond_3
    iget-object p1, p0, Lcom/lostpixels/fieldservice/activities/territory/TerritoryList$15$1;->this$1:Lcom/lostpixels/fieldservice/activities/territory/TerritoryList$15;

    iget-object p1, p1, Lcom/lostpixels/fieldservice/activities/territory/TerritoryList$15;->val$visit:Lcom/lostpixels/fieldservice/internal/ministry/Visit;

    invoke-virtual {p1}, Lcom/lostpixels/fieldservice/internal/ministry/Visit;->getParent()Lcom/lostpixels/fieldservice/internal/ministry/Address;

    move-result-object p1

    iget-object v0, p0, Lcom/lostpixels/fieldservice/activities/territory/TerritoryList$15$1;->val$text5:Landroid/widget/EditText;

    invoke-virtual {v0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/lostpixels/fieldservice/internal/ministry/Address;->setName(Ljava/lang/String;)V

    .line 2047
    iget-object p1, p0, Lcom/lostpixels/fieldservice/activities/territory/TerritoryList$15$1;->this$1:Lcom/lostpixels/fieldservice/activities/territory/TerritoryList$15;

    iget-object p1, p1, Lcom/lostpixels/fieldservice/activities/territory/TerritoryList$15;->this$0:Lcom/lostpixels/fieldservice/activities/territory/TerritoryList;

    invoke-static {p1}, Lcom/lostpixels/fieldservice/activities/territory/TerritoryList;->access$1800(Lcom/lostpixels/fieldservice/activities/territory/TerritoryList;)Lio/realm/Realm;

    move-result-object p1

    invoke-static {p1}, Lcom/lostpixels/fieldservice/internal/ministry/MinistryManager;->getInstance(Lio/realm/Realm;)Lcom/lostpixels/fieldservice/internal/ministry/MinistryManager;

    move-result-object p1

    iget-object v0, p0, Lcom/lostpixels/fieldservice/activities/territory/TerritoryList$15$1;->this$1:Lcom/lostpixels/fieldservice/activities/territory/TerritoryList$15;

    iget-object v0, v0, Lcom/lostpixels/fieldservice/activities/territory/TerritoryList$15;->this$0:Lcom/lostpixels/fieldservice/activities/territory/TerritoryList;

    invoke-static {v0}, Lcom/lostpixels/fieldservice/activities/territory/TerritoryList;->access$1700(Lcom/lostpixels/fieldservice/activities/territory/TerritoryList;)Lio/realm/Realm;

    move-result-object v0

    iget-object v1, p0, Lcom/lostpixels/fieldservice/activities/territory/TerritoryList$15$1;->this$1:Lcom/lostpixels/fieldservice/activities/territory/TerritoryList$15;

    iget-object v1, v1, Lcom/lostpixels/fieldservice/activities/territory/TerritoryList$15;->val$visit:Lcom/lostpixels/fieldservice/internal/ministry/Visit;

    invoke-virtual {v1}, Lcom/lostpixels/fieldservice/internal/ministry/Visit;->getHouseHolder()J

    move-result-wide v3

    invoke-virtual {p1, v0, v3, v4}, Lcom/lostpixels/fieldservice/internal/ministry/MinistryManager;->getPerson(Lio/realm/Realm;J)Lcom/lostpixels/fieldservice/internal/ministry/Person;

    move-result-object p1

    if-eqz p1, :cond_4

    .line 2049
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {v2}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    invoke-virtual {v2}, Lcom/lostpixels/fieldservice/internal/ministry/Street;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/lostpixels/fieldservice/activities/territory/TerritoryList$15$1;->val$text5:Landroid/widget/EditText;

    invoke-virtual {v1}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/lostpixels/fieldservice/internal/ministry/Person;->setAddress(Ljava/lang/String;)V

    .line 2051
    :cond_4
    iget-object p1, p0, Lcom/lostpixels/fieldservice/activities/territory/TerritoryList$15$1;->this$1:Lcom/lostpixels/fieldservice/activities/territory/TerritoryList$15;

    iget-object p1, p1, Lcom/lostpixels/fieldservice/activities/territory/TerritoryList$15;->this$0:Lcom/lostpixels/fieldservice/activities/territory/TerritoryList;

    invoke-virtual {p1}, Lcom/lostpixels/fieldservice/activities/territory/TerritoryList;->isMapView()Z

    move-result p1

    if-eqz p1, :cond_5

    iget-object p1, p0, Lcom/lostpixels/fieldservice/activities/territory/TerritoryList$15$1;->this$1:Lcom/lostpixels/fieldservice/activities/territory/TerritoryList$15;

    iget-object p1, p1, Lcom/lostpixels/fieldservice/activities/territory/TerritoryList$15;->this$0:Lcom/lostpixels/fieldservice/activities/territory/TerritoryList;

    invoke-static {p1}, Lcom/lostpixels/fieldservice/activities/territory/TerritoryList;->-$$Nest$fgetmMapFragment(Lcom/lostpixels/fieldservice/activities/territory/TerritoryList;)Lcom/lostpixels/fieldservice/activities/territory/TerritoryListMapFragment;

    move-result-object p1

    if-eqz p1, :cond_5

    .line 2052
    iget-object p1, p0, Lcom/lostpixels/fieldservice/activities/territory/TerritoryList$15$1;->this$1:Lcom/lostpixels/fieldservice/activities/territory/TerritoryList$15;

    iget-object p1, p1, Lcom/lostpixels/fieldservice/activities/territory/TerritoryList$15;->this$0:Lcom/lostpixels/fieldservice/activities/territory/TerritoryList;

    invoke-static {p1}, Lcom/lostpixels/fieldservice/activities/territory/TerritoryList;->-$$Nest$fgetmMapFragment(Lcom/lostpixels/fieldservice/activities/territory/TerritoryList;)Lcom/lostpixels/fieldservice/activities/territory/TerritoryListMapFragment;

    move-result-object p1

    invoke-virtual {p1}, Lcom/lostpixels/fieldservice/activities/territory/TerritoryListMapFragment;->updateInfoWindow()V

    .line 2056
    :cond_5
    :try_start_0
    iget-object p1, p0, Lcom/lostpixels/fieldservice/activities/territory/TerritoryList$15$1;->val$dialog5:Landroid/app/Dialog;

    invoke-virtual {p1}, Landroid/app/Dialog;->dismiss()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    nop

    .line 2061
    :goto_0
    invoke-static {v2}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    invoke-virtual {v2}, Lcom/lostpixels/fieldservice/internal/ministry/Street;->isRuralArea()Z

    move-result p1

    if-nez p1, :cond_6

    const/4 p1, 0x0

    .line 2062
    invoke-virtual {v2, p1}, Lcom/lostpixels/fieldservice/internal/ministry/Street;->sort(Z)V

    .line 2063
    :cond_6
    iget-object p1, p0, Lcom/lostpixels/fieldservice/activities/territory/TerritoryList$15$1;->this$1:Lcom/lostpixels/fieldservice/activities/territory/TerritoryList$15;

    iget-object p1, p1, Lcom/lostpixels/fieldservice/activities/territory/TerritoryList$15;->this$0:Lcom/lostpixels/fieldservice/activities/territory/TerritoryList;

    invoke-virtual {p1}, Lcom/lostpixels/fieldservice/activities/territory/TerritoryList;->saveFile()V

    .line 2064
    iget-object p1, p0, Lcom/lostpixels/fieldservice/activities/territory/TerritoryList$15$1;->this$1:Lcom/lostpixels/fieldservice/activities/territory/TerritoryList$15;

    iget-object p1, p1, Lcom/lostpixels/fieldservice/activities/territory/TerritoryList$15;->this$0:Lcom/lostpixels/fieldservice/activities/territory/TerritoryList;

    invoke-static {p1}, Lcom/lostpixels/fieldservice/activities/territory/TerritoryList;->-$$Nest$fgetmListFragment(Lcom/lostpixels/fieldservice/activities/territory/TerritoryList;)Lcom/lostpixels/fieldservice/activities/territory/TerritoryListFragment;

    move-result-object p1

    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    const/4 v0, 0x1

    invoke-virtual {p1, v0}, Lcom/lostpixels/fieldservice/activities/territory/TerritoryListFragment;->update(Z)V

    return-void
.end method
