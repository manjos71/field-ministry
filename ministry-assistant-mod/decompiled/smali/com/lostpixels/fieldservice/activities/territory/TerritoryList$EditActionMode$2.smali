.class Lcom/lostpixels/fieldservice/activities/territory/TerritoryList$EditActionMode$2;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/lostpixels/fieldservice/activities/territory/TerritoryList$EditActionMode;->onDestroyActionMode(Landroidx/appcompat/view/ActionMode;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/lostpixels/fieldservice/activities/territory/TerritoryList$EditActionMode;


# direct methods
.method constructor <init>(Lcom/lostpixels/fieldservice/activities/territory/TerritoryList$EditActionMode;)V
    .locals 0

    .line 4307
    iput-object p1, p0, Lcom/lostpixels/fieldservice/activities/territory/TerritoryList$EditActionMode$2;->this$1:Lcom/lostpixels/fieldservice/activities/territory/TerritoryList$EditActionMode;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 2

    .line 4310
    invoke-interface {p1}, Landroid/content/DialogInterface;->dismiss()V

    .line 4312
    iget-object p1, p0, Lcom/lostpixels/fieldservice/activities/territory/TerritoryList$EditActionMode$2;->this$1:Lcom/lostpixels/fieldservice/activities/territory/TerritoryList$EditActionMode;

    iget-object p1, p1, Lcom/lostpixels/fieldservice/activities/territory/TerritoryList$EditActionMode;->this$0:Lcom/lostpixels/fieldservice/activities/territory/TerritoryList;

    invoke-static {p1}, Lcom/lostpixels/fieldservice/activities/territory/TerritoryList;->access$4500(Lcom/lostpixels/fieldservice/activities/territory/TerritoryList;)Lio/realm/Realm;

    move-result-object p1

    new-instance p2, Lcom/lostpixels/fieldservice/activities/territory/TerritoryList$EditActionMode$2$1;

    invoke-direct {p2, p0}, Lcom/lostpixels/fieldservice/activities/territory/TerritoryList$EditActionMode$2$1;-><init>(Lcom/lostpixels/fieldservice/activities/territory/TerritoryList$EditActionMode$2;)V

    invoke-virtual {p1, p2}, Lio/realm/Realm;->executeTransaction(Lio/realm/Realm$Transaction;)V

    .line 4318
    iget-object p1, p0, Lcom/lostpixels/fieldservice/activities/territory/TerritoryList$EditActionMode$2;->this$1:Lcom/lostpixels/fieldservice/activities/territory/TerritoryList$EditActionMode;

    iget-object p1, p1, Lcom/lostpixels/fieldservice/activities/territory/TerritoryList$EditActionMode;->this$0:Lcom/lostpixels/fieldservice/activities/territory/TerritoryList;

    invoke-static {p1}, Lcom/lostpixels/fieldservice/activities/territory/TerritoryList;->access$4600(Lcom/lostpixels/fieldservice/activities/territory/TerritoryList;)Lio/realm/Realm;

    move-result-object p2

    invoke-static {p2}, Lcom/lostpixels/fieldservice/internal/ministry/MinistryManager;->getInstance(Lio/realm/Realm;)Lcom/lostpixels/fieldservice/internal/ministry/MinistryManager;

    move-result-object p2

    iget-object v0, p0, Lcom/lostpixels/fieldservice/activities/territory/TerritoryList$EditActionMode$2;->this$1:Lcom/lostpixels/fieldservice/activities/territory/TerritoryList$EditActionMode;

    iget-object v0, v0, Lcom/lostpixels/fieldservice/activities/territory/TerritoryList$EditActionMode;->this$0:Lcom/lostpixels/fieldservice/activities/territory/TerritoryList;

    invoke-static {v0}, Lcom/lostpixels/fieldservice/activities/territory/TerritoryList;->-$$Nest$fgetmTerritory(Lcom/lostpixels/fieldservice/activities/territory/TerritoryList;)Lcom/lostpixels/fieldservice/internal/ministry/Territory;

    move-result-object v0

    invoke-static {v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    invoke-virtual {v0}, Lcom/lostpixels/fieldservice/internal/ministry/Territory;->getId()J

    move-result-wide v0

    invoke-virtual {p2, v0, v1}, Lcom/lostpixels/fieldservice/internal/ministry/MinistryManager;->getTerritory(J)Lcom/lostpixels/fieldservice/internal/ministry/Territory;

    move-result-object p2

    invoke-static {p1, p2}, Lcom/lostpixels/fieldservice/activities/territory/TerritoryList;->-$$Nest$fputmTerritory(Lcom/lostpixels/fieldservice/activities/territory/TerritoryList;Lcom/lostpixels/fieldservice/internal/ministry/Territory;)V

    .line 4319
    iget-object p1, p0, Lcom/lostpixels/fieldservice/activities/territory/TerritoryList$EditActionMode$2;->this$1:Lcom/lostpixels/fieldservice/activities/territory/TerritoryList$EditActionMode;

    invoke-static {p1}, Lcom/lostpixels/fieldservice/activities/territory/TerritoryList$EditActionMode;->-$$Nest$msaveTerritory(Lcom/lostpixels/fieldservice/activities/territory/TerritoryList$EditActionMode;)V

    return-void
.end method
