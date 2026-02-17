.class Lcom/lostpixels/fieldservice/activities/visits/ReturnVisitsTab$12;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/lostpixels/fieldservice/activities/visits/ReturnVisitsTab;->openCallVisitDialog(Lcom/lostpixels/fieldservice/internal/ministry/Person;Z)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/lostpixels/fieldservice/activities/visits/ReturnVisitsTab;

.field final synthetic val$arrayAdapter:Landroid/widget/ArrayAdapter;

.field final synthetic val$callPerson:Z


# direct methods
.method constructor <init>(Lcom/lostpixels/fieldservice/activities/visits/ReturnVisitsTab;Landroid/widget/ArrayAdapter;Z)V
    .locals 0

    .line 987
    iput-object p1, p0, Lcom/lostpixels/fieldservice/activities/visits/ReturnVisitsTab$12;->this$0:Lcom/lostpixels/fieldservice/activities/visits/ReturnVisitsTab;

    iput-object p2, p0, Lcom/lostpixels/fieldservice/activities/visits/ReturnVisitsTab$12;->val$arrayAdapter:Landroid/widget/ArrayAdapter;

    iput-boolean p3, p0, Lcom/lostpixels/fieldservice/activities/visits/ReturnVisitsTab$12;->val$callPerson:Z

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 3

    .line 990
    iget-object p1, p0, Lcom/lostpixels/fieldservice/activities/visits/ReturnVisitsTab$12;->val$arrayAdapter:Landroid/widget/ArrayAdapter;

    invoke-virtual {p1, p2}, Landroid/widget/ArrayAdapter;->getItem(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/String;

    .line 993
    :try_start_0
    iget-boolean p2, p0, Lcom/lostpixels/fieldservice/activities/visits/ReturnVisitsTab$12;->val$callPerson:Z

    if-eqz p2, :cond_0

    .line 994
    new-instance p2, Landroid/content/Intent;

    const-string v0, "android.intent.action.DIAL"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "tel:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object p1

    invoke-direct {p2, v0, p1}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    goto :goto_0

    .line 996
    :cond_0
    new-instance p2, Landroid/content/Intent;

    const-string v0, "android.intent.action.SENDTO"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "smsto:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object p1

    invoke-direct {p2, v0, p1}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    .line 997
    :goto_0
    iget-object p1, p0, Lcom/lostpixels/fieldservice/activities/visits/ReturnVisitsTab$12;->this$0:Lcom/lostpixels/fieldservice/activities/visits/ReturnVisitsTab;

    invoke-virtual {p1, p2}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    return-void
.end method
