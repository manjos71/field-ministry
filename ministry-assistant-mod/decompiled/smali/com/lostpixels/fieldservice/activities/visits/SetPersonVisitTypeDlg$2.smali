.class Lcom/lostpixels/fieldservice/activities/visits/SetPersonVisitTypeDlg$2;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/lostpixels/fieldservice/activities/visits/SetPersonVisitTypeDlg;->onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/lostpixels/fieldservice/activities/visits/SetPersonVisitTypeDlg;

.field final synthetic val$chFav:Landroidx/appcompat/widget/AppCompatCheckBox;

.field final synthetic val$chMagRoute:Landroidx/appcompat/widget/AppCompatCheckBox;

.field final synthetic val$chRV:Landroidx/appcompat/widget/AppCompatCheckBox;

.field final synthetic val$chStudy:Landroidx/appcompat/widget/AppCompatCheckBox;


# direct methods
.method constructor <init>(Lcom/lostpixels/fieldservice/activities/visits/SetPersonVisitTypeDlg;Landroidx/appcompat/widget/AppCompatCheckBox;Landroidx/appcompat/widget/AppCompatCheckBox;Landroidx/appcompat/widget/AppCompatCheckBox;Landroidx/appcompat/widget/AppCompatCheckBox;)V
    .locals 0

    .line 77
    iput-object p1, p0, Lcom/lostpixels/fieldservice/activities/visits/SetPersonVisitTypeDlg$2;->this$0:Lcom/lostpixels/fieldservice/activities/visits/SetPersonVisitTypeDlg;

    iput-object p2, p0, Lcom/lostpixels/fieldservice/activities/visits/SetPersonVisitTypeDlg$2;->val$chRV:Landroidx/appcompat/widget/AppCompatCheckBox;

    iput-object p3, p0, Lcom/lostpixels/fieldservice/activities/visits/SetPersonVisitTypeDlg$2;->val$chFav:Landroidx/appcompat/widget/AppCompatCheckBox;

    iput-object p4, p0, Lcom/lostpixels/fieldservice/activities/visits/SetPersonVisitTypeDlg$2;->val$chStudy:Landroidx/appcompat/widget/AppCompatCheckBox;

    iput-object p5, p0, Lcom/lostpixels/fieldservice/activities/visits/SetPersonVisitTypeDlg$2;->val$chMagRoute:Landroidx/appcompat/widget/AppCompatCheckBox;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 4

    .line 80
    iget-object p1, p0, Lcom/lostpixels/fieldservice/activities/visits/SetPersonVisitTypeDlg$2;->this$0:Lcom/lostpixels/fieldservice/activities/visits/SetPersonVisitTypeDlg;

    invoke-static {p1}, Lcom/lostpixels/fieldservice/activities/visits/SetPersonVisitTypeDlg;->-$$Nest$fgetmListener(Lcom/lostpixels/fieldservice/activities/visits/SetPersonVisitTypeDlg;)Lcom/lostpixels/fieldservice/activities/visits/SetPersonVisitTypeDlg$OnSetTypeChangedListener;

    move-result-object p1

    if-eqz p1, :cond_0

    .line 81
    iget-object p1, p0, Lcom/lostpixels/fieldservice/activities/visits/SetPersonVisitTypeDlg$2;->this$0:Lcom/lostpixels/fieldservice/activities/visits/SetPersonVisitTypeDlg;

    invoke-static {p1}, Lcom/lostpixels/fieldservice/activities/visits/SetPersonVisitTypeDlg;->-$$Nest$fgetmListener(Lcom/lostpixels/fieldservice/activities/visits/SetPersonVisitTypeDlg;)Lcom/lostpixels/fieldservice/activities/visits/SetPersonVisitTypeDlg$OnSetTypeChangedListener;

    move-result-object p1

    iget-object v0, p0, Lcom/lostpixels/fieldservice/activities/visits/SetPersonVisitTypeDlg$2;->val$chRV:Landroidx/appcompat/widget/AppCompatCheckBox;

    invoke-virtual {v0}, Landroid/widget/CompoundButton;->isChecked()Z

    move-result v0

    iget-object v1, p0, Lcom/lostpixels/fieldservice/activities/visits/SetPersonVisitTypeDlg$2;->val$chFav:Landroidx/appcompat/widget/AppCompatCheckBox;

    invoke-virtual {v1}, Landroid/widget/CompoundButton;->isChecked()Z

    move-result v1

    iget-object v2, p0, Lcom/lostpixels/fieldservice/activities/visits/SetPersonVisitTypeDlg$2;->val$chStudy:Landroidx/appcompat/widget/AppCompatCheckBox;

    invoke-virtual {v2}, Landroid/widget/CompoundButton;->isChecked()Z

    move-result v2

    iget-object v3, p0, Lcom/lostpixels/fieldservice/activities/visits/SetPersonVisitTypeDlg$2;->val$chMagRoute:Landroidx/appcompat/widget/AppCompatCheckBox;

    invoke-virtual {v3}, Landroid/widget/CompoundButton;->isChecked()Z

    move-result v3

    invoke-interface {p1, v0, v1, v2, v3}, Lcom/lostpixels/fieldservice/activities/visits/SetPersonVisitTypeDlg$OnSetTypeChangedListener;->onSetTypeChanged(ZZZZ)V

    .line 82
    :cond_0
    iget-object p1, p0, Lcom/lostpixels/fieldservice/activities/visits/SetPersonVisitTypeDlg$2;->this$0:Lcom/lostpixels/fieldservice/activities/visits/SetPersonVisitTypeDlg;

    invoke-virtual {p1}, Landroidx/fragment/app/DialogFragment;->dismiss()V

    return-void
.end method
