.class Lcom/lostpixels/fieldservice/activities/territory/dialogs/CreateAreaDialog$5;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/lostpixels/fieldservice/activities/territory/dialogs/CreateAreaDialog;->onKeyDown(ILandroid/view/KeyEvent;)Z
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/lostpixels/fieldservice/activities/territory/dialogs/CreateAreaDialog;


# direct methods
.method constructor <init>(Lcom/lostpixels/fieldservice/activities/territory/dialogs/CreateAreaDialog;)V
    .locals 0

    .line 258
    iput-object p1, p0, Lcom/lostpixels/fieldservice/activities/territory/dialogs/CreateAreaDialog$5;->this$0:Lcom/lostpixels/fieldservice/activities/territory/dialogs/CreateAreaDialog;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 0

    .line 260
    iget-object p1, p0, Lcom/lostpixels/fieldservice/activities/territory/dialogs/CreateAreaDialog$5;->this$0:Lcom/lostpixels/fieldservice/activities/territory/dialogs/CreateAreaDialog;

    invoke-static {p1}, Lcom/lostpixels/fieldservice/activities/territory/dialogs/CreateAreaDialog;->-$$Nest$msetResult(Lcom/lostpixels/fieldservice/activities/territory/dialogs/CreateAreaDialog;)V

    .line 261
    iget-object p1, p0, Lcom/lostpixels/fieldservice/activities/territory/dialogs/CreateAreaDialog$5;->this$0:Lcom/lostpixels/fieldservice/activities/territory/dialogs/CreateAreaDialog;

    invoke-virtual {p1}, Landroid/app/Activity;->finish()V

    return-void
.end method
