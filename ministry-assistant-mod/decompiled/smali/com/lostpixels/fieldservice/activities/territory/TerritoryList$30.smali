.class Lcom/lostpixels/fieldservice/activities/territory/TerritoryList$30;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/lostpixels/fieldservice/activities/territory/TerritoryList;->showUndo(Lcom/lostpixels/fieldservice/internal/ministry/Visit;Ljava/lang/String;ZZ)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/lostpixels/fieldservice/activities/territory/TerritoryList;

.field final synthetic val$b:Landroid/os/Bundle;

.field final synthetic val$isDelete:Z

.field final synthetic val$undoComment:Z


# direct methods
.method constructor <init>(Lcom/lostpixels/fieldservice/activities/territory/TerritoryList;Landroid/os/Bundle;ZZ)V
    .locals 0

    .line 3783
    iput-object p1, p0, Lcom/lostpixels/fieldservice/activities/territory/TerritoryList$30;->this$0:Lcom/lostpixels/fieldservice/activities/territory/TerritoryList;

    iput-object p2, p0, Lcom/lostpixels/fieldservice/activities/territory/TerritoryList$30;->val$b:Landroid/os/Bundle;

    iput-boolean p3, p0, Lcom/lostpixels/fieldservice/activities/territory/TerritoryList$30;->val$isDelete:Z

    iput-boolean p4, p0, Lcom/lostpixels/fieldservice/activities/territory/TerritoryList$30;->val$undoComment:Z

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 14

    .line 3787
    iget-object p1, p0, Lcom/lostpixels/fieldservice/activities/territory/TerritoryList$30;->val$b:Landroid/os/Bundle;

    const-string v0, "ID"

    invoke-virtual {p1, v0}, Landroid/os/BaseBundle;->getLong(Ljava/lang/String;)J

    move-result-wide v0

    .line 3788
    iget-object p1, p0, Lcom/lostpixels/fieldservice/activities/territory/TerritoryList$30;->val$b:Landroid/os/Bundle;

    const-string v2, "previousVisitType"

    invoke-virtual {p1, v2}, Landroid/os/BaseBundle;->getInt(Ljava/lang/String;)I

    move-result v5

    .line 3789
    iget-object p1, p0, Lcom/lostpixels/fieldservice/activities/territory/TerritoryList$30;->val$b:Landroid/os/Bundle;

    const-string v2, "previousInterested"

    invoke-virtual {p1, v2}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v6

    .line 3790
    iget-object p1, p0, Lcom/lostpixels/fieldservice/activities/territory/TerritoryList$30;->val$b:Landroid/os/Bundle;

    const-string v2, "previousComment"

    const/4 v3, 0x0

    invoke-virtual {p1, v2, v3}, Landroid/os/BaseBundle;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    .line 3791
    iget-object p1, p0, Lcom/lostpixels/fieldservice/activities/territory/TerritoryList$30;->val$b:Landroid/os/Bundle;

    const-string v2, "previousDate"

    invoke-virtual {p1, v2}, Landroid/os/BaseBundle;->containsKey(Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_0

    new-instance v3, Ljava/util/Date;

    iget-object p1, p0, Lcom/lostpixels/fieldservice/activities/territory/TerritoryList$30;->val$b:Landroid/os/Bundle;

    invoke-virtual {p1, v2}, Landroid/os/BaseBundle;->getLong(Ljava/lang/String;)J

    move-result-wide v8

    invoke-direct {v3, v8, v9}, Ljava/util/Date;-><init>(J)V

    :cond_0
    move-object v8, v3

    .line 3793
    iget-object p1, p0, Lcom/lostpixels/fieldservice/activities/territory/TerritoryList$30;->this$0:Lcom/lostpixels/fieldservice/activities/territory/TerritoryList;

    invoke-static {p1}, Lcom/lostpixels/fieldservice/activities/territory/TerritoryList;->-$$Nest$fgetmTerritory(Lcom/lostpixels/fieldservice/activities/territory/TerritoryList;)Lcom/lostpixels/fieldservice/internal/ministry/Territory;

    move-result-object p1

    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    invoke-virtual {p1}, Lcom/lostpixels/fieldservice/internal/ministry/Territory;->getStreets()Ljava/util/List;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    const/4 v2, 0x0

    const/4 v3, 0x0

    :cond_1
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_7

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/lostpixels/fieldservice/internal/ministry/Street;

    .line 3794
    invoke-virtual {v4}, Lcom/lostpixels/fieldservice/internal/ministry/Street;->getAddresses()Ljava/util/List;

    move-result-object v4

    invoke-interface {v4}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v9

    :cond_2
    invoke-interface {v9}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_6

    invoke-interface {v9}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/lostpixels/fieldservice/internal/ministry/Address;

    .line 3795
    invoke-virtual {v4}, Lcom/lostpixels/fieldservice/internal/ministry/Address;->getVisits()Ljava/util/List;

    move-result-object v4

    invoke-interface {v4}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :cond_3
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v10

    if-eqz v10, :cond_5

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Lcom/lostpixels/fieldservice/internal/ministry/Visit;

    .line 3796
    invoke-virtual {v10}, Lcom/lostpixels/fieldservice/internal/ministry/Visit;->getId()J

    move-result-wide v11

    cmp-long v13, v11, v0

    if-nez v13, :cond_3

    .line 3798
    iget-boolean v3, p0, Lcom/lostpixels/fieldservice/activities/territory/TerritoryList$30;->val$isDelete:Z

    if-eqz v3, :cond_4

    goto :goto_0

    .line 3801
    :cond_4
    iget-boolean v4, p0, Lcom/lostpixels/fieldservice/activities/territory/TerritoryList$30;->val$undoComment:Z

    move-object v3, v10

    invoke-virtual/range {v3 .. v8}, Lcom/lostpixels/fieldservice/internal/ministry/Visit;->undoSetType(ZIZLjava/lang/String;Ljava/util/Date;)V

    :goto_0
    const/4 v3, 0x1

    :cond_5
    if-eqz v3, :cond_2

    :cond_6
    if-eqz v3, :cond_1

    :cond_7
    if-eqz v3, :cond_8

    .line 3814
    iget-object p1, p0, Lcom/lostpixels/fieldservice/activities/territory/TerritoryList$30;->this$0:Lcom/lostpixels/fieldservice/activities/territory/TerritoryList;

    invoke-static {p1}, Lcom/lostpixels/fieldservice/activities/territory/TerritoryList;->-$$Nest$fgetmListFragment(Lcom/lostpixels/fieldservice/activities/territory/TerritoryList;)Lcom/lostpixels/fieldservice/activities/territory/TerritoryListFragment;

    move-result-object p1

    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    invoke-virtual {p1, v2}, Lcom/lostpixels/fieldservice/activities/territory/TerritoryListFragment;->update(Z)V

    .line 3815
    iget-object p1, p0, Lcom/lostpixels/fieldservice/activities/territory/TerritoryList$30;->this$0:Lcom/lostpixels/fieldservice/activities/territory/TerritoryList;

    invoke-static {p1}, Lcom/lostpixels/fieldservice/activities/territory/TerritoryList;->-$$Nest$fgetmMapFragment(Lcom/lostpixels/fieldservice/activities/territory/TerritoryList;)Lcom/lostpixels/fieldservice/activities/territory/TerritoryListMapFragment;

    move-result-object p1

    if-eqz p1, :cond_8

    .line 3816
    iget-object p1, p0, Lcom/lostpixels/fieldservice/activities/territory/TerritoryList$30;->this$0:Lcom/lostpixels/fieldservice/activities/territory/TerritoryList;

    invoke-static {p1}, Lcom/lostpixels/fieldservice/activities/territory/TerritoryList;->-$$Nest$fgetmMapFragment(Lcom/lostpixels/fieldservice/activities/territory/TerritoryList;)Lcom/lostpixels/fieldservice/activities/territory/TerritoryListMapFragment;

    move-result-object p1

    invoke-virtual {p1}, Lcom/lostpixels/fieldservice/activities/territory/TerritoryListMapFragment;->update()V

    :cond_8
    return-void
.end method
