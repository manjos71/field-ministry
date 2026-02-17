.class public Lcom/lostpixels/fieldservice/activities/visits/SetPersonVisitTypeDlg;
.super Landroidx/fragment/app/DialogFragment;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/lostpixels/fieldservice/activities/visits/SetPersonVisitTypeDlg$OnSetTypeChangedListener;
    }
.end annotation


# instance fields
.field private bIsBookmark:Z

.field private bIsMagRoute:Z

.field private bIsRV:Z

.field private bIsStudy:Z

.field private mListener:Lcom/lostpixels/fieldservice/activities/visits/SetPersonVisitTypeDlg$OnSetTypeChangedListener;


# direct methods
.method static bridge synthetic -$$Nest$fgetmListener(Lcom/lostpixels/fieldservice/activities/visits/SetPersonVisitTypeDlg;)Lcom/lostpixels/fieldservice/activities/visits/SetPersonVisitTypeDlg$OnSetTypeChangedListener;
    .locals 0

    .line 0
    iget-object p0, p0, Lcom/lostpixels/fieldservice/activities/visits/SetPersonVisitTypeDlg;->mListener:Lcom/lostpixels/fieldservice/activities/visits/SetPersonVisitTypeDlg$OnSetTypeChangedListener;

    return-object p0
.end method

.method public constructor <init>()V
    .locals 0

    .line 28
    invoke-direct {p0}, Landroidx/fragment/app/DialogFragment;-><init>()V

    return-void
.end method


