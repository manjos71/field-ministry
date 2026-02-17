.class Lcom/lostpixels/fieldservice/activities/visits/EditVisitDialog$2;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/lostpixels/fieldservice/activities/visits/AddMagazineDlg$OnAddMagazineListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/lostpixels/fieldservice/activities/visits/EditVisitDialog;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/lostpixels/fieldservice/activities/visits/EditVisitDialog;


# direct methods
.method constructor <init>(Lcom/lostpixels/fieldservice/activities/visits/EditVisitDialog;)V
    .locals 0

    .line 136
    iput-object p1, p0, Lcom/lostpixels/fieldservice/activities/visits/EditVisitDialog$2;->this$0:Lcom/lostpixels/fieldservice/activities/visits/EditVisitDialog;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onAddMagazine(Ljava/lang/String;Ljava/util/Date;Lcom/lostpixels/fieldservice/internal/report/ServiceSession;I)V
    .locals 2

    .line 138
    iget-object p4, p0, Lcom/lostpixels/fieldservice/activities/visits/EditVisitDialog$2;->this$0:Lcom/lostpixels/fieldservice/activities/visits/EditVisitDialog;

    invoke-static {p4}, Lcom/lostpixels/fieldservice/activities/visits/EditVisitDialog;->-$$Nest$fgetmedtPublication(Lcom/lostpixels/fieldservice/activities/visits/EditVisitDialog;)Landroid/widget/EditText;

    move-result-object p4

    invoke-virtual {p4}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object p4

    invoke-interface {p4}, Ljava/lang/CharSequence;->length()I

    move-result p4

    if-lez p4, :cond_0

    .line 139
    iget-object p4, p0, Lcom/lostpixels/fieldservice/activities/visits/EditVisitDialog$2;->this$0:Lcom/lostpixels/fieldservice/activities/visits/EditVisitDialog;

    invoke-static {p4}, Lcom/lostpixels/fieldservice/activities/visits/EditVisitDialog;->-$$Nest$fgetmedtPublication(Lcom/lostpixels/fieldservice/activities/visits/EditVisitDialog;)Landroid/widget/EditText;

    move-result-object p4

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Lcom/lostpixels/fieldservice/activities/visits/EditVisitDialog$2;->this$0:Lcom/lostpixels/fieldservice/activities/visits/EditVisitDialog;

    invoke-static {v1}, Lcom/lostpixels/fieldservice/activities/visits/EditVisitDialog;->-$$Nest$fgetmedtPublication(Lcom/lostpixels/fieldservice/activities/visits/EditVisitDialog;)Landroid/widget/EditText;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p4, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0

    .line 141
    :cond_0
    iget-object p4, p0, Lcom/lostpixels/fieldservice/activities/visits/EditVisitDialog$2;->this$0:Lcom/lostpixels/fieldservice/activities/visits/EditVisitDialog;

    invoke-static {p4}, Lcom/lostpixels/fieldservice/activities/visits/EditVisitDialog;->-$$Nest$fgetmedtPublication(Lcom/lostpixels/fieldservice/activities/visits/EditVisitDialog;)Landroid/widget/EditText;

    move-result-object p4

    invoke-virtual {p4, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 143
    :goto_0
    iget-object p1, p0, Lcom/lostpixels/fieldservice/activities/visits/EditVisitDialog$2;->this$0:Lcom/lostpixels/fieldservice/activities/visits/EditVisitDialog;

    invoke-static {p1}, Lcom/lostpixels/fieldservice/activities/visits/EditVisitDialog;->-$$Nest$fgetmSession(Lcom/lostpixels/fieldservice/activities/visits/EditVisitDialog;)Lcom/lostpixels/fieldservice/internal/report/ServiceSession;

    move-result-object p1

    if-eqz p1, :cond_1

    iget-object p1, p0, Lcom/lostpixels/fieldservice/activities/visits/EditVisitDialog$2;->this$0:Lcom/lostpixels/fieldservice/activities/visits/EditVisitDialog;

    invoke-static {p1}, Lcom/lostpixels/fieldservice/activities/visits/EditVisitDialog;->-$$Nest$mshouldAddPublications(Lcom/lostpixels/fieldservice/activities/visits/EditVisitDialog;)Z

    move-result p1

    if-eqz p1, :cond_1

    .line 144
    iget-object p1, p0, Lcom/lostpixels/fieldservice/activities/visits/EditVisitDialog$2;->this$0:Lcom/lostpixels/fieldservice/activities/visits/EditVisitDialog;

    invoke-static {p1}, Lcom/lostpixels/fieldservice/activities/visits/EditVisitDialog;->-$$Nest$fgetmSession(Lcom/lostpixels/fieldservice/activities/visits/EditVisitDialog;)Lcom/lostpixels/fieldservice/internal/report/ServiceSession;

    move-result-object p1

    invoke-virtual {p1, p3}, Lcom/lostpixels/fieldservice/internal/report/ServiceSession;->add(Lcom/lostpixels/fieldservice/internal/report/ServiceSession;)Lcom/lostpixels/fieldservice/internal/report/ServiceSession;

    .line 145
    :cond_1
    iget-object p1, p0, Lcom/lostpixels/fieldservice/activities/visits/EditVisitDialog$2;->this$0:Lcom/lostpixels/fieldservice/activities/visits/EditVisitDialog;

    invoke-static {p1}, Lcom/lostpixels/fieldservice/activities/visits/EditVisitDialog;->-$$Nest$fgetmPerson(Lcom/lostpixels/fieldservice/activities/visits/EditVisitDialog;)Lcom/lostpixels/fieldservice/internal/ministry/Person;

    move-result-object p1

    if-eqz p1, :cond_2

    .line 146
    iget-object p1, p0, Lcom/lostpixels/fieldservice/activities/visits/EditVisitDialog$2;->this$0:Lcom/lostpixels/fieldservice/activities/visits/EditVisitDialog;

    invoke-static {p1}, Lcom/lostpixels/fieldservice/activities/visits/EditVisitDialog;->-$$Nest$fgetmPerson(Lcom/lostpixels/fieldservice/activities/visits/EditVisitDialog;)Lcom/lostpixels/fieldservice/internal/ministry/Person;

    move-result-object p1

    invoke-virtual {p1, p2}, Lcom/lostpixels/fieldservice/internal/ministry/Person;->addMagazine(Ljava/util/Date;)V

    :cond_2
    return-void
.end method
