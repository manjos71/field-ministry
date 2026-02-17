.class Lcom/lostpixels/fieldservice/activities/visits/PersonDialog$30;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/lostpixels/fieldservice/ui/QuickAction$OnActionItemClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/lostpixels/fieldservice/activities/visits/PersonDialog;->showQuickAction(Landroid/view/View;)V
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

    .line 1871
    iput-object p1, p0, Lcom/lostpixels/fieldservice/activities/visits/PersonDialog$30;->this$0:Lcom/lostpixels/fieldservice/activities/visits/PersonDialog;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onItemClick(Lcom/lostpixels/fieldservice/ui/QuickAction;II)V
    .locals 1

    if-nez p3, :cond_0

    .line 1876
    :try_start_0
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string p2, "smsto:"

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p2, p0, Lcom/lostpixels/fieldservice/activities/visits/PersonDialog$30;->this$0:Lcom/lostpixels/fieldservice/activities/visits/PersonDialog;

    invoke-static {p2}, Lcom/lostpixels/fieldservice/activities/visits/PersonDialog;->-$$Nest$fgetperson(Lcom/lostpixels/fieldservice/activities/visits/PersonDialog;)Lcom/lostpixels/fieldservice/internal/ministry/Person;

    move-result-object p2

    invoke-static {p2}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    invoke-virtual {p2}, Lcom/lostpixels/fieldservice/internal/ministry/Person;->getCellPhone()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object p1

    .line 1877
    new-instance p2, Landroid/content/Intent;

    const-string p3, "android.intent.action.SENDTO"

    invoke-direct {p2, p3, p1}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    .line 1878
    iget-object p1, p0, Lcom/lostpixels/fieldservice/activities/visits/PersonDialog$30;->this$0:Lcom/lostpixels/fieldservice/activities/visits/PersonDialog;

    invoke-virtual {p1, p2}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    return-void

    :cond_0
    const/4 p1, 0x1

    if-ne p3, p1, :cond_1

    .line 1880
    new-instance p1, Landroid/content/Intent;

    const-string p2, "android.intent.action.DIAL"

    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "tel:"

    invoke-virtual {p3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v0, p0, Lcom/lostpixels/fieldservice/activities/visits/PersonDialog$30;->this$0:Lcom/lostpixels/fieldservice/activities/visits/PersonDialog;

    invoke-static {v0}, Lcom/lostpixels/fieldservice/activities/visits/PersonDialog;->-$$Nest$fgetperson(Lcom/lostpixels/fieldservice/activities/visits/PersonDialog;)Lcom/lostpixels/fieldservice/internal/ministry/Person;

    move-result-object v0

    invoke-static {v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    invoke-virtual {v0}, Lcom/lostpixels/fieldservice/internal/ministry/Person;->getCellPhone()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p3

    invoke-static {p3}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object p3

    invoke-direct {p1, p2, p3}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    .line 1881
    iget-object p2, p0, Lcom/lostpixels/fieldservice/activities/visits/PersonDialog$30;->this$0:Lcom/lostpixels/fieldservice/activities/visits/PersonDialog;

    invoke-virtual {p2, p1}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    return-void

    :cond_1
    const/4 p1, 0x2

    if-ne p3, p1, :cond_2

    .line 1883
    new-instance p1, Landroid/content/Intent;

    const-string p2, "android.intent.action.VIEW"

    invoke-direct {p1, p2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 1884
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string p3, "http://api.whatsapp.com/send?phone="

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p3, p0, Lcom/lostpixels/fieldservice/activities/visits/PersonDialog$30;->this$0:Lcom/lostpixels/fieldservice/activities/visits/PersonDialog;

    invoke-static {p3}, Lcom/lostpixels/fieldservice/activities/visits/PersonDialog;->-$$Nest$fgetperson(Lcom/lostpixels/fieldservice/activities/visits/PersonDialog;)Lcom/lostpixels/fieldservice/internal/ministry/Person;

    move-result-object p3

    invoke-static {p3}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    invoke-virtual {p3}, Lcom/lostpixels/fieldservice/internal/ministry/Person;->getCellPhone()Ljava/lang/String;

    move-result-object p3

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {p2}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object p2

    invoke-virtual {p1, p2}, Landroid/content/Intent;->setData(Landroid/net/Uri;)Landroid/content/Intent;

    .line 1885
    iget-object p2, p0, Lcom/lostpixels/fieldservice/activities/visits/PersonDialog$30;->this$0:Lcom/lostpixels/fieldservice/activities/visits/PersonDialog;

    invoke-virtual {p2, p1}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    :cond_2
    return-void
.end method
