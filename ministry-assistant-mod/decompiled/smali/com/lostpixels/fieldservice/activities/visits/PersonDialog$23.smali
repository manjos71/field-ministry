.class Lcom/lostpixels/fieldservice/activities/visits/PersonDialog$23;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/lostpixels/fieldservice/activities/visits/PersonDialog;->savePerson()V
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

    .line 1456
    iput-object p1, p0, Lcom/lostpixels/fieldservice/activities/visits/PersonDialog$23;->this$0:Lcom/lostpixels/fieldservice/activities/visits/PersonDialog;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 4

    .line 1458
    iget-object p2, p0, Lcom/lostpixels/fieldservice/activities/visits/PersonDialog$23;->this$0:Lcom/lostpixels/fieldservice/activities/visits/PersonDialog;

    invoke-static {p2}, Lcom/lostpixels/fieldservice/activities/visits/PersonDialog;->access$900(Lcom/lostpixels/fieldservice/activities/visits/PersonDialog;)Lio/realm/Realm;

    move-result-object p2

    invoke-static {p2}, Lcom/lostpixels/fieldservice/internal/ministry/MinistryManager;->getInstance(Lio/realm/Realm;)Lcom/lostpixels/fieldservice/internal/ministry/MinistryManager;

    move-result-object p2

    iget-object v0, p0, Lcom/lostpixels/fieldservice/activities/visits/PersonDialog$23;->this$0:Lcom/lostpixels/fieldservice/activities/visits/PersonDialog;

    invoke-static {v0}, Lcom/lostpixels/fieldservice/activities/visits/PersonDialog;->access$700(Lcom/lostpixels/fieldservice/activities/visits/PersonDialog;)Lio/realm/Realm;

    move-result-object v1

    iget-object v2, p0, Lcom/lostpixels/fieldservice/activities/visits/PersonDialog$23;->this$0:Lcom/lostpixels/fieldservice/activities/visits/PersonDialog;

    .line 1459
    invoke-static {v2}, Lcom/lostpixels/fieldservice/activities/visits/PersonDialog;->access$800(Lcom/lostpixels/fieldservice/activities/visits/PersonDialog;)Lio/realm/Realm;

    move-result-object v2

    invoke-static {v2}, Lcom/lostpixels/fieldservice/internal/ministry/MinistryManager;->getInstance(Lio/realm/Realm;)Lcom/lostpixels/fieldservice/internal/ministry/MinistryManager;

    move-result-object v2

    iget-object v3, p0, Lcom/lostpixels/fieldservice/activities/visits/PersonDialog$23;->this$0:Lcom/lostpixels/fieldservice/activities/visits/PersonDialog;

    invoke-static {v3}, Lcom/lostpixels/fieldservice/activities/visits/PersonDialog;->-$$Nest$fgetperson(Lcom/lostpixels/fieldservice/activities/visits/PersonDialog;)Lcom/lostpixels/fieldservice/internal/ministry/Person;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/lostpixels/fieldservice/internal/ministry/MinistryManager;->getPersonKey(Lcom/lostpixels/fieldservice/internal/ministry/Person;)J

    move-result-wide v2

    .line 1458
    invoke-virtual {p2, v0, v1, v2, v3}, Lcom/lostpixels/fieldservice/internal/ministry/MinistryManager;->removePerson(Landroid/content/Context;Lio/realm/Realm;J)V

    .line 1460
    iget-object p2, p0, Lcom/lostpixels/fieldservice/activities/visits/PersonDialog$23;->this$0:Lcom/lostpixels/fieldservice/activities/visits/PersonDialog;

    const/4 v0, 0x1

    invoke-static {p2, v0}, Lcom/lostpixels/fieldservice/activities/visits/PersonDialog;->-$$Nest$fputbPersonChanged(Lcom/lostpixels/fieldservice/activities/visits/PersonDialog;Z)V

    .line 1461
    iget-object p2, p0, Lcom/lostpixels/fieldservice/activities/visits/PersonDialog$23;->this$0:Lcom/lostpixels/fieldservice/activities/visits/PersonDialog;

    invoke-static {p2}, Lcom/lostpixels/fieldservice/activities/visits/PersonDialog;->-$$Nest$mupdateSaveButton(Lcom/lostpixels/fieldservice/activities/visits/PersonDialog;)V

    .line 1463
    :try_start_0
    invoke-interface {p1}, Landroid/content/DialogInterface;->dismiss()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 1468
    :catch_0
    iget-object p1, p0, Lcom/lostpixels/fieldservice/activities/visits/PersonDialog$23;->this$0:Lcom/lostpixels/fieldservice/activities/visits/PersonDialog;

    invoke-static {p1}, Lcom/lostpixels/fieldservice/activities/visits/PersonDialog;->-$$Nest$msaveAndFinish(Lcom/lostpixels/fieldservice/activities/visits/PersonDialog;)V

    .line 1469
    iget-object p1, p0, Lcom/lostpixels/fieldservice/activities/visits/PersonDialog$23;->this$0:Lcom/lostpixels/fieldservice/activities/visits/PersonDialog;

    const/4 p2, 0x0

    invoke-static {p1, p2}, Lcom/lostpixels/fieldservice/activities/visits/PersonDialog;->-$$Nest$fputperson(Lcom/lostpixels/fieldservice/activities/visits/PersonDialog;Lcom/lostpixels/fieldservice/internal/ministry/Person;)V

    return-void
.end method
