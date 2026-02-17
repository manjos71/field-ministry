.class Lcom/lostpixels/fieldservice/activities/visits/EditVisitDialog$12$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnClickListener;


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

.field final synthetic val$lstScriptures:Lcom/mobeta/android/dslv/DragSortListView;


# direct methods
.method constructor <init>(Lcom/lostpixels/fieldservice/activities/visits/EditVisitDialog$12;Lcom/mobeta/android/dslv/DragSortListView;)V
    .locals 0

    .line 546
    iput-object p1, p0, Lcom/lostpixels/fieldservice/activities/visits/EditVisitDialog$12$1;->this$1:Lcom/lostpixels/fieldservice/activities/visits/EditVisitDialog$12;

    iput-object p2, p0, Lcom/lostpixels/fieldservice/activities/visits/EditVisitDialog$12$1;->val$lstScriptures:Lcom/mobeta/android/dslv/DragSortListView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 3

    .line 549
    iget-object p1, p0, Lcom/lostpixels/fieldservice/activities/visits/EditVisitDialog$12$1;->this$1:Lcom/lostpixels/fieldservice/activities/visits/EditVisitDialog$12;

    iget-object p1, p1, Lcom/lostpixels/fieldservice/activities/visits/EditVisitDialog$12;->this$0:Lcom/lostpixels/fieldservice/activities/visits/EditVisitDialog;

    iget-object v0, p0, Lcom/lostpixels/fieldservice/activities/visits/EditVisitDialog$12$1;->val$lstScriptures:Lcom/mobeta/android/dslv/DragSortListView;

    invoke-virtual {v0}, Lcom/mobeta/android/dslv/DragSortListView;->getInputAdapter()Landroid/widget/ListAdapter;

    move-result-object v0

    check-cast v0, Landroid/widget/BaseAdapter;

    const/4 v1, 0x0

    const-string v2, ""

    invoke-virtual {p1, v2, v2, v0, v1}, Lcom/lostpixels/fieldservice/activities/visits/EditVisitDialog;->showEditScrptureDlg(Ljava/lang/String;Ljava/lang/String;Landroid/widget/BaseAdapter;I)V

    return-void
.end method
