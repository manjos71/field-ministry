.class public Lcom/lostpixels/fieldservice/activities/visits/SetPersonPriorityDlg;
.super Landroidx/fragment/app/DialogFragment;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/lostpixels/fieldservice/activities/visits/SetPersonPriorityDlg$OnPriorityChangedListener;
    }
.end annotation


# instance fields
.field private mListener:Lcom/lostpixels/fieldservice/activities/visits/SetPersonPriorityDlg$OnPriorityChangedListener;

.field private priority:I

.field private ratingbar:Landroid/widget/RatingBar;


# direct methods
.method static bridge synthetic -$$Nest$fgetmListener(Lcom/lostpixels/fieldservice/activities/visits/SetPersonPriorityDlg;)Lcom/lostpixels/fieldservice/activities/visits/SetPersonPriorityDlg$OnPriorityChangedListener;
    .locals 0

    .line 0
    iget-object p0, p0, Lcom/lostpixels/fieldservice/activities/visits/SetPersonPriorityDlg;->mListener:Lcom/lostpixels/fieldservice/activities/visits/SetPersonPriorityDlg$OnPriorityChangedListener;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetratingbar(Lcom/lostpixels/fieldservice/activities/visits/SetPersonPriorityDlg;)Landroid/widget/RatingBar;
    .locals 0

    .line 0
    iget-object p0, p0, Lcom/lostpixels/fieldservice/activities/visits/SetPersonPriorityDlg;->ratingbar:Landroid/widget/RatingBar;

    return-object p0
.end method

.method public constructor <init>()V
    .locals 0

    .line 23
    invoke-direct {p0}, Landroidx/fragment/app/DialogFragment;-><init>()V

    return-void
.end method


# virtual methods
.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 1

    const v0, 0x7f0c0133

    .line 37
    invoke-virtual {p1, v0, p2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object p1

    if-eqz p3, :cond_0

    .line 40
    const-string p2, "Prio"

    const/4 v0, 0x0

    invoke-virtual {p3, p2, v0}, Landroid/os/BaseBundle;->getInt(Ljava/lang/String;I)I

    move-result p2

    iput p2, p0, Lcom/lostpixels/fieldservice/activities/visits/SetPersonPriorityDlg;->priority:I

    :cond_0
    const p2, 0x7f090450

    .line 43
    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Landroid/widget/RatingBar;

    iput-object p2, p0, Lcom/lostpixels/fieldservice/activities/visits/SetPersonPriorityDlg;->ratingbar:Landroid/widget/RatingBar;

    .line 44
    iget p3, p0, Lcom/lostpixels/fieldservice/activities/visits/SetPersonPriorityDlg;->priority:I

    int-to-float p3, p3

    invoke-virtual {p2, p3}, Landroid/widget/RatingBar;->setRating(F)V

    const p2, 0x7f09028b

    .line 45
    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    .line 46
    new-instance p3, Lcom/lostpixels/fieldservice/activities/visits/SetPersonPriorityDlg$1;

    invoke-direct {p3, p0}, Lcom/lostpixels/fieldservice/activities/visits/SetPersonPriorityDlg$1;-><init>(Lcom/lostpixels/fieldservice/activities/visits/SetPersonPriorityDlg;)V

    invoke-virtual {p2, p3}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const p2, 0x7f0900e6

    .line 53
    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    .line 54
    new-instance p3, Lcom/lostpixels/fieldservice/activities/visits/SetPersonPriorityDlg$2;

    invoke-direct {p3, p0}, Lcom/lostpixels/fieldservice/activities/visits/SetPersonPriorityDlg$2;-><init>(Lcom/lostpixels/fieldservice/activities/visits/SetPersonPriorityDlg;)V

    invoke-virtual {p2, p3}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const p2, 0x7f0900fe

    .line 60
    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    .line 61
    new-instance p3, Lcom/lostpixels/fieldservice/activities/visits/SetPersonPriorityDlg$3;

    invoke-direct {p3, p0}, Lcom/lostpixels/fieldservice/activities/visits/SetPersonPriorityDlg$3;-><init>(Lcom/lostpixels/fieldservice/activities/visits/SetPersonPriorityDlg;)V

    invoke-virtual {p2, p3}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 70
    invoke-virtual {p0}, Landroidx/fragment/app/DialogFragment;->getDialog()Landroid/app/Dialog;

    move-result-object p2

    invoke-static {p2}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    const p3, 0x7f120496

    invoke-virtual {p0, p3}, Landroidx/fragment/app/Fragment;->getString(I)Ljava/lang/String;

    move-result-object p3

    invoke-virtual {p2, p3}, Landroid/app/Dialog;->setTitle(Ljava/lang/CharSequence;)V

    return-object p1
.end method

.method public onSaveInstanceState(Landroid/os/Bundle;)V
    .locals 2

    .line 76
    iget-object v0, p0, Lcom/lostpixels/fieldservice/activities/visits/SetPersonPriorityDlg;->ratingbar:Landroid/widget/RatingBar;

    invoke-virtual {v0}, Landroid/widget/RatingBar;->getRating()F

    move-result v0

    float-to-int v0, v0

    const-string v1, "Prio"

    invoke-virtual {p1, v1, v0}, Landroid/os/BaseBundle;->putInt(Ljava/lang/String;I)V

    .line 77
    invoke-super {p0, p1}, Landroidx/fragment/app/DialogFragment;->onSaveInstanceState(Landroid/os/Bundle;)V

    return-void
.end method

.method public setListener(Lcom/lostpixels/fieldservice/activities/visits/SetPersonPriorityDlg$OnPriorityChangedListener;)V
    .locals 0

    .line 27
    iput-object p1, p0, Lcom/lostpixels/fieldservice/activities/visits/SetPersonPriorityDlg;->mListener:Lcom/lostpixels/fieldservice/activities/visits/SetPersonPriorityDlg$OnPriorityChangedListener;

    return-void
.end method

.method public setPriority(I)V
    .locals 0

    .line 31
    iput p1, p0, Lcom/lostpixels/fieldservice/activities/visits/SetPersonPriorityDlg;->priority:I

    return-void
.end method
