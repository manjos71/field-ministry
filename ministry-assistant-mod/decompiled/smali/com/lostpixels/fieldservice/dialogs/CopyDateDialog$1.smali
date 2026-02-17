.class Lcom/lostpixels/fieldservice/dialogs/CopyDateDialog$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/lostpixels/fieldservice/dialogs/CopyDateDialog;->onCreateDialog(Landroid/os/Bundle;)Landroid/app/Dialog;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/lostpixels/fieldservice/dialogs/CopyDateDialog;

.field final synthetic val$btnStartDate:Lcom/lostpixels/fieldservice/ui/SpinnerButton;


# direct methods
.method constructor <init>(Lcom/lostpixels/fieldservice/dialogs/CopyDateDialog;Lcom/lostpixels/fieldservice/ui/SpinnerButton;)V
    .locals 0

    .line 65
    iput-object p1, p0, Lcom/lostpixels/fieldservice/dialogs/CopyDateDialog$1;->this$0:Lcom/lostpixels/fieldservice/dialogs/CopyDateDialog;

    iput-object p2, p0, Lcom/lostpixels/fieldservice/dialogs/CopyDateDialog$1;->val$btnStartDate:Lcom/lostpixels/fieldservice/ui/SpinnerButton;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 7

    .line 69
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object p1

    .line 70
    iget-object v0, p0, Lcom/lostpixels/fieldservice/dialogs/CopyDateDialog$1;->this$0:Lcom/lostpixels/fieldservice/dialogs/CopyDateDialog;

    iget-object v0, v0, Lcom/lostpixels/fieldservice/dialogs/CopyDateDialog;->mStartDate:Ljava/util/Date;

    invoke-virtual {p1, v0}, Ljava/util/Calendar;->setTime(Ljava/util/Date;)V

    .line 71
    new-instance v1, Landroid/app/DatePickerDialog;

    iget-object v0, p0, Lcom/lostpixels/fieldservice/dialogs/CopyDateDialog$1;->this$0:Lcom/lostpixels/fieldservice/dialogs/CopyDateDialog;

    invoke-virtual {v0}, Landroidx/fragment/app/Fragment;->requireActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v2

    new-instance v3, Lcom/lostpixels/fieldservice/dialogs/CopyDateDialog$1$1;

    invoke-direct {v3, p0}, Lcom/lostpixels/fieldservice/dialogs/CopyDateDialog$1$1;-><init>(Lcom/lostpixels/fieldservice/dialogs/CopyDateDialog$1;)V

    const/4 v0, 0x1

    .line 86
    invoke-virtual {p1, v0}, Ljava/util/Calendar;->get(I)I

    move-result v4

    const/4 v0, 0x2

    invoke-virtual {p1, v0}, Ljava/util/Calendar;->get(I)I

    move-result v5

    const/4 v0, 0x5

    invoke-virtual {p1, v0}, Ljava/util/Calendar;->get(I)I

    move-result v6

    invoke-direct/range {v1 .. v6}, Landroid/app/DatePickerDialog;-><init>(Landroid/content/Context;Landroid/app/DatePickerDialog$OnDateSetListener;III)V

    invoke-virtual {v1}, Landroid/app/Dialog;->show()V

    return-void
.end method
