.class Lcom/lostpixels/fieldservice/activities/territory/TerritoryListFragment$4;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/lostpixels/fieldservice/activities/territory/TerritoryListFragment;->onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/lostpixels/fieldservice/activities/territory/TerritoryListFragment;


# direct methods
.method constructor <init>(Lcom/lostpixels/fieldservice/activities/territory/TerritoryListFragment;)V
    .locals 0

    .line 264
    iput-object p1, p0, Lcom/lostpixels/fieldservice/activities/territory/TerritoryListFragment$4;->this$0:Lcom/lostpixels/fieldservice/activities/territory/TerritoryListFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 10

    .line 267
    const-string p1, "com.lostpixels.fieldservice.fileprovider"

    iget-object v0, p0, Lcom/lostpixels/fieldservice/activities/territory/TerritoryListFragment$4;->this$0:Lcom/lostpixels/fieldservice/activities/territory/TerritoryListFragment;

    invoke-static {v0}, Lcom/lostpixels/fieldservice/activities/territory/TerritoryListFragment;->-$$Nest$fgetmTerritory(Lcom/lostpixels/fieldservice/activities/territory/TerritoryListFragment;)Lcom/lostpixels/fieldservice/internal/ministry/Territory;

    move-result-object v0

    iget-object v1, p0, Lcom/lostpixels/fieldservice/activities/territory/TerritoryListFragment$4;->this$0:Lcom/lostpixels/fieldservice/activities/territory/TerritoryListFragment;

    invoke-virtual {v1}, Landroidx/fragment/app/Fragment;->requireContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/lostpixels/fieldservice/helpfunctions/HelpFunctions;->getTerritoryCard(Lcom/lostpixels/fieldservice/internal/ministry/Territory;Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    .line 269
    invoke-static {}, Lcom/lostpixels/fieldservice/activities/territory/TerritoryListFragment;->-$$Nest$sfgetmbTrackedTerritoryCardTapped()Z

    move-result v1

    const/4 v2, 0x1

    if-nez v1, :cond_0

    .line 270
    invoke-static {v2}, Lcom/lostpixels/fieldservice/activities/territory/TerritoryListFragment;->-$$Nest$sfputmbTrackedTerritoryCardTapped(Z)V

    .line 271
    iget-object v1, p0, Lcom/lostpixels/fieldservice/activities/territory/TerritoryListFragment$4;->this$0:Lcom/lostpixels/fieldservice/activities/territory/TerritoryListFragment;

    invoke-virtual {v1}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v1

    invoke-static {v1}, Lcom/lostpixels/fieldservice/MinistryAssistant;->hasPermissionToTrack(Landroid/app/Activity;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 272
    new-instance v1, Landroid/os/Bundle;

    invoke-direct {v1}, Landroid/os/Bundle;-><init>()V

    .line 273
    const-string v3, "item_id"

    const-string v4, "Tapping_the_card"

    invoke-virtual {v1, v3, v4}, Landroid/os/BaseBundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 274
    const-string v3, "item_name"

    invoke-virtual {v1, v3, v4}, Landroid/os/BaseBundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 275
    const-string v3, "content_type"

    const-string v4, "TerritoryCard"

    invoke-virtual {v1, v3, v4}, Landroid/os/BaseBundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 276
    iget-object v3, p0, Lcom/lostpixels/fieldservice/activities/territory/TerritoryListFragment$4;->this$0:Lcom/lostpixels/fieldservice/activities/territory/TerritoryListFragment;

    invoke-virtual {v3}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v3

    check-cast v3, Lcom/lostpixels/fieldservice/activities/base/BaseActivity;

    invoke-virtual {v3}, Lcom/lostpixels/fieldservice/activities/base/BaseActivity;->getTracker()Lcom/google/firebase/analytics/FirebaseAnalytics;

    move-result-object v3

    const-string v4, "select_content"

    invoke-virtual {v3, v4, v1}, Lcom/google/firebase/analytics/FirebaseAnalytics;->logEvent(Ljava/lang/String;Landroid/os/Bundle;)V

    :cond_0
    if-eqz v0, :cond_5

    .line 280
    new-instance v1, Ljava/io/File;

    invoke-direct {v1, v0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 281
    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v3

    if-eqz v3, :cond_5

    .line 282
    new-instance v3, Landroid/content/Intent;

    invoke-direct {v3}, Landroid/content/Intent;-><init>()V

    .line 283
    const-string v4, "android.intent.action.VIEW"

    invoke-virtual {v3, v4}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 284
    invoke-virtual {v3, v2}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 285
    invoke-static {v0}, Lcom/lostpixels/fieldservice/helpfunctions/HelpFunctions;->getMimeType(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 287
    :try_start_0
    iget-object v4, p0, Lcom/lostpixels/fieldservice/activities/territory/TerritoryListFragment$4;->this$0:Lcom/lostpixels/fieldservice/activities/territory/TerritoryListFragment;

    invoke-virtual {v4}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object v4

    invoke-static {v4, p1, v1}, Landroidx/core/content/FileProvider;->getUriForFile(Landroid/content/Context;Ljava/lang/String;Ljava/io/File;)Landroid/net/Uri;

    move-result-object v4

    .line 289
    iget-object v5, p0, Lcom/lostpixels/fieldservice/activities/territory/TerritoryListFragment$4;->this$0:Lcom/lostpixels/fieldservice/activities/territory/TerritoryListFragment;

    invoke-virtual {v5}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object v5

    invoke-virtual {v5}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v5

    const/high16 v6, 0x10000

    invoke-virtual {v5, v3, v6}, Landroid/content/pm/PackageManager;->queryIntentActivities(Landroid/content/Intent;I)Ljava/util/List;

    move-result-object v5

    .line 290
    invoke-interface {v5}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :goto_0
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    const/4 v8, 0x3

    if-eqz v7, :cond_1

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Landroid/content/pm/ResolveInfo;

    .line 291
    iget-object v7, v7, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v7, v7, Landroid/content/pm/ActivityInfo;->packageName:Ljava/lang/String;

    .line 292
    iget-object v9, p0, Lcom/lostpixels/fieldservice/activities/territory/TerritoryListFragment$4;->this$0:Lcom/lostpixels/fieldservice/activities/territory/TerritoryListFragment;

    invoke-virtual {v9}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object v9

    invoke-virtual {v9, v7, v4, v8}, Landroid/content/Context;->grantUriPermission(Ljava/lang/String;Landroid/net/Uri;I)V

    goto :goto_0

    :catch_0
    move-exception p1

    goto/16 :goto_2

    .line 295
    :cond_1
    invoke-virtual {v3, v4, v0}, Landroid/content/Intent;->setDataAndType(Landroid/net/Uri;Ljava/lang/String;)Landroid/content/Intent;
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    .line 300
    :try_start_1
    iget-object v4, p0, Lcom/lostpixels/fieldservice/activities/territory/TerritoryListFragment$4;->this$0:Lcom/lostpixels/fieldservice/activities/territory/TerritoryListFragment;

    invoke-virtual {v4, v3}, Landroidx/fragment/app/Fragment;->startActivity(Landroid/content/Intent;)V
    :try_end_1
    .catch Landroid/content/ActivityNotFoundException; {:try_start_1 .. :try_end_1} :catch_1
    .catch Ljava/lang/IllegalArgumentException; {:try_start_1 .. :try_end_1} :catch_0

    goto/16 :goto_3

    :catch_1
    nop

    if-nez v0, :cond_2

    .line 303
    :try_start_2
    const-string v0, ""

    .line 304
    :cond_2
    const-string v4, "image/"

    invoke-virtual {v0, v4}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v4

    if-eqz v4, :cond_3

    .line 305
    const-string v0, "image/*"

    .line 306
    :cond_3
    invoke-virtual {v3, v2}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 307
    iget-object v2, p0, Lcom/lostpixels/fieldservice/activities/territory/TerritoryListFragment$4;->this$0:Lcom/lostpixels/fieldservice/activities/territory/TerritoryListFragment;

    invoke-virtual {v2}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-static {v2, p1, v1}, Landroidx/core/content/FileProvider;->getUriForFile(Landroid/content/Context;Ljava/lang/String;Ljava/io/File;)Landroid/net/Uri;

    move-result-object p1

    .line 309
    iget-object v1, p0, Lcom/lostpixels/fieldservice/activities/territory/TerritoryListFragment$4;->this$0:Lcom/lostpixels/fieldservice/activities/territory/TerritoryListFragment;

    invoke-virtual {v1}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v1

    invoke-virtual {v1, v3, v6}, Landroid/content/pm/PackageManager;->queryIntentActivities(Landroid/content/Intent;I)Ljava/util/List;

    move-result-object v1

    .line 310
    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_4

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/content/pm/ResolveInfo;

    .line 311
    iget-object v2, v2, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v2, v2, Landroid/content/pm/ActivityInfo;->packageName:Ljava/lang/String;

    .line 312
    iget-object v4, p0, Lcom/lostpixels/fieldservice/activities/territory/TerritoryListFragment$4;->this$0:Lcom/lostpixels/fieldservice/activities/territory/TerritoryListFragment;

    invoke-virtual {v4}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object v4

    invoke-virtual {v4, v2, p1, v8}, Landroid/content/Context;->grantUriPermission(Ljava/lang/String;Landroid/net/Uri;I)V

    goto :goto_1

    .line 315
    :cond_4
    invoke-virtual {v3, p1, v0}, Landroid/content/Intent;->setDataAndType(Landroid/net/Uri;Ljava/lang/String;)Landroid/content/Intent;
    :try_end_2
    .catch Ljava/lang/IllegalArgumentException; {:try_start_2 .. :try_end_2} :catch_0

    .line 318
    :try_start_3
    iget-object p1, p0, Lcom/lostpixels/fieldservice/activities/territory/TerritoryListFragment$4;->this$0:Lcom/lostpixels/fieldservice/activities/territory/TerritoryListFragment;

    invoke-virtual {p1, v3}, Landroidx/fragment/app/Fragment;->startActivity(Landroid/content/Intent;)V
    :try_end_3
    .catch Landroid/content/ActivityNotFoundException; {:try_start_3 .. :try_end_3} :catch_2
    .catch Ljava/lang/IllegalArgumentException; {:try_start_3 .. :try_end_3} :catch_0

    goto :goto_3

    .line 320
    :catch_2
    :try_start_4
    iget-object p1, p0, Lcom/lostpixels/fieldservice/activities/territory/TerritoryListFragment$4;->this$0:Lcom/lostpixels/fieldservice/activities/territory/TerritoryListFragment;

    invoke-virtual {p1}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object p1

    iget-object v0, p0, Lcom/lostpixels/fieldservice/activities/territory/TerritoryListFragment$4;->this$0:Lcom/lostpixels/fieldservice/activities/territory/TerritoryListFragment;

    const v1, 0x7f1200bb

    invoke-virtual {v0, v1}, Landroidx/fragment/app/Fragment;->getString(I)Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x0

    invoke-static {p1, v0, v1}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object p1

    invoke-virtual {p1}, Landroid/widget/Toast;->show()V
    :try_end_4
    .catch Ljava/lang/IllegalArgumentException; {:try_start_4 .. :try_end_4} :catch_0

    goto :goto_3

    .line 325
    :goto_2
    invoke-virtual {p1}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-static {p1}, Lcom/lostpixels/fieldservice/helpfunctions/HelpFunctions;->getStackTrace(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1}, Lcom/lostpixels/fieldservice/utils/LogToSD;->write(Ljava/lang/String;Ljava/lang/String;)V

    :cond_5
    :goto_3
    return-void
.end method
