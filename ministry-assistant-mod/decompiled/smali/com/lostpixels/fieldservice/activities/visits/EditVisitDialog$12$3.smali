.class Lcom/lostpixels/fieldservice/activities/visits/EditVisitDialog$12$3;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/widget/AdapterView$OnItemLongClickListener;


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

    .line 575
    iput-object p1, p0, Lcom/lostpixels/fieldservice/activities/visits/EditVisitDialog$12$3;->this$1:Lcom/lostpixels/fieldservice/activities/visits/EditVisitDialog$12;

    iput-object p2, p0, Lcom/lostpixels/fieldservice/activities/visits/EditVisitDialog$12$3;->val$lstScriptures:Lcom/mobeta/android/dslv/DragSortListView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onItemLongClick(Landroid/widget/AdapterView;Landroid/view/View;IJ)Z
    .locals 0

    .line 577
    iget-object p1, p0, Lcom/lostpixels/fieldservice/activities/visits/EditVisitDialog$12$3;->this$1:Lcom/lostpixels/fieldservice/activities/visits/EditVisitDialog$12;

    iget-object p1, p1, Lcom/lostpixels/fieldservice/activities/visits/EditVisitDialog$12;->this$0:Lcom/lostpixels/fieldservice/activities/visits/EditVisitDialog;

    const p2, 0x7f120151

    invoke-virtual {p1, p2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p1

    filled-new-array {p1}, [Ljava/lang/String;

    move-result-object p1

    .line 579
    new-instance p4, Landroidx/appcompat/app/AlertDialog$Builder;

    iget-object p5, p0, Lcom/lostpixels/fieldservice/activities/visits/EditVisitDialog$12$3;->this$1:Lcom/lostpixels/fieldservice/activities/visits/EditVisitDialog$12;

    iget-object p5, p5, Lcom/lostpixels/fieldservice/activities/visits/EditVisitDialog$12;->this$0:Lcom/lostpixels/fieldservice/activities/visits/EditVisitDialog;

    invoke-direct {p4, p5}, Landroidx/appcompat/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 580
    iget-object p5, p0, Lcom/lostpixels/fieldservice/activities/visits/EditVisitDialog$12$3;->this$1:Lcom/lostpixels/fieldservice/activities/visits/EditVisitDialog$12;

    iget-object p5, p5, Lcom/lostpixels/fieldservice/activities/visits/EditVisitDialog$12;->this$0:Lcom/lostpixels/fieldservice/activities/visits/EditVisitDialog;

    invoke-virtual {p5, p2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p4, p2}, Landroidx/appcompat/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Landroidx/appcompat/app/AlertDialog$Builder;

    .line 581
    new-instance p2, Lcom/lostpixels/fieldservice/activities/visits/EditVisitDialog$12$3$1;

    invoke-direct {p2, p0, p3}, Lcom/lostpixels/fieldservice/activities/visits/EditVisitDialog$12$3$1;-><init>(Lcom/lostpixels/fieldservice/activities/visits/EditVisitDialog$12$3;I)V

    invoke-virtual {p4, p1, p2}, Landroidx/appcompat/app/AlertDialog$Builder;->setItems([Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroidx/appcompat/app/AlertDialog$Builder;

    .line 588
    invoke-virtual {p4}, Landroidx/appcompat/app/AlertDialog$Builder;->create()Landroidx/appcompat/app/AlertDialog;

    move-result-object p1

    .line 589
    invoke-virtual {p1}, Landroid/app/Dialog;->show()V

    const/4 p1, 0x1

    return p1
.end method
