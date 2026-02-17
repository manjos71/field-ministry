.class Lcom/lostpixels/fieldservice/activities/settings/Preferences$13$2;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/lostpixels/fieldservice/activities/settings/Preferences$13;->onPreferenceClick(Landroid/preference/Preference;)Z
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/lostpixels/fieldservice/activities/settings/Preferences$13;


# direct methods
.method constructor <init>(Lcom/lostpixels/fieldservice/activities/settings/Preferences$13;)V
    .locals 0

    .line 552
    iput-object p1, p0, Lcom/lostpixels/fieldservice/activities/settings/Preferences$13$2;->this$1:Lcom/lostpixels/fieldservice/activities/settings/Preferences$13;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 4

    const/4 p1, 0x0

    const p2, 0x7f12004f

    .line 556
    :try_start_0
    new-instance v0, Landroid/provider/SearchRecentSuggestions;

    iget-object v1, p0, Lcom/lostpixels/fieldservice/activities/settings/Preferences$13$2;->this$1:Lcom/lostpixels/fieldservice/activities/settings/Preferences$13;

    iget-object v1, v1, Lcom/lostpixels/fieldservice/activities/settings/Preferences$13;->this$0:Lcom/lostpixels/fieldservice/activities/settings/Preferences;

    sget-object v2, Lcom/lostpixels/fieldservice/helpfunctions/SearchSuggestionsProvider;->AUTHORITY:Ljava/lang/String;

    const/4 v3, 0x1

    invoke-direct {v0, v1, v2, v3}, Landroid/provider/SearchRecentSuggestions;-><init>(Landroid/content/Context;Ljava/lang/String;I)V

    .line 559
    invoke-virtual {v0}, Landroid/provider/SearchRecentSuggestions;->clearHistory()V

    .line 561
    iget-object v0, p0, Lcom/lostpixels/fieldservice/activities/settings/Preferences$13$2;->this$1:Lcom/lostpixels/fieldservice/activities/settings/Preferences$13;

    iget-object v0, v0, Lcom/lostpixels/fieldservice/activities/settings/Preferences$13;->this$0:Lcom/lostpixels/fieldservice/activities/settings/Preferences;

    invoke-virtual {v0}, Landroid/content/ContextWrapper;->getBaseContext()Landroid/content/Context;

    move-result-object v0

    iget-object v1, p0, Lcom/lostpixels/fieldservice/activities/settings/Preferences$13$2;->this$1:Lcom/lostpixels/fieldservice/activities/settings/Preferences$13;

    iget-object v1, v1, Lcom/lostpixels/fieldservice/activities/settings/Preferences$13;->this$0:Lcom/lostpixels/fieldservice/activities/settings/Preferences;

    invoke-virtual {v1, p2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1, p1}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    .line 562
    invoke-virtual {v0}, Landroid/widget/Toast;->show()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    .line 564
    :catch_0
    iget-object v0, p0, Lcom/lostpixels/fieldservice/activities/settings/Preferences$13$2;->this$1:Lcom/lostpixels/fieldservice/activities/settings/Preferences$13;

    iget-object v0, v0, Lcom/lostpixels/fieldservice/activities/settings/Preferences$13;->this$0:Lcom/lostpixels/fieldservice/activities/settings/Preferences;

    invoke-virtual {v0}, Landroid/content/ContextWrapper;->getBaseContext()Landroid/content/Context;

    move-result-object v0

    iget-object v1, p0, Lcom/lostpixels/fieldservice/activities/settings/Preferences$13$2;->this$1:Lcom/lostpixels/fieldservice/activities/settings/Preferences$13;

    iget-object v1, v1, Lcom/lostpixels/fieldservice/activities/settings/Preferences$13;->this$0:Lcom/lostpixels/fieldservice/activities/settings/Preferences;

    invoke-virtual {v1, p2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p2

    invoke-static {v0, p2, p1}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object p1

    .line 565
    invoke-virtual {p1}, Landroid/widget/Toast;->show()V

    return-void
.end method
