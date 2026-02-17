.class Lcom/lostpixels/fieldservice/dialogs/CopyDateDialog$3;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


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


# direct methods
.method constructor <init>(Lcom/lostpixels/fieldservice/dialogs/CopyDateDialog;)V
    .locals 0

    .line 90
    iput-object p1, p0, Lcom/lostpixels/fieldservice/dialogs/CopyDateDialog$3;->this$0:Lcom/lostpixels/fieldservice/dialogs/CopyDateDialog;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 2

    .line 92
    iget-object p1, p0, Lcom/lostpixels/fieldservice/dialogs/CopyDateDialog$3;->this$0:Lcom/lostpixels/fieldservice/dialogs/CopyDateDialog;

    iget-object p2, p1, Lcom/lostpixels/fieldservice/dialogs/CopyDateDialog;->mListener:Lcom/lostpixels/fieldservice/dialogs/CopyDateDialog$OnDuplicateButtonListner;

    if-eqz p2, :cond_0

    .line 94
    iget-object p1, p1, Lcom/lostpixels/fieldservice/dialogs/CopyDateDialog;->mrdDuplicateGroup:Landroid/widget/RadioGroup;

    invoke-virtual {p1}, Landroid/widget/RadioGroup;->getCheckedRadioButtonId()I

    move-result p1

    const/4 p2, 0x0

    packed-switch p1, :pswitch_data_0

    goto :goto_0

    :pswitch_0
    const/4 p2, 0x2

    goto :goto_0

    :pswitch_1
    const/4 p2, 0x1

    .line 105
    :goto_0
    :pswitch_2
    iget-object p1, p0, Lcom/lostpixels/fieldservice/dialogs/CopyDateDialog$3;->this$0:Lcom/lostpixels/fieldservice/dialogs/CopyDateDialog;

    iget-object v0, p1, Lcom/lostpixels/fieldservice/dialogs/CopyDateDialog;->mListener:Lcom/lostpixels/fieldservice/dialogs/CopyDateDialog$OnDuplicateButtonListner;

    iget-object v1, p1, Lcom/lostpixels/fieldservice/dialogs/CopyDateDialog;->mStartDate:Ljava/util/Date;

    iget-object p1, p1, Lcom/lostpixels/fieldservice/dialogs/CopyDateDialog;->mchSameWeekDay:Landroid/widget/CheckBox;

    invoke-virtual {p1}, Landroid/widget/CompoundButton;->isChecked()Z

    move-result p1

    invoke-interface {v0, v1, p2, p1}, Lcom/lostpixels/fieldservice/dialogs/CopyDateDialog$OnDuplicateButtonListner;->onDuplicate(Ljava/util/Date;IZ)V

    :cond_0
    return-void

    :pswitch_data_0
    .packed-switch 0x7f090471
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
