.class Lcom/lostpixels/fieldservice/dialogs/SetTimeDialog$6;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/lostpixels/fieldservice/dialogs/SetTimeDialog;->onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/lostpixels/fieldservice/dialogs/SetTimeDialog;


# direct methods
.method constructor <init>(Lcom/lostpixels/fieldservice/dialogs/SetTimeDialog;)V
    .locals 0

    .line 128
    iput-object p1, p0, Lcom/lostpixels/fieldservice/dialogs/SetTimeDialog$6;->this$0:Lcom/lostpixels/fieldservice/dialogs/SetTimeDialog;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 1

    .line 131
    iget-object p1, p0, Lcom/lostpixels/fieldservice/dialogs/SetTimeDialog$6;->this$0:Lcom/lostpixels/fieldservice/dialogs/SetTimeDialog;

    invoke-static {p1}, Lcom/lostpixels/fieldservice/dialogs/SetTimeDialog;->-$$Nest$fgetlistener(Lcom/lostpixels/fieldservice/dialogs/SetTimeDialog;)Lcom/lostpixels/fieldservice/dialogs/SetTimeDialog$SetTimeDialogListener;

    move-result-object p1

    if-eqz p1, :cond_0

    .line 132
    iget-object p1, p0, Lcom/lostpixels/fieldservice/dialogs/SetTimeDialog$6;->this$0:Lcom/lostpixels/fieldservice/dialogs/SetTimeDialog;

    invoke-static {p1}, Lcom/lostpixels/fieldservice/dialogs/SetTimeDialog;->-$$Nest$fgetlistener(Lcom/lostpixels/fieldservice/dialogs/SetTimeDialog;)Lcom/lostpixels/fieldservice/dialogs/SetTimeDialog$SetTimeDialogListener;

    move-result-object p1

    iget-object v0, p0, Lcom/lostpixels/fieldservice/dialogs/SetTimeDialog$6;->this$0:Lcom/lostpixels/fieldservice/dialogs/SetTimeDialog;

    invoke-static {v0}, Lcom/lostpixels/fieldservice/dialogs/SetTimeDialog;->-$$Nest$fgetdate(Lcom/lostpixels/fieldservice/dialogs/SetTimeDialog;)Ljava/util/Date;

    move-result-object v0

    invoke-interface {p1, v0}, Lcom/lostpixels/fieldservice/dialogs/SetTimeDialog$SetTimeDialogListener;->onFinishSetTimeDialog(Ljava/util/Date;)V

    .line 133
    :cond_0
    iget-object p1, p0, Lcom/lostpixels/fieldservice/dialogs/SetTimeDialog$6;->this$0:Lcom/lostpixels/fieldservice/dialogs/SetTimeDialog;

    invoke-virtual {p1}, Landroidx/fragment/app/DialogFragment;->dismiss()V

    return-void
.end method
