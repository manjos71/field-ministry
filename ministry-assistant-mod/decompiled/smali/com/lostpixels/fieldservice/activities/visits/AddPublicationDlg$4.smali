.class Lcom/lostpixels/fieldservice/activities/visits/AddPublicationDlg$4;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/lostpixels/fieldservice/activities/visits/AddPublicationDlg;->onCreate(Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/lostpixels/fieldservice/activities/visits/AddPublicationDlg;

.field final synthetic val$reportDensity:I


# direct methods
.method constructor <init>(Lcom/lostpixels/fieldservice/activities/visits/AddPublicationDlg;I)V
    .locals 0

    .line 259
    iput-object p1, p0, Lcom/lostpixels/fieldservice/activities/visits/AddPublicationDlg$4;->this$0:Lcom/lostpixels/fieldservice/activities/visits/AddPublicationDlg;

    iput p2, p0, Lcom/lostpixels/fieldservice/activities/visits/AddPublicationDlg$4;->val$reportDensity:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 7

    .line 263
    iget-object p1, p0, Lcom/lostpixels/fieldservice/activities/visits/AddPublicationDlg$4;->this$0:Lcom/lostpixels/fieldservice/activities/visits/AddPublicationDlg;

    invoke-static {p1}, Lcom/lostpixels/fieldservice/activities/visits/AddPublicationDlg;->-$$Nest$fgetpickerPublications(Lcom/lostpixels/fieldservice/activities/visits/AddPublicationDlg;)Lnet/simonvt/widget/NumberPicker;

    move-result-object p1

    invoke-virtual {p1}, Landroid/view/View;->getVisibility()I

    move-result p1

    const/4 v0, 0x1

    if-nez p1, :cond_11

    iget-object p1, p0, Lcom/lostpixels/fieldservice/activities/visits/AddPublicationDlg$4;->this$0:Lcom/lostpixels/fieldservice/activities/visits/AddPublicationDlg;

    invoke-static {p1}, Lcom/lostpixels/fieldservice/activities/visits/AddPublicationDlg;->-$$Nest$fgetpickerPublications(Lcom/lostpixels/fieldservice/activities/visits/AddPublicationDlg;)Lnet/simonvt/widget/NumberPicker;

    move-result-object p1

    invoke-virtual {p1}, Lnet/simonvt/widget/NumberPicker;->getValue()I

    move-result p1

    if-gez p1, :cond_0

    goto/16 :goto_3

    .line 275
    :cond_0
    iget-object p1, p0, Lcom/lostpixels/fieldservice/activities/visits/AddPublicationDlg$4;->this$0:Lcom/lostpixels/fieldservice/activities/visits/AddPublicationDlg;

    invoke-static {p1}, Lcom/lostpixels/fieldservice/activities/visits/AddPublicationDlg;->-$$Nest$fgetpickerPublications(Lcom/lostpixels/fieldservice/activities/visits/AddPublicationDlg;)Lnet/simonvt/widget/NumberPicker;

    move-result-object p1

    invoke-virtual {p1}, Lnet/simonvt/widget/NumberPicker;->getDisplayedValues()[Ljava/lang/String;

    move-result-object p1

    iget-object v1, p0, Lcom/lostpixels/fieldservice/activities/visits/AddPublicationDlg$4;->this$0:Lcom/lostpixels/fieldservice/activities/visits/AddPublicationDlg;

    invoke-static {v1}, Lcom/lostpixels/fieldservice/activities/visits/AddPublicationDlg;->-$$Nest$fgetpickerPublications(Lcom/lostpixels/fieldservice/activities/visits/AddPublicationDlg;)Lnet/simonvt/widget/NumberPicker;

    move-result-object v1

    invoke-virtual {v1}, Lnet/simonvt/widget/NumberPicker;->getValue()I

    move-result v1

    aget-object p1, p1, v1

    .line 278
    iget-object v1, p0, Lcom/lostpixels/fieldservice/activities/visits/AddPublicationDlg$4;->this$0:Lcom/lostpixels/fieldservice/activities/visits/AddPublicationDlg;

    iget-object v1, v1, Lcom/lostpixels/fieldservice/activities/visits/AddPublicationDlg;->mckAddToReport:Landroid/widget/CheckBox;

    invoke-virtual {v1}, Landroid/widget/CompoundButton;->isChecked()Z

    move-result v1

    const/4 v2, 0x6

    const/4 v3, 0x4

    const/4 v4, 0x3

    const/4 v5, 0x5

    if-eqz v1, :cond_6

    iget v1, p0, Lcom/lostpixels/fieldservice/activities/visits/AddPublicationDlg$4;->val$reportDensity:I

    if-eqz v1, :cond_6

    .line 279
    iget-object v1, p0, Lcom/lostpixels/fieldservice/activities/visits/AddPublicationDlg$4;->this$0:Lcom/lostpixels/fieldservice/activities/visits/AddPublicationDlg;

    iget v6, v1, Lcom/lostpixels/fieldservice/activities/visits/AddPublicationDlg;->mePubType:I

    if-eqz v6, :cond_5

    if-eq v6, v0, :cond_4

    if-eq v6, v4, :cond_3

    if-eq v6, v3, :cond_2

    if-eq v6, v5, :cond_3

    if-eq v6, v2, :cond_1

    goto :goto_0

    .line 294
    :cond_1
    iget-object v1, v1, Lcom/lostpixels/fieldservice/activities/visits/AddPublicationDlg;->mSession:Lcom/lostpixels/fieldservice/internal/report/ServiceSession;

    invoke-virtual {v1, v0}, Lcom/lostpixels/fieldservice/internal/report/ServiceSession;->setVideoShowings(I)V

    goto :goto_0

    .line 287
    :cond_2
    iget-object v1, v1, Lcom/lostpixels/fieldservice/activities/visits/AddPublicationDlg;->mSession:Lcom/lostpixels/fieldservice/internal/report/ServiceSession;

    invoke-virtual {v1, v0}, Lcom/lostpixels/fieldservice/internal/report/ServiceSession;->setDvds(I)V

    goto :goto_0

    .line 291
    :cond_3
    iget-object v1, v1, Lcom/lostpixels/fieldservice/activities/visits/AddPublicationDlg;->mSession:Lcom/lostpixels/fieldservice/internal/report/ServiceSession;

    invoke-virtual {v1, v0}, Lcom/lostpixels/fieldservice/internal/report/ServiceSession;->setTracts(I)V

    goto :goto_0

    .line 284
    :cond_4
    iget-object v1, v1, Lcom/lostpixels/fieldservice/activities/visits/AddPublicationDlg;->mSession:Lcom/lostpixels/fieldservice/internal/report/ServiceSession;

    invoke-virtual {v1, v0}, Lcom/lostpixels/fieldservice/internal/report/ServiceSession;->setBrochures(I)V

    goto :goto_0

    .line 281
    :cond_5
    iget-object v1, v1, Lcom/lostpixels/fieldservice/activities/visits/AddPublicationDlg;->mSession:Lcom/lostpixels/fieldservice/internal/report/ServiceSession;

    invoke-virtual {v1, v0}, Lcom/lostpixels/fieldservice/internal/report/ServiceSession;->setBooks(I)V

    .line 300
    :cond_6
    :goto_0
    iget-object v1, p0, Lcom/lostpixels/fieldservice/activities/visits/AddPublicationDlg$4;->this$0:Lcom/lostpixels/fieldservice/activities/visits/AddPublicationDlg;

    iget-object v1, v1, Lcom/lostpixels/fieldservice/activities/visits/AddPublicationDlg;->mContext:Landroidx/fragment/app/FragmentActivity;

    invoke-static {v1}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v1

    .line 301
    iget-object v6, p0, Lcom/lostpixels/fieldservice/activities/visits/AddPublicationDlg$4;->this$0:Lcom/lostpixels/fieldservice/activities/visits/AddPublicationDlg;

    iget v6, v6, Lcom/lostpixels/fieldservice/activities/visits/AddPublicationDlg;->mePubType:I

    if-eqz v6, :cond_c

    if-eq v6, v0, :cond_b

    if-eq v6, v4, :cond_a

    if-eq v6, v3, :cond_9

    if-eq v6, v5, :cond_8

    if-eq v6, v2, :cond_7

    goto/16 :goto_1

    .line 318
    :cond_7
    invoke-interface {v1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    iget-object v2, p0, Lcom/lostpixels/fieldservice/activities/visits/AddPublicationDlg$4;->this$0:Lcom/lostpixels/fieldservice/activities/visits/AddPublicationDlg;

    invoke-static {v2}, Lcom/lostpixels/fieldservice/activities/visits/AddPublicationDlg;->-$$Nest$fgetpickerPublications(Lcom/lostpixels/fieldservice/activities/visits/AddPublicationDlg;)Lnet/simonvt/widget/NumberPicker;

    move-result-object v2

    invoke-virtual {v2}, Lnet/simonvt/widget/NumberPicker;->getValue()I

    move-result v2

    const-string v3, "LastMovie"

    invoke-interface {v0, v3, v2}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->apply()V

    goto/16 :goto_1

    .line 315
    :cond_8
    invoke-interface {v1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    iget-object v2, p0, Lcom/lostpixels/fieldservice/activities/visits/AddPublicationDlg$4;->this$0:Lcom/lostpixels/fieldservice/activities/visits/AddPublicationDlg;

    invoke-static {v2}, Lcom/lostpixels/fieldservice/activities/visits/AddPublicationDlg;->-$$Nest$fgetpickerPublications(Lcom/lostpixels/fieldservice/activities/visits/AddPublicationDlg;)Lnet/simonvt/widget/NumberPicker;

    move-result-object v2

    invoke-virtual {v2}, Lnet/simonvt/widget/NumberPicker;->getValue()I

    move-result v2

    const-string v3, "LastOther"

    invoke-interface {v0, v3, v2}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->apply()V

    goto :goto_1

    .line 312
    :cond_9
    invoke-interface {v1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    iget-object v2, p0, Lcom/lostpixels/fieldservice/activities/visits/AddPublicationDlg$4;->this$0:Lcom/lostpixels/fieldservice/activities/visits/AddPublicationDlg;

    invoke-static {v2}, Lcom/lostpixels/fieldservice/activities/visits/AddPublicationDlg;->-$$Nest$fgetpickerPublications(Lcom/lostpixels/fieldservice/activities/visits/AddPublicationDlg;)Lnet/simonvt/widget/NumberPicker;

    move-result-object v2

    invoke-virtual {v2}, Lnet/simonvt/widget/NumberPicker;->getValue()I

    move-result v2

    const-string v3, "LastVideo"

    invoke-interface {v0, v3, v2}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->apply()V

    goto :goto_1

    .line 309
    :cond_a
    invoke-interface {v1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    iget-object v2, p0, Lcom/lostpixels/fieldservice/activities/visits/AddPublicationDlg$4;->this$0:Lcom/lostpixels/fieldservice/activities/visits/AddPublicationDlg;

    invoke-static {v2}, Lcom/lostpixels/fieldservice/activities/visits/AddPublicationDlg;->-$$Nest$fgetpickerPublications(Lcom/lostpixels/fieldservice/activities/visits/AddPublicationDlg;)Lnet/simonvt/widget/NumberPicker;

    move-result-object v2

    invoke-virtual {v2}, Lnet/simonvt/widget/NumberPicker;->getValue()I

    move-result v2

    const-string v3, "LastTract"

    invoke-interface {v0, v3, v2}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->apply()V

    goto :goto_1

    .line 306
    :cond_b
    invoke-interface {v1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    iget-object v2, p0, Lcom/lostpixels/fieldservice/activities/visits/AddPublicationDlg$4;->this$0:Lcom/lostpixels/fieldservice/activities/visits/AddPublicationDlg;

    invoke-static {v2}, Lcom/lostpixels/fieldservice/activities/visits/AddPublicationDlg;->-$$Nest$fgetpickerPublications(Lcom/lostpixels/fieldservice/activities/visits/AddPublicationDlg;)Lnet/simonvt/widget/NumberPicker;

    move-result-object v2

    invoke-virtual {v2}, Lnet/simonvt/widget/NumberPicker;->getValue()I

    move-result v2

    const-string v3, "LastBroschure"

    invoke-interface {v0, v3, v2}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->apply()V

    goto :goto_1

    .line 303
    :cond_c
    invoke-interface {v1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    iget-object v2, p0, Lcom/lostpixels/fieldservice/activities/visits/AddPublicationDlg$4;->this$0:Lcom/lostpixels/fieldservice/activities/visits/AddPublicationDlg;

    invoke-static {v2}, Lcom/lostpixels/fieldservice/activities/visits/AddPublicationDlg;->-$$Nest$fgetpickerPublications(Lcom/lostpixels/fieldservice/activities/visits/AddPublicationDlg;)Lnet/simonvt/widget/NumberPicker;

    move-result-object v2

    invoke-virtual {v2}, Lnet/simonvt/widget/NumberPicker;->getValue()I

    move-result v2

    const-string v3, "LastBook"

    invoke-interface {v0, v3, v2}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 324
    :goto_1
    iget-object v0, p0, Lcom/lostpixels/fieldservice/activities/visits/AddPublicationDlg$4;->this$0:Lcom/lostpixels/fieldservice/activities/visits/AddPublicationDlg;

    iget-object v2, v0, Lcom/lostpixels/fieldservice/activities/visits/AddPublicationDlg;->mckAddToReport:Landroid/widget/CheckBox;

    if-eqz v2, :cond_e

    .line 325
    iget v0, v0, Lcom/lostpixels/fieldservice/activities/visits/AddPublicationDlg;->mePubType:I

    if-ne v0, v5, :cond_d

    const-string v0, "checkAddReportOther"

    goto :goto_2

    :cond_d
    const-string v0, "checkAddReport"

    .line 326
    :goto_2
    invoke-interface {v1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v1

    iget-object v2, p0, Lcom/lostpixels/fieldservice/activities/visits/AddPublicationDlg$4;->this$0:Lcom/lostpixels/fieldservice/activities/visits/AddPublicationDlg;

    iget-object v2, v2, Lcom/lostpixels/fieldservice/activities/visits/AddPublicationDlg;->mckAddToReport:Landroid/widget/CheckBox;

    invoke-virtual {v2}, Landroid/widget/CompoundButton;->isChecked()Z

    move-result v2

    invoke-interface {v1, v0, v2}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 329
    :cond_e
    iget-object v0, p0, Lcom/lostpixels/fieldservice/activities/visits/AddPublicationDlg$4;->this$0:Lcom/lostpixels/fieldservice/activities/visits/AddPublicationDlg;

    invoke-static {v0}, Lcom/lostpixels/fieldservice/activities/visits/AddPublicationDlg;->-$$Nest$fgetmedtComment(Lcom/lostpixels/fieldservice/activities/visits/AddPublicationDlg;)Landroid/widget/EditText;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    .line 330
    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_f

    const/4 v0, 0x0

    .line 332
    :cond_f
    iget-object v1, p0, Lcom/lostpixels/fieldservice/activities/visits/AddPublicationDlg$4;->this$0:Lcom/lostpixels/fieldservice/activities/visits/AddPublicationDlg;

    invoke-static {v1}, Lcom/lostpixels/fieldservice/activities/visits/AddPublicationDlg;->-$$Nest$fgetmListener(Lcom/lostpixels/fieldservice/activities/visits/AddPublicationDlg;)Lcom/lostpixels/fieldservice/activities/visits/AddPublicationDlg$OnAddPublicationListener;

    move-result-object v1

    if-eqz v1, :cond_10

    .line 333
    iget-object v1, p0, Lcom/lostpixels/fieldservice/activities/visits/AddPublicationDlg$4;->this$0:Lcom/lostpixels/fieldservice/activities/visits/AddPublicationDlg;

    invoke-static {v1}, Lcom/lostpixels/fieldservice/activities/visits/AddPublicationDlg;->-$$Nest$fgetmListener(Lcom/lostpixels/fieldservice/activities/visits/AddPublicationDlg;)Lcom/lostpixels/fieldservice/activities/visits/AddPublicationDlg$OnAddPublicationListener;

    move-result-object v1

    iget-object v2, p0, Lcom/lostpixels/fieldservice/activities/visits/AddPublicationDlg$4;->this$0:Lcom/lostpixels/fieldservice/activities/visits/AddPublicationDlg;

    iget-object v3, v2, Lcom/lostpixels/fieldservice/activities/visits/AddPublicationDlg;->mSession:Lcom/lostpixels/fieldservice/internal/report/ServiceSession;

    iget v2, v2, Lcom/lostpixels/fieldservice/activities/visits/AddPublicationDlg;->miID:I

    invoke-interface {v1, p1, v3, v2, v0}, Lcom/lostpixels/fieldservice/activities/visits/AddPublicationDlg$OnAddPublicationListener;->onAddPublication(Ljava/lang/String;Lcom/lostpixels/fieldservice/internal/report/ServiceSession;ILjava/lang/String;)V

    .line 334
    :cond_10
    iget-object p1, p0, Lcom/lostpixels/fieldservice/activities/visits/AddPublicationDlg$4;->this$0:Lcom/lostpixels/fieldservice/activities/visits/AddPublicationDlg;

    invoke-virtual {p1}, Landroid/app/Dialog;->dismiss()V

    return-void

    .line 264
    :cond_11
    :goto_3
    new-instance p1, Landroidx/appcompat/app/AlertDialog$Builder;

    iget-object v1, p0, Lcom/lostpixels/fieldservice/activities/visits/AddPublicationDlg$4;->this$0:Lcom/lostpixels/fieldservice/activities/visits/AddPublicationDlg;

    iget-object v1, v1, Lcom/lostpixels/fieldservice/activities/visits/AddPublicationDlg;->mContext:Landroidx/fragment/app/FragmentActivity;

    invoke-direct {p1, v1}, Landroidx/appcompat/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 265
    iget-object v1, p0, Lcom/lostpixels/fieldservice/activities/visits/AddPublicationDlg$4;->this$0:Lcom/lostpixels/fieldservice/activities/visits/AddPublicationDlg;

    iget-object v1, v1, Lcom/lostpixels/fieldservice/activities/visits/AddPublicationDlg;->mContext:Landroidx/fragment/app/FragmentActivity;

    const v2, 0x7f1200de

    invoke-virtual {v1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Landroidx/appcompat/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroidx/appcompat/app/AlertDialog$Builder;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroidx/appcompat/app/AlertDialog$Builder;->setCancelable(Z)Landroidx/appcompat/app/AlertDialog$Builder;

    move-result-object v0

    new-instance v1, Lcom/lostpixels/fieldservice/activities/visits/AddPublicationDlg$4$1;

    invoke-direct {v1, p0}, Lcom/lostpixels/fieldservice/activities/visits/AddPublicationDlg$4$1;-><init>(Lcom/lostpixels/fieldservice/activities/visits/AddPublicationDlg$4;)V

    .line 266
    const-string v2, "OK"

    invoke-virtual {v0, v2, v1}, Landroidx/appcompat/app/AlertDialog$Builder;->setPositiveButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroidx/appcompat/app/AlertDialog$Builder;

    .line 271
    invoke-virtual {p1}, Landroidx/appcompat/app/AlertDialog$Builder;->create()Landroidx/appcompat/app/AlertDialog;

    move-result-object p1

    invoke-virtual {p1}, Landroid/app/Dialog;->show()V

    return-void
.end method
