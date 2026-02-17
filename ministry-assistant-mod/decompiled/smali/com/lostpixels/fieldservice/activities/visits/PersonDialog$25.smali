.class Lcom/lostpixels/fieldservice/activities/visits/PersonDialog$25;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/lostpixels/fieldservice/activities/visits/PersonDialog;->onKeyDown(ILandroid/view/KeyEvent;)Z
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

    .line 1617
    iput-object p1, p0, Lcom/lostpixels/fieldservice/activities/visits/PersonDialog$25;->this$0:Lcom/lostpixels/fieldservice/activities/visits/PersonDialog;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 0

    .line 1619
    iget-object p1, p0, Lcom/lostpixels/fieldservice/activities/visits/PersonDialog$25;->this$0:Lcom/lostpixels/fieldservice/activities/visits/PersonDialog;

    const/4 p2, 0x0

    invoke-static {p1, p2}, Lcom/lostpixels/fieldservice/activities/visits/PersonDialog;->-$$Nest$fputperson(Lcom/lostpixels/fieldservice/activities/visits/PersonDialog;Lcom/lostpixels/fieldservice/internal/ministry/Person;)V

    .line 1620
    invoke-static {p2}, Lcom/lostpixels/fieldservice/activities/visits/PersonDialog;->-$$Nest$sfputmSessions(Ljava/util/ArrayList;)V

    .line 1621
    iget-object p1, p0, Lcom/lostpixels/fieldservice/activities/visits/PersonDialog$25;->this$0:Lcom/lostpixels/fieldservice/activities/visits/PersonDialog;

    invoke-virtual {p1}, Landroid/app/Activity;->finish()V

    return-void
.end method
