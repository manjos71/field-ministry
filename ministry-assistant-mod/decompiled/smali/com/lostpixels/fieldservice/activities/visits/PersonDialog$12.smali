.class Lcom/lostpixels/fieldservice/activities/visits/PersonDialog$12;
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

    .line 827
    iput-object p1, p0, Lcom/lostpixels/fieldservice/activities/visits/PersonDialog$12;->this$0:Lcom/lostpixels/fieldservice/activities/visits/PersonDialog;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 2

    .line 831
    new-instance p1, Lcom/lostpixels/fieldservice/activities/visits/SetPersonVisitTypeDlg;

    invoke-direct {p1}, Lcom/lostpixels/fieldservice/activities/visits/SetPersonVisitTypeDlg;-><init>()V

    .line 832
    new-instance v0, Lcom/lostpixels/fieldservice/activities/visits/PersonDialog$12$1;

    invoke-direct {v0, p0}, Lcom/lostpixels/fieldservice/activities/visits/PersonDialog$12$1;-><init>(Lcom/lostpixels/fieldservice/activities/visits/PersonDialog$12;)V

    invoke-virtual {p1, v0}, Lcom/lostpixels/fieldservice/activities/visits/SetPersonVisitTypeDlg;->setListener(Lcom/lostpixels/fieldservice/activities/visits/SetPersonVisitTypeDlg$OnSetTypeChangedListener;)V

    .line 846
    iget-object v0, p0, Lcom/lostpixels/fieldservice/activities/visits/PersonDialog$12;->this$0:Lcom/lostpixels/fieldservice/activities/visits/PersonDialog;

    invoke-static {v0}, Lcom/lostpixels/fieldservice/activities/visits/PersonDialog;->-$$Nest$fgetperson(Lcom/lostpixels/fieldservice/activities/visits/PersonDialog;)Lcom/lostpixels/fieldservice/internal/ministry/Person;

    move-result-object v0

    invoke-static {v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    invoke-virtual {p1, v0}, Lcom/lostpixels/fieldservice/activities/visits/SetPersonVisitTypeDlg;->setVisitType(Lcom/lostpixels/fieldservice/internal/ministry/Person;)V

    .line 848
    :try_start_0
    iget-object v0, p0, Lcom/lostpixels/fieldservice/activities/visits/PersonDialog$12;->this$0:Lcom/lostpixels/fieldservice/activities/visits/PersonDialog;

    invoke-virtual {v0}, Landroidx/fragment/app/FragmentActivity;->getSupportFragmentManager()Landroidx/fragment/app/FragmentManager;

    move-result-object v0

    .line 849
    const-string v1, "fragment_set_type"

    invoke-virtual {p1, v0, v1}, Landroidx/fragment/app/DialogFragment;->show(Landroidx/fragment/app/FragmentManager;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/IllegalStateException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception p1

    .line 851
    invoke-virtual {p1}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-static {p1}, Lcom/lostpixels/fieldservice/helpfunctions/HelpFunctions;->getStackTrace(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1}, Lcom/lostpixels/fieldservice/utils/LogToSD;->write(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method
