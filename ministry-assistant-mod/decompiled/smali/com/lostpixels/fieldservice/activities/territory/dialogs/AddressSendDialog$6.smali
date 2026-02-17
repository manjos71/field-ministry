.class Lcom/lostpixels/fieldservice/activities/territory/dialogs/AddressSendDialog$6;
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

    .line 207
    iput-object p1, p0, Lcom/lostpixels/fieldservice/activities/territory/dialogs/AddressSendDialog$6;->this$0:Lcom/lostpixels/fieldservice/activities/territory/dialogs/AddressSendDialog;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 13

    .line 211
    iget-object p1, p0, Lcom/lostpixels/fieldservice/activities/territory/dialogs/AddressSendDialog$6;->this$0:Lcom/lostpixels/fieldservice/activities/territory/dialogs/AddressSendDialog;

    invoke-static {p1}, Lcom/lostpixels/fieldservice/activities/territory/dialogs/AddressSendDialog;->-$$Nest$fgetmlstItems(Lcom/lostpixels/fieldservice/activities/territory/dialogs/AddressSendDialog;)Ljava/util/ArrayList;

    move-result-object p1

    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v0

    const/4 v1, 0x0

    const/4 v2, 0x0

    const/4 v3, 0x0

    :cond_0
    const/4 v4, 0x1

    if-ge v3, v0, :cond_3

    invoke-virtual {p1, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    add-int/lit8 v3, v3, 0x1

    check-cast v5, Lcom/lostpixels/fieldservice/activities/territory/utils/SelectGroup;

    .line 212
    invoke-virtual {v5}, Lcom/lostpixels/fieldservice/activities/territory/utils/SelectGroup;->getSelectItems()Ljava/util/ArrayList;

    move-result-object v5

    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    move-result v6

    const/4 v7, 0x0

    :cond_1
    :goto_0
    if-ge v7, v6, :cond_0

    invoke-virtual {v5, v7}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v8

    add-int/lit8 v7, v7, 0x1

    check-cast v8, Lcom/lostpixels/fieldservice/activities/territory/utils/SelectItem;

    .line 213
    iget-object v9, p0, Lcom/lostpixels/fieldservice/activities/territory/dialogs/AddressSendDialog$6;->this$0:Lcom/lostpixels/fieldservice/activities/territory/dialogs/AddressSendDialog;

    invoke-static {v9}, Lcom/lostpixels/fieldservice/activities/territory/dialogs/AddressSendDialog;->access$300(Lcom/lostpixels/fieldservice/activities/territory/dialogs/AddressSendDialog;)Lio/realm/Realm;

    move-result-object v9

    invoke-static {v9}, Lcom/lostpixels/fieldservice/internal/ministry/MinistryManager;->getInstance(Lio/realm/Realm;)Lcom/lostpixels/fieldservice/internal/ministry/MinistryManager;

    move-result-object v9

    iget-object v10, p0, Lcom/lostpixels/fieldservice/activities/territory/dialogs/AddressSendDialog$6;->this$0:Lcom/lostpixels/fieldservice/activities/territory/dialogs/AddressSendDialog;

    invoke-static {v10}, Lcom/lostpixels/fieldservice/activities/territory/dialogs/AddressSendDialog;->access$200(Lcom/lostpixels/fieldservice/activities/territory/dialogs/AddressSendDialog;)Lio/realm/Realm;

    move-result-object v10

    invoke-virtual {v8}, Lcom/lostpixels/fieldservice/activities/territory/utils/SelectItem;->getVisit()Lcom/lostpixels/fieldservice/internal/ministry/Visit;

    move-result-object v11

    invoke-virtual {v11}, Lcom/lostpixels/fieldservice/internal/ministry/Visit;->getHouseHolder()J

    move-result-wide v11

    invoke-virtual {v9, v10, v11, v12}, Lcom/lostpixels/fieldservice/internal/ministry/MinistryManager;->getPerson(Lio/realm/Realm;J)Lcom/lostpixels/fieldservice/internal/ministry/Person;

    move-result-object v9

    if-eqz v9, :cond_1

    .line 215
    invoke-virtual {v8}, Lcom/lostpixels/fieldservice/activities/territory/utils/SelectItem;->isChecked()Z

    move-result v8

    if-eqz v8, :cond_2

    add-int/lit8 v2, v2, 0x1

    .line 217
    invoke-virtual {v9}, Lcom/lostpixels/fieldservice/internal/ministry/Person;->isMagazineRoute()Z

    move-result v8

    if-nez v8, :cond_1

    invoke-virtual {v9}, Lcom/lostpixels/fieldservice/internal/ministry/Person;->isFavorite()Z

    move-result v8

    if-nez v8, :cond_1

    invoke-virtual {v9}, Lcom/lostpixels/fieldservice/internal/ministry/Person;->isReturnVisit()Z

    move-result v8

    if-nez v8, :cond_1

    invoke-virtual {v9}, Lcom/lostpixels/fieldservice/internal/ministry/Person;->isBibleStudy()Z

    move-result v8

    if-nez v8, :cond_1

    .line 218
    invoke-virtual {v9, v4}, Lcom/lostpixels/fieldservice/internal/ministry/Person;->setReturnVisit(Z)V

    goto :goto_0

    .line 220
    :cond_2
    invoke-virtual {v9, v1}, Lcom/lostpixels/fieldservice/internal/ministry/Person;->setReturnVisit(Z)V

    .line 221
    invoke-virtual {v9, v1}, Lcom/lostpixels/fieldservice/internal/ministry/Person;->setBibleStudy(Z)V

    .line 222
    invoke-virtual {v9, v1}, Lcom/lostpixels/fieldservice/internal/ministry/Person;->setMagazineRoute(Z)V

    .line 223
    invoke-virtual {v9, v1}, Lcom/lostpixels/fieldservice/internal/ministry/Person;->setFavorite(Z)V

    goto :goto_0

    :cond_3
    if-nez v2, :cond_4

    .line 230
    iget-object p1, p0, Lcom/lostpixels/fieldservice/activities/territory/dialogs/AddressSendDialog$6;->this$0:Lcom/lostpixels/fieldservice/activities/territory/dialogs/AddressSendDialog;

    const v0, 0x7f120563

    invoke-virtual {p1, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, v0, v1}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object p1

    invoke-virtual {p1}, Landroid/widget/Toast;->show()V

    goto :goto_1

    :cond_4
    if-ne v2, v4, :cond_5

    .line 232
    iget-object p1, p0, Lcom/lostpixels/fieldservice/activities/territory/dialogs/AddressSendDialog$6;->this$0:Lcom/lostpixels/fieldservice/activities/territory/dialogs/AddressSendDialog;

    const v0, 0x7f12027a

    invoke-virtual {p1, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, v0, v1}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object p1

    invoke-virtual {p1}, Landroid/widget/Toast;->show()V

    goto :goto_1

    .line 234
    :cond_5
    iget-object p1, p0, Lcom/lostpixels/fieldservice/activities/territory/dialogs/AddressSendDialog$6;->this$0:Lcom/lostpixels/fieldservice/activities/territory/dialogs/AddressSendDialog;

    const v0, 0x7f12027b

    invoke-virtual {p1, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    new-array v3, v4, [Ljava/lang/Object;

    aput-object v2, v3, v1

    invoke-static {v0, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, v0, v1}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object p1

    invoke-virtual {p1}, Landroid/widget/Toast;->show()V

    .line 235
    :goto_1
    iget-object p1, p0, Lcom/lostpixels/fieldservice/activities/territory/dialogs/AddressSendDialog$6;->this$0:Lcom/lostpixels/fieldservice/activities/territory/dialogs/AddressSendDialog;

    invoke-static {p1}, Lcom/lostpixels/fieldservice/activities/territory/dialogs/AddressSendDialog;->access$600(Lcom/lostpixels/fieldservice/activities/territory/dialogs/AddressSendDialog;)Lio/realm/Realm;

    move-result-object p1

    invoke-static {p1}, Lcom/lostpixels/fieldservice/internal/ministry/MinistryManager;->getInstance(Lio/realm/Realm;)Lcom/lostpixels/fieldservice/internal/ministry/MinistryManager;

    move-result-object p1

    iget-object v0, p0, Lcom/lostpixels/fieldservice/activities/territory/dialogs/AddressSendDialog$6;->this$0:Lcom/lostpixels/fieldservice/activities/territory/dialogs/AddressSendDialog;

    invoke-static {v0}, Lcom/lostpixels/fieldservice/activities/territory/dialogs/AddressSendDialog;->access$400(Lcom/lostpixels/fieldservice/activities/territory/dialogs/AddressSendDialog;)Lio/realm/Realm;

    move-result-object v0

    iget-object v1, p0, Lcom/lostpixels/fieldservice/activities/territory/dialogs/AddressSendDialog$6;->this$0:Lcom/lostpixels/fieldservice/activities/territory/dialogs/AddressSendDialog;

    invoke-static {v1}, Lcom/lostpixels/fieldservice/activities/territory/dialogs/AddressSendDialog;->access$500(Lcom/lostpixels/fieldservice/activities/territory/dialogs/AddressSendDialog;)Lio/realm/Realm;

    move-result-object v1

    invoke-static {v1}, Lcom/lostpixels/fieldservice/internal/ministry/MinistryManager;->getInstance(Lio/realm/Realm;)Lcom/lostpixels/fieldservice/internal/ministry/MinistryManager;

    move-result-object v1

    sget-object v2, Lcom/lostpixels/fieldservice/activities/territory/dialogs/AddressSendDialog;->mTerritory:Lcom/lostpixels/fieldservice/internal/ministry/Territory;

    invoke-virtual {v2}, Lcom/lostpixels/fieldservice/internal/ministry/Territory;->getId()J

    move-result-wide v2

    invoke-virtual {v1, v2, v3}, Lcom/lostpixels/fieldservice/internal/ministry/MinistryManager;->getTerritory(J)Lcom/lostpixels/fieldservice/internal/ministry/Territory;

    move-result-object v1

    invoke-static {v1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v2, p0, Lcom/lostpixels/fieldservice/activities/territory/dialogs/AddressSendDialog$6;->this$0:Lcom/lostpixels/fieldservice/activities/territory/dialogs/AddressSendDialog;

    invoke-virtual {p1, v0, v1, v2}, Lcom/lostpixels/fieldservice/internal/ministry/MinistryManager;->removeTerritory(Lio/realm/Realm;Lcom/lostpixels/fieldservice/internal/ministry/Territory;Landroid/content/Context;)V

    .line 236
    iget-object p1, p0, Lcom/lostpixels/fieldservice/activities/territory/dialogs/AddressSendDialog$6;->this$0:Lcom/lostpixels/fieldservice/activities/territory/dialogs/AddressSendDialog;

    const/4 v0, -0x1

    invoke-virtual {p1, v0}, Landroid/app/Activity;->setResult(I)V

    .line 237
    iget-object p1, p0, Lcom/lostpixels/fieldservice/activities/territory/dialogs/AddressSendDialog$6;->this$0:Lcom/lostpixels/fieldservice/activities/territory/dialogs/AddressSendDialog;

    invoke-virtual {p1}, Landroid/app/Activity;->finish()V

    return-void
.end method
