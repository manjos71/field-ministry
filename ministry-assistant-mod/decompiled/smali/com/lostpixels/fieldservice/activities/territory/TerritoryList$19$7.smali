.class Lcom/lostpixels/fieldservice/activities/territory/TerritoryList$19$7;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/lostpixels/fieldservice/dialogs/SetTimeDialog$SetTimeDialogListener;


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

    .line 2812
    iput-object p1, p0, Lcom/lostpixels/fieldservice/activities/territory/TerritoryList$19$7;->this$1:Lcom/lostpixels/fieldservice/activities/territory/TerritoryList$19;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onFinishSetTimeDialog(Ljava/util/Date;)V
    .locals 1

    .line 2816
    iget-object v0, p0, Lcom/lostpixels/fieldservice/activities/territory/TerritoryList$19$7;->this$1:Lcom/lostpixels/fieldservice/activities/territory/TerritoryList$19;

    iget-object v0, v0, Lcom/lostpixels/fieldservice/activities/territory/TerritoryList$19;->val$visit:Lcom/lostpixels/fieldservice/internal/ministry/Visit;

    invoke-virtual {v0, p1}, Lcom/lostpixels/fieldservice/internal/ministry/Visit;->setDate(Ljava/util/Date;)V

    .line 2817
    iget-object v0, p0, Lcom/lostpixels/fieldservice/activities/territory/TerritoryList$19$7;->this$1:Lcom/lostpixels/fieldservice/activities/territory/TerritoryList$19;

    iget-object v0, v0, Lcom/lostpixels/fieldservice/activities/territory/TerritoryList$19;->val$visit:Lcom/lostpixels/fieldservice/internal/ministry/Visit;

    invoke-virtual {v0, p1}, Lcom/lostpixels/fieldservice/internal/ministry/Visit;->updateVisitHistory(Ljava/util/Date;)V

    .line 2818
    iget-object p1, p0, Lcom/lostpixels/fieldservice/activities/territory/TerritoryList$19$7;->this$1:Lcom/lostpixels/fieldservice/activities/territory/TerritoryList$19;

    iget-object p1, p1, Lcom/lostpixels/fieldservice/activities/territory/TerritoryList$19;->this$0:Lcom/lostpixels/fieldservice/activities/territory/TerritoryList;

    invoke-static {p1}, Lcom/lostpixels/fieldservice/activities/territory/TerritoryList;->-$$Nest$fgetmListFragment(Lcom/lostpixels/fieldservice/activities/territory/TerritoryList;)Lcom/lostpixels/fieldservice/activities/territory/TerritoryListFragment;

    move-result-object p1

    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Lcom/lostpixels/fieldservice/activities/territory/TerritoryListFragment;->update(Z)V

    .line 2819
    iget-object p1, p0, Lcom/lostpixels/fieldservice/activities/territory/TerritoryList$19$7;->this$1:Lcom/lostpixels/fieldservice/activities/territory/TerritoryList$19;

    iget-object p1, p1, Lcom/lostpixels/fieldservice/activities/territory/TerritoryList$19;->this$0:Lcom/lostpixels/fieldservice/activities/territory/TerritoryList;

    invoke-virtual {p1}, Lcom/lostpixels/fieldservice/activities/territory/TerritoryList;->isMapView()Z

    move-result p1

    if-eqz p1, :cond_0

    iget-object p1, p0, Lcom/lostpixels/fieldservice/activities/territory/TerritoryList$19$7;->this$1:Lcom/lostpixels/fieldservice/activities/territory/TerritoryList$19;

    iget-object p1, p1, Lcom/lostpixels/fieldservice/activities/territory/TerritoryList$19;->this$0:Lcom/lostpixels/fieldservice/activities/territory/TerritoryList;

    invoke-static {p1}, Lcom/lostpixels/fieldservice/activities/territory/TerritoryList;->-$$Nest$fgetmMapFragment(Lcom/lostpixels/fieldservice/activities/territory/TerritoryList;)Lcom/lostpixels/fieldservice/activities/territory/TerritoryListMapFragment;

    move-result-object p1

    if-eqz p1, :cond_0

    .line 2820
    iget-object p1, p0, Lcom/lostpixels/fieldservice/activities/territory/TerritoryList$19$7;->this$1:Lcom/lostpixels/fieldservice/activities/territory/TerritoryList$19;

    iget-object p1, p1, Lcom/lostpixels/fieldservice/activities/territory/TerritoryList$19;->this$0:Lcom/lostpixels/fieldservice/activities/territory/TerritoryList;

    invoke-static {p1}, Lcom/lostpixels/fieldservice/activities/territory/TerritoryList;->-$$Nest$fgetmMapFragment(Lcom/lostpixels/fieldservice/activities/territory/TerritoryList;)Lcom/lostpixels/fieldservice/activities/territory/TerritoryListMapFragment;

    move-result-object p1

    invoke-virtual {p1}, Lcom/lostpixels/fieldservice/activities/territory/TerritoryListMapFragment;->updateInfoWindow()V

    .line 2821
    :cond_0
    iget-object p1, p0, Lcom/lostpixels/fieldservice/activities/territory/TerritoryList$19$7;->this$1:Lcom/lostpixels/fieldservice/activities/territory/TerritoryList$19;

    iget-object p1, p1, Lcom/lostpixels/fieldservice/activities/territory/TerritoryList$19;->this$0:Lcom/lostpixels/fieldservice/activities/territory/TerritoryList;

    invoke-virtual {p1}, Lcom/lostpixels/fieldservice/activities/territory/TerritoryList;->saveFile()V

    return-void
.end method
