.class Lcom/lostpixels/fieldservice/activities/visits/SetPersonPriorityDlg$1;
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

    .line 46
    iput-object p1, p0, Lcom/lostpixels/fieldservice/activities/visits/SetPersonPriorityDlg$1;->this$0:Lcom/lostpixels/fieldservice/activities/visits/SetPersonPriorityDlg;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 1

    .line 49
    iget-object p1, p0, Lcom/lostpixels/fieldservice/activities/visits/SetPersonPriorityDlg$1;->this$0:Lcom/lostpixels/fieldservice/activities/visits/SetPersonPriorityDlg;

    invoke-static {p1}, Lcom/lostpixels/fieldservice/activities/visits/SetPersonPriorityDlg;->-$$Nest$fgetratingbar(Lcom/lostpixels/fieldservice/activities/visits/SetPersonPriorityDlg;)Landroid/widget/RatingBar;

    move-result-object p1

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Landroid/widget/RatingBar;->setRating(F)V

    return-void
.end method
