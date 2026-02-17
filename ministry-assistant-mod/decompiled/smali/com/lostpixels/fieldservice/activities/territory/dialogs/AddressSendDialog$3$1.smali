.class Lcom/lostpixels/fieldservice/activities/territory/dialogs/AddressSendDialog$3$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/content/DialogInterface$OnMultiChoiceClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/lostpixels/fieldservice/activities/territory/dialogs/AddressSendDialog$3;->onClick(Landroid/view/View;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/lostpixels/fieldservice/activities/territory/dialogs/AddressSendDialog$3;


# direct methods
.method constructor <init>(Lcom/lostpixels/fieldservice/activities/territory/dialogs/AddressSendDialog$3;)V
    .locals 0

    .line 149
    iput-object p1, p0, Lcom/lostpixels/fieldservice/activities/territory/dialogs/AddressSendDialog$3$1;->this$1:Lcom/lostpixels/fieldservice/activities/territory/dialogs/AddressSendDialog$3;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;IZ)V
    .locals 0

    .line 152
    iget-object p1, p0, Lcom/lostpixels/fieldservice/activities/territory/dialogs/AddressSendDialog$3$1;->this$1:Lcom/lostpixels/fieldservice/activities/territory/dialogs/AddressSendDialog$3;

    iget-object p1, p1, Lcom/lostpixels/fieldservice/activities/territory/dialogs/AddressSendDialog$3;->this$0:Lcom/lostpixels/fieldservice/activities/territory/dialogs/AddressSendDialog;

    invoke-static {p1}, Lcom/lostpixels/fieldservice/activities/territory/dialogs/AddressSendDialog;->-$$Nest$fgetmlstSendInfo(Lcom/lostpixels/fieldservice/activities/territory/dialogs/AddressSendDialog;)[Z

    move-result-object p1

    aput-boolean p3, p1, p2

    return-void
.end method
