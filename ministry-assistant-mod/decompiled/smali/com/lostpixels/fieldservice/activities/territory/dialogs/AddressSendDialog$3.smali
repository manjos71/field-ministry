.class Lcom/lostpixels/fieldservice/activities/territory/dialogs/AddressSendDialog$3;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/lostpixels/fieldservice/activities/territory/dialogs/AddressSendDialog;->onCreate(Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/lostpixels/fieldservice/activities/territory/dialogs/AddressSendDialog;


# direct methods
.method constructor <init>(Lcom/lostpixels/fieldservice/activities/territory/dialogs/AddressSendDialog;)V
    .locals 0

    .line 139
    iput-object p1, p0, Lcom/lostpixels/fieldservice/activities/territory/dialogs/AddressSendDialog$3;->this$0:Lcom/lostpixels/fieldservice/activities/territory/dialogs/AddressSendDialog;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 3

    .line 143
    iget-object p1, p0, Lcom/lostpixels/fieldservice/activities/territory/dialogs/AddressSendDialog$3;->this$0:Lcom/lostpixels/fieldservice/activities/territory/dialogs/AddressSendDialog;

    invoke-virtual {p1}, Landroidx/appcompat/app/AppCompatActivity;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    const/high16 v0, 0x7f030000

    invoke-virtual {p1, v0}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object p1

    const/4 v0, 0x4

    .line 144
    new-array v0, v0, [Ljava/lang/CharSequence;

    const/4 v1, 0x0

    .line 145
    array-length v2, p1

    invoke-static {p1, v1, v0, v1, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 146
    array-length p1, p1

    iget-object v1, p0, Lcom/lostpixels/fieldservice/activities/territory/dialogs/AddressSendDialog$3;->this$0:Lcom/lostpixels/fieldservice/activities/territory/dialogs/AddressSendDialog;

    const v2, 0x7f120406

    invoke-virtual {v1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    aput-object v1, v0, p1

    .line 147
    new-instance p1, Landroidx/appcompat/app/AlertDialog$Builder;

    iget-object v1, p0, Lcom/lostpixels/fieldservice/activities/territory/dialogs/AddressSendDialog$3;->this$0:Lcom/lostpixels/fieldservice/activities/territory/dialogs/AddressSendDialog;

    invoke-direct {p1, v1}, Landroidx/appcompat/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 148
    iget-object v1, p0, Lcom/lostpixels/fieldservice/activities/territory/dialogs/AddressSendDialog$3;->this$0:Lcom/lostpixels/fieldservice/activities/territory/dialogs/AddressSendDialog;

    const v2, 0x7f1201dc

    invoke-virtual {v1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Landroidx/appcompat/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Landroidx/appcompat/app/AlertDialog$Builder;

    .line 149
    iget-object v1, p0, Lcom/lostpixels/fieldservice/activities/territory/dialogs/AddressSendDialog$3;->this$0:Lcom/lostpixels/fieldservice/activities/territory/dialogs/AddressSendDialog;

    invoke-static {v1}, Lcom/lostpixels/fieldservice/activities/territory/dialogs/AddressSendDialog;->-$$Nest$fgetmlstSendInfo(Lcom/lostpixels/fieldservice/activities/territory/dialogs/AddressSendDialog;)[Z

    move-result-object v1

    new-instance v2, Lcom/lostpixels/fieldservice/activities/territory/dialogs/AddressSendDialog$3$1;

    invoke-direct {v2, p0}, Lcom/lostpixels/fieldservice/activities/territory/dialogs/AddressSendDialog$3$1;-><init>(Lcom/lostpixels/fieldservice/activities/territory/dialogs/AddressSendDialog$3;)V

    invoke-virtual {p1, v0, v1, v2}, Landroidx/appcompat/app/AlertDialog$Builder;->setMultiChoiceItems([Ljava/lang/CharSequence;[ZLandroid/content/DialogInterface$OnMultiChoiceClickListener;)Landroidx/appcompat/app/AlertDialog$Builder;

    .line 155
    new-instance v0, Lcom/lostpixels/fieldservice/activities/territory/dialogs/AddressSendDialog$3$2;

    invoke-direct {v0, p0}, Lcom/lostpixels/fieldservice/activities/territory/dialogs/AddressSendDialog$3$2;-><init>(Lcom/lostpixels/fieldservice/activities/territory/dialogs/AddressSendDialog$3;)V

    const-string v1, "OK"

    invoke-virtual {p1, v1, v0}, Landroidx/appcompat/app/AlertDialog$Builder;->setPositiveButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroidx/appcompat/app/AlertDialog$Builder;

    .line 160
    invoke-virtual {p1}, Landroidx/appcompat/app/AlertDialog$Builder;->show()Landroidx/appcompat/app/AlertDialog;

    return-void
.end method
