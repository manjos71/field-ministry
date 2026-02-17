.class public abstract Lcom/lostpixels/fieldservice/ui/PublicationCounterToast;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field private static count:I = 0x1

.field private static toast:Landroid/widget/Toast;


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public static addPublication(Landroid/content/Context;)V
    .locals 2

    .line 20
    sget-object v0, Lcom/lostpixels/fieldservice/ui/PublicationCounterToast;->toast:Landroid/widget/Toast;

    const/4 v1, 0x1

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Landroid/widget/Toast;->getView()Landroid/view/View;

    move-result-object v0

    if-eqz v0, :cond_1

    sget-object v0, Lcom/lostpixels/fieldservice/ui/PublicationCounterToast;->toast:Landroid/widget/Toast;

    invoke-virtual {v0}, Landroid/widget/Toast;->getView()Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/View;->getWindowVisibility()I

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    .line 24
    :cond_0
    sget v0, Lcom/lostpixels/fieldservice/ui/PublicationCounterToast;->count:I

    add-int/2addr v0, v1

    sput v0, Lcom/lostpixels/fieldservice/ui/PublicationCounterToast;->count:I

    .line 25
    sget-object v0, Lcom/lostpixels/fieldservice/ui/PublicationCounterToast;->toast:Landroid/widget/Toast;

    invoke-static {p0}, Lcom/lostpixels/fieldservice/ui/PublicationCounterToast;->getMessage(Landroid/content/Context;)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Landroid/widget/Toast;->setText(Ljava/lang/CharSequence;)V

    goto :goto_1

    .line 21
    :cond_1
    :goto_0
    sput v1, Lcom/lostpixels/fieldservice/ui/PublicationCounterToast;->count:I

    .line 22
    invoke-static {p0}, Lcom/lostpixels/fieldservice/ui/PublicationCounterToast;->getMessage(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x0

    invoke-static {p0, v0, v1}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object p0

    sput-object p0, Lcom/lostpixels/fieldservice/ui/PublicationCounterToast;->toast:Landroid/widget/Toast;

    .line 27
    :goto_1
    sget-object p0, Lcom/lostpixels/fieldservice/ui/PublicationCounterToast;->toast:Landroid/widget/Toast;

    invoke-virtual {p0}, Landroid/widget/Toast;->show()V

    return-void
.end method

.method private static getMessage(Landroid/content/Context;)Ljava/lang/String;
    .locals 6

    .line 33
    sget v0, Lcom/lostpixels/fieldservice/ui/PublicationCounterToast;->count:I

    const/4 v1, 0x0

    const/4 v2, 0x2

    const-string v3, "%d %s"

    const/4 v4, 0x1

    if-le v0, v4, :cond_0

    .line 34
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    const v5, 0x7f12031c

    invoke-virtual {p0, v5}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p0

    new-array v2, v2, [Ljava/lang/Object;

    aput-object v0, v2, v1

    aput-object p0, v2, v4

    invoke-static {v3, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    return-object p0

    .line 36
    :cond_0
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    const v5, 0x7f12031b

    invoke-virtual {p0, v5}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p0

    new-array v2, v2, [Ljava/lang/Object;

    aput-object v0, v2, v1

    aput-object p0, v2, v4

    invoke-static {v3, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
