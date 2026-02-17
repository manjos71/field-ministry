.class Lcom/lostpixels/fieldservice/activities/visits/AddMagazineDlg$7;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/lostpixels/fieldservice/activities/visits/AddMagazineDlg;->onCreate(Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/lostpixels/fieldservice/activities/visits/AddMagazineDlg;

.field final synthetic val$reportDensity:I


# direct methods
.method constructor <init>(Lcom/lostpixels/fieldservice/activities/visits/AddMagazineDlg;I)V
    .locals 0

    .line 247
    iput-object p1, p0, Lcom/lostpixels/fieldservice/activities/visits/AddMagazineDlg$7;->this$0:Lcom/lostpixels/fieldservice/activities/visits/AddMagazineDlg;

    iput p2, p0, Lcom/lostpixels/fieldservice/activities/visits/AddMagazineDlg$7;->val$reportDensity:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 6

    .line 251
    iget-object p1, p0, Lcom/lostpixels/fieldservice/activities/visits/AddMagazineDlg$7;->this$0:Lcom/lostpixels/fieldservice/activities/visits/AddMagazineDlg;

    invoke-static {p1}, Lcom/lostpixels/fieldservice/activities/visits/AddMagazineDlg;->-$$Nest$fgetmckWatchTower(Lcom/lostpixels/fieldservice/activities/visits/AddMagazineDlg;)Landroid/widget/CheckBox;

    move-result-object p1

    invoke-virtual {p1}, Landroid/widget/CompoundButton;->isChecked()Z

    move-result p1

    const/4 v0, 0x1

    if-nez p1, :cond_0

    iget-object p1, p0, Lcom/lostpixels/fieldservice/activities/visits/AddMagazineDlg$7;->this$0:Lcom/lostpixels/fieldservice/activities/visits/AddMagazineDlg;

    invoke-static {p1}, Lcom/lostpixels/fieldservice/activities/visits/AddMagazineDlg;->-$$Nest$fgetmckAwake(Lcom/lostpixels/fieldservice/activities/visits/AddMagazineDlg;)Landroid/widget/CheckBox;

    move-result-object p1

    invoke-virtual {p1}, Landroid/widget/CompoundButton;->isChecked()Z

    move-result p1

    if-nez p1, :cond_0

    .line 252
    new-instance p1, Landroidx/appcompat/app/AlertDialog$Builder;

    iget-object v1, p0, Lcom/lostpixels/fieldservice/activities/visits/AddMagazineDlg$7;->this$0:Lcom/lostpixels/fieldservice/activities/visits/AddMagazineDlg;

    iget-object v1, v1, Lcom/lostpixels/fieldservice/activities/visits/AddPublicationDlg;->mContext:Landroidx/fragment/app/FragmentActivity;

    invoke-direct {p1, v1}, Landroidx/appcompat/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 253
    iget-object v1, p0, Lcom/lostpixels/fieldservice/activities/visits/AddMagazineDlg$7;->this$0:Lcom/lostpixels/fieldservice/activities/visits/AddMagazineDlg;

    iget-object v1, v1, Lcom/lostpixels/fieldservice/activities/visits/AddPublicationDlg;->mContext:Landroidx/fragment/app/FragmentActivity;

    const v2, 0x7f1200de

    invoke-virtual {v1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Landroidx/appcompat/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroidx/appcompat/app/AlertDialog$Builder;

    move-result-object v1

    .line 254
    invoke-virtual {v1, v0}, Landroidx/appcompat/app/AlertDialog$Builder;->setCancelable(Z)Landroidx/appcompat/app/AlertDialog$Builder;

    move-result-object v0

    new-instance v1, Lcom/lostpixels/fieldservice/activities/visits/AddMagazineDlg$7$1;

    invoke-direct {v1, p0}, Lcom/lostpixels/fieldservice/activities/visits/AddMagazineDlg$7$1;-><init>(Lcom/lostpixels/fieldservice/activities/visits/AddMagazineDlg$7;)V

    .line 255
    const-string v2, "OK"

    invoke-virtual {v0, v2, v1}, Landroidx/appcompat/app/AlertDialog$Builder;->setPositiveButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroidx/appcompat/app/AlertDialog$Builder;

    .line 260
    invoke-virtual {p1}, Landroidx/appcompat/app/AlertDialog$Builder;->create()Landroidx/appcompat/app/AlertDialog;

    move-result-object p1

    invoke-virtual {p1}, Landroid/app/Dialog;->show()V

    return-void

    .line 265
    :cond_0
    invoke-static {}, Lio/realm/Realm;->getDefaultInstance()Lio/realm/Realm;

    move-result-object p1

    .line 267
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v1

    .line 268
    iget-object v2, p0, Lcom/lostpixels/fieldservice/activities/visits/AddMagazineDlg$7;->this$0:Lcom/lostpixels/fieldservice/activities/visits/AddMagazineDlg;

    invoke-static {v2}, Lcom/lostpixels/fieldservice/activities/visits/AddMagazineDlg;->-$$Nest$fgetmDate(Lcom/lostpixels/fieldservice/activities/visits/AddMagazineDlg;)Ljava/util/Date;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/Calendar;->setTime(Ljava/util/Date;)V

    .line 269
    invoke-virtual {v1, v0}, Ljava/util/Calendar;->get(I)I

    move-result v1

    const/16 v2, 0x7df

    const/4 v3, 0x2

    if-gt v1, v2, :cond_7

    .line 270
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 271
    iget-object v2, p0, Lcom/lostpixels/fieldservice/activities/visits/AddMagazineDlg$7;->this$0:Lcom/lostpixels/fieldservice/activities/visits/AddMagazineDlg;

    invoke-static {v2}, Lcom/lostpixels/fieldservice/activities/visits/AddMagazineDlg;->-$$Nest$fgetmckWatchTower(Lcom/lostpixels/fieldservice/activities/visits/AddMagazineDlg;)Landroid/widget/CheckBox;

    move-result-object v2

    invoke-virtual {v2}, Landroid/widget/CompoundButton;->isChecked()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 272
    iget-object v2, p0, Lcom/lostpixels/fieldservice/activities/visits/AddMagazineDlg$7;->this$0:Lcom/lostpixels/fieldservice/activities/visits/AddMagazineDlg;

    iget-object v2, v2, Lcom/lostpixels/fieldservice/activities/visits/AddPublicationDlg;->mContext:Landroidx/fragment/app/FragmentActivity;

    const v4, 0x7f1201d7

    invoke-virtual {v2, v4}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 273
    :cond_1
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->length()I

    move-result v2

    if-lez v2, :cond_2

    iget-object v2, p0, Lcom/lostpixels/fieldservice/activities/visits/AddMagazineDlg$7;->this$0:Lcom/lostpixels/fieldservice/activities/visits/AddMagazineDlg;

    invoke-static {v2}, Lcom/lostpixels/fieldservice/activities/visits/AddMagazineDlg;->-$$Nest$fgetmckAwake(Lcom/lostpixels/fieldservice/activities/visits/AddMagazineDlg;)Landroid/widget/CheckBox;

    move-result-object v2

    invoke-virtual {v2}, Landroid/widget/CompoundButton;->isChecked()Z

    move-result v2

    if-eqz v2, :cond_2

    .line 274
    const-string v2, " & "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 275
    :cond_2
    iget-object v2, p0, Lcom/lostpixels/fieldservice/activities/visits/AddMagazineDlg$7;->this$0:Lcom/lostpixels/fieldservice/activities/visits/AddMagazineDlg;

    invoke-static {v2}, Lcom/lostpixels/fieldservice/activities/visits/AddMagazineDlg;->-$$Nest$fgetmckAwake(Lcom/lostpixels/fieldservice/activities/visits/AddMagazineDlg;)Landroid/widget/CheckBox;

    move-result-object v2

    invoke-virtual {v2}, Landroid/widget/CompoundButton;->isChecked()Z

    move-result v2

    if-eqz v2, :cond_3

    .line 276
    iget-object v2, p0, Lcom/lostpixels/fieldservice/activities/visits/AddMagazineDlg$7;->this$0:Lcom/lostpixels/fieldservice/activities/visits/AddMagazineDlg;

    iget-object v2, v2, Lcom/lostpixels/fieldservice/activities/visits/AddPublicationDlg;->mContext:Landroidx/fragment/app/FragmentActivity;

    const v4, 0x7f120143

    invoke-virtual {v2, v4}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 277
    :cond_3
    const-string v2, " "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 278
    iget-object v2, p0, Lcom/lostpixels/fieldservice/activities/visits/AddMagazineDlg$7;->this$0:Lcom/lostpixels/fieldservice/activities/visits/AddMagazineDlg;

    invoke-static {v2}, Lcom/lostpixels/fieldservice/activities/visits/AddMagazineDlg;->-$$Nest$fgetmMonthFormat(Lcom/lostpixels/fieldservice/activities/visits/AddMagazineDlg;)Ljava/text/SimpleDateFormat;

    move-result-object v2

    iget-object v4, p0, Lcom/lostpixels/fieldservice/activities/visits/AddMagazineDlg$7;->this$0:Lcom/lostpixels/fieldservice/activities/visits/AddMagazineDlg;

    invoke-static {v4}, Lcom/lostpixels/fieldservice/activities/visits/AddMagazineDlg;->-$$Nest$fgetmDate(Lcom/lostpixels/fieldservice/activities/visits/AddMagazineDlg;)Ljava/util/Date;

    move-result-object v4

    invoke-virtual {v2, v4}, Ljava/text/DateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 280
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 282
    iget-object v2, p0, Lcom/lostpixels/fieldservice/activities/visits/AddMagazineDlg$7;->this$0:Lcom/lostpixels/fieldservice/activities/visits/AddMagazineDlg;

    iget-object v2, v2, Lcom/lostpixels/fieldservice/activities/visits/AddPublicationDlg;->mckAddToReport:Landroid/widget/CheckBox;

    invoke-virtual {v2}, Landroid/widget/CompoundButton;->isChecked()Z

    move-result v2

    if-eqz v2, :cond_6

    iget v2, p0, Lcom/lostpixels/fieldservice/activities/visits/AddMagazineDlg$7;->val$reportDensity:I

    if-eqz v2, :cond_6

    .line 283
    iget-object v2, p0, Lcom/lostpixels/fieldservice/activities/visits/AddMagazineDlg$7;->this$0:Lcom/lostpixels/fieldservice/activities/visits/AddMagazineDlg;

    iget v4, v2, Lcom/lostpixels/fieldservice/activities/visits/AddPublicationDlg;->mePubType:I

    if-eq v4, v3, :cond_4

    goto :goto_0

    .line 285
    :cond_4
    invoke-static {v2}, Lcom/lostpixels/fieldservice/activities/visits/AddMagazineDlg;->-$$Nest$fgetmckAwake(Lcom/lostpixels/fieldservice/activities/visits/AddMagazineDlg;)Landroid/widget/CheckBox;

    move-result-object v2

    invoke-virtual {v2}, Landroid/widget/CompoundButton;->isChecked()Z

    move-result v2

    if-eqz v2, :cond_5

    iget-object v2, p0, Lcom/lostpixels/fieldservice/activities/visits/AddMagazineDlg$7;->this$0:Lcom/lostpixels/fieldservice/activities/visits/AddMagazineDlg;

    invoke-static {v2}, Lcom/lostpixels/fieldservice/activities/visits/AddMagazineDlg;->-$$Nest$fgetmckWatchTower(Lcom/lostpixels/fieldservice/activities/visits/AddMagazineDlg;)Landroid/widget/CheckBox;

    move-result-object v2

    invoke-virtual {v2}, Landroid/widget/CompoundButton;->isChecked()Z

    move-result v2

    if-eqz v2, :cond_5

    .line 286
    iget-object v0, p0, Lcom/lostpixels/fieldservice/activities/visits/AddMagazineDlg$7;->this$0:Lcom/lostpixels/fieldservice/activities/visits/AddMagazineDlg;

    iget-object v0, v0, Lcom/lostpixels/fieldservice/activities/visits/AddPublicationDlg;->mSession:Lcom/lostpixels/fieldservice/internal/report/ServiceSession;

    invoke-virtual {v0, v3}, Lcom/lostpixels/fieldservice/internal/report/ServiceSession;->setMagazines(I)V

    goto :goto_0

    .line 288
    :cond_5
    iget-object v2, p0, Lcom/lostpixels/fieldservice/activities/visits/AddMagazineDlg$7;->this$0:Lcom/lostpixels/fieldservice/activities/visits/AddMagazineDlg;

    iget-object v2, v2, Lcom/lostpixels/fieldservice/activities/visits/AddPublicationDlg;->mSession:Lcom/lostpixels/fieldservice/internal/report/ServiceSession;

    invoke-virtual {v2, v0}, Lcom/lostpixels/fieldservice/internal/report/ServiceSession;->setMagazines(I)V

    .line 293
    :cond_6
    :goto_0
    invoke-static {p1}, Lcom/lostpixels/fieldservice/internal/report/PublicationManager;->getInstance(Lio/realm/Realm;)Lcom/lostpixels/fieldservice/internal/report/PublicationManager;

    move-result-object v0

    iget-object v2, p0, Lcom/lostpixels/fieldservice/activities/visits/AddMagazineDlg$7;->this$0:Lcom/lostpixels/fieldservice/activities/visits/AddMagazineDlg;

    invoke-static {v2}, Lcom/lostpixels/fieldservice/activities/visits/AddMagazineDlg;->-$$Nest$fgetmckWatchTower(Lcom/lostpixels/fieldservice/activities/visits/AddMagazineDlg;)Landroid/widget/CheckBox;

    move-result-object v2

    invoke-virtual {v2}, Landroid/widget/CompoundButton;->isChecked()Z

    move-result v2

    iget-object v3, p0, Lcom/lostpixels/fieldservice/activities/visits/AddMagazineDlg$7;->this$0:Lcom/lostpixels/fieldservice/activities/visits/AddMagazineDlg;

    invoke-static {v3}, Lcom/lostpixels/fieldservice/activities/visits/AddMagazineDlg;->-$$Nest$fgetmckAwake(Lcom/lostpixels/fieldservice/activities/visits/AddMagazineDlg;)Landroid/widget/CheckBox;

    move-result-object v3

    invoke-virtual {v3}, Landroid/widget/CompoundButton;->isChecked()Z

    move-result v3

    iget-object v4, p0, Lcom/lostpixels/fieldservice/activities/visits/AddMagazineDlg$7;->this$0:Lcom/lostpixels/fieldservice/activities/visits/AddMagazineDlg;

    invoke-static {v4}, Lcom/lostpixels/fieldservice/activities/visits/AddMagazineDlg;->-$$Nest$fgetmDate(Lcom/lostpixels/fieldservice/activities/visits/AddMagazineDlg;)Ljava/util/Date;

    move-result-object v4

    iget-object v5, p0, Lcom/lostpixels/fieldservice/activities/visits/AddMagazineDlg$7;->this$0:Lcom/lostpixels/fieldservice/activities/visits/AddMagazineDlg;

    invoke-static {v5}, Lcom/lostpixels/fieldservice/activities/visits/AddMagazineDlg;->-$$Nest$fgetmedtAlias(Lcom/lostpixels/fieldservice/activities/visits/AddMagazineDlg;)Landroid/widget/EditText;

    move-result-object v5

    invoke-virtual {v5}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v0, v2, v3, v4, v5}, Lcom/lostpixels/fieldservice/internal/report/PublicationManager;->setMagazineAlias(ZZLjava/util/Date;Ljava/lang/String;)V

    goto :goto_1

    .line 296
    :cond_7
    iget-object v1, p0, Lcom/lostpixels/fieldservice/activities/visits/AddMagazineDlg$7;->this$0:Lcom/lostpixels/fieldservice/activities/visits/AddMagazineDlg;

    invoke-static {v1}, Lcom/lostpixels/fieldservice/activities/visits/AddMagazineDlg;->-$$Nest$mgetMagazineTitle(Lcom/lostpixels/fieldservice/activities/visits/AddMagazineDlg;)Ljava/lang/String;

    move-result-object v1

    .line 297
    iget-object v2, p0, Lcom/lostpixels/fieldservice/activities/visits/AddMagazineDlg$7;->this$0:Lcom/lostpixels/fieldservice/activities/visits/AddMagazineDlg;

    iget-object v2, v2, Lcom/lostpixels/fieldservice/activities/visits/AddPublicationDlg;->mckAddToReport:Landroid/widget/CheckBox;

    invoke-virtual {v2}, Landroid/widget/CompoundButton;->isChecked()Z

    move-result v2

    if-eqz v2, :cond_8

    iget-object v2, p0, Lcom/lostpixels/fieldservice/activities/visits/AddMagazineDlg$7;->this$0:Lcom/lostpixels/fieldservice/activities/visits/AddMagazineDlg;

    iget v4, v2, Lcom/lostpixels/fieldservice/activities/visits/AddPublicationDlg;->mePubType:I

    if-ne v4, v3, :cond_8

    .line 298
    iget-object v2, v2, Lcom/lostpixels/fieldservice/activities/visits/AddPublicationDlg;->mSession:Lcom/lostpixels/fieldservice/internal/report/ServiceSession;

    invoke-virtual {v2, v0}, Lcom/lostpixels/fieldservice/internal/report/ServiceSession;->setMagazines(I)V

    .line 301
    :cond_8
    invoke-static {p1}, Lcom/lostpixels/fieldservice/internal/report/PublicationManager;->getInstance(Lio/realm/Realm;)Lcom/lostpixels/fieldservice/internal/report/PublicationManager;

    move-result-object v2

    iget-object v3, p0, Lcom/lostpixels/fieldservice/activities/visits/AddMagazineDlg$7;->this$0:Lcom/lostpixels/fieldservice/activities/visits/AddMagazineDlg;

    invoke-static {v3}, Lcom/lostpixels/fieldservice/activities/visits/AddMagazineDlg;->-$$Nest$fgetmrdStudyEdition(Lcom/lostpixels/fieldservice/activities/visits/AddMagazineDlg;)Landroid/widget/RadioButton;

    move-result-object v3

    invoke-virtual {v3}, Landroid/widget/CompoundButton;->isChecked()Z

    move-result v3

    xor-int/2addr v3, v0

    iget-object v4, p0, Lcom/lostpixels/fieldservice/activities/visits/AddMagazineDlg$7;->this$0:Lcom/lostpixels/fieldservice/activities/visits/AddMagazineDlg;

    invoke-static {v4}, Lcom/lostpixels/fieldservice/activities/visits/AddMagazineDlg;->-$$Nest$fgetmDate(Lcom/lostpixels/fieldservice/activities/visits/AddMagazineDlg;)Ljava/util/Date;

    move-result-object v4

    iget-object v5, p0, Lcom/lostpixels/fieldservice/activities/visits/AddMagazineDlg$7;->this$0:Lcom/lostpixels/fieldservice/activities/visits/AddMagazineDlg;

    invoke-static {v5}, Lcom/lostpixels/fieldservice/activities/visits/AddMagazineDlg;->-$$Nest$fgetmedtAlias(Lcom/lostpixels/fieldservice/activities/visits/AddMagazineDlg;)Landroid/widget/EditText;

    move-result-object v5

    invoke-virtual {v5}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v2, v0, v3, v4, v5}, Lcom/lostpixels/fieldservice/internal/report/PublicationManager;->setMagazineAlias(ZZLjava/util/Date;Ljava/lang/String;)V

    .line 303
    :goto_1
    iget-object v0, p0, Lcom/lostpixels/fieldservice/activities/visits/AddMagazineDlg$7;->this$0:Lcom/lostpixels/fieldservice/activities/visits/AddMagazineDlg;

    invoke-static {v0}, Lcom/lostpixels/fieldservice/activities/visits/AddMagazineDlg;->-$$Nest$fgetmMagListner(Lcom/lostpixels/fieldservice/activities/visits/AddMagazineDlg;)Lcom/lostpixels/fieldservice/activities/visits/AddMagazineDlg$OnAddMagazineListener;

    move-result-object v0

    if-eqz v0, :cond_a

    .line 304
    iget-object v0, p0, Lcom/lostpixels/fieldservice/activities/visits/AddMagazineDlg$7;->this$0:Lcom/lostpixels/fieldservice/activities/visits/AddMagazineDlg;

    invoke-static {v0}, Lcom/lostpixels/fieldservice/activities/visits/AddMagazineDlg;->-$$Nest$fgetmMagListner(Lcom/lostpixels/fieldservice/activities/visits/AddMagazineDlg;)Lcom/lostpixels/fieldservice/activities/visits/AddMagazineDlg$OnAddMagazineListener;

    move-result-object v0

    iget-object v2, p0, Lcom/lostpixels/fieldservice/activities/visits/AddMagazineDlg$7;->this$0:Lcom/lostpixels/fieldservice/activities/visits/AddMagazineDlg;

    invoke-static {v2}, Lcom/lostpixels/fieldservice/activities/visits/AddMagazineDlg;->-$$Nest$fgetmedtAlias(Lcom/lostpixels/fieldservice/activities/visits/AddMagazineDlg;)Landroid/widget/EditText;

    move-result-object v2

    invoke-virtual {v2}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v2

    invoke-interface {v2}, Ljava/lang/CharSequence;->length()I

    move-result v2

    if-lez v2, :cond_9

    iget-object v1, p0, Lcom/lostpixels/fieldservice/activities/visits/AddMagazineDlg$7;->this$0:Lcom/lostpixels/fieldservice/activities/visits/AddMagazineDlg;

    invoke-static {v1}, Lcom/lostpixels/fieldservice/activities/visits/AddMagazineDlg;->-$$Nest$fgetmedtAlias(Lcom/lostpixels/fieldservice/activities/visits/AddMagazineDlg;)Landroid/widget/EditText;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    :cond_9
    iget-object v2, p0, Lcom/lostpixels/fieldservice/activities/visits/AddMagazineDlg$7;->this$0:Lcom/lostpixels/fieldservice/activities/visits/AddMagazineDlg;

    invoke-static {v2}, Lcom/lostpixels/fieldservice/activities/visits/AddMagazineDlg;->-$$Nest$fgetmDate(Lcom/lostpixels/fieldservice/activities/visits/AddMagazineDlg;)Ljava/util/Date;

    move-result-object v2

    iget-object v3, p0, Lcom/lostpixels/fieldservice/activities/visits/AddMagazineDlg$7;->this$0:Lcom/lostpixels/fieldservice/activities/visits/AddMagazineDlg;

    iget-object v4, v3, Lcom/lostpixels/fieldservice/activities/visits/AddPublicationDlg;->mSession:Lcom/lostpixels/fieldservice/internal/report/ServiceSession;

    iget v3, v3, Lcom/lostpixels/fieldservice/activities/visits/AddPublicationDlg;->miID:I

    invoke-interface {v0, v1, v2, v4, v3}, Lcom/lostpixels/fieldservice/activities/visits/AddMagazineDlg$OnAddMagazineListener;->onAddMagazine(Ljava/lang/String;Ljava/util/Date;Lcom/lostpixels/fieldservice/internal/report/ServiceSession;I)V

    .line 306
    :cond_a
    invoke-virtual {p1}, Lio/realm/Realm;->close()V

    .line 307
    iget-object p1, p0, Lcom/lostpixels/fieldservice/activities/visits/AddMagazineDlg$7;->this$0:Lcom/lostpixels/fieldservice/activities/visits/AddMagazineDlg;

    invoke-virtual {p1}, Landroid/app/Dialog;->dismiss()V

    return-void
.end method
