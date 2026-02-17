.class Lcom/lostpixels/fieldservice/activities/visits/EditVisitDialog$12$2;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/mobeta/android/dslv/DragSortListView$DropListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/lostpixels/fieldservice/activities/visits/EditVisitDialog$12;->onClick(Landroid/view/View;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/lostpixels/fieldservice/activities/visits/EditVisitDialog$12;

.field final synthetic val$scriptAdapter:Lcom/lostpixels/fieldservice/activities/visits/EditVisitDialog$ScriptureAdapter;


# direct methods
.method constructor <init>(Lcom/lostpixels/fieldservice/activities/visits/EditVisitDialog$12;Lcom/lostpixels/fieldservice/activities/visits/EditVisitDialog$ScriptureAdapter;)V
    .locals 0

    .line 556
    iput-object p1, p0, Lcom/lostpixels/fieldservice/activities/visits/EditVisitDialog$12$2;->this$1:Lcom/lostpixels/fieldservice/activities/visits/EditVisitDialog$12;

    iput-object p2, p0, Lcom/lostpixels/fieldservice/activities/visits/EditVisitDialog$12$2;->val$scriptAdapter:Lcom/lostpixels/fieldservice/activities/visits/EditVisitDialog$ScriptureAdapter;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public drop(II)V
    .locals 2

    if-eq p1, p2, :cond_0

    .line 560
    iget-object v0, p0, Lcom/lostpixels/fieldservice/activities/visits/EditVisitDialog$12$2;->this$1:Lcom/lostpixels/fieldservice/activities/visits/EditVisitDialog$12;

    iget-object v0, v0, Lcom/lostpixels/fieldservice/activities/visits/EditVisitDialog$12;->this$0:Lcom/lostpixels/fieldservice/activities/visits/EditVisitDialog;

    invoke-static {v0}, Lcom/lostpixels/fieldservice/activities/visits/EditVisitDialog;->-$$Nest$fgetmScrptureItems(Lcom/lostpixels/fieldservice/activities/visits/EditVisitDialog;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0, p1}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/lostpixels/fieldservice/internal/report/Scripture;

    .line 561
    iget-object v1, p0, Lcom/lostpixels/fieldservice/activities/visits/EditVisitDialog$12$2;->this$1:Lcom/lostpixels/fieldservice/activities/visits/EditVisitDialog$12;

    iget-object v1, v1, Lcom/lostpixels/fieldservice/activities/visits/EditVisitDialog$12;->this$0:Lcom/lostpixels/fieldservice/activities/visits/EditVisitDialog;

    invoke-static {v1}, Lcom/lostpixels/fieldservice/activities/visits/EditVisitDialog;->-$$Nest$fgetmScrptureItems(Lcom/lostpixels/fieldservice/activities/visits/EditVisitDialog;)Ljava/util/List;

    move-result-object v1

    invoke-interface {v1, p2, v0}, Ljava/util/List;->add(ILjava/lang/Object;)V

    .line 562
    iget-object v0, p0, Lcom/lostpixels/fieldservice/activities/visits/EditVisitDialog$12$2;->this$1:Lcom/lostpixels/fieldservice/activities/visits/EditVisitDialog$12;

    iget-object v0, v0, Lcom/lostpixels/fieldservice/activities/visits/EditVisitDialog$12;->this$0:Lcom/lostpixels/fieldservice/activities/visits/EditVisitDialog;

    invoke-static {v0}, Lcom/lostpixels/fieldservice/activities/visits/EditVisitDialog;->access$100(Lcom/lostpixels/fieldservice/activities/visits/EditVisitDialog;)Lio/realm/Realm;

    move-result-object v0

    invoke-static {v0}, Lcom/lostpixels/fieldservice/internal/ministry/MinistryManager;->getInstance(Lio/realm/Realm;)Lcom/lostpixels/fieldservice/internal/ministry/MinistryManager;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Lcom/lostpixels/fieldservice/internal/ministry/MinistryManager;->moveScripture(II)V

    .line 564
    iget-object p1, p0, Lcom/lostpixels/fieldservice/activities/visits/EditVisitDialog$12$2;->val$scriptAdapter:Lcom/lostpixels/fieldservice/activities/visits/EditVisitDialog$ScriptureAdapter;

    invoke-virtual {p1}, Landroid/widget/BaseAdapter;->notifyDataSetChanged()V

    :cond_0
    return-void
.end method
