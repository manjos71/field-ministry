.class Lcom/lostpixels/fieldservice/activities/visits/ReturnVisitsTab$8;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/lostpixels/fieldservice/activities/visits/ReturnVisitsTab;->onCreate(Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/lostpixels/fieldservice/activities/visits/ReturnVisitsTab;

.field final synthetic val$buttonLayout:Landroid/view/View;


# direct methods
.method constructor <init>(Lcom/lostpixels/fieldservice/activities/visits/ReturnVisitsTab;Landroid/view/View;)V
    .locals 0

    .line 404
    iput-object p1, p0, Lcom/lostpixels/fieldservice/activities/visits/ReturnVisitsTab$8;->this$0:Lcom/lostpixels/fieldservice/activities/visits/ReturnVisitsTab;

    iput-object p2, p0, Lcom/lostpixels/fieldservice/activities/visits/ReturnVisitsTab$8;->val$buttonLayout:Landroid/view/View;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onGlobalLayout()V
    .locals 2

    .line 410
    iget-object v0, p0, Lcom/lostpixels/fieldservice/activities/visits/ReturnVisitsTab$8;->this$0:Lcom/lostpixels/fieldservice/activities/visits/ReturnVisitsTab;

    iget-object v1, p0, Lcom/lostpixels/fieldservice/activities/visits/ReturnVisitsTab$8;->val$buttonLayout:Landroid/view/View;

    .line 411
    invoke-virtual {v1}, Landroid/view/View;->getHeight()I

    move-result v1

    invoke-static {v0, v1}, Lcom/lostpixels/fieldservice/activities/visits/ReturnVisitsTab;->-$$Nest$fputtagButtonHeight(Lcom/lostpixels/fieldservice/activities/visits/ReturnVisitsTab;I)V

    .line 412
    iget-object v0, p0, Lcom/lostpixels/fieldservice/activities/visits/ReturnVisitsTab$8;->this$0:Lcom/lostpixels/fieldservice/activities/visits/ReturnVisitsTab;

    invoke-static {v0}, Lcom/lostpixels/fieldservice/activities/visits/ReturnVisitsTab;->-$$Nest$fgetmMapOuterFragment(Lcom/lostpixels/fieldservice/activities/visits/ReturnVisitsTab;)Lcom/lostpixels/fieldservice/activities/visits/MapOuterReturnVisitFragment;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 413
    iget-object v0, p0, Lcom/lostpixels/fieldservice/activities/visits/ReturnVisitsTab$8;->this$0:Lcom/lostpixels/fieldservice/activities/visits/ReturnVisitsTab;

    invoke-static {v0}, Lcom/lostpixels/fieldservice/activities/visits/ReturnVisitsTab;->-$$Nest$fgetmMapOuterFragment(Lcom/lostpixels/fieldservice/activities/visits/ReturnVisitsTab;)Lcom/lostpixels/fieldservice/activities/visits/MapOuterReturnVisitFragment;

    move-result-object v1

    invoke-virtual {v1}, Lcom/lostpixels/fieldservice/activities/visits/MapOuterReturnVisitFragment;->getFragment()Lcom/lostpixels/fieldservice/activities/visits/ReturnVisitsMapFragment;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/lostpixels/fieldservice/activities/visits/ReturnVisitsTab;->-$$Nest$fputmMapFragment(Lcom/lostpixels/fieldservice/activities/visits/ReturnVisitsTab;Lcom/lostpixels/fieldservice/activities/visits/ReturnVisitsMapFragment;)V

    .line 414
    iget-object v0, p0, Lcom/lostpixels/fieldservice/activities/visits/ReturnVisitsTab$8;->this$0:Lcom/lostpixels/fieldservice/activities/visits/ReturnVisitsTab;

    invoke-static {v0}, Lcom/lostpixels/fieldservice/activities/visits/ReturnVisitsTab;->-$$Nest$fgetmMapFragment(Lcom/lostpixels/fieldservice/activities/visits/ReturnVisitsTab;)Lcom/lostpixels/fieldservice/activities/visits/ReturnVisitsMapFragment;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 415
    iget-object v0, p0, Lcom/lostpixels/fieldservice/activities/visits/ReturnVisitsTab$8;->this$0:Lcom/lostpixels/fieldservice/activities/visits/ReturnVisitsTab;

    invoke-static {v0}, Lcom/lostpixels/fieldservice/activities/visits/ReturnVisitsTab;->-$$Nest$fgetmMapFragment(Lcom/lostpixels/fieldservice/activities/visits/ReturnVisitsTab;)Lcom/lostpixels/fieldservice/activities/visits/ReturnVisitsMapFragment;

    move-result-object v0

    iget-object v1, p0, Lcom/lostpixels/fieldservice/activities/visits/ReturnVisitsTab$8;->this$0:Lcom/lostpixels/fieldservice/activities/visits/ReturnVisitsTab;

    invoke-static {v1}, Lcom/lostpixels/fieldservice/activities/visits/ReturnVisitsTab;->-$$Nest$fgettagButtonHeight(Lcom/lostpixels/fieldservice/activities/visits/ReturnVisitsTab;)I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/lostpixels/fieldservice/activities/visits/ReturnVisitsMapFragment;->setOffsetY(I)V

    .line 417
    :cond_0
    iget-object v0, p0, Lcom/lostpixels/fieldservice/activities/visits/ReturnVisitsTab$8;->val$buttonLayout:Landroid/view/View;

    .line 418
    invoke-virtual {v0}, Landroid/view/View;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    move-result-object v0

    .line 419
    invoke-virtual {v0, p0}, Landroid/view/ViewTreeObserver;->removeGlobalOnLayoutListener(Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;)V

    return-void
.end method
