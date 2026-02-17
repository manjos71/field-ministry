.class Lcom/lostpixels/fieldservice/activities/visits/ReturnVisitsListFragment$2;
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

    .line 90
    iput-object p1, p0, Lcom/lostpixels/fieldservice/activities/visits/ReturnVisitsListFragment$2;->this$0:Lcom/lostpixels/fieldservice/activities/visits/ReturnVisitsListFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 1

    .line 93
    iget-object p1, p0, Lcom/lostpixels/fieldservice/activities/visits/ReturnVisitsListFragment$2;->this$0:Lcom/lostpixels/fieldservice/activities/visits/ReturnVisitsListFragment;

    invoke-static {p1}, Lcom/lostpixels/fieldservice/activities/visits/ReturnVisitsListFragment;->-$$Nest$fgettagListener(Lcom/lostpixels/fieldservice/activities/visits/ReturnVisitsListFragment;)Lcom/lostpixels/fieldservice/activities/visits/TagFilterDialog$OnTagsSetListener;

    move-result-object p1

    const/4 v0, 0x0

    invoke-interface {p1, v0}, Lcom/lostpixels/fieldservice/activities/visits/TagFilterDialog$OnTagsSetListener;->onShowArchiveChanged(Z)V

    .line 94
    iget-object p1, p0, Lcom/lostpixels/fieldservice/activities/visits/ReturnVisitsListFragment$2;->this$0:Lcom/lostpixels/fieldservice/activities/visits/ReturnVisitsListFragment;

    invoke-static {p1}, Lcom/lostpixels/fieldservice/activities/visits/ReturnVisitsListFragment;->-$$Nest$fgettagListener(Lcom/lostpixels/fieldservice/activities/visits/ReturnVisitsListFragment;)Lcom/lostpixels/fieldservice/activities/visits/TagFilterDialog$OnTagsSetListener;

    move-result-object p1

    invoke-interface {p1}, Lcom/lostpixels/fieldservice/activities/visits/TagFilterDialog$OnTagsSetListener;->onClearAllTags()V

    return-void
.end method
