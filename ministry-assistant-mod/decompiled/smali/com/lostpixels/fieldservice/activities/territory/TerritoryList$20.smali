.class Lcom/lostpixels/fieldservice/activities/territory/TerritoryList$20;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/lostpixels/fieldservice/activities/territory/TerritoryList;->addComment(Lcom/lostpixels/fieldservice/internal/ministry/Visit;Ljava/lang/String;Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/lostpixels/fieldservice/activities/territory/TerritoryList;

.field final synthetic val$dialog2:Landroid/app/Dialog;

.field final synthetic val$text2:Landroid/widget/EditText;

.field final synthetic val$undoString:Ljava/lang/String;

.field final synthetic val$visit:Lcom/lostpixels/fieldservice/internal/ministry/Visit;


# direct methods
.method constructor <init>(Lcom/lostpixels/fieldservice/activities/territory/TerritoryList;Lcom/lostpixels/fieldservice/internal/ministry/Visit;Landroid/widget/EditText;Landroid/app/Dialog;Ljava/lang/String;)V
    .locals 0

    .line 2864
    iput-object p1, p0, Lcom/lostpixels/fieldservice/activities/territory/TerritoryList$20;->this$0:Lcom/lostpixels/fieldservice/activities/territory/TerritoryList;

    iput-object p2, p0, Lcom/lostpixels/fieldservice/activities/territory/TerritoryList$20;->val$visit:Lcom/lostpixels/fieldservice/internal/ministry/Visit;

    iput-object p3, p0, Lcom/lostpixels/fieldservice/activities/territory/TerritoryList$20;->val$text2:Landroid/widget/EditText;

    iput-object p4, p0, Lcom/lostpixels/fieldservice/activities/territory/TerritoryList$20;->val$dialog2:Landroid/app/Dialog;

    iput-object p5, p0, Lcom/lostpixels/fieldservice/activities/territory/TerritoryList$20;->val$undoString:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 4

    .line 2867
    iget-object p1, p0, Lcom/lostpixels/fieldservice/activities/territory/TerritoryList$20;->val$visit:Lcom/lostpixels/fieldservice/internal/ministry/Visit;

    iget-object v0, p0, Lcom/lostpixels/fieldservice/activities/territory/TerritoryList$20;->val$text2:Landroid/widget/EditText;

    invoke-virtual {v0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/lostpixels/fieldservice/internal/ministry/Visit;->setVisitComment(Ljava/lang/String;)V

    .line 2868
    iget-object p1, p0, Lcom/lostpixels/fieldservice/activities/territory/TerritoryList$20;->this$0:Lcom/lostpixels/fieldservice/activities/territory/TerritoryList;

    invoke-virtual {p1}, Lcom/lostpixels/fieldservice/activities/territory/TerritoryList;->isMapView()Z

    move-result p1

    if-eqz p1, :cond_0

    iget-object p1, p0, Lcom/lostpixels/fieldservice/activities/territory/TerritoryList$20;->this$0:Lcom/lostpixels/fieldservice/activities/territory/TerritoryList;

    invoke-static {p1}, Lcom/lostpixels/fieldservice/activities/territory/TerritoryList;->-$$Nest$fgetmMapFragment(Lcom/lostpixels/fieldservice/activities/territory/TerritoryList;)Lcom/lostpixels/fieldservice/activities/territory/TerritoryListMapFragment;

    move-result-object p1

    if-eqz p1, :cond_0

    .line 2869
    iget-object p1, p0, Lcom/lostpixels/fieldservice/activities/territory/TerritoryList$20;->this$0:Lcom/lostpixels/fieldservice/activities/territory/TerritoryList;

    invoke-static {p1}, Lcom/lostpixels/fieldservice/activities/territory/TerritoryList;->-$$Nest$fgetmMapFragment(Lcom/lostpixels/fieldservice/activities/territory/TerritoryList;)Lcom/lostpixels/fieldservice/activities/territory/TerritoryListMapFragment;

    move-result-object p1

    invoke-virtual {p1}, Lcom/lostpixels/fieldservice/activities/territory/TerritoryListMapFragment;->updateInfoWindow()V

    .line 2872
    :cond_0
    :try_start_0
    iget-object p1, p0, Lcom/lostpixels/fieldservice/activities/territory/TerritoryList$20;->val$dialog2:Landroid/app/Dialog;

    invoke-virtual {p1}, Landroid/app/Dialog;->dismiss()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    nop

    .line 2876
    :goto_0
    iget-object p1, p0, Lcom/lostpixels/fieldservice/activities/territory/TerritoryList$20;->this$0:Lcom/lostpixels/fieldservice/activities/territory/TerritoryList;

    invoke-static {p1}, Lcom/lostpixels/fieldservice/activities/territory/TerritoryList;->-$$Nest$fgetmListFragment(Lcom/lostpixels/fieldservice/activities/territory/TerritoryList;)Lcom/lostpixels/fieldservice/activities/territory/TerritoryListFragment;

    move-result-object p1

    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Lcom/lostpixels/fieldservice/activities/territory/TerritoryListFragment;->update(Z)V

    .line 2877
    iget-object p1, p0, Lcom/lostpixels/fieldservice/activities/territory/TerritoryList$20;->val$undoString:Ljava/lang/String;

    if-eqz p1, :cond_1

    .line 2878
    iget-object v1, p0, Lcom/lostpixels/fieldservice/activities/territory/TerritoryList$20;->this$0:Lcom/lostpixels/fieldservice/activities/territory/TerritoryList;

    iget-object v2, p0, Lcom/lostpixels/fieldservice/activities/territory/TerritoryList$20;->val$visit:Lcom/lostpixels/fieldservice/internal/ministry/Visit;

    const/4 v3, 0x1

    invoke-static {v1, v2, p1, v3, v0}, Lcom/lostpixels/fieldservice/activities/territory/TerritoryList;->-$$Nest$mshowUndo(Lcom/lostpixels/fieldservice/activities/territory/TerritoryList;Lcom/lostpixels/fieldservice/internal/ministry/Visit;Ljava/lang/String;ZZ)V

    .line 2881
    :cond_1
    iget-object p1, p0, Lcom/lostpixels/fieldservice/activities/territory/TerritoryList$20;->this$0:Lcom/lostpixels/fieldservice/activities/territory/TerritoryList;

    invoke-virtual {p1}, Lcom/lostpixels/fieldservice/activities/territory/TerritoryList;->saveFile()V

    return-void
.end method
