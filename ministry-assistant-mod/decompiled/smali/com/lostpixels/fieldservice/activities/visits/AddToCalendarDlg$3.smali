.class Lcom/lostpixels/fieldservice/activities/visits/AddToCalendarDlg$3;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/widget/CompoundButton$OnCheckedChangeListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/lostpixels/fieldservice/activities/visits/AddToCalendarDlg;->onCreate(Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/lostpixels/fieldservice/activities/visits/AddToCalendarDlg;

.field final synthetic val$view:Landroid/view/View;


# direct methods
.method constructor <init>(Lcom/lostpixels/fieldservice/activities/visits/AddToCalendarDlg;Landroid/view/View;)V
    .locals 0

    .line 155
    iput-object p1, p0, Lcom/lostpixels/fieldservice/activities/visits/AddToCalendarDlg$3;->this$0:Lcom/lostpixels/fieldservice/activities/visits/AddToCalendarDlg;

    iput-object p2, p0, Lcom/lostpixels/fieldservice/activities/visits/AddToCalendarDlg$3;->val$view:Landroid/view/View;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onCheckedChanged(Landroid/widget/CompoundButton;Z)V
    .locals 2

    if-eqz p2, :cond_1

    .line 159
    iget-object p1, p0, Lcom/lostpixels/fieldservice/activities/visits/AddToCalendarDlg$3;->val$view:Landroid/view/View;

    const/4 p2, 0x0

    invoke-virtual {p1, p2}, Landroid/view/View;->setVisibility(I)V

    .line 160
    iget-object p1, p0, Lcom/lostpixels/fieldservice/activities/visits/AddToCalendarDlg$3;->this$0:Lcom/lostpixels/fieldservice/activities/visits/AddToCalendarDlg;

    invoke-static {p1}, Lcom/lostpixels/fieldservice/activities/visits/AddToCalendarDlg;->-$$Nest$fgetmnCalendars(Lcom/lostpixels/fieldservice/activities/visits/AddToCalendarDlg;)I

    move-result p1

    if-nez p1, :cond_0

    .line 161
    new-instance p1, Landroidx/appcompat/app/AlertDialog$Builder;

    iget-object v0, p0, Lcom/lostpixels/fieldservice/activities/visits/AddToCalendarDlg$3;->this$0:Lcom/lostpixels/fieldservice/activities/visits/AddToCalendarDlg;

    invoke-direct {p1, v0}, Landroidx/appcompat/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 162
    iget-object v0, p0, Lcom/lostpixels/fieldservice/activities/visits/AddToCalendarDlg$3;->this$0:Lcom/lostpixels/fieldservice/activities/visits/AddToCalendarDlg;

    const v1, 0x7f1200d2

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroidx/appcompat/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroidx/appcompat/app/AlertDialog$Builder;

    move-result-object v0

    .line 163
    invoke-virtual {v0, p2}, Landroidx/appcompat/app/AlertDialog$Builder;->setCancelable(Z)Landroidx/appcompat/app/AlertDialog$Builder;

    move-result-object p2

    new-instance v0, Lcom/lostpixels/fieldservice/activities/visits/AddToCalendarDlg$3$1;

    invoke-direct {v0, p0}, Lcom/lostpixels/fieldservice/activities/visits/AddToCalendarDlg$3$1;-><init>(Lcom/lostpixels/fieldservice/activities/visits/AddToCalendarDlg$3;)V

    .line 164
    const-string v1, "OK"

    invoke-virtual {p2, v1, v0}, Landroidx/appcompat/app/AlertDialog$Builder;->setPositiveButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroidx/appcompat/app/AlertDialog$Builder;

    .line 173
    invoke-virtual {p1}, Landroidx/appcompat/app/AlertDialog$Builder;->create()Landroidx/appcompat/app/AlertDialog;

    move-result-object p1

    invoke-virtual {p1}, Landroid/app/Dialog;->show()V

    :cond_0
    return-void

    .line 176
    :cond_1
    iget-object p1, p0, Lcom/lostpixels/fieldservice/activities/visits/AddToCalendarDlg$3;->val$view:Landroid/view/View;

    const/16 p2, 0x8

    invoke-virtual {p1, p2}, Landroid/view/View;->setVisibility(I)V

    return-void
.end method
