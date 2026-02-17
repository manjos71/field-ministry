.class Lcom/lostpixels/fieldservice/activities/territory/TerritoryAdder$3;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/lostpixels/fieldservice/download/UrlDownloader$TerritoryListDownloaderListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/lostpixels/fieldservice/activities/territory/TerritoryAdder;->showImportListTerritoryHelper()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/lostpixels/fieldservice/activities/territory/TerritoryAdder;

.field final synthetic val$progress:Landroid/app/ProgressDialog;


# direct methods
.method constructor <init>(Lcom/lostpixels/fieldservice/activities/territory/TerritoryAdder;Landroid/app/ProgressDialog;)V
    .locals 0

    .line 316
    iput-object p1, p0, Lcom/lostpixels/fieldservice/activities/territory/TerritoryAdder$3;->this$0:Lcom/lostpixels/fieldservice/activities/territory/TerritoryAdder;

    iput-object p2, p0, Lcom/lostpixels/fieldservice/activities/territory/TerritoryAdder$3;->val$progress:Landroid/app/ProgressDialog;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onListDownloaded(ZLjava/util/List;)V
    .locals 8

    .line 320
    :try_start_0
    iget-object v0, p0, Lcom/lostpixels/fieldservice/activities/territory/TerritoryAdder$3;->val$progress:Landroid/app/ProgressDialog;

    invoke-virtual {v0}, Landroid/app/Dialog;->dismiss()V
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    nop

    :goto_0
    const/4 v0, 0x0

    if-eqz p1, :cond_1

    .line 325
    invoke-interface {p2}, Ljava/util/List;->isEmpty()Z

    move-result p1

    if-eqz p1, :cond_0

    .line 326
    iget-object p1, p0, Lcom/lostpixels/fieldservice/activities/territory/TerritoryAdder$3;->this$0:Lcom/lostpixels/fieldservice/activities/territory/TerritoryAdder;

    const p2, 0x7f12046c

    invoke-virtual {p1, p2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p2

    invoke-static {p1, p2, v0}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object p1

    invoke-virtual {p1}, Landroid/widget/Toast;->show()V

    return-void

    .line 329
    :cond_0
    new-instance p1, Landroidx/appcompat/app/AlertDialog$Builder;

    iget-object v0, p0, Lcom/lostpixels/fieldservice/activities/territory/TerritoryAdder$3;->this$0:Lcom/lostpixels/fieldservice/activities/territory/TerritoryAdder;

    invoke-direct {p1, v0}, Landroidx/appcompat/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 330
    iget-object v0, p0, Lcom/lostpixels/fieldservice/activities/territory/TerritoryAdder$3;->this$0:Lcom/lostpixels/fieldservice/activities/territory/TerritoryAdder;

    const v1, 0x7f1204cf

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroidx/appcompat/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Landroidx/appcompat/app/AlertDialog$Builder;

    .line 331
    new-instance v0, Lcom/lostpixels/fieldservice/activities/territory/TerritoryAdder$3$1;

    invoke-direct {v0, p0}, Lcom/lostpixels/fieldservice/activities/territory/TerritoryAdder$3$1;-><init>(Lcom/lostpixels/fieldservice/activities/territory/TerritoryAdder$3;)V

    const v1, 0x7f120059

    invoke-virtual {p1, v1, v0}, Landroidx/appcompat/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroidx/appcompat/app/AlertDialog$Builder;

    .line 337
    new-instance v2, Lcom/lostpixels/fieldservice/activities/territory/TerritoryAdder$TerritoryListArrayAdapter;

    iget-object v3, p0, Lcom/lostpixels/fieldservice/activities/territory/TerritoryAdder$3;->this$0:Lcom/lostpixels/fieldservice/activities/territory/TerritoryAdder;

    const v5, 0x7f0c014c

    const v6, 0x7f09023f

    move-object v4, v3

    move-object v7, p2

    invoke-direct/range {v2 .. v7}, Lcom/lostpixels/fieldservice/activities/territory/TerritoryAdder$TerritoryListArrayAdapter;-><init>(Lcom/lostpixels/fieldservice/activities/territory/TerritoryAdder;Landroid/content/Context;IILjava/util/List;)V

    .line 338
    new-instance p2, Lcom/lostpixels/fieldservice/activities/territory/TerritoryAdder$3$2;

    invoke-direct {p2, p0, v2}, Lcom/lostpixels/fieldservice/activities/territory/TerritoryAdder$3$2;-><init>(Lcom/lostpixels/fieldservice/activities/territory/TerritoryAdder$3;Landroid/widget/ListAdapter;)V

    invoke-virtual {p1, v2, p2}, Landroidx/appcompat/app/AlertDialog$Builder;->setAdapter(Landroid/widget/ListAdapter;Landroid/content/DialogInterface$OnClickListener;)Landroidx/appcompat/app/AlertDialog$Builder;

    .line 352
    invoke-virtual {p1}, Landroidx/appcompat/app/AlertDialog$Builder;->create()Landroidx/appcompat/app/AlertDialog;

    move-result-object p1

    invoke-virtual {p1}, Landroid/app/Dialog;->show()V

    goto :goto_1

    .line 354
    :cond_1
    iget-object p1, p0, Lcom/lostpixels/fieldservice/activities/territory/TerritoryAdder$3;->this$0:Lcom/lostpixels/fieldservice/activities/territory/TerritoryAdder;

    const p2, 0x7f1203e4

    invoke-virtual {p1, p2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p2

    invoke-static {p1, p2, v0}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object p1

    invoke-virtual {p1}, Landroid/widget/Toast;->show()V

    :goto_1
    return-void
.end method
