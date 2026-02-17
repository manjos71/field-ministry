.class Lcom/lostpixels/fieldservice/activities/visits/PersonDialog$3;
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

.field final synthetic val$personCopy:Lcom/lostpixels/fieldservice/internal/ministry/Person;


# direct methods
.method constructor <init>(Lcom/lostpixels/fieldservice/activities/visits/PersonDialog;Lcom/lostpixels/fieldservice/internal/ministry/Person;)V
    .locals 0

    .line 453
    iput-object p1, p0, Lcom/lostpixels/fieldservice/activities/visits/PersonDialog$3;->this$0:Lcom/lostpixels/fieldservice/activities/visits/PersonDialog;

    iput-object p2, p0, Lcom/lostpixels/fieldservice/activities/visits/PersonDialog$3;->val$personCopy:Lcom/lostpixels/fieldservice/internal/ministry/Person;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 3

    .line 455
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    .line 456
    const-string v0, "MA Export"

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 457
    iget-object v0, p0, Lcom/lostpixels/fieldservice/activities/visits/PersonDialog$3;->val$personCopy:Lcom/lostpixels/fieldservice/internal/ministry/Person;

    invoke-virtual {v0}, Lcom/lostpixels/fieldservice/internal/ministry/Person;->getName()Ljava/lang/String;

    move-result-object v0

    const-string v1, ": "

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/lostpixels/fieldservice/activities/visits/PersonDialog$3;->val$personCopy:Lcom/lostpixels/fieldservice/internal/ministry/Person;

    invoke-virtual {v0}, Lcom/lostpixels/fieldservice/internal/ministry/Person;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_0

    .line 458
    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 459
    iget-object v0, p0, Lcom/lostpixels/fieldservice/activities/visits/PersonDialog$3;->val$personCopy:Lcom/lostpixels/fieldservice/internal/ministry/Person;

    invoke-virtual {v0}, Lcom/lostpixels/fieldservice/internal/ministry/Person;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_0

    .line 460
    :cond_0
    iget-object v0, p0, Lcom/lostpixels/fieldservice/activities/visits/PersonDialog$3;->val$personCopy:Lcom/lostpixels/fieldservice/internal/ministry/Person;

    invoke-virtual {v0}, Lcom/lostpixels/fieldservice/internal/ministry/Person;->getAddress()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/lostpixels/fieldservice/activities/visits/PersonDialog$3;->val$personCopy:Lcom/lostpixels/fieldservice/internal/ministry/Person;

    invoke-virtual {v0}, Lcom/lostpixels/fieldservice/internal/ministry/Person;->getAddress()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_1

    .line 461
    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 462
    iget-object v0, p0, Lcom/lostpixels/fieldservice/activities/visits/PersonDialog$3;->val$personCopy:Lcom/lostpixels/fieldservice/internal/ministry/Person;

    invoke-virtual {v0}, Lcom/lostpixels/fieldservice/internal/ministry/Person;->getAddress()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_1
    :goto_0
    if-nez p2, :cond_2

    .line 466
    iget-object p2, p0, Lcom/lostpixels/fieldservice/activities/visits/PersonDialog$3;->this$0:Lcom/lostpixels/fieldservice/activities/visits/PersonDialog;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    iget-object v0, p0, Lcom/lostpixels/fieldservice/activities/visits/PersonDialog$3;->val$personCopy:Lcom/lostpixels/fieldservice/internal/ministry/Person;

    invoke-static {p2, p1, v0}, Lcom/lostpixels/fieldservice/helpfunctions/ShareUtils;->sendPersonAsText(Landroid/content/Context;Ljava/lang/String;Lcom/lostpixels/fieldservice/internal/ministry/Person;)V

    return-void

    :cond_2
    const/4 v0, 0x1

    if-ne p2, v0, :cond_3

    .line 468
    iget-object p2, p0, Lcom/lostpixels/fieldservice/activities/visits/PersonDialog$3;->this$0:Lcom/lostpixels/fieldservice/activities/visits/PersonDialog;

    invoke-static {p2}, Lcom/lostpixels/fieldservice/activities/visits/PersonDialog;->access$000(Lcom/lostpixels/fieldservice/activities/visits/PersonDialog;)Lio/realm/Realm;

    move-result-object p2

    iget-object v0, p0, Lcom/lostpixels/fieldservice/activities/visits/PersonDialog$3;->this$0:Lcom/lostpixels/fieldservice/activities/visits/PersonDialog;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    iget-object v1, p0, Lcom/lostpixels/fieldservice/activities/visits/PersonDialog$3;->val$personCopy:Lcom/lostpixels/fieldservice/internal/ministry/Person;

    invoke-static {p2, v0, p1, v1}, Lcom/lostpixels/fieldservice/helpfunctions/ShareUtils;->sendPersonAsData(Lio/realm/Realm;Landroid/content/Context;Ljava/lang/String;Lcom/lostpixels/fieldservice/internal/ministry/Person;)V

    return-void

    :cond_3
    const/4 v1, 0x2

    if-ne p2, v1, :cond_4

    .line 470
    iget-object p2, p0, Lcom/lostpixels/fieldservice/activities/visits/PersonDialog$3;->this$0:Lcom/lostpixels/fieldservice/activities/visits/PersonDialog;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    iget-object v0, p0, Lcom/lostpixels/fieldservice/activities/visits/PersonDialog$3;->val$personCopy:Lcom/lostpixels/fieldservice/internal/ministry/Person;

    invoke-static {p2, p1, v0}, Lcom/lostpixels/fieldservice/helpfunctions/ShareUtils;->sendPersonAsvCard(Landroid/content/Context;Ljava/lang/String;Lcom/lostpixels/fieldservice/internal/ministry/Person;)V

    return-void

    .line 472
    :cond_4
    new-instance p1, Ljava/lang/StringBuffer;

    invoke-direct {p1}, Ljava/lang/StringBuffer;-><init>()V

    .line 474
    iget-object p2, p0, Lcom/lostpixels/fieldservice/activities/visits/PersonDialog$3;->val$personCopy:Lcom/lostpixels/fieldservice/internal/ministry/Person;

    invoke-virtual {p2}, Lcom/lostpixels/fieldservice/internal/ministry/Person;->getName()Ljava/lang/String;

    move-result-object p2

    if-eqz p2, :cond_5

    iget-object p2, p0, Lcom/lostpixels/fieldservice/activities/visits/PersonDialog$3;->val$personCopy:Lcom/lostpixels/fieldservice/internal/ministry/Person;

    invoke-virtual {p2}, Lcom/lostpixels/fieldservice/internal/ministry/Person;->getName()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p2}, Ljava/lang/String;->isEmpty()Z

    move-result p2

    if-nez p2, :cond_5

    .line 475
    iget-object p2, p0, Lcom/lostpixels/fieldservice/activities/visits/PersonDialog$3;->val$personCopy:Lcom/lostpixels/fieldservice/internal/ministry/Person;

    invoke-virtual {p2}, Lcom/lostpixels/fieldservice/internal/ministry/Person;->getName()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 476
    :cond_5
    iget-object p2, p0, Lcom/lostpixels/fieldservice/activities/visits/PersonDialog$3;->val$personCopy:Lcom/lostpixels/fieldservice/internal/ministry/Person;

    invoke-virtual {p2}, Lcom/lostpixels/fieldservice/internal/ministry/Person;->getAddress()Ljava/lang/String;

    move-result-object p2

    const-string v1, "\n"

    if-eqz p2, :cond_7

    iget-object p2, p0, Lcom/lostpixels/fieldservice/activities/visits/PersonDialog$3;->val$personCopy:Lcom/lostpixels/fieldservice/internal/ministry/Person;

    invoke-virtual {p2}, Lcom/lostpixels/fieldservice/internal/ministry/Person;->getAddress()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p2}, Ljava/lang/String;->isEmpty()Z

    move-result p2

    if-nez p2, :cond_7

    .line 477
    invoke-virtual {p1}, Ljava/lang/StringBuffer;->length()I

    move-result p2

    if-lez p2, :cond_6

    .line 478
    invoke-virtual {p1, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 479
    :cond_6
    iget-object p2, p0, Lcom/lostpixels/fieldservice/activities/visits/PersonDialog$3;->val$personCopy:Lcom/lostpixels/fieldservice/internal/ministry/Person;

    invoke-virtual {p2}, Lcom/lostpixels/fieldservice/internal/ministry/Person;->getAddress()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    goto :goto_1

    :cond_7
    const/4 v0, 0x0

    .line 482
    :goto_1
    iget-object p2, p0, Lcom/lostpixels/fieldservice/activities/visits/PersonDialog$3;->val$personCopy:Lcom/lostpixels/fieldservice/internal/ministry/Person;

    invoke-virtual {p2}, Lcom/lostpixels/fieldservice/internal/ministry/Person;->getSuburb()Ljava/lang/String;

    move-result-object p2

    const-string v2, ", "

    if-eqz p2, :cond_a

    iget-object p2, p0, Lcom/lostpixels/fieldservice/activities/visits/PersonDialog$3;->val$personCopy:Lcom/lostpixels/fieldservice/internal/ministry/Person;

    invoke-virtual {p2}, Lcom/lostpixels/fieldservice/internal/ministry/Person;->getSuburb()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p2}, Ljava/lang/String;->isEmpty()Z

    move-result p2

    if-nez p2, :cond_a

    .line 483
    invoke-virtual {p1}, Ljava/lang/StringBuffer;->length()I

    move-result p2

    if-lez p2, :cond_9

    if-eqz v0, :cond_8

    .line 485
    invoke-virtual {p1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    goto :goto_2

    .line 487
    :cond_8
    invoke-virtual {p1, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 489
    :cond_9
    :goto_2
    iget-object p2, p0, Lcom/lostpixels/fieldservice/activities/visits/PersonDialog$3;->val$personCopy:Lcom/lostpixels/fieldservice/internal/ministry/Person;

    invoke-virtual {p2}, Lcom/lostpixels/fieldservice/internal/ministry/Person;->getSuburb()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 492
    :cond_a
    iget-object p2, p0, Lcom/lostpixels/fieldservice/activities/visits/PersonDialog$3;->val$personCopy:Lcom/lostpixels/fieldservice/internal/ministry/Person;

    invoke-virtual {p2}, Lcom/lostpixels/fieldservice/internal/ministry/Person;->getCity()Ljava/lang/String;

    move-result-object p2

    if-eqz p2, :cond_d

    iget-object p2, p0, Lcom/lostpixels/fieldservice/activities/visits/PersonDialog$3;->val$personCopy:Lcom/lostpixels/fieldservice/internal/ministry/Person;

    invoke-virtual {p2}, Lcom/lostpixels/fieldservice/internal/ministry/Person;->getCity()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p2}, Ljava/lang/String;->isEmpty()Z

    move-result p2

    if-nez p2, :cond_d

    .line 493
    invoke-virtual {p1}, Ljava/lang/StringBuffer;->length()I

    move-result p2

    if-lez p2, :cond_c

    if-eqz v0, :cond_b

    .line 495
    invoke-virtual {p1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    goto :goto_3

    .line 497
    :cond_b
    invoke-virtual {p1, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 499
    :cond_c
    :goto_3
    iget-object p2, p0, Lcom/lostpixels/fieldservice/activities/visits/PersonDialog$3;->val$personCopy:Lcom/lostpixels/fieldservice/internal/ministry/Person;

    invoke-virtual {p2}, Lcom/lostpixels/fieldservice/internal/ministry/Person;->getCity()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 502
    :cond_d
    iget-object p2, p0, Lcom/lostpixels/fieldservice/activities/visits/PersonDialog$3;->val$personCopy:Lcom/lostpixels/fieldservice/internal/ministry/Person;

    invoke-virtual {p2}, Lcom/lostpixels/fieldservice/internal/ministry/Person;->getPosition()Lcom/google/android/gms/maps/model/LatLng;

    move-result-object p2

    if-eqz p2, :cond_f

    .line 503
    invoke-virtual {p1}, Ljava/lang/StringBuffer;->length()I

    move-result p2

    if-lez p2, :cond_e

    .line 504
    invoke-virtual {p1, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 505
    :cond_e
    iget-object p2, p0, Lcom/lostpixels/fieldservice/activities/visits/PersonDialog$3;->val$personCopy:Lcom/lostpixels/fieldservice/internal/ministry/Person;

    invoke-virtual {p2}, Lcom/lostpixels/fieldservice/internal/ministry/Person;->getPosition()Lcom/google/android/gms/maps/model/LatLng;

    move-result-object p2

    .line 506
    const-string v0, "Lat/Lng: "

    invoke-virtual {p1, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 507
    iget-wide v0, p2, Lcom/google/android/gms/maps/model/LatLng;->latitude:D

    invoke-virtual {p1, v0, v1}, Ljava/lang/StringBuffer;->append(D)Ljava/lang/StringBuffer;

    .line 508
    invoke-virtual {p1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 509
    iget-wide v0, p2, Lcom/google/android/gms/maps/model/LatLng;->longitude:D

    invoke-virtual {p1, v0, v1}, Ljava/lang/StringBuffer;->append(D)Ljava/lang/StringBuffer;

    .line 513
    :cond_f
    new-instance p2, Landroid/content/Intent;

    invoke-direct {p2}, Landroid/content/Intent;-><init>()V

    .line 514
    const-string v0, "android.intent.action.SEND"

    invoke-virtual {p2, v0}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 515
    const-string v0, "android.intent.extra.TEXT"

    invoke-virtual {p1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p2, v0, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 516
    const-string p1, "text/plain"

    invoke-virtual {p2, p1}, Landroid/content/Intent;->setType(Ljava/lang/String;)Landroid/content/Intent;

    .line 517
    iget-object p1, p0, Lcom/lostpixels/fieldservice/activities/visits/PersonDialog$3;->this$0:Lcom/lostpixels/fieldservice/activities/visits/PersonDialog;

    invoke-virtual {p1}, Landroidx/appcompat/app/AppCompatActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f1201bc

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getText(I)Ljava/lang/CharSequence;

    move-result-object v0

    invoke-static {p2, v0}, Landroid/content/Intent;->createChooser(Landroid/content/Intent;Ljava/lang/CharSequence;)Landroid/content/Intent;

    move-result-object p2

    invoke-virtual {p1, p2}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    return-void
.end method
