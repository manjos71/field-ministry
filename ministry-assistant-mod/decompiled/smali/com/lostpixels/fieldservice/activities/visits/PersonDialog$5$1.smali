.class Lcom/lostpixels/fieldservice/activities/visits/PersonDialog$5$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/lostpixels/fieldservice/realm/RealmHelper$Writer;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/lostpixels/fieldservice/activities/visits/PersonDialog$5;->onClick(Landroid/content/DialogInterface;I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/lostpixels/fieldservice/activities/visits/PersonDialog$5;

.field final synthetic val$visit:Lcom/lostpixels/fieldservice/internal/ministry/Visit;


# direct methods
.method constructor <init>(Lcom/lostpixels/fieldservice/activities/visits/PersonDialog$5;Lcom/lostpixels/fieldservice/internal/ministry/Visit;)V
    .locals 0

    .line 558
    iput-object p1, p0, Lcom/lostpixels/fieldservice/activities/visits/PersonDialog$5$1;->this$1:Lcom/lostpixels/fieldservice/activities/visits/PersonDialog$5;

    iput-object p2, p0, Lcom/lostpixels/fieldservice/activities/visits/PersonDialog$5$1;->val$visit:Lcom/lostpixels/fieldservice/internal/ministry/Visit;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public write()V
    .locals 2

    .line 562
    iget-object v0, p0, Lcom/lostpixels/fieldservice/activities/visits/PersonDialog$5$1;->this$1:Lcom/lostpixels/fieldservice/activities/visits/PersonDialog$5;

    iget-object v0, v0, Lcom/lostpixels/fieldservice/activities/visits/PersonDialog$5;->this$0:Lcom/lostpixels/fieldservice/activities/visits/PersonDialog;

    invoke-static {v0}, Lcom/lostpixels/fieldservice/activities/visits/PersonDialog;->-$$Nest$fgetperson(Lcom/lostpixels/fieldservice/activities/visits/PersonDialog;)Lcom/lostpixels/fieldservice/internal/ministry/Person;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/lostpixels/fieldservice/internal/ministry/Person;->setInterested(Z)V

    .line 563
    iget-object v0, p0, Lcom/lostpixels/fieldservice/activities/visits/PersonDialog$5$1;->this$1:Lcom/lostpixels/fieldservice/activities/visits/PersonDialog$5;

    iget-object v0, v0, Lcom/lostpixels/fieldservice/activities/visits/PersonDialog$5;->this$0:Lcom/lostpixels/fieldservice/activities/visits/PersonDialog;

    invoke-static {v0}, Lcom/lostpixels/fieldservice/activities/visits/PersonDialog;->-$$Nest$fgetperson(Lcom/lostpixels/fieldservice/activities/visits/PersonDialog;)Lcom/lostpixels/fieldservice/internal/ministry/Person;

    move-result-object v0

    invoke-virtual {v0, v1}, Lcom/lostpixels/fieldservice/internal/ministry/Person;->setReturnVisit(Z)V

    .line 564
    iget-object v0, p0, Lcom/lostpixels/fieldservice/activities/visits/PersonDialog$5$1;->this$1:Lcom/lostpixels/fieldservice/activities/visits/PersonDialog$5;

    iget-object v0, v0, Lcom/lostpixels/fieldservice/activities/visits/PersonDialog$5;->this$0:Lcom/lostpixels/fieldservice/activities/visits/PersonDialog;

    invoke-static {v0}, Lcom/lostpixels/fieldservice/activities/visits/PersonDialog;->-$$Nest$fgetperson(Lcom/lostpixels/fieldservice/activities/visits/PersonDialog;)Lcom/lostpixels/fieldservice/internal/ministry/Person;

    move-result-object v0

    invoke-virtual {v0, v1}, Lcom/lostpixels/fieldservice/internal/ministry/Person;->setBibleStudy(Z)V

    .line 565
    iget-object v0, p0, Lcom/lostpixels/fieldservice/activities/visits/PersonDialog$5$1;->this$1:Lcom/lostpixels/fieldservice/activities/visits/PersonDialog$5;

    iget-object v0, v0, Lcom/lostpixels/fieldservice/activities/visits/PersonDialog$5;->this$0:Lcom/lostpixels/fieldservice/activities/visits/PersonDialog;

    invoke-static {v0}, Lcom/lostpixels/fieldservice/activities/visits/PersonDialog;->-$$Nest$fgetperson(Lcom/lostpixels/fieldservice/activities/visits/PersonDialog;)Lcom/lostpixels/fieldservice/internal/ministry/Person;

    move-result-object v0

    invoke-virtual {v0, v1}, Lcom/lostpixels/fieldservice/internal/ministry/Person;->setMagazineRoute(Z)V

    .line 566
    iget-object v0, p0, Lcom/lostpixels/fieldservice/activities/visits/PersonDialog$5$1;->this$1:Lcom/lostpixels/fieldservice/activities/visits/PersonDialog$5;

    iget-object v0, v0, Lcom/lostpixels/fieldservice/activities/visits/PersonDialog$5;->this$0:Lcom/lostpixels/fieldservice/activities/visits/PersonDialog;

    invoke-static {v0}, Lcom/lostpixels/fieldservice/activities/visits/PersonDialog;->-$$Nest$fgetperson(Lcom/lostpixels/fieldservice/activities/visits/PersonDialog;)Lcom/lostpixels/fieldservice/internal/ministry/Person;

    move-result-object v0

    invoke-virtual {v0, v1}, Lcom/lostpixels/fieldservice/internal/ministry/Person;->setFavorite(Z)V

    .line 567
    iget-object v0, p0, Lcom/lostpixels/fieldservice/activities/visits/PersonDialog$5$1;->this$1:Lcom/lostpixels/fieldservice/activities/visits/PersonDialog$5;

    iget-object v0, v0, Lcom/lostpixels/fieldservice/activities/visits/PersonDialog$5;->this$0:Lcom/lostpixels/fieldservice/activities/visits/PersonDialog;

    invoke-static {v0}, Lcom/lostpixels/fieldservice/activities/visits/PersonDialog;->-$$Nest$fgetperson(Lcom/lostpixels/fieldservice/activities/visits/PersonDialog;)Lcom/lostpixels/fieldservice/internal/ministry/Person;

    move-result-object v0

    invoke-virtual {v0, v1}, Lcom/lostpixels/fieldservice/internal/ministry/Person;->setPriority(I)V

    .line 568
    iget-object v0, p0, Lcom/lostpixels/fieldservice/activities/visits/PersonDialog$5$1;->val$visit:Lcom/lostpixels/fieldservice/internal/ministry/Visit;

    const/4 v1, 0x3

    invoke-virtual {v0, v1}, Lcom/lostpixels/fieldservice/internal/ministry/Visit;->setType(I)V

    return-void
.end method
