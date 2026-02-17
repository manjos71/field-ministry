.class Lcom/lostpixels/fieldservice/activities/visits/PersonDialog$12$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/lostpixels/fieldservice/activities/visits/SetPersonVisitTypeDlg$OnSetTypeChangedListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/lostpixels/fieldservice/activities/visits/PersonDialog$12;->onClick(Landroid/view/View;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/lostpixels/fieldservice/activities/visits/PersonDialog$12;


# direct methods
.method constructor <init>(Lcom/lostpixels/fieldservice/activities/visits/PersonDialog$12;)V
    .locals 0

    .line 832
    iput-object p1, p0, Lcom/lostpixels/fieldservice/activities/visits/PersonDialog$12$1;->this$1:Lcom/lostpixels/fieldservice/activities/visits/PersonDialog$12;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onSetTypeChanged(ZZZZ)V
    .locals 1

    .line 836
    iget-object v0, p0, Lcom/lostpixels/fieldservice/activities/visits/PersonDialog$12$1;->this$1:Lcom/lostpixels/fieldservice/activities/visits/PersonDialog$12;

    iget-object v0, v0, Lcom/lostpixels/fieldservice/activities/visits/PersonDialog$12;->this$0:Lcom/lostpixels/fieldservice/activities/visits/PersonDialog;

    invoke-static {v0}, Lcom/lostpixels/fieldservice/activities/visits/PersonDialog;->-$$Nest$fgetperson(Lcom/lostpixels/fieldservice/activities/visits/PersonDialog;)Lcom/lostpixels/fieldservice/internal/ministry/Person;

    move-result-object v0

    invoke-static {v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    invoke-virtual {v0, p1}, Lcom/lostpixels/fieldservice/internal/ministry/Person;->setReturnVisit(Z)V

    .line 837
    iget-object p1, p0, Lcom/lostpixels/fieldservice/activities/visits/PersonDialog$12$1;->this$1:Lcom/lostpixels/fieldservice/activities/visits/PersonDialog$12;

    iget-object p1, p1, Lcom/lostpixels/fieldservice/activities/visits/PersonDialog$12;->this$0:Lcom/lostpixels/fieldservice/activities/visits/PersonDialog;

    invoke-static {p1}, Lcom/lostpixels/fieldservice/activities/visits/PersonDialog;->-$$Nest$fgetperson(Lcom/lostpixels/fieldservice/activities/visits/PersonDialog;)Lcom/lostpixels/fieldservice/internal/ministry/Person;

    move-result-object p1

    invoke-virtual {p1, p3}, Lcom/lostpixels/fieldservice/internal/ministry/Person;->setBibleStudy(Z)V

    .line 838
    iget-object p1, p0, Lcom/lostpixels/fieldservice/activities/visits/PersonDialog$12$1;->this$1:Lcom/lostpixels/fieldservice/activities/visits/PersonDialog$12;

    iget-object p1, p1, Lcom/lostpixels/fieldservice/activities/visits/PersonDialog$12;->this$0:Lcom/lostpixels/fieldservice/activities/visits/PersonDialog;

    invoke-static {p1}, Lcom/lostpixels/fieldservice/activities/visits/PersonDialog;->-$$Nest$fgetperson(Lcom/lostpixels/fieldservice/activities/visits/PersonDialog;)Lcom/lostpixels/fieldservice/internal/ministry/Person;

    move-result-object p1

    invoke-virtual {p1, p2}, Lcom/lostpixels/fieldservice/internal/ministry/Person;->setFavorite(Z)V

    .line 839
    iget-object p1, p0, Lcom/lostpixels/fieldservice/activities/visits/PersonDialog$12$1;->this$1:Lcom/lostpixels/fieldservice/activities/visits/PersonDialog$12;

    iget-object p1, p1, Lcom/lostpixels/fieldservice/activities/visits/PersonDialog$12;->this$0:Lcom/lostpixels/fieldservice/activities/visits/PersonDialog;

    invoke-static {p1}, Lcom/lostpixels/fieldservice/activities/visits/PersonDialog;->-$$Nest$fgetperson(Lcom/lostpixels/fieldservice/activities/visits/PersonDialog;)Lcom/lostpixels/fieldservice/internal/ministry/Person;

    move-result-object p1

    invoke-virtual {p1, p4}, Lcom/lostpixels/fieldservice/internal/ministry/Person;->setMagazineRoute(Z)V

    .line 840
    iget-object p1, p0, Lcom/lostpixels/fieldservice/activities/visits/PersonDialog$12$1;->this$1:Lcom/lostpixels/fieldservice/activities/visits/PersonDialog$12;

    iget-object p1, p1, Lcom/lostpixels/fieldservice/activities/visits/PersonDialog$12;->this$0:Lcom/lostpixels/fieldservice/activities/visits/PersonDialog;

    invoke-static {p1}, Lcom/lostpixels/fieldservice/activities/visits/PersonDialog;->-$$Nest$msetPersonInfo(Lcom/lostpixels/fieldservice/activities/visits/PersonDialog;)V

    .line 841
    iget-object p1, p0, Lcom/lostpixels/fieldservice/activities/visits/PersonDialog$12$1;->this$1:Lcom/lostpixels/fieldservice/activities/visits/PersonDialog$12;

    iget-object p1, p1, Lcom/lostpixels/fieldservice/activities/visits/PersonDialog$12;->this$0:Lcom/lostpixels/fieldservice/activities/visits/PersonDialog;

    const/4 p2, 0x1

    invoke-static {p1, p2}, Lcom/lostpixels/fieldservice/activities/visits/PersonDialog;->-$$Nest$fputbSomethingChanged(Lcom/lostpixels/fieldservice/activities/visits/PersonDialog;Z)V

    .line 842
    iget-object p1, p0, Lcom/lostpixels/fieldservice/activities/visits/PersonDialog$12$1;->this$1:Lcom/lostpixels/fieldservice/activities/visits/PersonDialog$12;

    iget-object p1, p1, Lcom/lostpixels/fieldservice/activities/visits/PersonDialog$12;->this$0:Lcom/lostpixels/fieldservice/activities/visits/PersonDialog;

    invoke-static {p1}, Lcom/lostpixels/fieldservice/activities/visits/PersonDialog;->-$$Nest$mupdateSaveButton(Lcom/lostpixels/fieldservice/activities/visits/PersonDialog;)V

    .line 843
    iget-object p1, p0, Lcom/lostpixels/fieldservice/activities/visits/PersonDialog$12$1;->this$1:Lcom/lostpixels/fieldservice/activities/visits/PersonDialog$12;

    iget-object p1, p1, Lcom/lostpixels/fieldservice/activities/visits/PersonDialog$12;->this$0:Lcom/lostpixels/fieldservice/activities/visits/PersonDialog;

    invoke-static {p1, p2}, Lcom/lostpixels/fieldservice/activities/visits/PersonDialog;->-$$Nest$fputbPersonChanged(Lcom/lostpixels/fieldservice/activities/visits/PersonDialog;Z)V

    return-void
.end method
