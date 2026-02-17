.class Lcom/lostpixels/fieldservice/dialogs/DontShowAgainDialog$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/lostpixels/fieldservice/dialogs/DontShowAgainDialog;->initDialog(Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/lostpixels/fieldservice/dialogs/DontShowAgainDialog;


# direct methods
.method constructor <init>(Lcom/lostpixels/fieldservice/dialogs/DontShowAgainDialog;)V
    .locals 0

    .line 56
    iput-object p1, p0, Lcom/lostpixels/fieldservice/dialogs/DontShowAgainDialog$1;->this$0:Lcom/lostpixels/fieldservice/dialogs/DontShowAgainDialog;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 2

    .line 59
    iget-object p1, p0, Lcom/lostpixels/fieldservice/dialogs/DontShowAgainDialog$1;->this$0:Lcom/lostpixels/fieldservice/dialogs/DontShowAgainDialog;

    invoke-static {p1}, Lcom/lostpixels/fieldservice/dialogs/DontShowAgainDialog;->-$$Nest$fgetchkDontShow(Lcom/lostpixels/fieldservice/dialogs/DontShowAgainDialog;)Landroid/widget/CheckBox;

    move-result-object p1

    invoke-virtual {p1}, Landroid/widget/CompoundButton;->isChecked()Z

    move-result p1

    if-eqz p1, :cond_0

    .line 60
    iget-object p1, p0, Lcom/lostpixels/fieldservice/dialogs/DontShowAgainDialog$1;->this$0:Lcom/lostpixels/fieldservice/dialogs/DontShowAgainDialog;

    invoke-static {p1}, Lcom/lostpixels/fieldservice/dialogs/DontShowAgainDialog;->-$$Nest$fgetmContext(Lcom/lostpixels/fieldservice/dialogs/DontShowAgainDialog;)Landroid/content/Context;

    move-result-object p1

    invoke-static {p1}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object p1

    .line 61
    invoke-interface {p1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object p1

    iget-object v0, p0, Lcom/lostpixels/fieldservice/dialogs/DontShowAgainDialog$1;->this$0:Lcom/lostpixels/fieldservice/dialogs/DontShowAgainDialog;

    invoke-static {v0}, Lcom/lostpixels/fieldservice/dialogs/DontShowAgainDialog;->-$$Nest$fgetmsPref(Lcom/lostpixels/fieldservice/dialogs/DontShowAgainDialog;)Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x0

    invoke-interface {p1, v0, v1}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    move-result-object p1

    invoke-interface {p1}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 64
    :cond_0
    iget-object p1, p0, Lcom/lostpixels/fieldservice/dialogs/DontShowAgainDialog$1;->this$0:Lcom/lostpixels/fieldservice/dialogs/DontShowAgainDialog;

    invoke-virtual {p1}, Landroid/app/Dialog;->dismiss()V

    return-void
.end method
