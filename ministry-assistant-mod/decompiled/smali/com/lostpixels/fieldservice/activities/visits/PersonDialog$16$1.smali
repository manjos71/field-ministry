.class Lcom/lostpixels/fieldservice/activities/visits/PersonDialog$16$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/lostpixels/fieldservice/activities/visits/PersonDialog$16;->onClick(Landroid/view/View;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/lostpixels/fieldservice/activities/visits/PersonDialog$16;

.field final synthetic val$dialog:Landroid/app/Dialog;

.field final synthetic val$text:Landroid/widget/EditText;


# direct methods
.method constructor <init>(Lcom/lostpixels/fieldservice/activities/visits/PersonDialog$16;Landroid/widget/EditText;Landroid/app/Dialog;)V
    .locals 0

    .line 1061
    iput-object p1, p0, Lcom/lostpixels/fieldservice/activities/visits/PersonDialog$16$1;->this$1:Lcom/lostpixels/fieldservice/activities/visits/PersonDialog$16;

    iput-object p2, p0, Lcom/lostpixels/fieldservice/activities/visits/PersonDialog$16$1;->val$text:Landroid/widget/EditText;

    iput-object p3, p0, Lcom/lostpixels/fieldservice/activities/visits/PersonDialog$16$1;->val$dialog:Landroid/app/Dialog;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 1

    .line 1064
    iget-object p1, p0, Lcom/lostpixels/fieldservice/activities/visits/PersonDialog$16$1;->this$1:Lcom/lostpixels/fieldservice/activities/visits/PersonDialog$16;

    iget-object p1, p1, Lcom/lostpixels/fieldservice/activities/visits/PersonDialog$16;->this$0:Lcom/lostpixels/fieldservice/activities/visits/PersonDialog;

    invoke-static {p1}, Lcom/lostpixels/fieldservice/activities/visits/PersonDialog;->-$$Nest$fgetperson(Lcom/lostpixels/fieldservice/activities/visits/PersonDialog;)Lcom/lostpixels/fieldservice/internal/ministry/Person;

    move-result-object p1

    iget-object v0, p0, Lcom/lostpixels/fieldservice/activities/visits/PersonDialog$16$1;->val$text:Landroid/widget/EditText;

    invoke-virtual {v0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/lostpixels/fieldservice/internal/ministry/Person;->setAddress(Ljava/lang/String;)V

    .line 1065
    iget-object p1, p0, Lcom/lostpixels/fieldservice/activities/visits/PersonDialog$16$1;->this$1:Lcom/lostpixels/fieldservice/activities/visits/PersonDialog$16;

    iget-object p1, p1, Lcom/lostpixels/fieldservice/activities/visits/PersonDialog$16;->this$0:Lcom/lostpixels/fieldservice/activities/visits/PersonDialog;

    invoke-static {p1}, Lcom/lostpixels/fieldservice/activities/visits/PersonDialog;->-$$Nest$msetPersonInfo(Lcom/lostpixels/fieldservice/activities/visits/PersonDialog;)V

    .line 1066
    iget-object p1, p0, Lcom/lostpixels/fieldservice/activities/visits/PersonDialog$16$1;->this$1:Lcom/lostpixels/fieldservice/activities/visits/PersonDialog$16;

    iget-object p1, p1, Lcom/lostpixels/fieldservice/activities/visits/PersonDialog$16;->this$0:Lcom/lostpixels/fieldservice/activities/visits/PersonDialog;

    const/4 v0, 0x1

    invoke-static {p1, v0}, Lcom/lostpixels/fieldservice/activities/visits/PersonDialog;->-$$Nest$fputbSomethingChanged(Lcom/lostpixels/fieldservice/activities/visits/PersonDialog;Z)V

    .line 1067
    iget-object p1, p0, Lcom/lostpixels/fieldservice/activities/visits/PersonDialog$16$1;->this$1:Lcom/lostpixels/fieldservice/activities/visits/PersonDialog$16;

    iget-object p1, p1, Lcom/lostpixels/fieldservice/activities/visits/PersonDialog$16;->this$0:Lcom/lostpixels/fieldservice/activities/visits/PersonDialog;

    invoke-static {p1, v0}, Lcom/lostpixels/fieldservice/activities/visits/PersonDialog;->-$$Nest$fputbPersonChanged(Lcom/lostpixels/fieldservice/activities/visits/PersonDialog;Z)V

    .line 1068
    iget-object p1, p0, Lcom/lostpixels/fieldservice/activities/visits/PersonDialog$16$1;->this$1:Lcom/lostpixels/fieldservice/activities/visits/PersonDialog$16;

    iget-object p1, p1, Lcom/lostpixels/fieldservice/activities/visits/PersonDialog$16;->this$0:Lcom/lostpixels/fieldservice/activities/visits/PersonDialog;

    invoke-static {p1}, Lcom/lostpixels/fieldservice/activities/visits/PersonDialog;->-$$Nest$mupdateSaveButton(Lcom/lostpixels/fieldservice/activities/visits/PersonDialog;)V

    .line 1069
    iget-object p1, p0, Lcom/lostpixels/fieldservice/activities/visits/PersonDialog$16$1;->val$dialog:Landroid/app/Dialog;

    invoke-virtual {p1}, Landroid/app/Dialog;->dismiss()V

    return-void
.end method
