.class Lcom/lostpixels/fieldservice/activities/backup/ImportDialog$5$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/lostpixels/fieldservice/activities/backup/ImportDialog$5;->onUrlDownloaded(ZLcom/lostpixels/fieldservice/internal/ministry/Territory;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/lostpixels/fieldservice/activities/backup/ImportDialog$5;


# direct methods
.method constructor <init>(Lcom/lostpixels/fieldservice/activities/backup/ImportDialog$5;)V
    .locals 0

    .line 436
    iput-object p1, p0, Lcom/lostpixels/fieldservice/activities/backup/ImportDialog$5$1;->this$1:Lcom/lostpixels/fieldservice/activities/backup/ImportDialog$5;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 3

    .line 440
    iget-object p1, p0, Lcom/lostpixels/fieldservice/activities/backup/ImportDialog$5$1;->this$1:Lcom/lostpixels/fieldservice/activities/backup/ImportDialog$5;

    iget-object p1, p1, Lcom/lostpixels/fieldservice/activities/backup/ImportDialog$5;->this$0:Lcom/lostpixels/fieldservice/activities/backup/ImportDialog;

    iget-boolean p1, p1, Lcom/lostpixels/fieldservice/activities/backup/ImportDialog;->mbFileLoaded:Z

    if-nez p1, :cond_0

    .line 441
    invoke-static {}, Lcom/lostpixels/fieldservice/helpfunctions/FileManager;->waitForIO()V

    .line 443
    :cond_0
    invoke-static {}, Lcom/lostpixels/fieldservice/ui/nowcards/NowCardListCreator;->resetCards()V

    .line 448
    :try_start_0
    iget-object p1, p0, Lcom/lostpixels/fieldservice/activities/backup/ImportDialog$5$1;->this$1:Lcom/lostpixels/fieldservice/activities/backup/ImportDialog$5;

    iget-object p1, p1, Lcom/lostpixels/fieldservice/activities/backup/ImportDialog$5;->this$0:Lcom/lostpixels/fieldservice/activities/backup/ImportDialog;

    iget-object v0, p1, Lcom/lostpixels/fieldservice/activities/backup/ImportDialog;->mUrlTerritory:Lcom/lostpixels/fieldservice/internal/ministry/Territory;

    iget-object p1, p1, Lcom/lostpixels/fieldservice/activities/backup/ImportDialog;->mCity:Landroid/widget/AutoCompleteTextView;

    invoke-virtual {p1}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Lcom/lostpixels/fieldservice/internal/ministry/Territory;->setCity(Ljava/lang/String;)V

    .line 449
    iget-object p1, p0, Lcom/lostpixels/fieldservice/activities/backup/ImportDialog$5$1;->this$1:Lcom/lostpixels/fieldservice/activities/backup/ImportDialog$5;

    iget-object p1, p1, Lcom/lostpixels/fieldservice/activities/backup/ImportDialog$5;->this$0:Lcom/lostpixels/fieldservice/activities/backup/ImportDialog;

    iget-object v0, p1, Lcom/lostpixels/fieldservice/activities/backup/ImportDialog;->mUrlTerritory:Lcom/lostpixels/fieldservice/internal/ministry/Territory;

    iget-object p1, p1, Lcom/lostpixels/fieldservice/activities/backup/ImportDialog;->mNeighborhood:Landroid/widget/AutoCompleteTextView;

    invoke-virtual {p1}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Lcom/lostpixels/fieldservice/internal/ministry/Territory;->setRegion(Ljava/lang/String;)V

    .line 450
    iget-object p1, p0, Lcom/lostpixels/fieldservice/activities/backup/ImportDialog$5$1;->this$1:Lcom/lostpixels/fieldservice/activities/backup/ImportDialog$5;

    iget-object p1, p1, Lcom/lostpixels/fieldservice/activities/backup/ImportDialog$5;->this$0:Lcom/lostpixels/fieldservice/activities/backup/ImportDialog;

    iget-object v0, p1, Lcom/lostpixels/fieldservice/activities/backup/ImportDialog;->mUrlTerritory:Lcom/lostpixels/fieldservice/internal/ministry/Territory;

    iget-object p1, p1, Lcom/lostpixels/fieldservice/activities/backup/ImportDialog;->mTerritoryName:Landroid/widget/EditText;

    invoke-virtual {p1}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Lcom/lostpixels/fieldservice/internal/ministry/Territory;->setName(Ljava/lang/String;)V

    .line 451
    iget-object p1, p0, Lcom/lostpixels/fieldservice/activities/backup/ImportDialog$5$1;->this$1:Lcom/lostpixels/fieldservice/activities/backup/ImportDialog$5;

    iget-object p1, p1, Lcom/lostpixels/fieldservice/activities/backup/ImportDialog$5;->this$0:Lcom/lostpixels/fieldservice/activities/backup/ImportDialog;

    invoke-static {p1}, Lcom/lostpixels/fieldservice/activities/backup/ImportDialog;->-$$Nest$fgetrealm(Lcom/lostpixels/fieldservice/activities/backup/ImportDialog;)Lio/realm/Realm;

    move-result-object p1

    invoke-static {p1}, Lcom/lostpixels/fieldservice/internal/ministry/MinistryManager;->getInstance(Lio/realm/Realm;)Lcom/lostpixels/fieldservice/internal/ministry/MinistryManager;

    move-result-object p1

    iget-object v0, p0, Lcom/lostpixels/fieldservice/activities/backup/ImportDialog$5$1;->this$1:Lcom/lostpixels/fieldservice/activities/backup/ImportDialog$5;

    iget-object v0, v0, Lcom/lostpixels/fieldservice/activities/backup/ImportDialog$5;->this$0:Lcom/lostpixels/fieldservice/activities/backup/ImportDialog;

    iget-object v1, v0, Lcom/lostpixels/fieldservice/activities/backup/ImportDialog;->mNeighborhood:Landroid/widget/AutoCompleteTextView;

    invoke-virtual {v1}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Lcom/lostpixels/fieldservice/internal/ministry/MinistryManager;->addSuburbIfNew(Landroid/content/Context;Ljava/lang/String;)V

    .line 452
    iget-object p1, p0, Lcom/lostpixels/fieldservice/activities/backup/ImportDialog$5$1;->this$1:Lcom/lostpixels/fieldservice/activities/backup/ImportDialog$5;

    iget-object p1, p1, Lcom/lostpixels/fieldservice/activities/backup/ImportDialog$5;->this$0:Lcom/lostpixels/fieldservice/activities/backup/ImportDialog;

    invoke-static {p1}, Lcom/lostpixels/fieldservice/activities/backup/ImportDialog;->-$$Nest$fgetrealm(Lcom/lostpixels/fieldservice/activities/backup/ImportDialog;)Lio/realm/Realm;

    move-result-object p1

    invoke-static {p1}, Lcom/lostpixels/fieldservice/internal/ministry/MinistryManager;->getInstance(Lio/realm/Realm;)Lcom/lostpixels/fieldservice/internal/ministry/MinistryManager;

    move-result-object p1

    iget-object v0, p0, Lcom/lostpixels/fieldservice/activities/backup/ImportDialog$5$1;->this$1:Lcom/lostpixels/fieldservice/activities/backup/ImportDialog$5;

    iget-object v0, v0, Lcom/lostpixels/fieldservice/activities/backup/ImportDialog$5;->this$0:Lcom/lostpixels/fieldservice/activities/backup/ImportDialog;

    iget-object v1, v0, Lcom/lostpixels/fieldservice/activities/backup/ImportDialog;->mCity:Landroid/widget/AutoCompleteTextView;

    invoke-virtual {v1}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Lcom/lostpixels/fieldservice/internal/ministry/MinistryManager;->addCityIfNew(Landroid/content/Context;Ljava/lang/String;)V

    .line 454
    iget-object p1, p0, Lcom/lostpixels/fieldservice/activities/backup/ImportDialog$5$1;->this$1:Lcom/lostpixels/fieldservice/activities/backup/ImportDialog$5;

    iget-object p1, p1, Lcom/lostpixels/fieldservice/activities/backup/ImportDialog$5;->this$0:Lcom/lostpixels/fieldservice/activities/backup/ImportDialog;

    iget-object p1, p1, Lcom/lostpixels/fieldservice/activities/backup/ImportDialog;->mUrlTerritory:Lcom/lostpixels/fieldservice/internal/ministry/Territory;

    invoke-virtual {p1}, Lcom/lostpixels/fieldservice/internal/ministry/Territory;->getTerritoryCard()Ljava/lang/String;

    move-result-object p1

    if-eqz p1, :cond_1

    new-instance p1, Ljava/io/File;

    iget-object v0, p0, Lcom/lostpixels/fieldservice/activities/backup/ImportDialog$5$1;->this$1:Lcom/lostpixels/fieldservice/activities/backup/ImportDialog$5;

    iget-object v0, v0, Lcom/lostpixels/fieldservice/activities/backup/ImportDialog$5;->this$0:Lcom/lostpixels/fieldservice/activities/backup/ImportDialog;

    iget-object v0, v0, Lcom/lostpixels/fieldservice/activities/backup/ImportDialog;->mUrlTerritory:Lcom/lostpixels/fieldservice/internal/ministry/Territory;

    invoke-virtual {v0}, Lcom/lostpixels/fieldservice/internal/ministry/Territory;->getTerritoryCard()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p1, v0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1}, Ljava/io/File;->exists()Z

    move-result p1

    if-eqz p1, :cond_1

    .line 455
    iget-object p1, p0, Lcom/lostpixels/fieldservice/activities/backup/ImportDialog$5$1;->this$1:Lcom/lostpixels/fieldservice/activities/backup/ImportDialog$5;

    iget-object p1, p1, Lcom/lostpixels/fieldservice/activities/backup/ImportDialog$5;->this$0:Lcom/lostpixels/fieldservice/activities/backup/ImportDialog;

    iget-object v0, p1, Lcom/lostpixels/fieldservice/activities/backup/ImportDialog;->mUrlTerritory:Lcom/lostpixels/fieldservice/internal/ministry/Territory;

    const-string v1, "jpg"

    invoke-static {p1, v0, v1}, Lcom/lostpixels/fieldservice/utils/StorageUtils;->createNewTerritoryImageFile(Landroid/content/Context;Lcom/lostpixels/fieldservice/internal/ministry/Territory;Ljava/lang/String;)Ljava/io/File;

    move-result-object p1

    .line 457
    iget-object v0, p0, Lcom/lostpixels/fieldservice/activities/backup/ImportDialog$5$1;->this$1:Lcom/lostpixels/fieldservice/activities/backup/ImportDialog$5;

    iget-object v0, v0, Lcom/lostpixels/fieldservice/activities/backup/ImportDialog$5;->this$0:Lcom/lostpixels/fieldservice/activities/backup/ImportDialog;

    iget-object v0, v0, Lcom/lostpixels/fieldservice/activities/backup/ImportDialog;->mUrlTerritory:Lcom/lostpixels/fieldservice/internal/ministry/Territory;

    invoke-virtual {v0}, Lcom/lostpixels/fieldservice/internal/ministry/Territory;->getTerritoryCard()Ljava/lang/String;

    move-result-object v0

    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    invoke-virtual {p1}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/lostpixels/fieldservice/helpfunctions/FileManager;->copyFile(Ljava/lang/String;Ljava/lang/String;)V

    .line 458
    new-instance v0, Ljava/io/File;

    iget-object v1, p0, Lcom/lostpixels/fieldservice/activities/backup/ImportDialog$5$1;->this$1:Lcom/lostpixels/fieldservice/activities/backup/ImportDialog$5;

    iget-object v1, v1, Lcom/lostpixels/fieldservice/activities/backup/ImportDialog$5;->this$0:Lcom/lostpixels/fieldservice/activities/backup/ImportDialog;

    iget-object v1, v1, Lcom/lostpixels/fieldservice/activities/backup/ImportDialog;->mUrlTerritory:Lcom/lostpixels/fieldservice/internal/ministry/Territory;

    invoke-virtual {v1}, Lcom/lostpixels/fieldservice/internal/ministry/Territory;->getTerritoryCard()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 459
    invoke-virtual {v0}, Ljava/io/File;->delete()Z

    .line 460
    iget-object v0, p0, Lcom/lostpixels/fieldservice/activities/backup/ImportDialog$5$1;->this$1:Lcom/lostpixels/fieldservice/activities/backup/ImportDialog$5;

    iget-object v0, v0, Lcom/lostpixels/fieldservice/activities/backup/ImportDialog$5;->this$0:Lcom/lostpixels/fieldservice/activities/backup/ImportDialog;

    iget-object v0, v0, Lcom/lostpixels/fieldservice/activities/backup/ImportDialog;->mUrlTerritory:Lcom/lostpixels/fieldservice/internal/ministry/Territory;

    invoke-virtual {p1}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Lcom/lostpixels/fieldservice/internal/ministry/Territory;->setTerritoryCardPath(Ljava/lang/String;)V

    goto :goto_0

    :catch_0
    move-exception p1

    goto :goto_1

    .line 464
    :cond_1
    :goto_0
    iget-object p1, p0, Lcom/lostpixels/fieldservice/activities/backup/ImportDialog$5$1;->this$1:Lcom/lostpixels/fieldservice/activities/backup/ImportDialog$5;

    iget-object p1, p1, Lcom/lostpixels/fieldservice/activities/backup/ImportDialog$5;->this$0:Lcom/lostpixels/fieldservice/activities/backup/ImportDialog;

    invoke-static {p1}, Lcom/lostpixels/fieldservice/activities/backup/ImportDialog;->-$$Nest$fgetrealm(Lcom/lostpixels/fieldservice/activities/backup/ImportDialog;)Lio/realm/Realm;

    move-result-object p1

    invoke-static {p1}, Lcom/lostpixels/fieldservice/internal/ministry/MinistryManager;->getInstance(Lio/realm/Realm;)Lcom/lostpixels/fieldservice/internal/ministry/MinistryManager;

    move-result-object p1

    iget-object v0, p0, Lcom/lostpixels/fieldservice/activities/backup/ImportDialog$5$1;->this$1:Lcom/lostpixels/fieldservice/activities/backup/ImportDialog$5;

    iget-object v0, v0, Lcom/lostpixels/fieldservice/activities/backup/ImportDialog$5;->this$0:Lcom/lostpixels/fieldservice/activities/backup/ImportDialog;

    invoke-static {v0}, Lcom/lostpixels/fieldservice/activities/backup/ImportDialog;->-$$Nest$fgetrealm(Lcom/lostpixels/fieldservice/activities/backup/ImportDialog;)Lio/realm/Realm;

    move-result-object v0

    iget-object v1, p0, Lcom/lostpixels/fieldservice/activities/backup/ImportDialog$5$1;->this$1:Lcom/lostpixels/fieldservice/activities/backup/ImportDialog$5;

    iget-object v1, v1, Lcom/lostpixels/fieldservice/activities/backup/ImportDialog$5;->this$0:Lcom/lostpixels/fieldservice/activities/backup/ImportDialog;

    iget-object v1, v1, Lcom/lostpixels/fieldservice/activities/backup/ImportDialog;->mUrlTerritory:Lcom/lostpixels/fieldservice/internal/ministry/Territory;

    invoke-virtual {p1, v0, v1}, Lcom/lostpixels/fieldservice/internal/ministry/MinistryManager;->addTerritory(Lio/realm/Realm;Lcom/lostpixels/fieldservice/internal/ministry/Territory;)V

    .line 466
    iget-object p1, p0, Lcom/lostpixels/fieldservice/activities/backup/ImportDialog$5$1;->this$1:Lcom/lostpixels/fieldservice/activities/backup/ImportDialog$5;

    iget-object p1, p1, Lcom/lostpixels/fieldservice/activities/backup/ImportDialog$5;->this$0:Lcom/lostpixels/fieldservice/activities/backup/ImportDialog;

    .line 467
    invoke-virtual {p1}, Landroid/content/ContextWrapper;->getBaseContext()Landroid/content/Context;

    move-result-object p1

    invoke-static {p1}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object p1

    .line 468
    invoke-interface {p1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object p1

    const-string v0, "DataImported"

    const/4 v1, 0x1

    invoke-interface {p1, v0, v1}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    move-result-object p1

    invoke-interface {p1}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 469
    iget-object p1, p0, Lcom/lostpixels/fieldservice/activities/backup/ImportDialog$5$1;->this$1:Lcom/lostpixels/fieldservice/activities/backup/ImportDialog$5;

    iget-object p1, p1, Lcom/lostpixels/fieldservice/activities/backup/ImportDialog$5;->this$0:Lcom/lostpixels/fieldservice/activities/backup/ImportDialog;

    const v0, 0x7f120420

    invoke-virtual {p1, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, v0, v1}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object p1

    .line 470
    invoke-virtual {p1}, Landroid/widget/Toast;->show()V

    .line 471
    iget-object p1, p0, Lcom/lostpixels/fieldservice/activities/backup/ImportDialog$5$1;->this$1:Lcom/lostpixels/fieldservice/activities/backup/ImportDialog$5;

    iget-object p1, p1, Lcom/lostpixels/fieldservice/activities/backup/ImportDialog$5;->this$0:Lcom/lostpixels/fieldservice/activities/backup/ImportDialog;

    invoke-static {p1}, Lcom/lostpixels/fieldservice/activities/backup/ImportDialog;->-$$Nest$msaveAndQuit(Lcom/lostpixels/fieldservice/activities/backup/ImportDialog;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    .line 474
    :goto_1
    iget-object v0, p0, Lcom/lostpixels/fieldservice/activities/backup/ImportDialog$5$1;->this$1:Lcom/lostpixels/fieldservice/activities/backup/ImportDialog$5;

    iget-object v0, v0, Lcom/lostpixels/fieldservice/activities/backup/ImportDialog$5;->this$0:Lcom/lostpixels/fieldservice/activities/backup/ImportDialog;

    const v1, 0x7f12041c

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    .line 476
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Exception cought: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 477
    invoke-virtual {p1}, Ljava/lang/Throwable;->getCause()Ljava/lang/Throwable;

    move-result-object v1

    if-eqz v1, :cond_2

    invoke-virtual {p1}, Ljava/lang/Throwable;->getCause()Ljava/lang/Throwable;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Throwable;->toString()Ljava/lang/String;

    move-result-object v1

    goto :goto_2

    :cond_2
    const-string v1, ""

    :goto_2
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 476
    const-string v1, "restoreFileFromIntent - 2"

    invoke-static {v1, v0}, Lcom/lostpixels/fieldservice/utils/LogToSD;->write(Ljava/lang/String;Ljava/lang/String;)V

    .line 478
    const-string v0, "Stacktrace"

    invoke-static {p1}, Lcom/lostpixels/fieldservice/helpfunctions/HelpFunctions;->getStackTrace(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1}, Lcom/lostpixels/fieldservice/utils/LogToSD;->write(Ljava/lang/String;Ljava/lang/String;)V

    .line 479
    iget-object p1, p0, Lcom/lostpixels/fieldservice/activities/backup/ImportDialog$5$1;->this$1:Lcom/lostpixels/fieldservice/activities/backup/ImportDialog$5;

    iget-object p1, p1, Lcom/lostpixels/fieldservice/activities/backup/ImportDialog$5;->this$0:Lcom/lostpixels/fieldservice/activities/backup/ImportDialog;

    invoke-virtual {p1}, Landroid/app/Activity;->finish()V

    return-void
.end method
