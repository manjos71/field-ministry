.class Lcom/lostpixels/fieldservice/activities/territory/TerritoryAdder$3$2;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/lostpixels/fieldservice/activities/territory/TerritoryAdder$3;->onListDownloaded(ZLjava/util/List;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/lostpixels/fieldservice/activities/territory/TerritoryAdder$3;

.field final synthetic val$adapter:Landroid/widget/ListAdapter;


# direct methods
.method constructor <init>(Lcom/lostpixels/fieldservice/activities/territory/TerritoryAdder$3;Landroid/widget/ListAdapter;)V
    .locals 0

    .line 338
    iput-object p1, p0, Lcom/lostpixels/fieldservice/activities/territory/TerritoryAdder$3$2;->this$1:Lcom/lostpixels/fieldservice/activities/territory/TerritoryAdder$3;

    iput-object p2, p0, Lcom/lostpixels/fieldservice/activities/territory/TerritoryAdder$3$2;->val$adapter:Landroid/widget/ListAdapter;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 1

    .line 341
    invoke-interface {p1}, Landroid/content/DialogInterface;->dismiss()V

    .line 343
    :try_start_0
    iget-object p1, p0, Lcom/lostpixels/fieldservice/activities/territory/TerritoryAdder$3$2;->this$1:Lcom/lostpixels/fieldservice/activities/territory/TerritoryAdder$3;

    iget-object p1, p1, Lcom/lostpixels/fieldservice/activities/territory/TerritoryAdder$3;->val$progress:Landroid/app/ProgressDialog;

    invoke-virtual {p1}, Landroid/app/Dialog;->show()V
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    .line 347
    :catch_0
    iget-object p1, p0, Lcom/lostpixels/fieldservice/activities/territory/TerritoryAdder$3$2;->val$adapter:Landroid/widget/ListAdapter;

    invoke-interface {p1, p2}, Landroid/widget/Adapter;->getItem(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/lostpixels/fieldservice/download/UrlDownloader$UrlTerritory;

    .line 349
    iget-object p2, p0, Lcom/lostpixels/fieldservice/activities/territory/TerritoryAdder$3$2;->this$1:Lcom/lostpixels/fieldservice/activities/territory/TerritoryAdder$3;

    iget-object p2, p2, Lcom/lostpixels/fieldservice/activities/territory/TerritoryAdder$3;->this$0:Lcom/lostpixels/fieldservice/activities/territory/TerritoryAdder;

    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    iget-object p1, p1, Lcom/lostpixels/fieldservice/download/UrlDownloader$UrlTerritory;->url:Ljava/lang/String;

    iget-object v0, p0, Lcom/lostpixels/fieldservice/activities/territory/TerritoryAdder$3$2;->this$1:Lcom/lostpixels/fieldservice/activities/territory/TerritoryAdder$3;

    iget-object v0, v0, Lcom/lostpixels/fieldservice/activities/territory/TerritoryAdder$3;->val$progress:Landroid/app/ProgressDialog;

    invoke-static {p2, p1, v0}, Lcom/lostpixels/fieldservice/activities/territory/TerritoryAdder;->-$$Nest$mdownloadTerritory(Lcom/lostpixels/fieldservice/activities/territory/TerritoryAdder;Ljava/lang/String;Landroid/app/ProgressDialog;)V

    return-void
.end method
