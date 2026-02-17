.class Lcom/lostpixels/fieldservice/activities/visits/ReturnVisitsListFragment$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/lostpixels/fieldservice/activities/visits/ReturnVisitsListFragment;->onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/lostpixels/fieldservice/activities/visits/ReturnVisitsListFragment;


# direct methods
.method constructor <init>(Lcom/lostpixels/fieldservice/activities/visits/ReturnVisitsListFragment;)V
    .locals 0

    .line 83
    iput-object p1, p0, Lcom/lostpixels/fieldservice/activities/visits/ReturnVisitsListFragment$1;->this$0:Lcom/lostpixels/fieldservice/activities/visits/ReturnVisitsListFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 0

    .line 86
    iget-object p1, p0, Lcom/lostpixels/fieldservice/activities/visits/ReturnVisitsListFragment$1;->this$0:Lcom/lostpixels/fieldservice/activities/visits/ReturnVisitsListFragment;

    invoke-static {p1}, Lcom/lostpixels/fieldservice/activities/visits/ReturnVisitsListFragment;->-$$Nest$fgetlistener(Lcom/lostpixels/fieldservice/activities/visits/ReturnVisitsListFragment;)Lcom/lostpixels/fieldservice/activities/visits/ReturnVisitsListFragment$OnListFragmentListener;

    move-result-object p1

    if-eqz p1, :cond_0

    .line 87
    iget-object p1, p0, Lcom/lostpixels/fieldservice/activities/visits/ReturnVisitsListFragment$1;->this$0:Lcom/lostpixels/fieldservice/activities/visits/ReturnVisitsListFragment;

    invoke-static {p1}, Lcom/lostpixels/fieldservice/activities/visits/ReturnVisitsListFragment;->-$$Nest$fgetlistener(Lcom/lostpixels/fieldservice/activities/visits/ReturnVisitsListFragment;)Lcom/lostpixels/fieldservice/activities/visits/ReturnVisitsListFragment$OnListFragmentListener;

    move-result-object p1

    invoke-interface {p1}, Lcom/lostpixels/fieldservice/activities/visits/ReturnVisitsListFragment$OnListFragmentListener;->onAddReturnVisit()V

    :cond_0
    return-void
.end method
