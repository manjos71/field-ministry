.class Lcom/lostpixels/fieldservice/activities/visits/AddPublicationDlg$3;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/lostpixels/fieldservice/activities/visits/AddPublicationDlg;->onCreate(Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/lostpixels/fieldservice/activities/visits/AddPublicationDlg;


# direct methods
.method constructor <init>(Lcom/lostpixels/fieldservice/activities/visits/AddPublicationDlg;)V
    .locals 0

    .line 226
    iput-object p1, p0, Lcom/lostpixels/fieldservice/activities/visits/AddPublicationDlg$3;->this$0:Lcom/lostpixels/fieldservice/activities/visits/AddPublicationDlg;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 3

    .line 229
    new-instance p1, Landroid/app/Dialog;

    iget-object v0, p0, Lcom/lostpixels/fieldservice/activities/visits/AddPublicationDlg$3;->this$0:Lcom/lostpixels/fieldservice/activities/visits/AddPublicationDlg;

    iget-object v0, v0, Lcom/lostpixels/fieldservice/activities/visits/AddPublicationDlg;->mContext:Landroidx/fragment/app/FragmentActivity;

    invoke-direct {p1, v0}, Landroid/app/Dialog;-><init>(Landroid/content/Context;)V

    const v0, 0x7f0c0091

    .line 231
    invoke-virtual {p1, v0}, Landroid/app/Dialog;->setContentView(I)V

    .line 232
    iget-object v0, p0, Lcom/lostpixels/fieldservice/activities/visits/AddPublicationDlg$3;->this$0:Lcom/lostpixels/fieldservice/activities/visits/AddPublicationDlg;

    iget-object v0, v0, Lcom/lostpixels/fieldservice/activities/visits/AddPublicationDlg;->mContext:Landroidx/fragment/app/FragmentActivity;

    const v1, 0x7f120134

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/app/Dialog;->setTitle(Ljava/lang/CharSequence;)V

    const v0, 0x7f0902a4

    .line 234
    invoke-virtual {p1, v0}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/EditText;

    .line 235
    iget-object v1, p0, Lcom/lostpixels/fieldservice/activities/visits/AddPublicationDlg$3;->this$0:Lcom/lostpixels/fieldservice/activities/visits/AddPublicationDlg;

    iget-object v1, v1, Lcom/lostpixels/fieldservice/activities/visits/AddPublicationDlg;->mContext:Landroidx/fragment/app/FragmentActivity;

    const v2, 0x7f12010c

    invoke-virtual {v1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setHint(Ljava/lang/CharSequence;)V

    const v1, 0x7f0900f5

    .line 236
    invoke-virtual {p1, v1}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/Button;

    .line 237
    new-instance v2, Lcom/lostpixels/fieldservice/activities/visits/AddPublicationDlg$3$1;

    invoke-direct {v2, p0, v0, p1}, Lcom/lostpixels/fieldservice/activities/visits/AddPublicationDlg$3$1;-><init>(Lcom/lostpixels/fieldservice/activities/visits/AddPublicationDlg$3;Landroid/widget/EditText;Landroid/app/Dialog;)V

    invoke-virtual {v1, v2}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 255
    invoke-virtual {p1}, Landroid/app/Dialog;->show()V

    return-void
.end method
