.class Lcom/lostpixels/fieldservice/activities/visits/PersonDialog$5;
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

    .line 544
    iput-object p1, p0, Lcom/lostpixels/fieldservice/activities/visits/PersonDialog$5;->this$0:Lcom/lostpixels/fieldservice/activities/visits/PersonDialog;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 7

    .line 547
    iget-object p1, p0, Lcom/lostpixels/fieldservice/activities/visits/PersonDialog$5;->this$0:Lcom/lostpixels/fieldservice/activities/visits/PersonDialog;

    invoke-static {p1}, Lcom/lostpixels/fieldservice/activities/visits/PersonDialog;->access$200(Lcom/lostpixels/fieldservice/activities/visits/PersonDialog;)Lio/realm/Realm;

    move-result-object p1

    invoke-static {p1}, Lcom/lostpixels/fieldservice/internal/ministry/MinistryManager;->getInstance(Lio/realm/Realm;)Lcom/lostpixels/fieldservice/internal/ministry/MinistryManager;

    move-result-object p1

    iget-object p2, p0, Lcom/lostpixels/fieldservice/activities/visits/PersonDialog$5;->this$0:Lcom/lostpixels/fieldservice/activities/visits/PersonDialog;

    invoke-static {p2}, Lcom/lostpixels/fieldservice/activities/visits/PersonDialog;->access$100(Lcom/lostpixels/fieldservice/activities/visits/PersonDialog;)Lio/realm/Realm;

    move-result-object p2

    invoke-virtual {p1, p2}, Lcom/lostpixels/fieldservice/internal/ministry/MinistryManager;->getPersons(Lio/realm/Realm;)Lio/realm/RealmResults;

    move-result-object p1

    invoke-virtual {p1}, Lio/realm/RealmResults;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result p2

    const-wide/16 v0, -0x1

    if-eqz p2, :cond_1

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lcom/lostpixels/fieldservice/internal/ministry/Person;

    .line 548
    invoke-virtual {p2}, Lcom/lostpixels/fieldservice/internal/ministry/Person;->getId()J

    move-result-wide v2

    iget-object v4, p0, Lcom/lostpixels/fieldservice/activities/visits/PersonDialog$5;->this$0:Lcom/lostpixels/fieldservice/activities/visits/PersonDialog;

    invoke-static {v4}, Lcom/lostpixels/fieldservice/activities/visits/PersonDialog;->-$$Nest$fgetperson(Lcom/lostpixels/fieldservice/activities/visits/PersonDialog;)Lcom/lostpixels/fieldservice/internal/ministry/Person;

    move-result-object v4

    invoke-virtual {v4}, Lcom/lostpixels/fieldservice/internal/ministry/Person;->getId()J

    move-result-wide v4

    cmp-long v6, v2, v4

    if-nez v6, :cond_0

    .line 549
    invoke-virtual {p2}, Lcom/lostpixels/fieldservice/internal/ministry/Person;->getId()J

    move-result-wide p1

    goto :goto_0

    :cond_1
    move-wide p1, v0

    :goto_0
    cmp-long v2, p1, v0

    if-eqz v2, :cond_3

    .line 555
    iget-object v0, p0, Lcom/lostpixels/fieldservice/activities/visits/PersonDialog$5;->this$0:Lcom/lostpixels/fieldservice/activities/visits/PersonDialog;

    invoke-static {v0}, Lcom/lostpixels/fieldservice/activities/visits/PersonDialog;->access$300(Lcom/lostpixels/fieldservice/activities/visits/PersonDialog;)Lio/realm/Realm;

    move-result-object v0

    const-class v1, Lcom/lostpixels/fieldservice/internal/ministry/Visit;

    invoke-virtual {v0, v1}, Lio/realm/Realm;->where(Ljava/lang/Class;)Lio/realm/RealmQuery;

    move-result-object v0

    const-string v1, "houseHolder"

    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lio/realm/RealmQuery;->equalTo(Ljava/lang/String;Ljava/lang/Long;)Lio/realm/RealmQuery;

    move-result-object v0

    invoke-virtual {v0}, Lio/realm/RealmQuery;->findFirst()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/lostpixels/fieldservice/internal/ministry/Visit;

    if-eqz v0, :cond_2

    .line 558
    new-instance p1, Lcom/lostpixels/fieldservice/activities/visits/PersonDialog$5$1;

    invoke-direct {p1, p0, v0}, Lcom/lostpixels/fieldservice/activities/visits/PersonDialog$5$1;-><init>(Lcom/lostpixels/fieldservice/activities/visits/PersonDialog$5;Lcom/lostpixels/fieldservice/internal/ministry/Visit;)V

    invoke-static {p1}, Lcom/lostpixels/fieldservice/realm/RealmHelper;->write(Lcom/lostpixels/fieldservice/realm/RealmHelper$Writer;)Z

    goto :goto_1

    .line 574
    :cond_2
    iget-object v0, p0, Lcom/lostpixels/fieldservice/activities/visits/PersonDialog$5;->this$0:Lcom/lostpixels/fieldservice/activities/visits/PersonDialog;

    invoke-static {v0}, Lcom/lostpixels/fieldservice/activities/visits/PersonDialog;->access$500(Lcom/lostpixels/fieldservice/activities/visits/PersonDialog;)Lio/realm/Realm;

    move-result-object v0

    invoke-static {v0}, Lcom/lostpixels/fieldservice/internal/ministry/MinistryManager;->getInstance(Lio/realm/Realm;)Lcom/lostpixels/fieldservice/internal/ministry/MinistryManager;

    move-result-object v0

    iget-object v1, p0, Lcom/lostpixels/fieldservice/activities/visits/PersonDialog$5;->this$0:Lcom/lostpixels/fieldservice/activities/visits/PersonDialog;

    invoke-static {v1}, Lcom/lostpixels/fieldservice/activities/visits/PersonDialog;->access$400(Lcom/lostpixels/fieldservice/activities/visits/PersonDialog;)Lio/realm/Realm;

    move-result-object v2

    invoke-virtual {v0, v1, v2, p1, p2}, Lcom/lostpixels/fieldservice/internal/ministry/MinistryManager;->removePerson(Landroid/content/Context;Lio/realm/Realm;J)V

    .line 577
    :cond_3
    :goto_1
    iget-object p1, p0, Lcom/lostpixels/fieldservice/activities/visits/PersonDialog$5;->this$0:Lcom/lostpixels/fieldservice/activities/visits/PersonDialog;

    invoke-static {p1}, Lcom/lostpixels/fieldservice/activities/visits/PersonDialog;->access$600(Lcom/lostpixels/fieldservice/activities/visits/PersonDialog;)Lio/realm/Realm;

    move-result-object p1

    iget-object p2, p0, Lcom/lostpixels/fieldservice/activities/visits/PersonDialog$5;->this$0:Lcom/lostpixels/fieldservice/activities/visits/PersonDialog;

    invoke-virtual {p2}, Landroid/content/ContextWrapper;->getBaseContext()Landroid/content/Context;

    move-result-object p2

    invoke-static {p1, p2}, Lcom/lostpixels/fieldservice/helpfunctions/HelpFunctions;->updateNumberOfStudies(Lio/realm/Realm;Landroid/content/Context;)V

    .line 578
    iget-object p1, p0, Lcom/lostpixels/fieldservice/activities/visits/PersonDialog$5;->this$0:Lcom/lostpixels/fieldservice/activities/visits/PersonDialog;

    invoke-static {p1}, Lcom/lostpixels/fieldservice/helpfunctions/HelpFunctions;->updateReportWidget(Landroid/content/Context;)V

    .line 579
    new-instance p1, Landroid/content/Intent;

    invoke-direct {p1}, Landroid/content/Intent;-><init>()V

    .line 580
    iget-object p2, p0, Lcom/lostpixels/fieldservice/activities/visits/PersonDialog$5;->this$0:Lcom/lostpixels/fieldservice/activities/visits/PersonDialog;

    invoke-static {p2}, Lcom/lostpixels/fieldservice/activities/visits/PersonDialog;->-$$Nest$fgetmPersonKey(Lcom/lostpixels/fieldservice/activities/visits/PersonDialog;)J

    move-result-wide v0

    const-string p2, "PersonID"

    invoke-virtual {p1, p2, v0, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;J)Landroid/content/Intent;

    .line 581
    iget-object p2, p0, Lcom/lostpixels/fieldservice/activities/visits/PersonDialog$5;->this$0:Lcom/lostpixels/fieldservice/activities/visits/PersonDialog;

    const/4 v0, 0x2

    invoke-virtual {p2, v0, p1}, Landroid/app/Activity;->setResult(ILandroid/content/Intent;)V

    .line 582
    iget-object p1, p0, Lcom/lostpixels/fieldservice/activities/visits/PersonDialog$5;->this$0:Lcom/lostpixels/fieldservice/activities/visits/PersonDialog;

    invoke-virtual {p1}, Landroid/app/Activity;->finish()V

    return-void
.end method
