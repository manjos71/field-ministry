.class Lcom/lostpixels/fieldservice/activities/backup/ImportDialog$5;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/lostpixels/fieldservice/download/UrlDownloader$UrlDownloaderListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/lostpixels/fieldservice/activities/backup/ImportDialog;->handleIntent()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/lostpixels/fieldservice/activities/backup/ImportDialog;


# direct methods
.method constructor <init>(Lcom/lostpixels/fieldservice/activities/backup/ImportDialog;)V
    .locals 0

    .line 419
    iput-object p1, p0, Lcom/lostpixels/fieldservice/activities/backup/ImportDialog$5;->this$0:Lcom/lostpixels/fieldservice/activities/backup/ImportDialog;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onUrlDownloaded(ZLcom/lostpixels/fieldservice/internal/ministry/Territory;)V
    .locals 3

    .line 422
    iget-object v0, p0, Lcom/lostpixels/fieldservice/activities/backup/ImportDialog$5;->this$0:Lcom/lostpixels/fieldservice/activities/backup/ImportDialog;

    iget-object v0, v0, Lcom/lostpixels/fieldservice/activities/backup/ImportDialog;->mProgress:Landroid/view/View;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    if-eqz p1, :cond_1

    .line 424
    iget-object p1, p0, Lcom/lostpixels/fieldservice/activities/backup/ImportDialog$5;->this$0:Lcom/lostpixels/fieldservice/activities/backup/ImportDialog;

    iget-object p1, p1, Lcom/lostpixels/fieldservice/activities/backup/ImportDialog;->mImportInfo:Landroid/widget/TextView;

    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v0, p0, Lcom/lostpixels/fieldservice/activities/backup/ImportDialog$5;->this$0:Lcom/lostpixels/fieldservice/activities/backup/ImportDialog;

    const v2, 0x7f120421

    invoke-virtual {v0, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 425
    iget-object p1, p0, Lcom/lostpixels/fieldservice/activities/backup/ImportDialog$5;->this$0:Lcom/lostpixels/fieldservice/activities/backup/ImportDialog;

    iget-object p1, p1, Lcom/lostpixels/fieldservice/activities/backup/ImportDialog;->mTerritoryHelperLayout:Landroid/view/View;

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Landroid/view/View;->setVisibility(I)V

    .line 426
    iget-object p1, p0, Lcom/lostpixels/fieldservice/activities/backup/ImportDialog$5;->this$0:Lcom/lostpixels/fieldservice/activities/backup/ImportDialog;

    iget-object p1, p1, Lcom/lostpixels/fieldservice/activities/backup/ImportDialog;->mTerritoryName:Landroid/widget/EditText;

    invoke-virtual {p2}, Lcom/lostpixels/fieldservice/internal/ministry/Territory;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 427
    iget-object p1, p0, Lcom/lostpixels/fieldservice/activities/backup/ImportDialog$5;->this$0:Lcom/lostpixels/fieldservice/activities/backup/ImportDialog;

    iget-object p1, p1, Lcom/lostpixels/fieldservice/activities/backup/ImportDialog;->mCity:Landroid/widget/AutoCompleteTextView;

    invoke-virtual {p2}, Lcom/lostpixels/fieldservice/internal/ministry/Territory;->getCity()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 428
    iget-object p1, p0, Lcom/lostpixels/fieldservice/activities/backup/ImportDialog$5;->this$0:Lcom/lostpixels/fieldservice/activities/backup/ImportDialog;

    iget-object p1, p1, Lcom/lostpixels/fieldservice/activities/backup/ImportDialog;->mNeighborhood:Landroid/widget/AutoCompleteTextView;

    invoke-virtual {p2}, Lcom/lostpixels/fieldservice/internal/ministry/Territory;->getRegion()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 429
    invoke-virtual {p2}, Lcom/lostpixels/fieldservice/internal/ministry/Territory;->getNote()Ljava/lang/String;

    move-result-object p1

    if-eqz p1, :cond_0

    invoke-virtual {p2}, Lcom/lostpixels/fieldservice/internal/ministry/Territory;->getNote()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/String;->isEmpty()Z

    move-result p1

    if-nez p1, :cond_0

    .line 430
    iget-object p1, p0, Lcom/lostpixels/fieldservice/activities/backup/ImportDialog$5;->this$0:Lcom/lostpixels/fieldservice/activities/backup/ImportDialog;

    iget-object p1, p1, Lcom/lostpixels/fieldservice/activities/backup/ImportDialog;->mInfotext:Landroid/widget/TextView;

    invoke-virtual {p2}, Lcom/lostpixels/fieldservice/internal/ministry/Territory;->getNote()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0

    .line 432
    :cond_0
    iget-object p1, p0, Lcom/lostpixels/fieldservice/activities/backup/ImportDialog$5;->this$0:Lcom/lostpixels/fieldservice/activities/backup/ImportDialog;

    iget-object p1, p1, Lcom/lostpixels/fieldservice/activities/backup/ImportDialog;->mInfotext:Landroid/widget/TextView;

    invoke-virtual {p1, v1}, Landroid/view/View;->setVisibility(I)V

    .line 434
    :goto_0
    iget-object p1, p0, Lcom/lostpixels/fieldservice/activities/backup/ImportDialog$5;->this$0:Lcom/lostpixels/fieldservice/activities/backup/ImportDialog;

    iput-object p2, p1, Lcom/lostpixels/fieldservice/activities/backup/ImportDialog;->mUrlTerritory:Lcom/lostpixels/fieldservice/internal/ministry/Territory;

    .line 435
    iget-object p1, p1, Lcom/lostpixels/fieldservice/activities/backup/ImportDialog;->mbtnOK:Landroid/view/View;

    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    const/4 p2, 0x1

    invoke-virtual {p1, p2}, Landroid/view/View;->setEnabled(Z)V

    .line 436
    iget-object p1, p0, Lcom/lostpixels/fieldservice/activities/backup/ImportDialog$5;->this$0:Lcom/lostpixels/fieldservice/activities/backup/ImportDialog;

    iget-object p1, p1, Lcom/lostpixels/fieldservice/activities/backup/ImportDialog;->mbtnOK:Landroid/view/View;

    new-instance p2, Lcom/lostpixels/fieldservice/activities/backup/ImportDialog$5$1;

    invoke-direct {p2, p0}, Lcom/lostpixels/fieldservice/activities/backup/ImportDialog$5$1;-><init>(Lcom/lostpixels/fieldservice/activities/backup/ImportDialog$5;)V

    invoke-virtual {p1, p2}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-void

    .line 486
    :cond_1
    iget-object p1, p0, Lcom/lostpixels/fieldservice/activities/backup/ImportDialog$5;->this$0:Lcom/lostpixels/fieldservice/activities/backup/ImportDialog;

    iget-object p1, p1, Lcom/lostpixels/fieldservice/activities/backup/ImportDialog;->mImportInfo:Landroid/widget/TextView;

    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    iget-object p2, p0, Lcom/lostpixels/fieldservice/activities/backup/ImportDialog$5;->this$0:Lcom/lostpixels/fieldservice/activities/backup/ImportDialog;

    const v0, 0x7f1200be

    invoke-virtual {p2, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 487
    iget-object p1, p0, Lcom/lostpixels/fieldservice/activities/backup/ImportDialog$5;->this$0:Lcom/lostpixels/fieldservice/activities/backup/ImportDialog;

    iget-object p1, p1, Lcom/lostpixels/fieldservice/activities/backup/ImportDialog;->mImportInfo:Landroid/widget/TextView;

    const/high16 p2, -0x10000

    invoke-virtual {p1, p2}, Landroid/widget/TextView;->setTextColor(I)V

    return-void
.end method
