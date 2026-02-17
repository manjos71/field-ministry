.class Lcom/lostpixels/fieldservice/activities/visits/PersonDialog$27;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/lostpixels/fieldservice/activities/visits/PersonDialog;->showBibleStudyDialog()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/lostpixels/fieldservice/activities/visits/PersonDialog;

.field final synthetic val$dialog:Landroid/app/Dialog;

.field final synthetic val$edtContinue:Landroid/widget/EditText;

.field final synthetic val$edtPublication:Landroid/widget/EditText;


# direct methods
.method constructor <init>(Lcom/lostpixels/fieldservice/activities/visits/PersonDialog;Landroid/widget/EditText;Landroid/widget/EditText;Landroid/app/Dialog;)V
    .locals 0

    .line 1753
    iput-object p1, p0, Lcom/lostpixels/fieldservice/activities/visits/PersonDialog$27;->this$0:Lcom/lostpixels/fieldservice/activities/visits/PersonDialog;

    iput-object p2, p0, Lcom/lostpixels/fieldservice/activities/visits/PersonDialog$27;->val$edtPublication:Landroid/widget/EditText;

    iput-object p3, p0, Lcom/lostpixels/fieldservice/activities/visits/PersonDialog$27;->val$edtContinue:Landroid/widget/EditText;

    iput-object p4, p0, Lcom/lostpixels/fieldservice/activities/visits/PersonDialog$27;->val$dialog:Landroid/app/Dialog;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 1

    .line 1756
    iget-object p1, p0, Lcom/lostpixels/fieldservice/activities/visits/PersonDialog$27;->this$0:Lcom/lostpixels/fieldservice/activities/visits/PersonDialog;

    invoke-static {p1}, Lcom/lostpixels/fieldservice/activities/visits/PersonDialog;->-$$Nest$fgetperson(Lcom/lostpixels/fieldservice/activities/visits/PersonDialog;)Lcom/lostpixels/fieldservice/internal/ministry/Person;

    move-result-object p1

    iget-object v0, p0, Lcom/lostpixels/fieldservice/activities/visits/PersonDialog$27;->val$edtPublication:Landroid/widget/EditText;

    invoke-virtual {v0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/lostpixels/fieldservice/internal/ministry/Person;->setStudyPublication(Ljava/lang/String;)V

    .line 1757
    iget-object p1, p0, Lcom/lostpixels/fieldservice/activities/visits/PersonDialog$27;->this$0:Lcom/lostpixels/fieldservice/activities/visits/PersonDialog;

    invoke-static {p1}, Lcom/lostpixels/fieldservice/activities/visits/PersonDialog;->-$$Nest$fgetperson(Lcom/lostpixels/fieldservice/activities/visits/PersonDialog;)Lcom/lostpixels/fieldservice/internal/ministry/Person;

    move-result-object p1

    iget-object v0, p0, Lcom/lostpixels/fieldservice/activities/visits/PersonDialog$27;->val$edtContinue:Landroid/widget/EditText;

    invoke-virtual {v0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/lostpixels/fieldservice/internal/ministry/Person;->setContinueStudy(Ljava/lang/String;)V

    .line 1758
    iget-object p1, p0, Lcom/lostpixels/fieldservice/activities/visits/PersonDialog$27;->this$0:Lcom/lostpixels/fieldservice/activities/visits/PersonDialog;

    invoke-static {p1}, Lcom/lostpixels/fieldservice/activities/visits/PersonDialog;->-$$Nest$msetPersonInfo(Lcom/lostpixels/fieldservice/activities/visits/PersonDialog;)V

    .line 1760
    :try_start_0
    iget-object p1, p0, Lcom/lostpixels/fieldservice/activities/visits/PersonDialog$27;->val$dialog:Landroid/app/Dialog;

    invoke-virtual {p1}, Landroid/app/Dialog;->dismiss()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 1764
    :catch_0
    iget-object p1, p0, Lcom/lostpixels/fieldservice/activities/visits/PersonDialog$27;->this$0:Lcom/lostpixels/fieldservice/activities/visits/PersonDialog;

    const/4 v0, 0x1

    invoke-static {p1, v0}, Lcom/lostpixels/fieldservice/activities/visits/PersonDialog;->-$$Nest$fputbSomethingChanged(Lcom/lostpixels/fieldservice/activities/visits/PersonDialog;Z)V

    .line 1765
    iget-object p1, p0, Lcom/lostpixels/fieldservice/activities/visits/PersonDialog$27;->this$0:Lcom/lostpixels/fieldservice/activities/visits/PersonDialog;

    invoke-static {p1}, Lcom/lostpixels/fieldservice/activities/visits/PersonDialog;->-$$Nest$mupdateSaveButton(Lcom/lostpixels/fieldservice/activities/visits/PersonDialog;)V

    return-void
.end method
