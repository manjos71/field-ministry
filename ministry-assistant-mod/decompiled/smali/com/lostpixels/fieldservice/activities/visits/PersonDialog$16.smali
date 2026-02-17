.class Lcom/lostpixels/fieldservice/activities/visits/PersonDialog$16;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/lostpixels/fieldservice/activities/visits/PersonDialog;->setPersonInfo()V
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

    .line 1050
    iput-object p1, p0, Lcom/lostpixels/fieldservice/activities/visits/PersonDialog$16;->this$0:Lcom/lostpixels/fieldservice/activities/visits/PersonDialog;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 3

    .line 1053
    new-instance p1, Landroid/app/Dialog;

    iget-object v0, p0, Lcom/lostpixels/fieldservice/activities/visits/PersonDialog$16;->this$0:Lcom/lostpixels/fieldservice/activities/visits/PersonDialog;

    invoke-direct {p1, v0}, Landroid/app/Dialog;-><init>(Landroid/content/Context;)V

    const v0, 0x7f0c0091

    .line 1054
    invoke-virtual {p1, v0}, Landroid/app/Dialog;->setContentView(I)V

    .line 1055
    iget-object v0, p0, Lcom/lostpixels/fieldservice/activities/visits/PersonDialog$16;->this$0:Lcom/lostpixels/fieldservice/activities/visits/PersonDialog;

    const v1, 0x7f12035c

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/app/Dialog;->setTitle(Ljava/lang/CharSequence;)V

    const v0, 0x7f0902a4

    .line 1057
    invoke-virtual {p1, v0}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/EditText;

    .line 1058
    iget-object v2, p0, Lcom/lostpixels/fieldservice/activities/visits/PersonDialog$16;->this$0:Lcom/lostpixels/fieldservice/activities/visits/PersonDialog;

    invoke-static {v2}, Lcom/lostpixels/fieldservice/activities/visits/PersonDialog;->-$$Nest$fgetperson(Lcom/lostpixels/fieldservice/activities/visits/PersonDialog;)Lcom/lostpixels/fieldservice/internal/ministry/Person;

    move-result-object v2

    invoke-virtual {v2}, Lcom/lostpixels/fieldservice/internal/ministry/Person;->getAddress()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 1059
    iget-object v2, p0, Lcom/lostpixels/fieldservice/activities/visits/PersonDialog$16;->this$0:Lcom/lostpixels/fieldservice/activities/visits/PersonDialog;

    invoke-virtual {v2, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setHint(Ljava/lang/CharSequence;)V

    const v1, 0x7f0900f5

    .line 1060
    invoke-virtual {p1, v1}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/Button;

    .line 1061
    new-instance v2, Lcom/lostpixels/fieldservice/activities/visits/PersonDialog$16$1;

    invoke-direct {v2, p0, v0, p1}, Lcom/lostpixels/fieldservice/activities/visits/PersonDialog$16$1;-><init>(Lcom/lostpixels/fieldservice/activities/visits/PersonDialog$16;Landroid/widget/EditText;Landroid/app/Dialog;)V

    invoke-virtual {v1, v2}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 1072
    invoke-virtual {p1}, Landroid/app/Dialog;->show()V

    return-void
.end method
