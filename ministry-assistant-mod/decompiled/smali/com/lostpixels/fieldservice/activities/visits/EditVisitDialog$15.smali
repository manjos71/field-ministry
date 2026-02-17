.class Lcom/lostpixels/fieldservice/activities/visits/EditVisitDialog$15;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/lostpixels/fieldservice/activities/visits/EditVisitDialog;->showEditScrptureDlg(Ljava/lang/String;Ljava/lang/String;Landroid/widget/BaseAdapter;I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/lostpixels/fieldservice/activities/visits/EditVisitDialog;

.field final synthetic val$adapter:Landroid/widget/BaseAdapter;

.field final synthetic val$content:Landroid/widget/EditText;

.field final synthetic val$dialog:Landroid/app/Dialog;

.field final synthetic val$position:I

.field final synthetic val$prefs:Landroid/content/SharedPreferences;

.field final synthetic val$sVerse:Ljava/lang/String;

.field final synthetic val$sortScriptures:Landroid/widget/CheckBox;

.field final synthetic val$verse:Landroid/widget/EditText;


# direct methods
.method constructor <init>(Lcom/lostpixels/fieldservice/activities/visits/EditVisitDialog;Ljava/lang/String;Landroid/widget/EditText;Landroid/widget/EditText;ILandroid/widget/CheckBox;Landroid/content/SharedPreferences;Landroid/widget/BaseAdapter;Landroid/app/Dialog;)V
    .locals 0

    .line 732
    iput-object p1, p0, Lcom/lostpixels/fieldservice/activities/visits/EditVisitDialog$15;->this$0:Lcom/lostpixels/fieldservice/activities/visits/EditVisitDialog;

    iput-object p2, p0, Lcom/lostpixels/fieldservice/activities/visits/EditVisitDialog$15;->val$sVerse:Ljava/lang/String;

    iput-object p3, p0, Lcom/lostpixels/fieldservice/activities/visits/EditVisitDialog$15;->val$verse:Landroid/widget/EditText;

    iput-object p4, p0, Lcom/lostpixels/fieldservice/activities/visits/EditVisitDialog$15;->val$content:Landroid/widget/EditText;

    iput p5, p0, Lcom/lostpixels/fieldservice/activities/visits/EditVisitDialog$15;->val$position:I

    iput-object p6, p0, Lcom/lostpixels/fieldservice/activities/visits/EditVisitDialog$15;->val$sortScriptures:Landroid/widget/CheckBox;

    iput-object p7, p0, Lcom/lostpixels/fieldservice/activities/visits/EditVisitDialog$15;->val$prefs:Landroid/content/SharedPreferences;

    iput-object p8, p0, Lcom/lostpixels/fieldservice/activities/visits/EditVisitDialog$15;->val$adapter:Landroid/widget/BaseAdapter;

    iput-object p9, p0, Lcom/lostpixels/fieldservice/activities/visits/EditVisitDialog$15;->val$dialog:Landroid/app/Dialog;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 6

    .line 736
    iget-object p1, p0, Lcom/lostpixels/fieldservice/activities/visits/EditVisitDialog$15;->val$sVerse:Ljava/lang/String;

    invoke-virtual {p1}, Ljava/lang/String;->isEmpty()Z

    move-result p1

    if-nez p1, :cond_0

    .line 737
    iget-object p1, p0, Lcom/lostpixels/fieldservice/activities/visits/EditVisitDialog$15;->this$0:Lcom/lostpixels/fieldservice/activities/visits/EditVisitDialog;

    invoke-static {p1}, Lcom/lostpixels/fieldservice/activities/visits/EditVisitDialog;->access$400(Lcom/lostpixels/fieldservice/activities/visits/EditVisitDialog;)Lio/realm/Realm;

    move-result-object p1

    invoke-static {p1}, Lcom/lostpixels/fieldservice/internal/ministry/MinistryManager;->getInstance(Lio/realm/Realm;)Lcom/lostpixels/fieldservice/internal/ministry/MinistryManager;

    move-result-object p1

    iget-object v0, p0, Lcom/lostpixels/fieldservice/activities/visits/EditVisitDialog$15;->val$sVerse:Ljava/lang/String;

    invoke-virtual {p1, v0}, Lcom/lostpixels/fieldservice/internal/ministry/MinistryManager;->removeScripture(Ljava/lang/String;)V

    .line 738
    :cond_0
    iget-object p1, p0, Lcom/lostpixels/fieldservice/activities/visits/EditVisitDialog$15;->val$verse:Landroid/widget/EditText;

    invoke-virtual {p1}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/String;->isEmpty()Z

    move-result p1

    if-nez p1, :cond_1

    .line 739
    iget-object p1, p0, Lcom/lostpixels/fieldservice/activities/visits/EditVisitDialog$15;->this$0:Lcom/lostpixels/fieldservice/activities/visits/EditVisitDialog;

    invoke-static {p1}, Lcom/lostpixels/fieldservice/activities/visits/EditVisitDialog;->access$500(Lcom/lostpixels/fieldservice/activities/visits/EditVisitDialog;)Lio/realm/Realm;

    move-result-object p1

    invoke-static {p1}, Lcom/lostpixels/fieldservice/internal/ministry/MinistryManager;->getInstance(Lio/realm/Realm;)Lcom/lostpixels/fieldservice/internal/ministry/MinistryManager;

    move-result-object v0

    iget-object v1, p0, Lcom/lostpixels/fieldservice/activities/visits/EditVisitDialog$15;->this$0:Lcom/lostpixels/fieldservice/activities/visits/EditVisitDialog;

    iget-object p1, p0, Lcom/lostpixels/fieldservice/activities/visits/EditVisitDialog$15;->val$verse:Landroid/widget/EditText;

    invoke-virtual {p1}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v2

    iget-object p1, p0, Lcom/lostpixels/fieldservice/activities/visits/EditVisitDialog$15;->val$content:Landroid/widget/EditText;

    invoke-virtual {p1}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v3

    iget v4, p0, Lcom/lostpixels/fieldservice/activities/visits/EditVisitDialog$15;->val$position:I

    iget-object p1, p0, Lcom/lostpixels/fieldservice/activities/visits/EditVisitDialog$15;->val$sortScriptures:Landroid/widget/CheckBox;

    invoke-virtual {p1}, Landroid/widget/CompoundButton;->isChecked()Z

    move-result v5

    invoke-virtual/range {v0 .. v5}, Lcom/lostpixels/fieldservice/internal/ministry/MinistryManager;->addScriptureIfNew(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;IZ)V

    .line 741
    :cond_1
    iget-object p1, p0, Lcom/lostpixels/fieldservice/activities/visits/EditVisitDialog$15;->this$0:Lcom/lostpixels/fieldservice/activities/visits/EditVisitDialog;

    invoke-virtual {p1}, Lcom/lostpixels/fieldservice/activities/visits/EditVisitDialog;->fillScriptureArray()V

    .line 742
    iget-object p1, p0, Lcom/lostpixels/fieldservice/activities/visits/EditVisitDialog$15;->val$prefs:Landroid/content/SharedPreferences;

    invoke-interface {p1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object p1

    iget-object v0, p0, Lcom/lostpixels/fieldservice/activities/visits/EditVisitDialog$15;->val$sortScriptures:Landroid/widget/CheckBox;

    invoke-virtual {v0}, Landroid/widget/CompoundButton;->isChecked()Z

    move-result v0

    const-string v1, "SortScriptures"

    invoke-interface {p1, v1, v0}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    move-result-object p1

    invoke-interface {p1}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 744
    iget-object p1, p0, Lcom/lostpixels/fieldservice/activities/visits/EditVisitDialog$15;->val$adapter:Landroid/widget/BaseAdapter;

    invoke-virtual {p1}, Landroid/widget/BaseAdapter;->notifyDataSetChanged()V

    .line 746
    :try_start_0
    iget-object p1, p0, Lcom/lostpixels/fieldservice/activities/visits/EditVisitDialog$15;->val$dialog:Landroid/app/Dialog;

    invoke-virtual {p1}, Landroid/app/Dialog;->dismiss()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    return-void
.end method
