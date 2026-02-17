.class Lcom/lostpixels/fieldservice/activities/visits/EditPersonDialog$9$1$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/lostpixels/fieldservice/activities/visits/EditPersonDialog$9$1;->onAddressFound(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$2:Lcom/lostpixels/fieldservice/activities/visits/EditPersonDialog$9$1;

.field final synthetic val$sAddress:Ljava/lang/String;

.field final synthetic val$sCity:Ljava/lang/String;

.field final synthetic val$sNumber:Ljava/lang/String;

.field final synthetic val$sPostalCode:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/lostpixels/fieldservice/activities/visits/EditPersonDialog$9$1;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    .line 750
    iput-object p1, p0, Lcom/lostpixels/fieldservice/activities/visits/EditPersonDialog$9$1$1;->this$2:Lcom/lostpixels/fieldservice/activities/visits/EditPersonDialog$9$1;

    iput-object p2, p0, Lcom/lostpixels/fieldservice/activities/visits/EditPersonDialog$9$1$1;->val$sNumber:Ljava/lang/String;

    iput-object p3, p0, Lcom/lostpixels/fieldservice/activities/visits/EditPersonDialog$9$1$1;->val$sAddress:Ljava/lang/String;

    iput-object p4, p0, Lcom/lostpixels/fieldservice/activities/visits/EditPersonDialog$9$1$1;->val$sCity:Ljava/lang/String;

    iput-object p5, p0, Lcom/lostpixels/fieldservice/activities/visits/EditPersonDialog$9$1$1;->val$sPostalCode:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 5

    .line 753
    invoke-static {}, Lio/realm/Realm;->getDefaultInstance()Lio/realm/Realm;

    move-result-object v0

    .line 754
    iget-object v1, p0, Lcom/lostpixels/fieldservice/activities/visits/EditPersonDialog$9$1$1;->val$sNumber:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 755
    iget-object v1, p0, Lcom/lostpixels/fieldservice/activities/visits/EditPersonDialog$9$1$1;->this$2:Lcom/lostpixels/fieldservice/activities/visits/EditPersonDialog$9$1;

    iget-object v1, v1, Lcom/lostpixels/fieldservice/activities/visits/EditPersonDialog$9$1;->this$1:Lcom/lostpixels/fieldservice/activities/visits/EditPersonDialog$9;

    iget-object v1, v1, Lcom/lostpixels/fieldservice/activities/visits/EditPersonDialog$9;->this$0:Lcom/lostpixels/fieldservice/activities/visits/EditPersonDialog;

    invoke-static {v1}, Lcom/lostpixels/fieldservice/activities/visits/EditPersonDialog;->-$$Nest$fgetedtAddress(Lcom/lostpixels/fieldservice/activities/visits/EditPersonDialog;)Landroid/widget/AutoCompleteTextView;

    move-result-object v1

    iget-object v2, p0, Lcom/lostpixels/fieldservice/activities/visits/EditPersonDialog$9$1$1;->val$sAddress:Ljava/lang/String;

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0

    .line 757
    :cond_0
    iget-object v1, p0, Lcom/lostpixels/fieldservice/activities/visits/EditPersonDialog$9$1$1;->this$2:Lcom/lostpixels/fieldservice/activities/visits/EditPersonDialog$9$1;

    iget-object v1, v1, Lcom/lostpixels/fieldservice/activities/visits/EditPersonDialog$9$1;->this$1:Lcom/lostpixels/fieldservice/activities/visits/EditPersonDialog$9;

    iget-boolean v2, v1, Lcom/lostpixels/fieldservice/activities/visits/EditPersonDialog$9;->val$bShowNumberFirst:Z

    const-string v3, " "

    if-eqz v2, :cond_1

    .line 758
    iget-object v1, v1, Lcom/lostpixels/fieldservice/activities/visits/EditPersonDialog$9;->this$0:Lcom/lostpixels/fieldservice/activities/visits/EditPersonDialog;

    invoke-static {v1}, Lcom/lostpixels/fieldservice/activities/visits/EditPersonDialog;->-$$Nest$fgetedtAddress(Lcom/lostpixels/fieldservice/activities/visits/EditPersonDialog;)Landroid/widget/AutoCompleteTextView;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v4, p0, Lcom/lostpixels/fieldservice/activities/visits/EditPersonDialog$9$1$1;->val$sNumber:Ljava/lang/String;

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Lcom/lostpixels/fieldservice/activities/visits/EditPersonDialog$9$1$1;->val$sAddress:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0

    .line 760
    :cond_1
    iget-object v1, v1, Lcom/lostpixels/fieldservice/activities/visits/EditPersonDialog$9;->this$0:Lcom/lostpixels/fieldservice/activities/visits/EditPersonDialog;

    invoke-static {v1}, Lcom/lostpixels/fieldservice/activities/visits/EditPersonDialog;->-$$Nest$fgetedtAddress(Lcom/lostpixels/fieldservice/activities/visits/EditPersonDialog;)Landroid/widget/AutoCompleteTextView;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v4, p0, Lcom/lostpixels/fieldservice/activities/visits/EditPersonDialog$9$1$1;->val$sAddress:Ljava/lang/String;

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Lcom/lostpixels/fieldservice/activities/visits/EditPersonDialog$9$1$1;->val$sNumber:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 762
    :goto_0
    invoke-static {v0}, Lcom/lostpixels/fieldservice/internal/ministry/MinistryManager;->getInstance(Lio/realm/Realm;)Lcom/lostpixels/fieldservice/internal/ministry/MinistryManager;

    move-result-object v1

    iget-object v2, p0, Lcom/lostpixels/fieldservice/activities/visits/EditPersonDialog$9$1$1;->this$2:Lcom/lostpixels/fieldservice/activities/visits/EditPersonDialog$9$1;

    iget-object v2, v2, Lcom/lostpixels/fieldservice/activities/visits/EditPersonDialog$9$1;->this$1:Lcom/lostpixels/fieldservice/activities/visits/EditPersonDialog$9;

    iget-object v2, v2, Lcom/lostpixels/fieldservice/activities/visits/EditPersonDialog$9;->this$0:Lcom/lostpixels/fieldservice/activities/visits/EditPersonDialog;

    iget-object v3, p0, Lcom/lostpixels/fieldservice/activities/visits/EditPersonDialog$9$1$1;->val$sCity:Ljava/lang/String;

    invoke-virtual {v1, v2, v3}, Lcom/lostpixels/fieldservice/internal/ministry/MinistryManager;->addCityIfNew(Landroid/content/Context;Ljava/lang/String;)V

    .line 763
    iget-object v1, p0, Lcom/lostpixels/fieldservice/activities/visits/EditPersonDialog$9$1$1;->this$2:Lcom/lostpixels/fieldservice/activities/visits/EditPersonDialog$9$1;

    iget-object v1, v1, Lcom/lostpixels/fieldservice/activities/visits/EditPersonDialog$9$1;->this$1:Lcom/lostpixels/fieldservice/activities/visits/EditPersonDialog$9;

    iget-object v1, v1, Lcom/lostpixels/fieldservice/activities/visits/EditPersonDialog$9;->this$0:Lcom/lostpixels/fieldservice/activities/visits/EditPersonDialog;

    invoke-static {v1}, Lcom/lostpixels/fieldservice/activities/visits/EditPersonDialog;->-$$Nest$fgetbtnCities(Lcom/lostpixels/fieldservice/activities/visits/EditPersonDialog;)Lcom/lostpixels/fieldservice/ui/SpinnerButton;

    move-result-object v1

    invoke-static {v1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v2, p0, Lcom/lostpixels/fieldservice/activities/visits/EditPersonDialog$9$1$1;->val$sCity:Ljava/lang/String;

    invoke-virtual {v1, v2}, Lcom/lostpixels/fieldservice/ui/SpinnerButton;->setText(Ljava/lang/String;)V

    .line 764
    iget-object v1, p0, Lcom/lostpixels/fieldservice/activities/visits/EditPersonDialog$9$1$1;->this$2:Lcom/lostpixels/fieldservice/activities/visits/EditPersonDialog$9$1;

    iget-object v1, v1, Lcom/lostpixels/fieldservice/activities/visits/EditPersonDialog$9$1;->this$1:Lcom/lostpixels/fieldservice/activities/visits/EditPersonDialog$9;

    iget-object v1, v1, Lcom/lostpixels/fieldservice/activities/visits/EditPersonDialog$9;->this$0:Lcom/lostpixels/fieldservice/activities/visits/EditPersonDialog;

    invoke-static {v1}, Lcom/lostpixels/fieldservice/activities/visits/EditPersonDialog;->-$$Nest$fgetedtPostCode(Lcom/lostpixels/fieldservice/activities/visits/EditPersonDialog;)Landroid/widget/EditText;

    move-result-object v1

    iget-object v2, p0, Lcom/lostpixels/fieldservice/activities/visits/EditPersonDialog$9$1$1;->val$sPostalCode:Ljava/lang/String;

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 765
    invoke-virtual {v0}, Lio/realm/Realm;->close()V

    return-void
.end method
