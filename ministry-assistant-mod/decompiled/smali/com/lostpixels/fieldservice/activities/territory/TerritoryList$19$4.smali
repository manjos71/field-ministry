.class Lcom/lostpixels/fieldservice/activities/territory/TerritoryList$19$4;
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

.field final synthetic val$dialog3:Landroid/app/Dialog;

.field final synthetic val$text3:Landroid/widget/EditText;

.field final synthetic val$text4:Landroid/widget/EditText;


# direct methods
.method constructor <init>(Lcom/lostpixels/fieldservice/activities/territory/TerritoryList$19;Landroid/widget/EditText;Landroid/widget/EditText;Landroid/app/Dialog;)V
    .locals 0

    .line 2691
    iput-object p1, p0, Lcom/lostpixels/fieldservice/activities/territory/TerritoryList$19$4;->this$1:Lcom/lostpixels/fieldservice/activities/territory/TerritoryList$19;

    iput-object p2, p0, Lcom/lostpixels/fieldservice/activities/territory/TerritoryList$19$4;->val$text3:Landroid/widget/EditText;

    iput-object p3, p0, Lcom/lostpixels/fieldservice/activities/territory/TerritoryList$19$4;->val$text4:Landroid/widget/EditText;

    iput-object p4, p0, Lcom/lostpixels/fieldservice/activities/territory/TerritoryList$19$4;->val$dialog3:Landroid/app/Dialog;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 1

    .line 2694
    iget-object p1, p0, Lcom/lostpixels/fieldservice/activities/territory/TerritoryList$19$4;->this$1:Lcom/lostpixels/fieldservice/activities/territory/TerritoryList$19;

    iget-object p1, p1, Lcom/lostpixels/fieldservice/activities/territory/TerritoryList$19;->val$visit:Lcom/lostpixels/fieldservice/internal/ministry/Visit;

    iget-object v0, p0, Lcom/lostpixels/fieldservice/activities/territory/TerritoryList$19$4;->val$text3:Landroid/widget/EditText;

    invoke-virtual {v0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/lostpixels/fieldservice/internal/ministry/Visit;->setPhoneNumber(Ljava/lang/String;)V

    .line 2695
    iget-object p1, p0, Lcom/lostpixels/fieldservice/activities/territory/TerritoryList$19$4;->this$1:Lcom/lostpixels/fieldservice/activities/territory/TerritoryList$19;

    iget-object p1, p1, Lcom/lostpixels/fieldservice/activities/territory/TerritoryList$19;->val$visit:Lcom/lostpixels/fieldservice/internal/ministry/Visit;

    iget-object v0, p0, Lcom/lostpixels/fieldservice/activities/territory/TerritoryList$19$4;->val$text4:Landroid/widget/EditText;

    invoke-virtual {v0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/lostpixels/fieldservice/internal/ministry/Visit;->setCellNumber(Ljava/lang/String;)V

    .line 2696
    iget-object p1, p0, Lcom/lostpixels/fieldservice/activities/territory/TerritoryList$19$4;->this$1:Lcom/lostpixels/fieldservice/activities/territory/TerritoryList$19;

    iget-object p1, p1, Lcom/lostpixels/fieldservice/activities/territory/TerritoryList$19;->this$0:Lcom/lostpixels/fieldservice/activities/territory/TerritoryList;

    invoke-virtual {p1}, Lcom/lostpixels/fieldservice/activities/territory/TerritoryList;->isMapView()Z

    move-result p1

    if-eqz p1, :cond_0

    iget-object p1, p0, Lcom/lostpixels/fieldservice/activities/territory/TerritoryList$19$4;->this$1:Lcom/lostpixels/fieldservice/activities/territory/TerritoryList$19;

    iget-object p1, p1, Lcom/lostpixels/fieldservice/activities/territory/TerritoryList$19;->this$0:Lcom/lostpixels/fieldservice/activities/territory/TerritoryList;

    invoke-static {p1}, Lcom/lostpixels/fieldservice/activities/territory/TerritoryList;->-$$Nest$fgetmMapFragment(Lcom/lostpixels/fieldservice/activities/territory/TerritoryList;)Lcom/lostpixels/fieldservice/activities/territory/TerritoryListMapFragment;

    move-result-object p1

    if-eqz p1, :cond_0

    .line 2697
    iget-object p1, p0, Lcom/lostpixels/fieldservice/activities/territory/TerritoryList$19$4;->this$1:Lcom/lostpixels/fieldservice/activities/territory/TerritoryList$19;

    iget-object p1, p1, Lcom/lostpixels/fieldservice/activities/territory/TerritoryList$19;->this$0:Lcom/lostpixels/fieldservice/activities/territory/TerritoryList;

    invoke-static {p1}, Lcom/lostpixels/fieldservice/activities/territory/TerritoryList;->-$$Nest$fgetmMapFragment(Lcom/lostpixels/fieldservice/activities/territory/TerritoryList;)Lcom/lostpixels/fieldservice/activities/territory/TerritoryListMapFragment;

    move-result-object p1

    invoke-virtual {p1}, Lcom/lostpixels/fieldservice/activities/territory/TerritoryListMapFragment;->updateInfoWindow()V

    .line 2700
    :cond_0
    :try_start_0
    iget-object p1, p0, Lcom/lostpixels/fieldservice/activities/territory/TerritoryList$19$4;->val$dialog3:Landroid/app/Dialog;

    invoke-virtual {p1}, Landroid/app/Dialog;->dismiss()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 2704
    :catch_0
    iget-object p1, p0, Lcom/lostpixels/fieldservice/activities/territory/TerritoryList$19$4;->this$1:Lcom/lostpixels/fieldservice/activities/territory/TerritoryList$19;

    iget-object p1, p1, Lcom/lostpixels/fieldservice/activities/territory/TerritoryList$19;->this$0:Lcom/lostpixels/fieldservice/activities/territory/TerritoryList;

    invoke-static {p1}, Lcom/lostpixels/fieldservice/activities/territory/TerritoryList;->-$$Nest$fgetmListFragment(Lcom/lostpixels/fieldservice/activities/territory/TerritoryList;)Lcom/lostpixels/fieldservice/activities/territory/TerritoryListFragment;

    move-result-object p1

    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Lcom/lostpixels/fieldservice/activities/territory/TerritoryListFragment;->update(Z)V

    .line 2705
    iget-object p1, p0, Lcom/lostpixels/fieldservice/activities/territory/TerritoryList$19$4;->this$1:Lcom/lostpixels/fieldservice/activities/territory/TerritoryList$19;

    iget-object p1, p1, Lcom/lostpixels/fieldservice/activities/territory/TerritoryList$19;->this$0:Lcom/lostpixels/fieldservice/activities/territory/TerritoryList;

    invoke-virtual {p1}, Lcom/lostpixels/fieldservice/activities/territory/TerritoryList;->saveFile()V

    return-void
.end method
