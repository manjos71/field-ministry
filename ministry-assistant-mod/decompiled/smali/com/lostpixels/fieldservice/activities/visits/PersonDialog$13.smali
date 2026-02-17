.class Lcom/lostpixels/fieldservice/activities/visits/PersonDialog$13;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/lostpixels/fieldservice/activities/visits/PersonDialog;->setupFragment1()Landroid/view/View;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/lostpixels/fieldservice/activities/visits/PersonDialog;


# direct methods
.method constructor <init>(Lcom/lostpixels/fieldservice/activities/visits/PersonDialog;)V
    .locals 0

    .line 858
    iput-object p1, p0, Lcom/lostpixels/fieldservice/activities/visits/PersonDialog$13;->this$0:Lcom/lostpixels/fieldservice/activities/visits/PersonDialog;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 2

    .line 862
    new-instance p1, Lcom/lostpixels/fieldservice/activities/visits/SetPersonPriorityDlg;

    invoke-direct {p1}, Lcom/lostpixels/fieldservice/activities/visits/SetPersonPriorityDlg;-><init>()V

    .line 863
    new-instance v0, Lcom/lostpixels/fieldservice/activities/visits/PersonDialog$13$1;

    invoke-direct {v0, p0}, Lcom/lostpixels/fieldservice/activities/visits/PersonDialog$13$1;-><init>(Lcom/lostpixels/fieldservice/activities/visits/PersonDialog$13;)V

    invoke-virtual {p1, v0}, Lcom/lostpixels/fieldservice/activities/visits/SetPersonPriorityDlg;->setListener(Lcom/lostpixels/fieldservice/activities/visits/SetPersonPriorityDlg$OnPriorityChangedListener;)V

    .line 873
    iget-object v0, p0, Lcom/lostpixels/fieldservice/activities/visits/PersonDialog$13;->this$0:Lcom/lostpixels/fieldservice/activities/visits/PersonDialog;

    invoke-static {v0}, Lcom/lostpixels/fieldservice/activities/visits/PersonDialog;->-$$Nest$fgetperson(Lcom/lostpixels/fieldservice/activities/visits/PersonDialog;)Lcom/lostpixels/fieldservice/internal/ministry/Person;

    move-result-object v0

    invoke-static {v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    invoke-virtual {v0}, Lcom/lostpixels/fieldservice/internal/ministry/Person;->getPriority()I

    move-result v0

    invoke-virtual {p1, v0}, Lcom/lostpixels/fieldservice/activities/visits/SetPersonPriorityDlg;->setPriority(I)V

    .line 874
    iget-object v0, p0, Lcom/lostpixels/fieldservice/activities/visits/PersonDialog$13;->this$0:Lcom/lostpixels/fieldservice/activities/visits/PersonDialog;

    invoke-virtual {v0}, Landroidx/fragment/app/FragmentActivity;->getSupportFragmentManager()Landroidx/fragment/app/FragmentManager;

    move-result-object v0

    .line 875
    const-string v1, "fragment_set_prio"

    invoke-virtual {p1, v0, v1}, Landroidx/fragment/app/DialogFragment;->show(Landroidx/fragment/app/FragmentManager;Ljava/lang/String;)V

    return-void
.end method
