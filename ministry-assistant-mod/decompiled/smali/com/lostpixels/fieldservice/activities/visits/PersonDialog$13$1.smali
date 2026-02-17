.class Lcom/lostpixels/fieldservice/activities/visits/PersonDialog$13$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/lostpixels/fieldservice/activities/visits/SetPersonPriorityDlg$OnPriorityChangedListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/lostpixels/fieldservice/activities/visits/PersonDialog$13;->onClick(Landroid/view/View;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/lostpixels/fieldservice/activities/visits/PersonDialog$13;


# direct methods
.method constructor <init>(Lcom/lostpixels/fieldservice/activities/visits/PersonDialog$13;)V
    .locals 0

    .line 863
    iput-object p1, p0, Lcom/lostpixels/fieldservice/activities/visits/PersonDialog$13$1;->this$1:Lcom/lostpixels/fieldservice/activities/visits/PersonDialog$13;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onPriorityChanged(I)V
    .locals 1

    .line 866
    iget-object v0, p0, Lcom/lostpixels/fieldservice/activities/visits/PersonDialog$13$1;->this$1:Lcom/lostpixels/fieldservice/activities/visits/PersonDialog$13;

    iget-object v0, v0, Lcom/lostpixels/fieldservice/activities/visits/PersonDialog$13;->this$0:Lcom/lostpixels/fieldservice/activities/visits/PersonDialog;

    invoke-static {v0}, Lcom/lostpixels/fieldservice/activities/visits/PersonDialog;->-$$Nest$fgetperson(Lcom/lostpixels/fieldservice/activities/visits/PersonDialog;)Lcom/lostpixels/fieldservice/internal/ministry/Person;

    move-result-object v0

    invoke-static {v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    invoke-virtual {v0, p1}, Lcom/lostpixels/fieldservice/internal/ministry/Person;->setPriority(I)V

    .line 867
    iget-object p1, p0, Lcom/lostpixels/fieldservice/activities/visits/PersonDialog$13$1;->this$1:Lcom/lostpixels/fieldservice/activities/visits/PersonDialog$13;

    iget-object p1, p1, Lcom/lostpixels/fieldservice/activities/visits/PersonDialog$13;->this$0:Lcom/lostpixels/fieldservice/activities/visits/PersonDialog;

    invoke-static {p1}, Lcom/lostpixels/fieldservice/activities/visits/PersonDialog;->-$$Nest$msetPersonInfo(Lcom/lostpixels/fieldservice/activities/visits/PersonDialog;)V

    .line 868
    iget-object p1, p0, Lcom/lostpixels/fieldservice/activities/visits/PersonDialog$13$1;->this$1:Lcom/lostpixels/fieldservice/activities/visits/PersonDialog$13;

    iget-object p1, p1, Lcom/lostpixels/fieldservice/activities/visits/PersonDialog$13;->this$0:Lcom/lostpixels/fieldservice/activities/visits/PersonDialog;

    const/4 v0, 0x1

    invoke-static {p1, v0}, Lcom/lostpixels/fieldservice/activities/visits/PersonDialog;->-$$Nest$fputbSomethingChanged(Lcom/lostpixels/fieldservice/activities/visits/PersonDialog;Z)V

    .line 869
    iget-object p1, p0, Lcom/lostpixels/fieldservice/activities/visits/PersonDialog$13$1;->this$1:Lcom/lostpixels/fieldservice/activities/visits/PersonDialog$13;

    iget-object p1, p1, Lcom/lostpixels/fieldservice/activities/visits/PersonDialog$13;->this$0:Lcom/lostpixels/fieldservice/activities/visits/PersonDialog;

    invoke-static {p1}, Lcom/lostpixels/fieldservice/activities/visits/PersonDialog;->-$$Nest$mupdateSaveButton(Lcom/lostpixels/fieldservice/activities/visits/PersonDialog;)V

    .line 870
    iget-object p1, p0, Lcom/lostpixels/fieldservice/activities/visits/PersonDialog$13$1;->this$1:Lcom/lostpixels/fieldservice/activities/visits/PersonDialog$13;

    iget-object p1, p1, Lcom/lostpixels/fieldservice/activities/visits/PersonDialog$13;->this$0:Lcom/lostpixels/fieldservice/activities/visits/PersonDialog;

    invoke-static {p1, v0}, Lcom/lostpixels/fieldservice/activities/visits/PersonDialog;->-$$Nest$fputbPersonChanged(Lcom/lostpixels/fieldservice/activities/visits/PersonDialog;Z)V

    return-void
.end method
