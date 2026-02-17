.class Lcom/lostpixels/fieldservice/activities/visits/PersonDialog$6;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/lostpixels/fieldservice/activities/visits/PersonDialog;->onOptionsItemSelected(Landroid/view/MenuItem;)Z
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/lostpixels/fieldservice/activities/visits/PersonDialog;


# direct methods
.method constructor <init>(Lcom/lostpixels/fieldservice/activities/visits/PersonDialog;)V
    .locals 0

    .line 673
    iput-object p1, p0, Lcom/lostpixels/fieldservice/activities/visits/PersonDialog$6;->this$0:Lcom/lostpixels/fieldservice/activities/visits/PersonDialog;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 1

    .line 675
    iget-object p2, p0, Lcom/lostpixels/fieldservice/activities/visits/PersonDialog$6;->this$0:Lcom/lostpixels/fieldservice/activities/visits/PersonDialog;

    const/4 v0, 0x0

    invoke-static {p2, v0}, Lcom/lostpixels/fieldservice/activities/visits/PersonDialog;->-$$Nest$fputperson(Lcom/lostpixels/fieldservice/activities/visits/PersonDialog;Lcom/lostpixels/fieldservice/internal/ministry/Person;)V

    .line 676
    invoke-static {v0}, Lcom/lostpixels/fieldservice/activities/visits/PersonDialog;->-$$Nest$sfputmSessions(Ljava/util/ArrayList;)V

    .line 678
    :try_start_0
    invoke-interface {p1}, Landroid/content/DialogInterface;->dismiss()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 682
    :catch_0
    iget-object p1, p0, Lcom/lostpixels/fieldservice/activities/visits/PersonDialog$6;->this$0:Lcom/lostpixels/fieldservice/activities/visits/PersonDialog;

    invoke-virtual {p1}, Landroid/app/Activity;->finish()V

    return-void
.end method
