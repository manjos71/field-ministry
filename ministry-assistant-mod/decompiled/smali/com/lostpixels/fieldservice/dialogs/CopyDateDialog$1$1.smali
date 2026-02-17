.class Lcom/lostpixels/fieldservice/dialogs/CopyDateDialog$1$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/app/DatePickerDialog$OnDateSetListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/lostpixels/fieldservice/dialogs/CopyDateDialog$1;->onClick(Landroid/view/View;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/lostpixels/fieldservice/dialogs/CopyDateDialog$1;


# direct methods
.method constructor <init>(Lcom/lostpixels/fieldservice/dialogs/CopyDateDialog$1;)V
    .locals 0

    .line 71
    iput-object p1, p0, Lcom/lostpixels/fieldservice/dialogs/CopyDateDialog$1$1;->this$1:Lcom/lostpixels/fieldservice/dialogs/CopyDateDialog$1;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onDateSet(Landroid/widget/DatePicker;III)V
    .locals 1

    .line 75
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object p1

    const/4 v0, 0x1

    .line 76
    invoke-virtual {p1, v0, p2}, Ljava/util/Calendar;->set(II)V

    const/4 p2, 0x2

    .line 77
    invoke-virtual {p1, p2, p3}, Ljava/util/Calendar;->set(II)V

    const/4 p2, 0x5

    .line 78
    invoke-virtual {p1, p2, p4}, Ljava/util/Calendar;->set(II)V

    .line 79
    iget-object p2, p0, Lcom/lostpixels/fieldservice/dialogs/CopyDateDialog$1$1;->this$1:Lcom/lostpixels/fieldservice/dialogs/CopyDateDialog$1;

    iget-object p2, p2, Lcom/lostpixels/fieldservice/dialogs/CopyDateDialog$1;->this$0:Lcom/lostpixels/fieldservice/dialogs/CopyDateDialog;

    invoke-virtual {p1}, Ljava/util/Calendar;->getTime()Ljava/util/Date;

    move-result-object p1

    iput-object p1, p2, Lcom/lostpixels/fieldservice/dialogs/CopyDateDialog;->mStartDate:Ljava/util/Date;

    .line 81
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object p2, p0, Lcom/lostpixels/fieldservice/dialogs/CopyDateDialog$1$1;->this$1:Lcom/lostpixels/fieldservice/dialogs/CopyDateDialog$1;

    iget-object p2, p2, Lcom/lostpixels/fieldservice/dialogs/CopyDateDialog$1;->this$0:Lcom/lostpixels/fieldservice/dialogs/CopyDateDialog;

    iget-object p2, p2, Lcom/lostpixels/fieldservice/dialogs/CopyDateDialog;->mStartDate:Ljava/util/Date;

    const-string p3, "EEEE"

    invoke-static {p3, p2}, Landroid/text/format/DateFormat;->format(Ljava/lang/CharSequence;Ljava/util/Date;)Ljava/lang/CharSequence;

    move-result-object p2

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p2, " "

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p2, p0, Lcom/lostpixels/fieldservice/dialogs/CopyDateDialog$1$1;->this$1:Lcom/lostpixels/fieldservice/dialogs/CopyDateDialog$1;

    iget-object p2, p2, Lcom/lostpixels/fieldservice/dialogs/CopyDateDialog$1;->this$0:Lcom/lostpixels/fieldservice/dialogs/CopyDateDialog;

    .line 83
    invoke-virtual {p2}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object p2

    invoke-static {p2}, Landroid/text/format/DateFormat;->getMediumDateFormat(Landroid/content/Context;)Ljava/text/DateFormat;

    move-result-object p2

    iget-object p3, p0, Lcom/lostpixels/fieldservice/dialogs/CopyDateDialog$1$1;->this$1:Lcom/lostpixels/fieldservice/dialogs/CopyDateDialog$1;

    iget-object p3, p3, Lcom/lostpixels/fieldservice/dialogs/CopyDateDialog$1;->this$0:Lcom/lostpixels/fieldservice/dialogs/CopyDateDialog;

    iget-object p3, p3, Lcom/lostpixels/fieldservice/dialogs/CopyDateDialog;->mStartDate:Ljava/util/Date;

    invoke-virtual {p2, p3}, Ljava/text/DateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    .line 84
    iget-object p2, p0, Lcom/lostpixels/fieldservice/dialogs/CopyDateDialog$1$1;->this$1:Lcom/lostpixels/fieldservice/dialogs/CopyDateDialog$1;

    iget-object p2, p2, Lcom/lostpixels/fieldservice/dialogs/CopyDateDialog$1;->val$btnStartDate:Lcom/lostpixels/fieldservice/ui/SpinnerButton;

    invoke-virtual {p2, p1}, Lcom/lostpixels/fieldservice/ui/SpinnerButton;->setText(Ljava/lang/String;)V

    return-void
.end method
