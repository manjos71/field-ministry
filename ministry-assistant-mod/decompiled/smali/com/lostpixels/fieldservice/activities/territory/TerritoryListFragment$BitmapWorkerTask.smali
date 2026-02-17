.class Lcom/lostpixels/fieldservice/activities/territory/TerritoryListFragment$BitmapWorkerTask;
.super Landroid/os/AsyncTask;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/lostpixels/fieldservice/activities/territory/TerritoryListFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "BitmapWorkerTask"
.end annotation


# instance fields
.field private final height:I

.field private final imageViewReference:Ljava/lang/ref/WeakReference;

.field private path:Ljava/lang/String;


# direct methods
.method public constructor <init>(Landroid/widget/ImageView;I)V
    .locals 1

    .line 770
    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    .line 772
    new-instance v0, Ljava/lang/ref/WeakReference;

    invoke-direct {v0, p1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Lcom/lostpixels/fieldservice/activities/territory/TerritoryListFragment$BitmapWorkerTask;->imageViewReference:Ljava/lang/ref/WeakReference;

    .line 773
    iput p2, p0, Lcom/lostpixels/fieldservice/activities/territory/TerritoryListFragment$BitmapWorkerTask;->height:I

    return-void
.end method


# virtual methods
.method protected varargs doInBackground([Ljava/lang/String;)Landroid/graphics/Bitmap;
    .locals 2

    const/4 v0, 0x0

    .line 779
    aget-object p1, p1, v0

    iput-object p1, p0, Lcom/lostpixels/fieldservice/activities/territory/TerritoryListFragment$BitmapWorkerTask;->path:Ljava/lang/String;

    .line 780
    iget v1, p0, Lcom/lostpixels/fieldservice/activities/territory/TerritoryListFragment$BitmapWorkerTask;->height:I

    invoke-static {p1, v0, v1}, Lcom/lostpixels/fieldservice/activities/territory/TerritoryListFragment;->decodeSampledBitmapFromFile(Ljava/lang/String;II)Landroid/graphics/Bitmap;

    move-result-object p1

    return-object p1
.end method

.method protected bridge synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 764
    check-cast p1, [Ljava/lang/String;

    invoke-virtual {p0, p1}, Lcom/lostpixels/fieldservice/activities/territory/TerritoryListFragment$BitmapWorkerTask;->doInBackground([Ljava/lang/String;)Landroid/graphics/Bitmap;

    move-result-object p1

    return-object p1
.end method

.method protected onPostExecute(Landroid/graphics/Bitmap;)V
    .locals 1

    .line 787
    iget-object v0, p0, Lcom/lostpixels/fieldservice/activities/territory/TerritoryListFragment$BitmapWorkerTask;->imageViewReference:Ljava/lang/ref/WeakReference;

    if-eqz v0, :cond_0

    if-eqz p1, :cond_0

    .line 788
    invoke-virtual {v0}, Ljava/lang/ref/Reference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    if-eqz v0, :cond_0

    .line 790
    invoke-virtual {v0, p1}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    :cond_0
    return-void
.end method

.method protected bridge synthetic onPostExecute(Ljava/lang/Object;)V
    .locals 0

    .line 764
    check-cast p1, Landroid/graphics/Bitmap;

    invoke-virtual {p0, p1}, Lcom/lostpixels/fieldservice/activities/territory/TerritoryListFragment$BitmapWorkerTask;->onPostExecute(Landroid/graphics/Bitmap;)V

    return-void
.end method
