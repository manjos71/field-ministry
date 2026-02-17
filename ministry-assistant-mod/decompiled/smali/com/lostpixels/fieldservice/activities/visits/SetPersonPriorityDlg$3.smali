.class Lcom/lostpixels/fieldservice/activities/visits/SetPersonPriorityDlg$3;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/lostpixels/fieldservice/activities/visits/SetPersonPriorityDlg;->onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/lostpixels/fieldservice/activities/visits/SetPersonPriorityDlg;


# direct methods
.method constructor <init>(Lcom/lostpixels/fieldservice/activities/visits/SetPersonPriorityDlg;)V
    .locals 0

    .line 61
    iput-object p1, p0, Lcom/lostpixels/fieldservice/activities/visits/SetPersonPriorityDlg$3;->this$0:Lcom/lostpixels/fieldservice/activities/visits/SetPersonPriorityDlg;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 1

    .line 64
    iget-object p1, p0, Lcom/lostpixels/fieldservice/activities/visits/SetPersonPriorityDlg$3;->this$0:Lcom/lostpixels/fieldservice/activities/visits/SetPersonPriorityDlg;

    invoke-static {p1}, Lcom/lostpixels/fieldservice/activities/visits/SetPersonPriorityDlg;->-$$Nest$fgetmListener(Lcom/lostpixels/fieldservice/activities/visits/SetPersonPriorityDlg;)Lcom/lostpixels/fieldservice/activities/visits/SetPersonPriorityDlg$OnPriorityChangedListener;

    move-result-object p1

    if-eqz p1, :cond_0

    .line 65
    iget-object p1, p0, Lcom/lostpixels/fieldservice/activities/visits/SetPersonPriorityDlg$3;->this$0:Lcom/lostpixels/fieldservice/activities/visits/SetPersonPriorityDlg;

    invoke-static {p1}, Lcom/lostpixels/fieldservice/activities/visits/SetPersonPriorityDlg;->-$$Nest$fgetmListener(Lcom/lostpixels/fieldservice/activities/visits/SetPersonPriorityDlg;)Lcom/lostpixels/fieldservice/activities/visits/SetPersonPriorityDlg$OnPriorityChangedListener;

    move-result-object p1

    iget-object v0, p0, Lcom/lostpixels/fieldservice/activities/visits/SetPersonPriorityDlg$3;->this$0:Lcom/lostpixels/fieldservice/activities/visits/SetPersonPriorityDlg;

    invoke-static {v0}, Lcom/lostpixels/fieldservice/activities/visits/SetPersonPriorityDlg;->-$$Nest$fgetratingbar(Lcom/lostpixels/fieldservice/activities/visits/SetPersonPriorityDlg;)Landroid/widget/RatingBar;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/RatingBar;->getRating()F

    move-result v0

    float-to-int v0, v0

    invoke-interface {p1, v0}, Lcom/lostpixels/fieldservice/activities/visits/SetPersonPriorityDlg$OnPriorityChangedListener;->onPriorityChanged(I)V

    .line 66
    :cond_0
    iget-object p1, p0, Lcom/lostpixels/fieldservice/activities/visits/SetPersonPriorityDlg$3;->this$0:Lcom/lostpixels/fieldservice/activities/visits/SetPersonPriorityDlg;

    invoke-virtual {p1}, Landroidx/fragment/app/DialogFragment;->dismiss()V

    return-void
.end method
