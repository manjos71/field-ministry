.class Lcom/lostpixels/fieldservice/activities/territory/TerritoryAdder$4;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/lostpixels/fieldservice/download/UrlDownloader$UrlDownloaderListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/lostpixels/fieldservice/activities/territory/TerritoryAdder;->downloadTerritory(Ljava/lang/String;Landroid/app/ProgressDialog;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/lostpixels/fieldservice/activities/territory/TerritoryAdder;

.field final synthetic val$progress:Landroid/app/ProgressDialog;

.field final synthetic val$url:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/lostpixels/fieldservice/activities/territory/TerritoryAdder;Landroid/app/ProgressDialog;Ljava/lang/String;)V
    .locals 0

    .line 361
    iput-object p1, p0, Lcom/lostpixels/fieldservice/activities/territory/TerritoryAdder$4;->this$0:Lcom/lostpixels/fieldservice/activities/territory/TerritoryAdder;

    iput-object p2, p0, Lcom/lostpixels/fieldservice/activities/territory/TerritoryAdder$4;->val$progress:Landroid/app/ProgressDialog;

    iput-object p3, p0, Lcom/lostpixels/fieldservice/activities/territory/TerritoryAdder$4;->val$url:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onUrlDownloaded(ZLcom/lostpixels/fieldservice/internal/ministry/Territory;)V
    .locals 2

    .line 365
    :try_start_0
    iget-object v0, p0, Lcom/lostpixels/fieldservice/activities/territory/TerritoryAdder$4;->val$progress:Landroid/app/ProgressDialog;

    invoke-virtual {v0}, Landroid/app/Dialog;->dismiss()V
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    nop

    :goto_0
    const/4 v0, 0x0

    if-eqz p1, :cond_2

    .line 370
    iget-object p1, p0, Lcom/lostpixels/fieldservice/activities/territory/TerritoryAdder$4;->this$0:Lcom/lostpixels/fieldservice/activities/territory/TerritoryAdder;

    invoke-static {p1}, Lcom/lostpixels/fieldservice/activities/territory/TerritoryAdder;->-$$Nest$fgetmbIsUpdating(Lcom/lostpixels/fieldservice/activities/territory/TerritoryAdder;)Z

    move-result p1

    if-eqz p1, :cond_0

    .line 371
    iget-object p1, p0, Lcom/lostpixels/fieldservice/activities/territory/TerritoryAdder$4;->this$0:Lcom/lostpixels/fieldservice/activities/territory/TerritoryAdder;

    invoke-static {p1}, Lcom/lostpixels/fieldservice/activities/territory/TerritoryAdder;->-$$Nest$fgetmTerritory(Lcom/lostpixels/fieldservice/activities/territory/TerritoryAdder;)Lcom/lostpixels/fieldservice/internal/ministry/Territory;

    move-result-object p1

    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    invoke-virtual {p2}, Lcom/lostpixels/fieldservice/internal/ministry/Territory;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Lcom/lostpixels/fieldservice/internal/ministry/Territory;->setName(Ljava/lang/String;)V

    .line 372
    iget-object p1, p0, Lcom/lostpixels/fieldservice/activities/territory/TerritoryAdder$4;->this$0:Lcom/lostpixels/fieldservice/activities/territory/TerritoryAdder;

    invoke-static {p1}, Lcom/lostpixels/fieldservice/activities/territory/TerritoryAdder;->-$$Nest$fgetmTerritory(Lcom/lostpixels/fieldservice/activities/territory/TerritoryAdder;)Lcom/lostpixels/fieldservice/internal/ministry/Territory;

    move-result-object p1

    invoke-virtual {p2}, Lcom/lostpixels/fieldservice/internal/ministry/Territory;->getTerritoryBorder()Ljava/util/List;

    move-result-object p2

    invoke-virtual {p1, p2}, Lcom/lostpixels/fieldservice/internal/ministry/Territory;->setTerritoryBorder(Ljava/util/List;)V

    .line 373
    iget-object p1, p0, Lcom/lostpixels/fieldservice/activities/territory/TerritoryAdder$4;->this$0:Lcom/lostpixels/fieldservice/activities/territory/TerritoryAdder;

    invoke-static {p1}, Lcom/lostpixels/fieldservice/activities/territory/TerritoryAdder;->-$$Nest$fgetmTerritory(Lcom/lostpixels/fieldservice/activities/territory/TerritoryAdder;)Lcom/lostpixels/fieldservice/internal/ministry/Territory;

    move-result-object p1

    iget-object p2, p0, Lcom/lostpixels/fieldservice/activities/territory/TerritoryAdder$4;->val$url:Ljava/lang/String;

    invoke-virtual {p1, p2}, Lcom/lostpixels/fieldservice/internal/ministry/Territory;->setURL(Ljava/lang/String;)V

    goto :goto_1

    .line 375
    :cond_0
    iget-object p1, p0, Lcom/lostpixels/fieldservice/activities/territory/TerritoryAdder$4;->this$0:Lcom/lostpixels/fieldservice/activities/territory/TerritoryAdder;

    invoke-static {p1, p2}, Lcom/lostpixels/fieldservice/activities/territory/TerritoryAdder;->-$$Nest$fputmTerritory(Lcom/lostpixels/fieldservice/activities/territory/TerritoryAdder;Lcom/lostpixels/fieldservice/internal/ministry/Territory;)V

    .line 377
    :goto_1
    iget-object p1, p0, Lcom/lostpixels/fieldservice/activities/territory/TerritoryAdder$4;->this$0:Lcom/lostpixels/fieldservice/activities/territory/TerritoryAdder;

    invoke-static {p1}, Lcom/lostpixels/fieldservice/activities/territory/TerritoryAdder;->-$$Nest$fgetmTerritory(Lcom/lostpixels/fieldservice/activities/territory/TerritoryAdder;)Lcom/lostpixels/fieldservice/internal/ministry/Territory;

    move-result-object p1

    invoke-virtual {p1}, Lcom/lostpixels/fieldservice/internal/ministry/Territory;->getTerritoryCard()Ljava/lang/String;

    move-result-object p1

    if-eqz p1, :cond_1

    new-instance p1, Ljava/io/File;

    iget-object p2, p0, Lcom/lostpixels/fieldservice/activities/territory/TerritoryAdder$4;->this$0:Lcom/lostpixels/fieldservice/activities/territory/TerritoryAdder;

    invoke-static {p2}, Lcom/lostpixels/fieldservice/activities/territory/TerritoryAdder;->-$$Nest$fgetmTerritory(Lcom/lostpixels/fieldservice/activities/territory/TerritoryAdder;)Lcom/lostpixels/fieldservice/internal/ministry/Territory;

    move-result-object p2

    invoke-virtual {p2}, Lcom/lostpixels/fieldservice/internal/ministry/Territory;->getTerritoryCard()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1}, Ljava/io/File;->exists()Z

    move-result p1

    if-eqz p1, :cond_1

    .line 378
    iget-object p1, p0, Lcom/lostpixels/fieldservice/activities/territory/TerritoryAdder$4;->this$0:Lcom/lostpixels/fieldservice/activities/territory/TerritoryAdder;

    invoke-static {p1}, Lcom/lostpixels/fieldservice/activities/territory/TerritoryAdder;->-$$Nest$fgetmTerritory(Lcom/lostpixels/fieldservice/activities/territory/TerritoryAdder;)Lcom/lostpixels/fieldservice/internal/ministry/Territory;

    move-result-object p2

    const-string v1, "jpg"

    invoke-static {p1, p2, v1}, Lcom/lostpixels/fieldservice/utils/StorageUtils;->createNewTerritoryImageFile(Landroid/content/Context;Lcom/lostpixels/fieldservice/internal/ministry/Territory;Ljava/lang/String;)Ljava/io/File;

    move-result-object p1

    .line 380
    iget-object p2, p0, Lcom/lostpixels/fieldservice/activities/territory/TerritoryAdder$4;->this$0:Lcom/lostpixels/fieldservice/activities/territory/TerritoryAdder;

    invoke-static {p2}, Lcom/lostpixels/fieldservice/activities/territory/TerritoryAdder;->-$$Nest$fgetmTerritory(Lcom/lostpixels/fieldservice/activities/territory/TerritoryAdder;)Lcom/lostpixels/fieldservice/internal/ministry/Territory;

    move-result-object p2

    invoke-virtual {p2}, Lcom/lostpixels/fieldservice/internal/ministry/Territory;->getTerritoryCard()Ljava/lang/String;

    move-result-object p2

    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    invoke-virtual {p1}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v1

    invoke-static {p2, v1}, Lcom/lostpixels/fieldservice/helpfunctions/FileManager;->copyFile(Ljava/lang/String;Ljava/lang/String;)V

    .line 381
    new-instance p2, Ljava/io/File;

    iget-object v1, p0, Lcom/lostpixels/fieldservice/activities/territory/TerritoryAdder$4;->this$0:Lcom/lostpixels/fieldservice/activities/territory/TerritoryAdder;

    invoke-static {v1}, Lcom/lostpixels/fieldservice/activities/territory/TerritoryAdder;->-$$Nest$fgetmTerritory(Lcom/lostpixels/fieldservice/activities/territory/TerritoryAdder;)Lcom/lostpixels/fieldservice/internal/ministry/Territory;

    move-result-object v1

    invoke-virtual {v1}, Lcom/lostpixels/fieldservice/internal/ministry/Territory;->getTerritoryCard()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p2, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 382
    invoke-virtual {p2}, Ljava/io/File;->delete()Z

    .line 383
    iget-object p2, p0, Lcom/lostpixels/fieldservice/activities/territory/TerritoryAdder$4;->this$0:Lcom/lostpixels/fieldservice/activities/territory/TerritoryAdder;

    invoke-static {p2}, Lcom/lostpixels/fieldservice/activities/territory/TerritoryAdder;->-$$Nest$fgetmTerritory(Lcom/lostpixels/fieldservice/activities/territory/TerritoryAdder;)Lcom/lostpixels/fieldservice/internal/ministry/Territory;

    move-result-object p2

    invoke-virtual {p1}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p2, p1}, Lcom/lostpixels/fieldservice/internal/ministry/Territory;->setTerritoryCardPath(Ljava/lang/String;)V

    .line 385
    :cond_1
    iget-object p1, p0, Lcom/lostpixels/fieldservice/activities/territory/TerritoryAdder$4;->this$0:Lcom/lostpixels/fieldservice/activities/territory/TerritoryAdder;

    invoke-static {p1}, Lcom/lostpixels/fieldservice/activities/territory/TerritoryAdder;->access$000(Lcom/lostpixels/fieldservice/activities/territory/TerritoryAdder;)Lio/realm/Realm;

    move-result-object p1

    invoke-static {p1}, Lcom/lostpixels/fieldservice/internal/ministry/MinistryManager;->getInstance(Lio/realm/Realm;)Lcom/lostpixels/fieldservice/internal/ministry/MinistryManager;

    move-result-object p1

    iget-object p2, p0, Lcom/lostpixels/fieldservice/activities/territory/TerritoryAdder$4;->this$0:Lcom/lostpixels/fieldservice/activities/territory/TerritoryAdder;

    invoke-static {p2}, Lcom/lostpixels/fieldservice/activities/territory/TerritoryAdder;->-$$Nest$fgetmTerritory(Lcom/lostpixels/fieldservice/activities/territory/TerritoryAdder;)Lcom/lostpixels/fieldservice/internal/ministry/Territory;

    move-result-object v1

    invoke-virtual {v1}, Lcom/lostpixels/fieldservice/internal/ministry/Territory;->getCity()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, p2, v1}, Lcom/lostpixels/fieldservice/internal/ministry/MinistryManager;->addCityIfNew(Landroid/content/Context;Ljava/lang/String;)V

    .line 386
    iget-object p1, p0, Lcom/lostpixels/fieldservice/activities/territory/TerritoryAdder$4;->this$0:Lcom/lostpixels/fieldservice/activities/territory/TerritoryAdder;

    invoke-static {p1}, Lcom/lostpixels/fieldservice/activities/territory/TerritoryAdder;->-$$Nest$mcreateCityList(Lcom/lostpixels/fieldservice/activities/territory/TerritoryAdder;)V

    .line 387
    iget-object p1, p0, Lcom/lostpixels/fieldservice/activities/territory/TerritoryAdder$4;->this$0:Lcom/lostpixels/fieldservice/activities/territory/TerritoryAdder;

    invoke-static {p1}, Lcom/lostpixels/fieldservice/activities/territory/TerritoryAdder;->-$$Nest$mupdateFromTerritory(Lcom/lostpixels/fieldservice/activities/territory/TerritoryAdder;)V

    .line 389
    iget-object p1, p0, Lcom/lostpixels/fieldservice/activities/territory/TerritoryAdder$4;->this$0:Lcom/lostpixels/fieldservice/activities/territory/TerritoryAdder;

    const p2, 0x7f12055d

    invoke-static {p1, p2, v0}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object p1

    invoke-virtual {p1}, Landroid/widget/Toast;->show()V

    goto :goto_2

    .line 391
    :cond_2
    iget-object p1, p0, Lcom/lostpixels/fieldservice/activities/territory/TerritoryAdder$4;->this$0:Lcom/lostpixels/fieldservice/activities/territory/TerritoryAdder;

    const p2, 0x7f12041c

    invoke-virtual {p1, p2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p2

    invoke-static {p1, p2, v0}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object p1

    invoke-virtual {p1}, Landroid/widget/Toast;->show()V

    :goto_2
    return-void
.end method
