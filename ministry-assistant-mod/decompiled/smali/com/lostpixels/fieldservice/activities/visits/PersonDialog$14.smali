.class Lcom/lostpixels/fieldservice/activities/visits/PersonDialog$14;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/lostpixels/fieldservice/activities/visits/PersonDialog;->setupFragment2()Landroid/view/View;
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

    .line 913
    iput-object p1, p0, Lcom/lostpixels/fieldservice/activities/visits/PersonDialog$14;->this$0:Lcom/lostpixels/fieldservice/activities/visits/PersonDialog;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 1

    .line 916
    iget-object p1, p0, Lcom/lostpixels/fieldservice/activities/visits/PersonDialog$14;->this$0:Lcom/lostpixels/fieldservice/activities/visits/PersonDialog;

    invoke-static {p1}, Lcom/lostpixels/fieldservice/activities/visits/PersonDialog;->-$$Nest$fgetperson(Lcom/lostpixels/fieldservice/activities/visits/PersonDialog;)Lcom/lostpixels/fieldservice/internal/ministry/Person;

    move-result-object p1

    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Lcom/lostpixels/fieldservice/internal/ministry/Person;->setTimeForRV(Ljava/util/Date;)V

    .line 917
    iget-object p1, p0, Lcom/lostpixels/fieldservice/activities/visits/PersonDialog$14;->this$0:Lcom/lostpixels/fieldservice/activities/visits/PersonDialog;

    invoke-static {p1}, Lcom/lostpixels/fieldservice/activities/visits/PersonDialog;->-$$Nest$msetPersonInfo(Lcom/lostpixels/fieldservice/activities/visits/PersonDialog;)V

    .line 918
    iget-object p1, p0, Lcom/lostpixels/fieldservice/activities/visits/PersonDialog$14;->this$0:Lcom/lostpixels/fieldservice/activities/visits/PersonDialog;

    const/4 v0, 0x1

    invoke-static {p1, v0}, Lcom/lostpixels/fieldservice/activities/visits/PersonDialog;->-$$Nest$fputbSomethingChanged(Lcom/lostpixels/fieldservice/activities/visits/PersonDialog;Z)V

    .line 919
    iget-object p1, p0, Lcom/lostpixels/fieldservice/activities/visits/PersonDialog$14;->this$0:Lcom/lostpixels/fieldservice/activities/visits/PersonDialog;

    invoke-static {p1}, Lcom/lostpixels/fieldservice/activities/visits/PersonDialog;->-$$Nest$mupdateSaveButton(Lcom/lostpixels/fieldservice/activities/visits/PersonDialog;)V

    return-void
.end method
