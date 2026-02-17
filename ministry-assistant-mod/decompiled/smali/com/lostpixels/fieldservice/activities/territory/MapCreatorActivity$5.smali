.class Lcom/lostpixels/fieldservice/activities/territory/MapCreatorActivity$5;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/google/android/gms/maps/GoogleMap$SnapshotReadyCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/lostpixels/fieldservice/activities/territory/MapCreatorActivity;->saveAndFinish()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field bitmap:Landroid/graphics/Bitmap;

.field final synthetic this$0:Lcom/lostpixels/fieldservice/activities/territory/MapCreatorActivity;


# direct methods
.method constructor <init>(Lcom/lostpixels/fieldservice/activities/territory/MapCreatorActivity;)V
    .locals 0

    .line 282
    iput-object p1, p0, Lcom/lostpixels/fieldservice/activities/territory/MapCreatorActivity$5;->this$0:Lcom/lostpixels/fieldservice/activities/territory/MapCreatorActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onSnapshotReady(Landroid/graphics/Bitmap;)V
    .locals 4

    .line 287
    iput-object p1, p0, Lcom/lostpixels/fieldservice/activities/territory/MapCreatorActivity$5;->bitmap:Landroid/graphics/Bitmap;

    .line 289
    :try_start_0
    const-string p1, "%s%s.jpg"

    iget-object v0, p0, Lcom/lostpixels/fieldservice/activities/territory/MapCreatorActivity$5;->this$0:Lcom/lostpixels/fieldservice/activities/territory/MapCreatorActivity;

    invoke-static {v0}, Lcom/lostpixels/fieldservice/utils/StorageUtils;->getTerritoryCardDirectory(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/lostpixels/fieldservice/activities/territory/MapCreatorActivity$5;->this$0:Lcom/lostpixels/fieldservice/activities/territory/MapCreatorActivity;

    invoke-static {v1}, Lcom/lostpixels/fieldservice/activities/territory/MapCreatorActivity;->-$$Nest$fgetmTerritoryName(Lcom/lostpixels/fieldservice/activities/territory/MapCreatorActivity;)Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x2

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    aput-object v0, v2, v3

    const/4 v0, 0x1

    aput-object v1, v2, v0

    invoke-static {p1, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    .line 290
    new-instance v0, Ljava/io/FileOutputStream;

    invoke-direct {v0, p1}, Ljava/io/FileOutputStream;-><init>(Ljava/lang/String;)V

    .line 291
    iget-object v1, p0, Lcom/lostpixels/fieldservice/activities/territory/MapCreatorActivity$5;->bitmap:Landroid/graphics/Bitmap;

    sget-object v2, Landroid/graphics/Bitmap$CompressFormat;->JPEG:Landroid/graphics/Bitmap$CompressFormat;

    const/16 v3, 0x5f

    invoke-virtual {v1, v2, v3, v0}, Landroid/graphics/Bitmap;->compress(Landroid/graphics/Bitmap$CompressFormat;ILjava/io/OutputStream;)Z

    .line 292
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 293
    const-string v1, "TerriotryPoints"

    iget-object v2, p0, Lcom/lostpixels/fieldservice/activities/territory/MapCreatorActivity$5;->this$0:Lcom/lostpixels/fieldservice/activities/territory/MapCreatorActivity;

    iget-object v2, v2, Lcom/lostpixels/fieldservice/activities/territory/MapCreatorActivity;->mFinalList:Ljava/util/ArrayList;

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putParcelableArrayListExtra(Ljava/lang/String;Ljava/util/ArrayList;)Landroid/content/Intent;

    .line 294
    const-string v1, "TerriotryCard"

    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 295
    iget-object p1, p0, Lcom/lostpixels/fieldservice/activities/territory/MapCreatorActivity$5;->this$0:Lcom/lostpixels/fieldservice/activities/territory/MapCreatorActivity;

    const/4 v1, -0x1

    invoke-virtual {p1, v1, v0}, Landroid/app/Activity;->setResult(ILandroid/content/Intent;)V

    .line 296
    iget-object p1, p0, Lcom/lostpixels/fieldservice/activities/territory/MapCreatorActivity$5;->this$0:Lcom/lostpixels/fieldservice/activities/territory/MapCreatorActivity;

    invoke-virtual {p1}, Landroid/app/Activity;->finish()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception p1

    .line 299
    invoke-virtual {p1}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-static {p1}, Lcom/lostpixels/fieldservice/helpfunctions/HelpFunctions;->getStackTrace(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1}, Lcom/lostpixels/fieldservice/utils/LogToSD;->write(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method
