.class Lcom/lostpixels/fieldservice/activities/visits/ReturnVisitsTab$10$3;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/lostpixels/fieldservice/activities/visits/ReturnVisitsTab$10;->onItemClick(Landroid/widget/AdapterView;Landroid/view/View;IJ)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/lostpixels/fieldservice/activities/visits/ReturnVisitsTab$10;


# direct methods
.method constructor <init>(Lcom/lostpixels/fieldservice/activities/visits/ReturnVisitsTab$10;)V
    .locals 0

    .line 912
    iput-object p1, p0, Lcom/lostpixels/fieldservice/activities/visits/ReturnVisitsTab$10$3;->this$1:Lcom/lostpixels/fieldservice/activities/visits/ReturnVisitsTab$10;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 3

    .line 914
    iget-object p1, p0, Lcom/lostpixels/fieldservice/activities/visits/ReturnVisitsTab$10$3;->this$1:Lcom/lostpixels/fieldservice/activities/visits/ReturnVisitsTab$10;

    iget-object p2, p1, Lcom/lostpixels/fieldservice/activities/visits/ReturnVisitsTab$10;->this$0:Lcom/lostpixels/fieldservice/activities/visits/ReturnVisitsTab;

    iget-object p1, p1, Lcom/lostpixels/fieldservice/activities/visits/ReturnVisitsTab$10;->val$person:Lcom/lostpixels/fieldservice/internal/ministry/Person;

    invoke-static {p2, p1}, Lcom/lostpixels/fieldservice/activities/visits/ReturnVisitsTab;->-$$Nest$mpersonExistInTerritory(Lcom/lostpixels/fieldservice/activities/visits/ReturnVisitsTab;Lcom/lostpixels/fieldservice/internal/ministry/Person;)Lcom/lostpixels/fieldservice/internal/ministry/Visit;

    move-result-object p1

    if-eqz p1, :cond_0

    .line 917
    iget-object p2, p0, Lcom/lostpixels/fieldservice/activities/visits/ReturnVisitsTab$10$3;->this$1:Lcom/lostpixels/fieldservice/activities/visits/ReturnVisitsTab$10;

    iget-object p2, p2, Lcom/lostpixels/fieldservice/activities/visits/ReturnVisitsTab$10;->val$person:Lcom/lostpixels/fieldservice/internal/ministry/Person;

    const/4 v0, 0x0

    invoke-virtual {p2, v0}, Lcom/lostpixels/fieldservice/internal/ministry/Person;->setReturnVisit(Z)V

    .line 918
    iget-object p2, p0, Lcom/lostpixels/fieldservice/activities/visits/ReturnVisitsTab$10$3;->this$1:Lcom/lostpixels/fieldservice/activities/visits/ReturnVisitsTab$10;

    iget-object p2, p2, Lcom/lostpixels/fieldservice/activities/visits/ReturnVisitsTab$10;->val$person:Lcom/lostpixels/fieldservice/internal/ministry/Person;

    invoke-virtual {p2, v0}, Lcom/lostpixels/fieldservice/internal/ministry/Person;->setBibleStudy(Z)V

    .line 919
    iget-object p2, p0, Lcom/lostpixels/fieldservice/activities/visits/ReturnVisitsTab$10$3;->this$1:Lcom/lostpixels/fieldservice/activities/visits/ReturnVisitsTab$10;

    iget-object p2, p2, Lcom/lostpixels/fieldservice/activities/visits/ReturnVisitsTab$10;->val$person:Lcom/lostpixels/fieldservice/internal/ministry/Person;

    invoke-virtual {p2, v0}, Lcom/lostpixels/fieldservice/internal/ministry/Person;->setMagazineRoute(Z)V

    .line 920
    iget-object p2, p0, Lcom/lostpixels/fieldservice/activities/visits/ReturnVisitsTab$10$3;->this$1:Lcom/lostpixels/fieldservice/activities/visits/ReturnVisitsTab$10;

    iget-object p2, p2, Lcom/lostpixels/fieldservice/activities/visits/ReturnVisitsTab$10;->val$person:Lcom/lostpixels/fieldservice/internal/ministry/Person;

    invoke-virtual {p2, v0}, Lcom/lostpixels/fieldservice/internal/ministry/Person;->setFavorite(Z)V

    .line 921
    iget-object p2, p0, Lcom/lostpixels/fieldservice/activities/visits/ReturnVisitsTab$10$3;->this$1:Lcom/lostpixels/fieldservice/activities/visits/ReturnVisitsTab$10;

    iget-object p2, p2, Lcom/lostpixels/fieldservice/activities/visits/ReturnVisitsTab$10;->val$person:Lcom/lostpixels/fieldservice/internal/ministry/Person;

    invoke-virtual {p2, v0}, Lcom/lostpixels/fieldservice/internal/ministry/Person;->setPriority(I)V

    .line 922
    iget-object p2, p0, Lcom/lostpixels/fieldservice/activities/visits/ReturnVisitsTab$10$3;->this$1:Lcom/lostpixels/fieldservice/activities/visits/ReturnVisitsTab$10;

    iget-object p2, p2, Lcom/lostpixels/fieldservice/activities/visits/ReturnVisitsTab$10;->val$person:Lcom/lostpixels/fieldservice/internal/ministry/Person;

    invoke-virtual {p2, v0}, Lcom/lostpixels/fieldservice/internal/ministry/Person;->setInterested(Z)V

    const/4 p2, 0x3

    .line 923
    invoke-virtual {p1, p2}, Lcom/lostpixels/fieldservice/internal/ministry/Visit;->setType(I)V

    .line 924
    iget-object p1, p0, Lcom/lostpixels/fieldservice/activities/visits/ReturnVisitsTab$10$3;->this$1:Lcom/lostpixels/fieldservice/activities/visits/ReturnVisitsTab$10;

    iget-object p1, p1, Lcom/lostpixels/fieldservice/activities/visits/ReturnVisitsTab$10;->this$0:Lcom/lostpixels/fieldservice/activities/visits/ReturnVisitsTab;

    invoke-static {p1}, Lcom/lostpixels/fieldservice/activities/visits/ReturnVisitsTab;->access$600(Lcom/lostpixels/fieldservice/activities/visits/ReturnVisitsTab;)Lio/realm/Realm;

    move-result-object p1

    invoke-static {p1}, Lcom/lostpixels/fieldservice/internal/ministry/MinistryManager;->getInstance(Lio/realm/Realm;)Lcom/lostpixels/fieldservice/internal/ministry/MinistryManager;

    move-result-object p1

    iget-object p2, p0, Lcom/lostpixels/fieldservice/activities/visits/ReturnVisitsTab$10$3;->this$1:Lcom/lostpixels/fieldservice/activities/visits/ReturnVisitsTab$10;

    iget-object p2, p2, Lcom/lostpixels/fieldservice/activities/visits/ReturnVisitsTab$10;->val$person:Lcom/lostpixels/fieldservice/internal/ministry/Person;

    invoke-virtual {p1, p2}, Lcom/lostpixels/fieldservice/internal/ministry/MinistryManager;->updatePerson(Lcom/lostpixels/fieldservice/internal/ministry/Person;)V

    goto :goto_0

    .line 926
    :cond_0
    iget-object p1, p0, Lcom/lostpixels/fieldservice/activities/visits/ReturnVisitsTab$10$3;->this$1:Lcom/lostpixels/fieldservice/activities/visits/ReturnVisitsTab$10;

    iget-object p1, p1, Lcom/lostpixels/fieldservice/activities/visits/ReturnVisitsTab$10;->this$0:Lcom/lostpixels/fieldservice/activities/visits/ReturnVisitsTab;

    invoke-static {p1}, Lcom/lostpixels/fieldservice/activities/visits/ReturnVisitsTab;->access$700(Lcom/lostpixels/fieldservice/activities/visits/ReturnVisitsTab;)Lio/realm/Realm;

    move-result-object p1

    invoke-static {p1}, Lcom/lostpixels/fieldservice/internal/ministry/MinistryManager;->getInstance(Lio/realm/Realm;)Lcom/lostpixels/fieldservice/internal/ministry/MinistryManager;

    move-result-object p1

    iget-object p2, p0, Lcom/lostpixels/fieldservice/activities/visits/ReturnVisitsTab$10$3;->this$1:Lcom/lostpixels/fieldservice/activities/visits/ReturnVisitsTab$10;

    iget-object p2, p2, Lcom/lostpixels/fieldservice/activities/visits/ReturnVisitsTab$10;->val$person:Lcom/lostpixels/fieldservice/internal/ministry/Person;

    invoke-virtual {p1, p2}, Lcom/lostpixels/fieldservice/internal/ministry/MinistryManager;->getPersonKey(Lcom/lostpixels/fieldservice/internal/ministry/Person;)J

    move-result-wide p1

    .line 927
    iget-object v0, p0, Lcom/lostpixels/fieldservice/activities/visits/ReturnVisitsTab$10$3;->this$1:Lcom/lostpixels/fieldservice/activities/visits/ReturnVisitsTab$10;

    iget-object v0, v0, Lcom/lostpixels/fieldservice/activities/visits/ReturnVisitsTab$10;->this$0:Lcom/lostpixels/fieldservice/activities/visits/ReturnVisitsTab;

    invoke-static {v0}, Lcom/lostpixels/fieldservice/activities/visits/ReturnVisitsTab;->access$900(Lcom/lostpixels/fieldservice/activities/visits/ReturnVisitsTab;)Lio/realm/Realm;

    move-result-object v0

    invoke-static {v0}, Lcom/lostpixels/fieldservice/internal/ministry/MinistryManager;->getInstance(Lio/realm/Realm;)Lcom/lostpixels/fieldservice/internal/ministry/MinistryManager;

    move-result-object v0

    iget-object v1, p0, Lcom/lostpixels/fieldservice/activities/visits/ReturnVisitsTab$10$3;->this$1:Lcom/lostpixels/fieldservice/activities/visits/ReturnVisitsTab$10;

    iget-object v1, v1, Lcom/lostpixels/fieldservice/activities/visits/ReturnVisitsTab$10;->this$0:Lcom/lostpixels/fieldservice/activities/visits/ReturnVisitsTab;

    invoke-static {v1}, Lcom/lostpixels/fieldservice/activities/visits/ReturnVisitsTab;->access$800(Lcom/lostpixels/fieldservice/activities/visits/ReturnVisitsTab;)Lio/realm/Realm;

    move-result-object v2

    invoke-virtual {v0, v1, v2, p1, p2}, Lcom/lostpixels/fieldservice/internal/ministry/MinistryManager;->removePerson(Landroid/content/Context;Lio/realm/Realm;J)V

    .line 929
    :goto_0
    iget-object p1, p0, Lcom/lostpixels/fieldservice/activities/visits/ReturnVisitsTab$10$3;->this$1:Lcom/lostpixels/fieldservice/activities/visits/ReturnVisitsTab$10;

    iget-object p1, p1, Lcom/lostpixels/fieldservice/activities/visits/ReturnVisitsTab$10;->this$0:Lcom/lostpixels/fieldservice/activities/visits/ReturnVisitsTab;

    invoke-static {p1}, Lcom/lostpixels/fieldservice/activities/visits/ReturnVisitsTab;->access$1000(Lcom/lostpixels/fieldservice/activities/visits/ReturnVisitsTab;)Lio/realm/Realm;

    move-result-object p1

    iget-object p2, p0, Lcom/lostpixels/fieldservice/activities/visits/ReturnVisitsTab$10$3;->this$1:Lcom/lostpixels/fieldservice/activities/visits/ReturnVisitsTab$10;

    iget-object p2, p2, Lcom/lostpixels/fieldservice/activities/visits/ReturnVisitsTab$10;->this$0:Lcom/lostpixels/fieldservice/activities/visits/ReturnVisitsTab;

    invoke-virtual {p2}, Landroid/content/ContextWrapper;->getBaseContext()Landroid/content/Context;

    move-result-object p2

    invoke-static {p1, p2}, Lcom/lostpixels/fieldservice/helpfunctions/HelpFunctions;->updateNumberOfStudies(Lio/realm/Realm;Landroid/content/Context;)V

    .line 931
    iget-object p1, p0, Lcom/lostpixels/fieldservice/activities/visits/ReturnVisitsTab$10$3;->this$1:Lcom/lostpixels/fieldservice/activities/visits/ReturnVisitsTab$10;

    iget-object p1, p1, Lcom/lostpixels/fieldservice/activities/visits/ReturnVisitsTab$10;->this$0:Lcom/lostpixels/fieldservice/activities/visits/ReturnVisitsTab;

    invoke-static {p1}, Lcom/lostpixels/fieldservice/activities/visits/ReturnVisitsTab;->-$$Nest$monTagUpdated(Lcom/lostpixels/fieldservice/activities/visits/ReturnVisitsTab;)V

    return-void
.end method
