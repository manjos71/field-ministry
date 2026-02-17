.class Lcom/lostpixels/fieldservice/activities/territory/TerritoryList$14$6;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/lostpixels/fieldservice/activities/territory/TerritoryList$14;->onItemClick(Landroid/widget/AdapterView;Landroid/view/View;IJ)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/lostpixels/fieldservice/activities/territory/TerritoryList$14;


# direct methods
.method constructor <init>(Lcom/lostpixels/fieldservice/activities/territory/TerritoryList$14;)V
    .locals 0

    .line 1937
    iput-object p1, p0, Lcom/lostpixels/fieldservice/activities/territory/TerritoryList$14$6;->this$1:Lcom/lostpixels/fieldservice/activities/territory/TerritoryList$14;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 1

    .line 1939
    iget-object p1, p0, Lcom/lostpixels/fieldservice/activities/territory/TerritoryList$14$6;->this$1:Lcom/lostpixels/fieldservice/activities/territory/TerritoryList$14;

    iget-object p1, p1, Lcom/lostpixels/fieldservice/activities/territory/TerritoryList$14;->this$0:Lcom/lostpixels/fieldservice/activities/territory/TerritoryList;

    invoke-static {p1}, Lcom/lostpixels/fieldservice/activities/territory/TerritoryList;->-$$Nest$fgetmTerritory(Lcom/lostpixels/fieldservice/activities/territory/TerritoryList;)Lcom/lostpixels/fieldservice/internal/ministry/Territory;

    move-result-object p1

    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    iget-object p2, p0, Lcom/lostpixels/fieldservice/activities/territory/TerritoryList$14$6;->this$1:Lcom/lostpixels/fieldservice/activities/territory/TerritoryList$14;

    iget-object v0, p2, Lcom/lostpixels/fieldservice/activities/territory/TerritoryList$14;->this$0:Lcom/lostpixels/fieldservice/activities/territory/TerritoryList;

    iget-object p2, p2, Lcom/lostpixels/fieldservice/activities/territory/TerritoryList$14;->val$street:Lcom/lostpixels/fieldservice/internal/ministry/Street;

    invoke-virtual {p1, v0, p2}, Lcom/lostpixels/fieldservice/internal/ministry/Territory;->removeStreet(Landroid/content/Context;Lcom/lostpixels/fieldservice/internal/ministry/Street;)V

    .line 1940
    iget-object p1, p0, Lcom/lostpixels/fieldservice/activities/territory/TerritoryList$14$6;->this$1:Lcom/lostpixels/fieldservice/activities/territory/TerritoryList$14;

    iget-object p1, p1, Lcom/lostpixels/fieldservice/activities/territory/TerritoryList$14;->this$0:Lcom/lostpixels/fieldservice/activities/territory/TerritoryList;

    invoke-static {p1}, Lcom/lostpixels/fieldservice/activities/territory/TerritoryList;->-$$Nest$fgetmListFragment(Lcom/lostpixels/fieldservice/activities/territory/TerritoryList;)Lcom/lostpixels/fieldservice/activities/territory/TerritoryListFragment;

    move-result-object p1

    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    const/4 p2, 0x1

    invoke-virtual {p1, p2}, Lcom/lostpixels/fieldservice/activities/territory/TerritoryListFragment;->update(Z)V

    .line 1942
    iget-object p1, p0, Lcom/lostpixels/fieldservice/activities/territory/TerritoryList$14$6;->this$1:Lcom/lostpixels/fieldservice/activities/territory/TerritoryList$14;

    iget-object p1, p1, Lcom/lostpixels/fieldservice/activities/territory/TerritoryList$14;->this$0:Lcom/lostpixels/fieldservice/activities/territory/TerritoryList;

    invoke-static {p1}, Lcom/lostpixels/fieldservice/activities/territory/TerritoryList;->-$$Nest$mupdateStatistics(Lcom/lostpixels/fieldservice/activities/territory/TerritoryList;)V

    .line 1943
    iget-object p1, p0, Lcom/lostpixels/fieldservice/activities/territory/TerritoryList$14$6;->this$1:Lcom/lostpixels/fieldservice/activities/territory/TerritoryList$14;

    iget-object p1, p1, Lcom/lostpixels/fieldservice/activities/territory/TerritoryList$14;->this$0:Lcom/lostpixels/fieldservice/activities/territory/TerritoryList;

    invoke-virtual {p1}, Lcom/lostpixels/fieldservice/activities/territory/TerritoryList;->saveFile()V

    .line 1944
    iget-object p1, p0, Lcom/lostpixels/fieldservice/activities/territory/TerritoryList$14$6;->this$1:Lcom/lostpixels/fieldservice/activities/territory/TerritoryList$14;

    iget-object p1, p1, Lcom/lostpixels/fieldservice/activities/territory/TerritoryList$14;->this$0:Lcom/lostpixels/fieldservice/activities/territory/TerritoryList;

    invoke-virtual {p1}, Lcom/lostpixels/fieldservice/activities/territory/TerritoryList;->isEditMode()Z

    move-result p1

    if-nez p1, :cond_0

    .line 1945
    iget-object p1, p0, Lcom/lostpixels/fieldservice/activities/territory/TerritoryList$14$6;->this$1:Lcom/lostpixels/fieldservice/activities/territory/TerritoryList$14;

    iget-object p1, p1, Lcom/lostpixels/fieldservice/activities/territory/TerritoryList$14;->this$0:Lcom/lostpixels/fieldservice/activities/territory/TerritoryList;

    invoke-static {p1}, Lcom/lostpixels/fieldservice/activities/territory/TerritoryList;->access$1600(Lcom/lostpixels/fieldservice/activities/territory/TerritoryList;)Lio/realm/Realm;

    move-result-object p1

    invoke-static {p1}, Lcom/lostpixels/fieldservice/internal/ministry/MinistryManager;->getInstance(Lio/realm/Realm;)Lcom/lostpixels/fieldservice/internal/ministry/MinistryManager;

    move-result-object p1

    iget-object p2, p0, Lcom/lostpixels/fieldservice/activities/territory/TerritoryList$14$6;->this$1:Lcom/lostpixels/fieldservice/activities/territory/TerritoryList$14;

    iget-object p2, p2, Lcom/lostpixels/fieldservice/activities/territory/TerritoryList$14;->this$0:Lcom/lostpixels/fieldservice/activities/territory/TerritoryList;

    invoke-static {p2}, Lcom/lostpixels/fieldservice/activities/territory/TerritoryList;->access$1500(Lcom/lostpixels/fieldservice/activities/territory/TerritoryList;)Lio/realm/Realm;

    move-result-object p2

    invoke-virtual {p1, p2}, Lcom/lostpixels/fieldservice/internal/ministry/MinistryManager;->forceCleanUpPersons(Lio/realm/Realm;)V

    :cond_0
    return-void
.end method
