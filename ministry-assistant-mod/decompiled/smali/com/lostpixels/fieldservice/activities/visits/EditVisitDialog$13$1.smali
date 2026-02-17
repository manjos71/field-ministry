.class Lcom/lostpixels/fieldservice/activities/visits/EditVisitDialog$13$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/widget/AdapterView$OnItemClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/lostpixels/fieldservice/activities/visits/EditVisitDialog$13;->onClick(Landroid/view/View;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/lostpixels/fieldservice/activities/visits/EditVisitDialog$13;

.field final synthetic val$alertDialog:Landroidx/appcompat/app/AlertDialog;


# direct methods
.method constructor <init>(Lcom/lostpixels/fieldservice/activities/visits/EditVisitDialog$13;Landroidx/appcompat/app/AlertDialog;)V
    .locals 0

    .line 660
    iput-object p1, p0, Lcom/lostpixels/fieldservice/activities/visits/EditVisitDialog$13$1;->this$1:Lcom/lostpixels/fieldservice/activities/visits/EditVisitDialog$13;

    iput-object p2, p0, Lcom/lostpixels/fieldservice/activities/visits/EditVisitDialog$13$1;->val$alertDialog:Landroidx/appcompat/app/AlertDialog;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onItemClick(Landroid/widget/AdapterView;Landroid/view/View;IJ)V
    .locals 0

    .line 663
    :try_start_0
    iget-object p1, p0, Lcom/lostpixels/fieldservice/activities/visits/EditVisitDialog$13$1;->val$alertDialog:Landroidx/appcompat/app/AlertDialog;

    invoke-virtual {p1}, Landroidx/appcompat/app/AppCompatDialog;->dismiss()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    nop

    :goto_0
    long-to-int p1, p4

    if-eqz p1, :cond_5

    const/4 p2, 0x1

    if-eq p1, p2, :cond_4

    const/4 p2, 0x2

    if-eq p1, p2, :cond_3

    const/4 p2, 0x3

    if-eq p1, p2, :cond_2

    const/16 p2, 0x8

    if-eq p1, p2, :cond_1

    const/16 p2, 0x9

    if-eq p1, p2, :cond_0

    goto :goto_1

    .line 678
    :cond_0
    iget-object p1, p0, Lcom/lostpixels/fieldservice/activities/visits/EditVisitDialog$13$1;->this$1:Lcom/lostpixels/fieldservice/activities/visits/EditVisitDialog$13;

    iget-object p1, p1, Lcom/lostpixels/fieldservice/activities/visits/EditVisitDialog$13;->this$0:Lcom/lostpixels/fieldservice/activities/visits/EditVisitDialog;

    invoke-virtual {p1, p2}, Lcom/lostpixels/fieldservice/activities/visits/EditVisitDialog;->showDialogs(I)V

    goto :goto_1

    .line 681
    :cond_1
    iget-object p1, p0, Lcom/lostpixels/fieldservice/activities/visits/EditVisitDialog$13$1;->this$1:Lcom/lostpixels/fieldservice/activities/visits/EditVisitDialog$13;

    iget-object p1, p1, Lcom/lostpixels/fieldservice/activities/visits/EditVisitDialog$13;->this$0:Lcom/lostpixels/fieldservice/activities/visits/EditVisitDialog;

    invoke-virtual {p1, p2}, Lcom/lostpixels/fieldservice/activities/visits/EditVisitDialog;->showDialogs(I)V

    goto :goto_1

    .line 684
    :cond_2
    iget-object p1, p0, Lcom/lostpixels/fieldservice/activities/visits/EditVisitDialog$13$1;->this$1:Lcom/lostpixels/fieldservice/activities/visits/EditVisitDialog$13;

    iget-object p1, p1, Lcom/lostpixels/fieldservice/activities/visits/EditVisitDialog$13;->this$0:Lcom/lostpixels/fieldservice/activities/visits/EditVisitDialog;

    invoke-virtual {p1, p2}, Lcom/lostpixels/fieldservice/activities/visits/EditVisitDialog;->showDialogs(I)V

    goto :goto_1

    .line 675
    :cond_3
    iget-object p1, p0, Lcom/lostpixels/fieldservice/activities/visits/EditVisitDialog$13$1;->this$1:Lcom/lostpixels/fieldservice/activities/visits/EditVisitDialog$13;

    iget-object p1, p1, Lcom/lostpixels/fieldservice/activities/visits/EditVisitDialog$13;->this$0:Lcom/lostpixels/fieldservice/activities/visits/EditVisitDialog;

    invoke-virtual {p1, p2}, Lcom/lostpixels/fieldservice/activities/visits/EditVisitDialog;->showDialogs(I)V

    goto :goto_1

    .line 672
    :cond_4
    iget-object p1, p0, Lcom/lostpixels/fieldservice/activities/visits/EditVisitDialog$13$1;->this$1:Lcom/lostpixels/fieldservice/activities/visits/EditVisitDialog$13;

    iget-object p1, p1, Lcom/lostpixels/fieldservice/activities/visits/EditVisitDialog$13;->this$0:Lcom/lostpixels/fieldservice/activities/visits/EditVisitDialog;

    invoke-virtual {p1, p2}, Lcom/lostpixels/fieldservice/activities/visits/EditVisitDialog;->showDialogs(I)V

    goto :goto_1

    .line 669
    :cond_5
    iget-object p1, p0, Lcom/lostpixels/fieldservice/activities/visits/EditVisitDialog$13$1;->this$1:Lcom/lostpixels/fieldservice/activities/visits/EditVisitDialog$13;

    iget-object p1, p1, Lcom/lostpixels/fieldservice/activities/visits/EditVisitDialog$13;->this$0:Lcom/lostpixels/fieldservice/activities/visits/EditVisitDialog;

    const/4 p2, 0x0

    invoke-virtual {p1, p2}, Lcom/lostpixels/fieldservice/activities/visits/EditVisitDialog;->showDialogs(I)V

    :goto_1
    return-void
.end method
