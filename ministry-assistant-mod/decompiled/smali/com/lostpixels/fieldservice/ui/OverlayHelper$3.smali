.class Lcom/lostpixels/fieldservice/ui/OverlayHelper$3;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Luk/co/samuelwall/materialtaptargetprompt/MaterialTapTargetPrompt$PromptStateChangeListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/lostpixels/fieldservice/ui/OverlayHelper;->showTapTargetPrompt(Landroid/app/Activity;Landroid/view/View;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic val$id:Ljava/lang/String;

.field final synthetic val$prefs:Landroid/content/SharedPreferences;


# direct methods
.method constructor <init>(Landroid/content/SharedPreferences;Ljava/lang/String;)V
    .locals 0

    .line 79
    iput-object p1, p0, Lcom/lostpixels/fieldservice/ui/OverlayHelper$3;->val$prefs:Landroid/content/SharedPreferences;

    iput-object p2, p0, Lcom/lostpixels/fieldservice/ui/OverlayHelper$3;->val$id:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onPromptStateChanged(Luk/co/samuelwall/materialtaptargetprompt/MaterialTapTargetPrompt;I)V
    .locals 1

    const/4 p1, 0x6

    if-ne p2, p1, :cond_0

    .line 83
    iget-object p1, p0, Lcom/lostpixels/fieldservice/ui/OverlayHelper$3;->val$prefs:Landroid/content/SharedPreferences;

    invoke-interface {p1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object p1

    iget-object p2, p0, Lcom/lostpixels/fieldservice/ui/OverlayHelper$3;->val$id:Ljava/lang/String;

    const/4 v0, 0x0

    invoke-interface {p1, p2, v0}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    move-result-object p1

    invoke-interface {p1}, Landroid/content/SharedPreferences$Editor;->commit()Z

    :cond_0
    return-void
.end method
