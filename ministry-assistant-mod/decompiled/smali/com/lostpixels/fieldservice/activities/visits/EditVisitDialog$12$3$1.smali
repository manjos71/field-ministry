.class Lcom/lostpixels/fieldservice/activities/visits/EditVisitDialog$12$3$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/lostpixels/fieldservice/activities/visits/EditVisitDialog$12$3;->onItemLongClick(Landroid/widget/AdapterView;Landroid/view/View;IJ)Z
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$2:Lcom/lostpixels/fieldservice/activities/visits/EditVisitDialog$12$3;

.field final synthetic val$pos:I


# direct methods
.method constructor <init>(Lcom/lostpixels/fieldservice/activities/visits/EditVisitDialog$12$3;I)V
    .locals 0

    .line 581
    iput-object p1, p0, Lcom/lostpixels/fieldservice/activities/visits/EditVisitDialog$12$3$1;->this$2:Lcom/lostpixels/fieldservice/activities/visits/EditVisitDialog$12$3;

    iput p2, p0, Lcom/lostpixels/fieldservice/activities/visits/EditVisitDialog$12$3$1;->val$pos:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 1

    .line 583
    iget-object p1, p0, Lcom/lostpixels/fieldservice/activities/visits/EditVisitDialog$12$3$1;->this$2:Lcom/lostpixels/fieldservice/activities/visits/EditVisitDialog$12$3;

    iget-object p1, p1, Lcom/lostpixels/fieldservice/activities/visits/EditVisitDialog$12$3;->this$1:Lcom/lostpixels/fieldservice/activities/visits/EditVisitDialog$12;

    iget-object p1, p1, Lcom/lostpixels/fieldservice/activities/visits/EditVisitDialog$12;->this$0:Lcom/lostpixels/fieldservice/activities/visits/EditVisitDialog;

    invoke-static {p1}, Lcom/lostpixels/fieldservice/activities/visits/EditVisitDialog;->-$$Nest$fgetmScrptureItems(Lcom/lostpixels/fieldservice/activities/visits/EditVisitDialog;)Ljava/util/List;

    move-result-object p1

    iget p2, p0, Lcom/lostpixels/fieldservice/activities/visits/EditVisitDialog$12$3$1;->val$pos:I

    invoke-interface {p1, p2}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    .line 584
    iget-object p1, p0, Lcom/lostpixels/fieldservice/activities/visits/EditVisitDialog$12$3$1;->this$2:Lcom/lostpixels/fieldservice/activities/visits/EditVisitDialog$12$3;

    iget-object p1, p1, Lcom/lostpixels/fieldservice/activities/visits/EditVisitDialog$12$3;->this$1:Lcom/lostpixels/fieldservice/activities/visits/EditVisitDialog$12;

    iget-object p1, p1, Lcom/lostpixels/fieldservice/activities/visits/EditVisitDialog$12;->this$0:Lcom/lostpixels/fieldservice/activities/visits/EditVisitDialog;

    invoke-static {p1}, Lcom/lostpixels/fieldservice/activities/visits/EditVisitDialog;->access$200(Lcom/lostpixels/fieldservice/activities/visits/EditVisitDialog;)Lio/realm/Realm;

    move-result-object p1

    invoke-static {p1}, Lcom/lostpixels/fieldservice/internal/ministry/MinistryManager;->getInstance(Lio/realm/Realm;)Lcom/lostpixels/fieldservice/internal/ministry/MinistryManager;

    move-result-object p1

    iget-object p2, p0, Lcom/lostpixels/fieldservice/activities/visits/EditVisitDialog$12$3$1;->this$2:Lcom/lostpixels/fieldservice/activities/visits/EditVisitDialog$12$3;

    iget-object p2, p2, Lcom/lostpixels/fieldservice/activities/visits/EditVisitDialog$12$3;->this$1:Lcom/lostpixels/fieldservice/activities/visits/EditVisitDialog$12;

    iget-object p2, p2, Lcom/lostpixels/fieldservice/activities/visits/EditVisitDialog$12;->this$0:Lcom/lostpixels/fieldservice/activities/visits/EditVisitDialog;

    iget v0, p0, Lcom/lostpixels/fieldservice/activities/visits/EditVisitDialog$12$3$1;->val$pos:I

    invoke-virtual {p1, p2, v0}, Lcom/lostpixels/fieldservice/internal/ministry/MinistryManager;->removeScripture(Landroid/content/Context;I)V

    .line 585
    iget-object p1, p0, Lcom/lostpixels/fieldservice/activities/visits/EditVisitDialog$12$3$1;->this$2:Lcom/lostpixels/fieldservice/activities/visits/EditVisitDialog$12$3;

    iget-object p1, p1, Lcom/lostpixels/fieldservice/activities/visits/EditVisitDialog$12$3;->val$lstScriptures:Lcom/mobeta/android/dslv/DragSortListView;

    invoke-virtual {p1}, Lcom/mobeta/android/dslv/DragSortListView;->getInputAdapter()Landroid/widget/ListAdapter;

    move-result-object p1

    check-cast p1, Landroid/widget/ArrayAdapter;

    invoke-virtual {p1}, Landroid/widget/ArrayAdapter;->notifyDataSetChanged()V

    return-void
.end method
