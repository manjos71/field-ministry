.class Lcom/lostpixels/fieldservice/activities/visits/EditVisitDialog$12$4;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/widget/AdapterView$OnItemClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/lostpixels/fieldservice/activities/visits/EditVisitDialog$12;->onClick(Landroid/view/View;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/lostpixels/fieldservice/activities/visits/EditVisitDialog$12;

.field final synthetic val$alertDialog:Landroidx/appcompat/app/AlertDialog;


# direct methods
.method constructor <init>(Lcom/lostpixels/fieldservice/activities/visits/EditVisitDialog$12;Landroidx/appcompat/app/AlertDialog;)V
    .locals 0

    .line 593
    iput-object p1, p0, Lcom/lostpixels/fieldservice/activities/visits/EditVisitDialog$12$4;->this$1:Lcom/lostpixels/fieldservice/activities/visits/EditVisitDialog$12;

    iput-object p2, p0, Lcom/lostpixels/fieldservice/activities/visits/EditVisitDialog$12$4;->val$alertDialog:Landroidx/appcompat/app/AlertDialog;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onItemClick(Landroid/widget/AdapterView;Landroid/view/View;IJ)V
    .locals 0

    .line 597
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    .line 598
    iget-object p2, p0, Lcom/lostpixels/fieldservice/activities/visits/EditVisitDialog$12$4;->this$1:Lcom/lostpixels/fieldservice/activities/visits/EditVisitDialog$12;

    iget-object p2, p2, Lcom/lostpixels/fieldservice/activities/visits/EditVisitDialog$12;->this$0:Lcom/lostpixels/fieldservice/activities/visits/EditVisitDialog;

    invoke-static {p2}, Lcom/lostpixels/fieldservice/activities/visits/EditVisitDialog;->-$$Nest$fgetmedtScripture(Lcom/lostpixels/fieldservice/activities/visits/EditVisitDialog;)Landroid/widget/EditText;

    move-result-object p2

    invoke-virtual {p2}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object p2

    invoke-interface {p2}, Ljava/lang/CharSequence;->length()I

    move-result p2

    const-string p4, "\""

    const-string p5, " \""

    if-lez p2, :cond_1

    .line 599
    iget-object p2, p0, Lcom/lostpixels/fieldservice/activities/visits/EditVisitDialog$12$4;->this$1:Lcom/lostpixels/fieldservice/activities/visits/EditVisitDialog$12;

    iget-object p2, p2, Lcom/lostpixels/fieldservice/activities/visits/EditVisitDialog$12;->this$0:Lcom/lostpixels/fieldservice/activities/visits/EditVisitDialog;

    invoke-static {p2}, Lcom/lostpixels/fieldservice/activities/visits/EditVisitDialog;->-$$Nest$fgetmedtScripture(Lcom/lostpixels/fieldservice/activities/visits/EditVisitDialog;)Landroid/widget/EditText;

    move-result-object p2

    invoke-virtual {p2}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object p2

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/CharSequence;)Ljava/lang/StringBuilder;

    .line 600
    const-string p2, "; "

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 601
    iget-object p2, p0, Lcom/lostpixels/fieldservice/activities/visits/EditVisitDialog$12$4;->this$1:Lcom/lostpixels/fieldservice/activities/visits/EditVisitDialog$12;

    iget-object p2, p2, Lcom/lostpixels/fieldservice/activities/visits/EditVisitDialog$12;->this$0:Lcom/lostpixels/fieldservice/activities/visits/EditVisitDialog;

    invoke-static {p2}, Lcom/lostpixels/fieldservice/activities/visits/EditVisitDialog;->-$$Nest$fgetmScrptureItems(Lcom/lostpixels/fieldservice/activities/visits/EditVisitDialog;)Ljava/util/List;

    move-result-object p2

    invoke-interface {p2, p3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lcom/lostpixels/fieldservice/internal/report/Scripture;

    invoke-virtual {p2}, Lcom/lostpixels/fieldservice/internal/report/Scripture;->realmGet$verse()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 602
    iget-object p2, p0, Lcom/lostpixels/fieldservice/activities/visits/EditVisitDialog$12$4;->this$1:Lcom/lostpixels/fieldservice/activities/visits/EditVisitDialog$12;

    iget-object p2, p2, Lcom/lostpixels/fieldservice/activities/visits/EditVisitDialog$12;->this$0:Lcom/lostpixels/fieldservice/activities/visits/EditVisitDialog;

    invoke-static {p2}, Lcom/lostpixels/fieldservice/activities/visits/EditVisitDialog;->-$$Nest$fgetmScrptureItems(Lcom/lostpixels/fieldservice/activities/visits/EditVisitDialog;)Ljava/util/List;

    move-result-object p2

    invoke-interface {p2, p3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lcom/lostpixels/fieldservice/internal/report/Scripture;

    invoke-virtual {p2}, Lcom/lostpixels/fieldservice/internal/report/Scripture;->realmGet$content()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p2}, Ljava/lang/String;->isEmpty()Z

    move-result p2

    if-nez p2, :cond_0

    .line 603
    invoke-virtual {p1, p5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 604
    iget-object p2, p0, Lcom/lostpixels/fieldservice/activities/visits/EditVisitDialog$12$4;->this$1:Lcom/lostpixels/fieldservice/activities/visits/EditVisitDialog$12;

    iget-object p2, p2, Lcom/lostpixels/fieldservice/activities/visits/EditVisitDialog$12;->this$0:Lcom/lostpixels/fieldservice/activities/visits/EditVisitDialog;

    invoke-static {p2}, Lcom/lostpixels/fieldservice/activities/visits/EditVisitDialog;->-$$Nest$fgetmScrptureItems(Lcom/lostpixels/fieldservice/activities/visits/EditVisitDialog;)Ljava/util/List;

    move-result-object p2

    invoke-interface {p2, p3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lcom/lostpixels/fieldservice/internal/report/Scripture;

    invoke-virtual {p2}, Lcom/lostpixels/fieldservice/internal/report/Scripture;->realmGet$content()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 605
    invoke-virtual {p1, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 607
    :cond_0
    iget-object p2, p0, Lcom/lostpixels/fieldservice/activities/visits/EditVisitDialog$12$4;->this$1:Lcom/lostpixels/fieldservice/activities/visits/EditVisitDialog$12;

    iget-object p2, p2, Lcom/lostpixels/fieldservice/activities/visits/EditVisitDialog$12;->this$0:Lcom/lostpixels/fieldservice/activities/visits/EditVisitDialog;

    invoke-static {p2}, Lcom/lostpixels/fieldservice/activities/visits/EditVisitDialog;->-$$Nest$fgetmedtScripture(Lcom/lostpixels/fieldservice/activities/visits/EditVisitDialog;)Landroid/widget/EditText;

    move-result-object p2

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p2, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0

    .line 609
    :cond_1
    iget-object p2, p0, Lcom/lostpixels/fieldservice/activities/visits/EditVisitDialog$12$4;->this$1:Lcom/lostpixels/fieldservice/activities/visits/EditVisitDialog$12;

    iget-object p2, p2, Lcom/lostpixels/fieldservice/activities/visits/EditVisitDialog$12;->this$0:Lcom/lostpixels/fieldservice/activities/visits/EditVisitDialog;

    invoke-static {p2}, Lcom/lostpixels/fieldservice/activities/visits/EditVisitDialog;->-$$Nest$fgetmScrptureItems(Lcom/lostpixels/fieldservice/activities/visits/EditVisitDialog;)Ljava/util/List;

    move-result-object p2

    invoke-interface {p2, p3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lcom/lostpixels/fieldservice/internal/report/Scripture;

    invoke-virtual {p2}, Lcom/lostpixels/fieldservice/internal/report/Scripture;->realmGet$verse()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 610
    iget-object p2, p0, Lcom/lostpixels/fieldservice/activities/visits/EditVisitDialog$12$4;->this$1:Lcom/lostpixels/fieldservice/activities/visits/EditVisitDialog$12;

    iget-object p2, p2, Lcom/lostpixels/fieldservice/activities/visits/EditVisitDialog$12;->this$0:Lcom/lostpixels/fieldservice/activities/visits/EditVisitDialog;

    invoke-static {p2}, Lcom/lostpixels/fieldservice/activities/visits/EditVisitDialog;->-$$Nest$fgetmScrptureItems(Lcom/lostpixels/fieldservice/activities/visits/EditVisitDialog;)Ljava/util/List;

    move-result-object p2

    invoke-interface {p2, p3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lcom/lostpixels/fieldservice/internal/report/Scripture;

    invoke-virtual {p2}, Lcom/lostpixels/fieldservice/internal/report/Scripture;->realmGet$content()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p2}, Ljava/lang/String;->isEmpty()Z

    move-result p2

    if-nez p2, :cond_2

    .line 611
    invoke-virtual {p1, p5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 612
    iget-object p2, p0, Lcom/lostpixels/fieldservice/activities/visits/EditVisitDialog$12$4;->this$1:Lcom/lostpixels/fieldservice/activities/visits/EditVisitDialog$12;

    iget-object p2, p2, Lcom/lostpixels/fieldservice/activities/visits/EditVisitDialog$12;->this$0:Lcom/lostpixels/fieldservice/activities/visits/EditVisitDialog;

    invoke-static {p2}, Lcom/lostpixels/fieldservice/activities/visits/EditVisitDialog;->-$$Nest$fgetmScrptureItems(Lcom/lostpixels/fieldservice/activities/visits/EditVisitDialog;)Ljava/util/List;

    move-result-object p2

    invoke-interface {p2, p3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lcom/lostpixels/fieldservice/internal/report/Scripture;

    invoke-virtual {p2}, Lcom/lostpixels/fieldservice/internal/report/Scripture;->realmGet$content()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 613
    invoke-virtual {p1, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 615
    :cond_2
    iget-object p2, p0, Lcom/lostpixels/fieldservice/activities/visits/EditVisitDialog$12$4;->this$1:Lcom/lostpixels/fieldservice/activities/visits/EditVisitDialog$12;

    iget-object p2, p2, Lcom/lostpixels/fieldservice/activities/visits/EditVisitDialog$12;->this$0:Lcom/lostpixels/fieldservice/activities/visits/EditVisitDialog;

    invoke-static {p2}, Lcom/lostpixels/fieldservice/activities/visits/EditVisitDialog;->-$$Nest$fgetmedtScripture(Lcom/lostpixels/fieldservice/activities/visits/EditVisitDialog;)Landroid/widget/EditText;

    move-result-object p2

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p2, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 619
    :goto_0
    :try_start_0
    iget-object p1, p0, Lcom/lostpixels/fieldservice/activities/visits/EditVisitDialog$12$4;->val$alertDialog:Landroidx/appcompat/app/AlertDialog;

    invoke-virtual {p1}, Landroidx/appcompat/app/AppCompatDialog;->dismiss()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    return-void
.end method