# virtual methods
.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 7

    const v0, 0x7f0c0132

    .line 45
    invoke-virtual {p1, v0, p2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object p1

    if-eqz p3, :cond_0

    .line 48
    const-string p2, "RV"

    const/4 v0, 0x0

    invoke-virtual {p3, p2, v0}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result p2

    iput-boolean p2, p0, Lcom/lostpixels/fieldservice/activities/visits/SetPersonVisitTypeDlg;->bIsRV:Z

    .line 49
    const-string p2, "Fav"

    invoke-virtual {p3, p2, v0}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result p2

    iput-boolean p2, p0, Lcom/lostpixels/fieldservice/activities/visits/SetPersonVisitTypeDlg;->bIsBookmark:Z

    .line 50
    const-string p2, "Study"

    invoke-virtual {p3, p2, v0}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result p2

    iput-boolean p2, p0, Lcom/lostpixels/fieldservice/activities/visits/SetPersonVisitTypeDlg;->bIsStudy:Z

    .line 51
    const-string p2, "Mag"

    invoke-virtual {p3, p2, v0}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result p2

    iput-boolean p2, p0, Lcom/lostpixels/fieldservice/activities/visits/SetPersonVisitTypeDlg;->bIsMagRoute:Z

    :cond_0
    const p2, 0x7f090134

    .line 54
    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p3

    move-object v2, p3

    check-cast v2, Landroidx/appcompat/widget/AppCompatCheckBox;

    const p3, 0x7f090129

    .line 55
    invoke-virtual {p1, p3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    move-object v3, v0

    check-cast v3, Landroidx/appcompat/widget/AppCompatCheckBox;

    const v0, 0x7f09013b

    .line 56
    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    move-object v4, v1

    check-cast v4, Landroidx/appcompat/widget/AppCompatCheckBox;

    const v1, 0x7f09012e

    .line 57
    invoke-virtual {p1, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroidx/appcompat/widget/AppCompatCheckBox;

    .line 59
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->requireContext()Landroid/content/Context;

    move-result-object v6

    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Landroid/widget/CompoundButton;

    invoke-static {v6, p2}, Lcom/lostpixels/fieldservice/utils/ColorUtils;->tintCompoundButton(Landroid/content/Context;Landroid/widget/CompoundButton;)V

    .line 60
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object p2

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/CompoundButton;

    invoke-static {p2, v0}, Lcom/lostpixels/fieldservice/utils/ColorUtils;->tintCompoundButton(Landroid/content/Context;Landroid/widget/CompoundButton;)V

    .line 61
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object p2

    invoke-virtual {p1, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/CompoundButton;

    invoke-static {p2, v0}, Lcom/lostpixels/fieldservice/utils/ColorUtils;->tintCompoundButton(Landroid/content/Context;Landroid/widget/CompoundButton;)V

    .line 62
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object p2

    invoke-virtual {p1, p3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p3

    check-cast p3, Landroid/widget/CompoundButton;

    invoke-static {p2, p3}, Lcom/lostpixels/fieldservice/utils/ColorUtils;->tintCompoundButton(Landroid/content/Context;Landroid/widget/CompoundButton;)V

    .line 64
    iget-boolean p2, p0, Lcom/lostpixels/fieldservice/activities/visits/SetPersonVisitTypeDlg;->bIsRV:Z

    invoke-virtual {v2, p2}, Landroid/widget/CompoundButton;->setChecked(Z)V

    .line 65
    iget-boolean p2, p0, Lcom/lostpixels/fieldservice/activities/visits/SetPersonVisitTypeDlg;->bIsBookmark:Z

    invoke-virtual {v3, p2}, Landroid/widget/CompoundButton;->setChecked(Z)V

    .line 66
    iget-boolean p2, p0, Lcom/lostpixels/fieldservice/activities/visits/SetPersonVisitTypeDlg;->bIsStudy:Z

    invoke-virtual {v4, p2}, Landroid/widget/CompoundButton;->setChecked(Z)V

    .line 67
    iget-boolean p2, p0, Lcom/lostpixels/fieldservice/activities/visits/SetPersonVisitTypeDlg;->bIsMagRoute:Z

    invoke-virtual {v5, p2}, Landroid/widget/CompoundButton;->setChecked(Z)V

    const p2, 0x7f0900e6

    .line 69
    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    .line 70
    new-instance p3, Lcom/lostpixels/fieldservice/activities/visits/SetPersonVisitTypeDlg$1;

    invoke-direct {p3, p0}, Lcom/lostpixels/fieldservice/activities/visits/SetPersonVisitTypeDlg$1;-><init>(Lcom/lostpixels/fieldservice/activities/visits/SetPersonVisitTypeDlg;)V

    invoke-virtual {p2, p3}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const p2, 0x7f0900fe

    .line 76
    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    .line 77
    new-instance v0, Lcom/lostpixels/fieldservice/activities/visits/SetPersonVisitTypeDlg$2;

    move-object v1, p0

    invoke-direct/range {v0 .. v5}, Lcom/lostpixels/fieldservice/activities/visits/SetPersonVisitTypeDlg$2;-><init>(Lcom/lostpixels/fieldservice/activities/visits/SetPersonVisitTypeDlg;Landroidx/appcompat/widget/AppCompatCheckBox;Landroidx/appcompat/widget/AppCompatCheckBox;Landroidx/appcompat/widget/AppCompatCheckBox;Landroidx/appcompat/widget/AppCompatCheckBox;)V

    invoke-virtual {p2, v0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 86
    invoke-virtual {p0}, Landroidx/fragment/app/DialogFragment;->getDialog()Landroid/app/Dialog;

    move-result-object p2

    invoke-static {p2}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    const p3, 0x7f1201d2

    invoke-virtual {p0, p3}, Landroidx/fragment/app/Fragment;->getString(I)Ljava/lang/String;

    move-result-object p3

    invoke-virtual {p2, p3}, Landroid/app/Dialog;->setTitle(Ljava/lang/CharSequence;)V

    return-object p1
.end method

.method public onSaveInstanceState(Landroid/os/Bundle;)V
    .locals 2

    .line 93
    const-string v0, "RV"

    iget-boolean v1, p0, Lcom/lostpixels/fieldservice/activities/visits/SetPersonVisitTypeDlg;->bIsRV:Z

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 94
    const-string v0, "Fav"

    iget-boolean v1, p0, Lcom/lostpixels/fieldservice/activities/visits/SetPersonVisitTypeDlg;->bIsBookmark:Z

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 95
    const-string v0, "Study"

    iget-boolean v1, p0, Lcom/lostpixels/fieldservice/activities/visits/SetPersonVisitTypeDlg;->bIsStudy:Z

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 96
    const-string v0, "Mag"

    iget-boolean v1, p0, Lcom/lostpixels/fieldservice/activities/visits/SetPersonVisitTypeDlg;->bIsMagRoute:Z

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 97
    invoke-super {p0, p1}, Landroidx/fragment/app/DialogFragment;->onSaveInstanceState(Landroid/os/Bundle;)V

    return-void
.end method

.method public setListener(Lcom/lostpixels/fieldservice/activities/visits/SetPersonVisitTypeDlg$OnSetTypeChangedListener;)V
    .locals 0

    .line 32
    iput-object p1, p0, Lcom/lostpixels/fieldservice/activities/visits/SetPersonVisitTypeDlg;->mListener:Lcom/lostpixels/fieldservice/activities/visits/SetPersonVisitTypeDlg$OnSetTypeChangedListener;

    return-void
.end method

.method public setVisitType(Lcom/lostpixels/fieldservice/internal/ministry/Person;)V
    .locals 1

    .line 36
    invoke-virtual {p1}, Lcom/lostpixels/fieldservice/internal/ministry/Person;->isReturnVisit()Z

    move-result v0

    iput-boolean v0, p0, Lcom/lostpixels/fieldservice/activities/visits/SetPersonVisitTypeDlg;->bIsRV:Z

    .line 37
    invoke-virtual {p1}, Lcom/lostpixels/fieldservice/internal/ministry/Person;->isFavorite()Z

    move-result v0

    iput-boolean v0, p0, Lcom/lostpixels/fieldservice/activities/visits/SetPersonVisitTypeDlg;->bIsBookmark:Z

    .line 38
    invoke-virtual {p1}, Lcom/lostpixels/fieldservice/internal/ministry/Person;->isBibleStudy()Z

    move-result v0

    iput-boolean v0, p0, Lcom/lostpixels/fieldservice/activities/visits/SetPersonVisitTypeDlg;->bIsStudy:Z

    .line 39
    invoke-virtual {p1}, Lcom/lostpixels/fieldservice/internal/ministry/Person;->isMagazineRoute()Z

    move-result p1

    iput-boolean p1, p0, Lcom/lostpixels/fieldservice/activities/visits/SetPersonVisitTypeDlg;->bIsMagRoute:Z

    return-void
.end method
