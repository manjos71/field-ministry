.class Lcom/lostpixels/fieldservice/activities/visits/ReturnVisitsTab$16;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/lostpixels/fieldservice/activities/visits/ReturnVisitsTab;->onBookmarkChanged(Lcom/lostpixels/fieldservice/internal/ministry/Person;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/lostpixels/fieldservice/activities/visits/ReturnVisitsTab;

.field final synthetic val$person:Lcom/lostpixels/fieldservice/internal/ministry/Person;


# direct methods
.method constructor <init>(Lcom/lostpixels/fieldservice/activities/visits/ReturnVisitsTab;Lcom/lostpixels/fieldservice/internal/ministry/Person;)V
    .locals 0

    .line 1296
    iput-object p1, p0, Lcom/lostpixels/fieldservice/activities/visits/ReturnVisitsTab$16;->this$0:Lcom/lostpixels/fieldservice/activities/visits/ReturnVisitsTab;

    iput-object p2, p0, Lcom/lostpixels/fieldservice/activities/visits/ReturnVisitsTab$16;->val$person:Lcom/lostpixels/fieldservice/internal/ministry/Person;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 4

    .line 1298
    iget-object p2, p0, Lcom/lostpixels/fieldservice/activities/visits/ReturnVisitsTab$16;->val$person:Lcom/lostpixels/fieldservice/internal/ministry/Person;

    invoke-virtual {p2}, Lcom/lostpixels/fieldservice/internal/ministry/Person;->isFavorite()Z

    move-result v0

    xor-int/lit8 v0, v0, 0x1

    invoke-virtual {p2, v0}, Lcom/lostpixels/fieldservice/internal/ministry/Person;->setFavorite(Z)V

    .line 1299
    iget-object p2, p0, Lcom/lostpixels/fieldservice/activities/visits/ReturnVisitsTab$16;->this$0:Lcom/lostpixels/fieldservice/activities/visits/ReturnVisitsTab;

    invoke-static {p2}, Lcom/lostpixels/fieldservice/activities/visits/ReturnVisitsTab;->access$1400(Lcom/lostpixels/fieldservice/activities/visits/ReturnVisitsTab;)Lio/realm/Realm;

    move-result-object p2

    invoke-static {p2}, Lcom/lostpixels/fieldservice/internal/ministry/MinistryManager;->getInstance(Lio/realm/Realm;)Lcom/lostpixels/fieldservice/internal/ministry/MinistryManager;

    move-result-object p2

    iget-object v0, p0, Lcom/lostpixels/fieldservice/activities/visits/ReturnVisitsTab$16;->this$0:Lcom/lostpixels/fieldservice/activities/visits/ReturnVisitsTab;

    invoke-static {v0}, Lcom/lostpixels/fieldservice/activities/visits/ReturnVisitsTab;->access$1200(Lcom/lostpixels/fieldservice/activities/visits/ReturnVisitsTab;)Lio/realm/Realm;

    move-result-object v1

    iget-object v2, p0, Lcom/lostpixels/fieldservice/activities/visits/ReturnVisitsTab$16;->this$0:Lcom/lostpixels/fieldservice/activities/visits/ReturnVisitsTab;

    .line 1300
    invoke-static {v2}, Lcom/lostpixels/fieldservice/activities/visits/ReturnVisitsTab;->access$1300(Lcom/lostpixels/fieldservice/activities/visits/ReturnVisitsTab;)Lio/realm/Realm;

    move-result-object v2

    invoke-static {v2}, Lcom/lostpixels/fieldservice/internal/ministry/MinistryManager;->getInstance(Lio/realm/Realm;)Lcom/lostpixels/fieldservice/internal/ministry/MinistryManager;

    move-result-object v2

    iget-object v3, p0, Lcom/lostpixels/fieldservice/activities/visits/ReturnVisitsTab$16;->val$person:Lcom/lostpixels/fieldservice/internal/ministry/Person;

    invoke-virtual {v2, v3}, Lcom/lostpixels/fieldservice/internal/ministry/MinistryManager;->getPersonKey(Lcom/lostpixels/fieldservice/internal/ministry/Person;)J

    move-result-wide v2

    .line 1299
    invoke-virtual {p2, v0, v1, v2, v3}, Lcom/lostpixels/fieldservice/internal/ministry/MinistryManager;->removePerson(Landroid/content/Context;Lio/realm/Realm;J)V

    .line 1303
    iget-object p2, p0, Lcom/lostpixels/fieldservice/activities/visits/ReturnVisitsTab$16;->this$0:Lcom/lostpixels/fieldservice/activities/visits/ReturnVisitsTab;

    invoke-static {p2}, Lcom/lostpixels/fieldservice/activities/visits/ReturnVisitsTab;->-$$Nest$monTagUpdated(Lcom/lostpixels/fieldservice/activities/visits/ReturnVisitsTab;)V

    .line 1306
    :try_start_0
    invoke-interface {p1}, Landroid/content/DialogInterface;->dismiss()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    return-void
.end method
