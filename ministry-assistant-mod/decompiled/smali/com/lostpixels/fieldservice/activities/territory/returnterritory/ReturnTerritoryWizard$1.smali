.class Lcom/lostpixels/fieldservice/activities/territory/returnterritory/ReturnTerritoryWizard$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/lostpixels/fieldservice/activities/territory/returnterritory/ReturnTerritoryWizard$FinishedTerritoryHelperCommunication;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/lostpixels/fieldservice/activities/territory/returnterritory/ReturnTerritoryWizard;->onCompleted(Landroid/view/View;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/lostpixels/fieldservice/activities/territory/returnterritory/ReturnTerritoryWizard;

.field final synthetic val$deleteTerritory:Z

.field final synthetic val$personsToKeep:Ljava/util/List;


# direct methods
.method constructor <init>(Lcom/lostpixels/fieldservice/activities/territory/returnterritory/ReturnTerritoryWizard;Ljava/util/List;Z)V
    .locals 0

    .line 135
    iput-object p1, p0, Lcom/lostpixels/fieldservice/activities/territory/returnterritory/ReturnTerritoryWizard$1;->this$0:Lcom/lostpixels/fieldservice/activities/territory/returnterritory/ReturnTerritoryWizard;

    iput-object p2, p0, Lcom/lostpixels/fieldservice/activities/territory/returnterritory/ReturnTerritoryWizard$1;->val$personsToKeep:Ljava/util/List;

    iput-boolean p3, p0, Lcom/lostpixels/fieldservice/activities/territory/returnterritory/ReturnTerritoryWizard$1;->val$deleteTerritory:Z

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onFinished(Z)V
    .locals 5

    if-eqz p1, :cond_6

    .line 139
    iget-object p1, p0, Lcom/lostpixels/fieldservice/activities/territory/returnterritory/ReturnTerritoryWizard$1;->val$personsToKeep:Ljava/util/List;

    const/4 v0, 0x1

    const/4 v1, 0x0

    if-eqz p1, :cond_4

    .line 140
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_0
    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/lostpixels/fieldservice/internal/ministry/Person;

    .line 141
    invoke-virtual {v2}, Lcom/lostpixels/fieldservice/internal/ministry/Person;->isMagazineRoute()Z

    move-result v3

    if-nez v3, :cond_0

    invoke-virtual {v2}, Lcom/lostpixels/fieldservice/internal/ministry/Person;->isFavorite()Z

    move-result v3

    if-nez v3, :cond_0

    invoke-virtual {v2}, Lcom/lostpixels/fieldservice/internal/ministry/Person;->isReturnVisit()Z

    move-result v3

    if-nez v3, :cond_0

    invoke-virtual {v2}, Lcom/lostpixels/fieldservice/internal/ministry/Person;->isBibleStudy()Z

    move-result v3

    if-nez v3, :cond_0

    .line 142
    invoke-virtual {v2, v0}, Lcom/lostpixels/fieldservice/internal/ministry/Person;->setReturnVisit(Z)V

    goto :goto_0

    .line 146
    :cond_1
    iget-object p1, p0, Lcom/lostpixels/fieldservice/activities/territory/returnterritory/ReturnTerritoryWizard$1;->val$personsToKeep:Ljava/util/List;

    invoke-interface {p1}, Ljava/util/List;->isEmpty()Z

    move-result p1

    if-eqz p1, :cond_2

    .line 147
    iget-object p1, p0, Lcom/lostpixels/fieldservice/activities/territory/returnterritory/ReturnTerritoryWizard$1;->this$0:Lcom/lostpixels/fieldservice/activities/territory/returnterritory/ReturnTerritoryWizard;

    const v2, 0x7f120563

    invoke-virtual {p1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-static {p1, v2, v1}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object p1

    invoke-virtual {p1}, Landroid/widget/Toast;->show()V

    goto :goto_1

    .line 148
    :cond_2
    iget-object p1, p0, Lcom/lostpixels/fieldservice/activities/territory/returnterritory/ReturnTerritoryWizard$1;->val$personsToKeep:Ljava/util/List;

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result p1

    if-ne p1, v0, :cond_3

    .line 149
    iget-object p1, p0, Lcom/lostpixels/fieldservice/activities/territory/returnterritory/ReturnTerritoryWizard$1;->this$0:Lcom/lostpixels/fieldservice/activities/territory/returnterritory/ReturnTerritoryWizard;

    const v2, 0x7f12027a

    invoke-virtual {p1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-static {p1, v2, v1}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object p1

    invoke-virtual {p1}, Landroid/widget/Toast;->show()V

    goto :goto_1

    .line 151
    :cond_3
    iget-object p1, p0, Lcom/lostpixels/fieldservice/activities/territory/returnterritory/ReturnTerritoryWizard$1;->this$0:Lcom/lostpixels/fieldservice/activities/territory/returnterritory/ReturnTerritoryWizard;

    const v2, 0x7f12027b

    invoke-virtual {p1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    iget-object v3, p0, Lcom/lostpixels/fieldservice/activities/territory/returnterritory/ReturnTerritoryWizard$1;->val$personsToKeep:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    new-array v4, v0, [Ljava/lang/Object;

    aput-object v3, v4, v1

    invoke-static {v2, v4}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-static {p1, v2, v1}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object p1

    invoke-virtual {p1}, Landroid/widget/Toast;->show()V

    goto :goto_1

    .line 154
    :cond_4
    iget-object p1, p0, Lcom/lostpixels/fieldservice/activities/territory/returnterritory/ReturnTerritoryWizard$1;->this$0:Lcom/lostpixels/fieldservice/activities/territory/returnterritory/ReturnTerritoryWizard;

    const v2, 0x7f1203ce

    invoke-virtual {p1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-static {p1, v2, v1}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object p1

    invoke-virtual {p1}, Landroid/widget/Toast;->show()V

    .line 156
    :goto_1
    iget-boolean p1, p0, Lcom/lostpixels/fieldservice/activities/territory/returnterritory/ReturnTerritoryWizard$1;->val$deleteTerritory:Z

    if-eqz p1, :cond_5

    .line 157
    iget-object p1, p0, Lcom/lostpixels/fieldservice/activities/territory/returnterritory/ReturnTerritoryWizard$1;->this$0:Lcom/lostpixels/fieldservice/activities/territory/returnterritory/ReturnTerritoryWizard;

    invoke-static {p1}, Lcom/lostpixels/fieldservice/activities/territory/returnterritory/ReturnTerritoryWizard;->access$100(Lcom/lostpixels/fieldservice/activities/territory/returnterritory/ReturnTerritoryWizard;)Lio/realm/Realm;

    move-result-object p1

    invoke-static {p1}, Lcom/lostpixels/fieldservice/internal/ministry/MinistryManager;->getInstance(Lio/realm/Realm;)Lcom/lostpixels/fieldservice/internal/ministry/MinistryManager;

    move-result-object p1

    iget-object v0, p0, Lcom/lostpixels/fieldservice/activities/territory/returnterritory/ReturnTerritoryWizard$1;->this$0:Lcom/lostpixels/fieldservice/activities/territory/returnterritory/ReturnTerritoryWizard;

    invoke-static {v0}, Lcom/lostpixels/fieldservice/activities/territory/returnterritory/ReturnTerritoryWizard;->access$000(Lcom/lostpixels/fieldservice/activities/territory/returnterritory/ReturnTerritoryWizard;)Lio/realm/Realm;

    move-result-object v0

    iget-object v1, p0, Lcom/lostpixels/fieldservice/activities/territory/returnterritory/ReturnTerritoryWizard$1;->this$0:Lcom/lostpixels/fieldservice/activities/territory/returnterritory/ReturnTerritoryWizard;

    invoke-static {v1}, Lcom/lostpixels/fieldservice/activities/territory/returnterritory/ReturnTerritoryWizard;->-$$Nest$fgetterritory(Lcom/lostpixels/fieldservice/activities/territory/returnterritory/ReturnTerritoryWizard;)Lcom/lostpixels/fieldservice/internal/ministry/Territory;

    move-result-object v1

    invoke-static {v1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v2, p0, Lcom/lostpixels/fieldservice/activities/territory/returnterritory/ReturnTerritoryWizard$1;->this$0:Lcom/lostpixels/fieldservice/activities/territory/returnterritory/ReturnTerritoryWizard;

    invoke-virtual {p1, v0, v1, v2}, Lcom/lostpixels/fieldservice/internal/ministry/MinistryManager;->removeTerritory(Lio/realm/Realm;Lcom/lostpixels/fieldservice/internal/ministry/Territory;Landroid/content/Context;)V

    goto :goto_2

    .line 159
    :cond_5
    iget-object p1, p0, Lcom/lostpixels/fieldservice/activities/territory/returnterritory/ReturnTerritoryWizard$1;->this$0:Lcom/lostpixels/fieldservice/activities/territory/returnterritory/ReturnTerritoryWizard;

    invoke-static {p1}, Lcom/lostpixels/fieldservice/activities/territory/returnterritory/ReturnTerritoryWizard;->-$$Nest$fgetterritory(Lcom/lostpixels/fieldservice/activities/territory/returnterritory/ReturnTerritoryWizard;)Lcom/lostpixels/fieldservice/internal/ministry/Territory;

    move-result-object p1

    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    invoke-virtual {p1, v0}, Lcom/lostpixels/fieldservice/internal/ministry/Territory;->returnTerritory(Z)V

    .line 161
    :goto_2
    iget-object p1, p0, Lcom/lostpixels/fieldservice/activities/territory/returnterritory/ReturnTerritoryWizard$1;->this$0:Lcom/lostpixels/fieldservice/activities/territory/returnterritory/ReturnTerritoryWizard;

    invoke-static {p1}, Lcom/lostpixels/fieldservice/activities/territory/returnterritory/ReturnTerritoryWizard;->access$200(Lcom/lostpixels/fieldservice/activities/territory/returnterritory/ReturnTerritoryWizard;)Lio/realm/Realm;

    move-result-object p1

    iget-object v0, p0, Lcom/lostpixels/fieldservice/activities/territory/returnterritory/ReturnTerritoryWizard$1;->this$0:Lcom/lostpixels/fieldservice/activities/territory/returnterritory/ReturnTerritoryWizard;

    invoke-static {p1, v0}, Lcom/lostpixels/fieldservice/helpfunctions/HelpFunctions;->updateNumberOfStudies(Lio/realm/Realm;Landroid/content/Context;)V

    .line 162
    iget-object p1, p0, Lcom/lostpixels/fieldservice/activities/territory/returnterritory/ReturnTerritoryWizard$1;->this$0:Lcom/lostpixels/fieldservice/activities/territory/returnterritory/ReturnTerritoryWizard;

    const/4 v0, -0x1

    invoke-virtual {p1, v0}, Landroid/app/Activity;->setResult(I)V

    .line 163
    iget-object p1, p0, Lcom/lostpixels/fieldservice/activities/territory/returnterritory/ReturnTerritoryWizard$1;->this$0:Lcom/lostpixels/fieldservice/activities/territory/returnterritory/ReturnTerritoryWizard;

    invoke-virtual {p1}, Landroid/app/Activity;->finish()V

    :cond_6
    return-void
.end method
