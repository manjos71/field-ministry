.class Lcom/lostpixels/fieldservice/activities/visits/ReturnVisitsTab$10$1;
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

    .line 843
    iput-object p1, p0, Lcom/lostpixels/fieldservice/activities/visits/ReturnVisitsTab$10$1;->this$1:Lcom/lostpixels/fieldservice/activities/visits/ReturnVisitsTab$10;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 2

    .line 845
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    .line 846
    const-string v0, "MA Export"

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 847
    iget-object v0, p0, Lcom/lostpixels/fieldservice/activities/visits/ReturnVisitsTab$10$1;->this$1:Lcom/lostpixels/fieldservice/activities/visits/ReturnVisitsTab$10;

    iget-object v0, v0, Lcom/lostpixels/fieldservice/activities/visits/ReturnVisitsTab$10;->val$person:Lcom/lostpixels/fieldservice/internal/ministry/Person;

    invoke-virtual {v0}, Lcom/lostpixels/fieldservice/internal/ministry/Person;->getName()Ljava/lang/String;

    move-result-object v0

    const-string v1, ": "

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/lostpixels/fieldservice/activities/visits/ReturnVisitsTab$10$1;->this$1:Lcom/lostpixels/fieldservice/activities/visits/ReturnVisitsTab$10;

    iget-object v0, v0, Lcom/lostpixels/fieldservice/activities/visits/ReturnVisitsTab$10;->val$person:Lcom/lostpixels/fieldservice/internal/ministry/Person;

    invoke-virtual {v0}, Lcom/lostpixels/fieldservice/internal/ministry/Person;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_0

    .line 848
    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 849
    iget-object v0, p0, Lcom/lostpixels/fieldservice/activities/visits/ReturnVisitsTab$10$1;->this$1:Lcom/lostpixels/fieldservice/activities/visits/ReturnVisitsTab$10;

    iget-object v0, v0, Lcom/lostpixels/fieldservice/activities/visits/ReturnVisitsTab$10;->val$person:Lcom/lostpixels/fieldservice/internal/ministry/Person;

    invoke-virtual {v0}, Lcom/lostpixels/fieldservice/internal/ministry/Person;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_0

    .line 850
    :cond_0
    iget-object v0, p0, Lcom/lostpixels/fieldservice/activities/visits/ReturnVisitsTab$10$1;->this$1:Lcom/lostpixels/fieldservice/activities/visits/ReturnVisitsTab$10;

    iget-object v0, v0, Lcom/lostpixels/fieldservice/activities/visits/ReturnVisitsTab$10;->val$person:Lcom/lostpixels/fieldservice/internal/ministry/Person;

    invoke-virtual {v0}, Lcom/lostpixels/fieldservice/internal/ministry/Person;->getAddress()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/lostpixels/fieldservice/activities/visits/ReturnVisitsTab$10$1;->this$1:Lcom/lostpixels/fieldservice/activities/visits/ReturnVisitsTab$10;

    iget-object v0, v0, Lcom/lostpixels/fieldservice/activities/visits/ReturnVisitsTab$10;->val$person:Lcom/lostpixels/fieldservice/internal/ministry/Person;

    invoke-virtual {v0}, Lcom/lostpixels/fieldservice/internal/ministry/Person;->getAddress()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_1

    .line 851
    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 852
    iget-object v0, p0, Lcom/lostpixels/fieldservice/activities/visits/ReturnVisitsTab$10$1;->this$1:Lcom/lostpixels/fieldservice/activities/visits/ReturnVisitsTab$10;

    iget-object v0, v0, Lcom/lostpixels/fieldservice/activities/visits/ReturnVisitsTab$10;->val$person:Lcom/lostpixels/fieldservice/internal/ministry/Person;

    invoke-virtual {v0}, Lcom/lostpixels/fieldservice/internal/ministry/Person;->getAddress()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_1
    :goto_0
    if-nez p2, :cond_2

    .line 856
    iget-object p2, p0, Lcom/lostpixels/fieldservice/activities/visits/ReturnVisitsTab$10$1;->this$1:Lcom/lostpixels/fieldservice/activities/visits/ReturnVisitsTab$10;

    iget-object p2, p2, Lcom/lostpixels/fieldservice/activities/visits/ReturnVisitsTab$10;->this$0:Lcom/lostpixels/fieldservice/activities/visits/ReturnVisitsTab;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    iget-object v0, p0, Lcom/lostpixels/fieldservice/activities/visits/ReturnVisitsTab$10$1;->this$1:Lcom/lostpixels/fieldservice/activities/visits/ReturnVisitsTab$10;

    iget-object v0, v0, Lcom/lostpixels/fieldservice/activities/visits/ReturnVisitsTab$10;->val$person:Lcom/lostpixels/fieldservice/internal/ministry/Person;

    invoke-static {p2, p1, v0}, Lcom/lostpixels/fieldservice/helpfunctions/ShareUtils;->sendPersonAsText(Landroid/content/Context;Ljava/lang/String;Lcom/lostpixels/fieldservice/internal/ministry/Person;)V

    return-void

    :cond_2
    const/4 v0, 0x1

    if-ne p2, v0, :cond_3

    .line 859
    iget-object p2, p0, Lcom/lostpixels/fieldservice/activities/visits/ReturnVisitsTab$10$1;->this$1:Lcom/lostpixels/fieldservice/activities/visits/ReturnVisitsTab$10;

    iget-object p2, p2, Lcom/lostpixels/fieldservice/activities/visits/ReturnVisitsTab$10;->this$0:Lcom/lostpixels/fieldservice/activities/visits/ReturnVisitsTab;

    invoke-static {p2}, Lcom/lostpixels/fieldservice/activities/visits/ReturnVisitsTab;->access$100(Lcom/lostpixels/fieldservice/activities/visits/ReturnVisitsTab;)Lio/realm/Realm;

    move-result-object p2

    iget-object v0, p0, Lcom/lostpixels/fieldservice/activities/visits/ReturnVisitsTab$10$1;->this$1:Lcom/lostpixels/fieldservice/activities/visits/ReturnVisitsTab$10;

    iget-object v0, v0, Lcom/lostpixels/fieldservice/activities/visits/ReturnVisitsTab$10;->this$0:Lcom/lostpixels/fieldservice/activities/visits/ReturnVisitsTab;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    iget-object v1, p0, Lcom/lostpixels/fieldservice/activities/visits/ReturnVisitsTab$10$1;->this$1:Lcom/lostpixels/fieldservice/activities/visits/ReturnVisitsTab$10;

    iget-object v1, v1, Lcom/lostpixels/fieldservice/activities/visits/ReturnVisitsTab$10;->val$person:Lcom/lostpixels/fieldservice/internal/ministry/Person;

    invoke-static {p2, v0, p1, v1}, Lcom/lostpixels/fieldservice/helpfunctions/ShareUtils;->sendPersonAsData(Lio/realm/Realm;Landroid/content/Context;Ljava/lang/String;Lcom/lostpixels/fieldservice/internal/ministry/Person;)V

    return-void

    .line 862
    :cond_3
    iget-object p2, p0, Lcom/lostpixels/fieldservice/activities/visits/ReturnVisitsTab$10$1;->this$1:Lcom/lostpixels/fieldservice/activities/visits/ReturnVisitsTab$10;

    iget-object p2, p2, Lcom/lostpixels/fieldservice/activities/visits/ReturnVisitsTab$10;->this$0:Lcom/lostpixels/fieldservice/activities/visits/ReturnVisitsTab;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    iget-object v0, p0, Lcom/lostpixels/fieldservice/activities/visits/ReturnVisitsTab$10$1;->this$1:Lcom/lostpixels/fieldservice/activities/visits/ReturnVisitsTab$10;

    iget-object v0, v0, Lcom/lostpixels/fieldservice/activities/visits/ReturnVisitsTab$10;->val$person:Lcom/lostpixels/fieldservice/internal/ministry/Person;

    invoke-static {p2, p1, v0}, Lcom/lostpixels/fieldservice/helpfunctions/ShareUtils;->sendPersonAsvCard(Landroid/content/Context;Ljava/lang/String;Lcom/lostpixels/fieldservice/internal/ministry/Person;)V

    return-void
.end method
