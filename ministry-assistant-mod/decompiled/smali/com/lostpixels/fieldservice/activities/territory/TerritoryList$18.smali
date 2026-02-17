.class Lcom/lostpixels/fieldservice/activities/territory/TerritoryList$18;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/lostpixels/fieldservice/activities/territory/TerritoryList;->addNewApartment(Lcom/lostpixels/fieldservice/internal/ministry/Visit;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/lostpixels/fieldservice/activities/territory/TerritoryList;

.field final synthetic val$dialog:Landroid/app/Dialog;

.field final synthetic val$edtFloor:Landroid/widget/EditText;

.field final synthetic val$names:Landroid/widget/EditText;

.field final synthetic val$visit:Lcom/lostpixels/fieldservice/internal/ministry/Visit;


# direct methods
.method constructor <init>(Lcom/lostpixels/fieldservice/activities/territory/TerritoryList;Lcom/lostpixels/fieldservice/internal/ministry/Visit;Landroid/widget/EditText;Landroid/widget/EditText;Landroid/app/Dialog;)V
    .locals 0

    .line 2142
    iput-object p1, p0, Lcom/lostpixels/fieldservice/activities/territory/TerritoryList$18;->this$0:Lcom/lostpixels/fieldservice/activities/territory/TerritoryList;

    iput-object p2, p0, Lcom/lostpixels/fieldservice/activities/territory/TerritoryList$18;->val$visit:Lcom/lostpixels/fieldservice/internal/ministry/Visit;

    iput-object p3, p0, Lcom/lostpixels/fieldservice/activities/territory/TerritoryList$18;->val$edtFloor:Landroid/widget/EditText;

    iput-object p4, p0, Lcom/lostpixels/fieldservice/activities/territory/TerritoryList$18;->val$names:Landroid/widget/EditText;

    iput-object p5, p0, Lcom/lostpixels/fieldservice/activities/territory/TerritoryList$18;->val$dialog:Landroid/app/Dialog;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 9

    .line 2146
    iget-object p1, p0, Lcom/lostpixels/fieldservice/activities/territory/TerritoryList$18;->val$visit:Lcom/lostpixels/fieldservice/internal/ministry/Visit;

    invoke-virtual {p1}, Lcom/lostpixels/fieldservice/internal/ministry/Visit;->getParent()Lcom/lostpixels/fieldservice/internal/ministry/Address;

    move-result-object p1

    .line 2148
    iget-object v0, p0, Lcom/lostpixels/fieldservice/activities/territory/TerritoryList$18;->this$0:Lcom/lostpixels/fieldservice/activities/territory/TerritoryList;

    invoke-static {v0}, Lcom/lostpixels/fieldservice/activities/territory/TerritoryList;->-$$Nest$fgetmTerritory(Lcom/lostpixels/fieldservice/activities/territory/TerritoryList;)Lcom/lostpixels/fieldservice/internal/ministry/Territory;

    move-result-object v0

    invoke-static {v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    invoke-virtual {v0}, Lcom/lostpixels/fieldservice/internal/ministry/Territory;->getStreets()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/lostpixels/fieldservice/internal/ministry/Street;

    .line 2149
    invoke-virtual {v1}, Lcom/lostpixels/fieldservice/internal/ministry/Street;->getAddresses()Ljava/util/List;

    move-result-object v2

    invoke-interface {v2, p1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 2150
    invoke-virtual {v1}, Lcom/lostpixels/fieldservice/internal/ministry/Street;->getName()Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    :goto_0
    const/4 v1, 0x0

    .line 2157
    :try_start_0
    iget-object v2, p0, Lcom/lostpixels/fieldservice/activities/territory/TerritoryList$18;->val$edtFloor:Landroid/widget/EditText;

    invoke-virtual {v2}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v2
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    const/4 v2, 0x0

    .line 2161
    :goto_1
    new-instance v3, Lcom/lostpixels/fieldservice/internal/ministry/Street;

    invoke-direct {v3}, Lcom/lostpixels/fieldservice/internal/ministry/Street;-><init>()V

    .line 2162
    invoke-virtual {v3, v0}, Lcom/lostpixels/fieldservice/internal/ministry/Street;->setStreetName(Ljava/lang/String;)V

    .line 2163
    new-instance v0, Lcom/lostpixels/fieldservice/internal/ministry/Address;

    invoke-virtual {p1}, Lcom/lostpixels/fieldservice/internal/ministry/Address;->getName()Ljava/lang/String;

    move-result-object p1

    const/4 v4, 0x1

    invoke-direct {v0, p1, v4}, Lcom/lostpixels/fieldservice/internal/ministry/Address;-><init>(Ljava/lang/String;I)V

    .line 2164
    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    .line 2166
    iget-object v5, p0, Lcom/lostpixels/fieldservice/activities/territory/TerritoryList$18;->val$names:Landroid/widget/EditText;

    invoke-virtual {v5}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v5

    const-string v6, "\n"

    invoke-virtual {v5, v6}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v5

    .line 2167
    array-length v6, v5

    :goto_2
    if-ge v1, v6, :cond_3

    aget-object v7, v5, v1

    .line 2168
    invoke-virtual {v7}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v7

    .line 2169
    invoke-virtual {v7}, Ljava/lang/String;->isEmpty()Z

    move-result v8

    if-nez v8, :cond_2

    .line 2170
    new-instance v8, Lcom/lostpixels/fieldservice/internal/ministry/Visit;

    invoke-direct {v8, v0}, Lcom/lostpixels/fieldservice/internal/ministry/Visit;-><init>(Lcom/lostpixels/fieldservice/internal/ministry/Address;)V

    .line 2171
    invoke-virtual {v8, v7}, Lcom/lostpixels/fieldservice/internal/ministry/Visit;->setName(Ljava/lang/String;)V

    .line 2172
    invoke-virtual {v8, v2}, Lcom/lostpixels/fieldservice/internal/ministry/Visit;->setFloor(I)V

    .line 2173
    invoke-virtual {p1, v8}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_2
    add-int/lit8 v1, v1, 0x1

    goto :goto_2

    .line 2177
    :cond_3
    invoke-virtual {v0, p1}, Lcom/lostpixels/fieldservice/internal/ministry/Address;->setVisits(Ljava/util/List;)V

    .line 2179
    invoke-virtual {v3, v0}, Lcom/lostpixels/fieldservice/internal/ministry/Street;->addAddress(Lcom/lostpixels/fieldservice/internal/ministry/Address;)V

    .line 2180
    iget-object p1, p0, Lcom/lostpixels/fieldservice/activities/territory/TerritoryList$18;->this$0:Lcom/lostpixels/fieldservice/activities/territory/TerritoryList;

    invoke-static {p1}, Lcom/lostpixels/fieldservice/activities/territory/TerritoryList;->-$$Nest$fgetmTerritory(Lcom/lostpixels/fieldservice/activities/territory/TerritoryList;)Lcom/lostpixels/fieldservice/internal/ministry/Territory;

    move-result-object p1

    iget-object v0, p0, Lcom/lostpixels/fieldservice/activities/territory/TerritoryList$18;->this$0:Lcom/lostpixels/fieldservice/activities/territory/TerritoryList;

    invoke-static {v0}, Lcom/lostpixels/fieldservice/activities/territory/TerritoryList;->access$1900(Lcom/lostpixels/fieldservice/activities/territory/TerritoryList;)Lio/realm/Realm;

    move-result-object v0

    invoke-virtual {p1, v0, v3, v4}, Lcom/lostpixels/fieldservice/internal/ministry/Territory;->addStreet(Lio/realm/Realm;Lcom/lostpixels/fieldservice/internal/ministry/Street;I)Lcom/lostpixels/fieldservice/internal/ministry/Street;

    .line 2182
    :try_start_1
    iget-object p1, p0, Lcom/lostpixels/fieldservice/activities/territory/TerritoryList$18;->val$dialog:Landroid/app/Dialog;

    invoke-virtual {p1}, Landroid/app/Dialog;->dismiss()V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    .line 2187
    :catch_1
    iget-object p1, p0, Lcom/lostpixels/fieldservice/activities/territory/TerritoryList$18;->this$0:Lcom/lostpixels/fieldservice/activities/territory/TerritoryList;

    invoke-virtual {p1}, Lcom/lostpixels/fieldservice/activities/territory/TerritoryList;->saveFile()V

    .line 2188
    iget-object p1, p0, Lcom/lostpixels/fieldservice/activities/territory/TerritoryList$18;->this$0:Lcom/lostpixels/fieldservice/activities/territory/TerritoryList;

    invoke-static {p1}, Lcom/lostpixels/fieldservice/activities/territory/TerritoryList;->-$$Nest$fgetmListFragment(Lcom/lostpixels/fieldservice/activities/territory/TerritoryList;)Lcom/lostpixels/fieldservice/activities/territory/TerritoryListFragment;

    move-result-object p1

    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    invoke-virtual {p1, v4}, Lcom/lostpixels/fieldservice/activities/territory/TerritoryListFragment;->update(Z)V

    .line 2189
    iget-object p1, p0, Lcom/lostpixels/fieldservice/activities/territory/TerritoryList$18;->this$0:Lcom/lostpixels/fieldservice/activities/territory/TerritoryList;

    invoke-static {p1}, Lcom/lostpixels/fieldservice/activities/territory/TerritoryList;->-$$Nest$mupdateStatistics(Lcom/lostpixels/fieldservice/activities/territory/TerritoryList;)V

    return-void
.end method
