.class Lcom/lostpixels/fieldservice/activities/territory/TerritoryTemplate$11;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/lostpixels/fieldservice/activities/territory/TerritoryTemplate;->addMultipleAddresses(Lcom/lostpixels/fieldservice/activities/territory/TerritoryTemplate$ParseResult;Lcom/lostpixels/fieldservice/activities/territory/TerritoryTemplate$ParseResult;ZZ)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/lostpixels/fieldservice/activities/territory/TerritoryTemplate;

.field final synthetic val$bFinishWhenAdded:Z

.field final synthetic val$bRemoveWhenAdded:Z

.field final synthetic val$dialog2:Landroid/app/Dialog;

.field final synthetic val$res1:Lcom/lostpixels/fieldservice/activities/territory/TerritoryTemplate$ParseResult;

.field final synthetic val$res2:Lcom/lostpixels/fieldservice/activities/territory/TerritoryTemplate$ParseResult;

.field final synthetic val$text2:Landroid/widget/EditText;


# direct methods
.method constructor <init>(Lcom/lostpixels/fieldservice/activities/territory/TerritoryTemplate;Landroid/widget/EditText;Lcom/lostpixels/fieldservice/activities/territory/TerritoryTemplate$ParseResult;Lcom/lostpixels/fieldservice/activities/territory/TerritoryTemplate$ParseResult;ZZLandroid/app/Dialog;)V
    .locals 0

    .line 606
    iput-object p1, p0, Lcom/lostpixels/fieldservice/activities/territory/TerritoryTemplate$11;->this$0:Lcom/lostpixels/fieldservice/activities/territory/TerritoryTemplate;

    iput-object p2, p0, Lcom/lostpixels/fieldservice/activities/territory/TerritoryTemplate$11;->val$text2:Landroid/widget/EditText;

    iput-object p3, p0, Lcom/lostpixels/fieldservice/activities/territory/TerritoryTemplate$11;->val$res1:Lcom/lostpixels/fieldservice/activities/territory/TerritoryTemplate$ParseResult;

    iput-object p4, p0, Lcom/lostpixels/fieldservice/activities/territory/TerritoryTemplate$11;->val$res2:Lcom/lostpixels/fieldservice/activities/territory/TerritoryTemplate$ParseResult;

    iput-boolean p5, p0, Lcom/lostpixels/fieldservice/activities/territory/TerritoryTemplate$11;->val$bRemoveWhenAdded:Z

    iput-boolean p6, p0, Lcom/lostpixels/fieldservice/activities/territory/TerritoryTemplate$11;->val$bFinishWhenAdded:Z

    iput-object p7, p0, Lcom/lostpixels/fieldservice/activities/territory/TerritoryTemplate$11;->val$dialog2:Landroid/app/Dialog;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 10

    const/4 p1, 0x1

    .line 611
    :try_start_0
    iget-object v0, p0, Lcom/lostpixels/fieldservice/activities/territory/TerritoryTemplate$11;->val$text2:Landroid/widget/EditText;

    invoke-virtual {v0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    move v7, v0

    goto :goto_0

    :catch_0
    nop

    const/4 v7, 0x1

    :goto_0
    if-lez v7, :cond_4

    .line 616
    iget-object p1, p0, Lcom/lostpixels/fieldservice/activities/territory/TerritoryTemplate$11;->val$res1:Lcom/lostpixels/fieldservice/activities/territory/TerritoryTemplate$ParseResult;

    invoke-virtual {p1}, Lcom/lostpixels/fieldservice/activities/territory/TerritoryTemplate$ParseResult;->isMixed()Z

    move-result p1

    const/4 v0, 0x0

    if-eqz p1, :cond_0

    iget-object p1, p0, Lcom/lostpixels/fieldservice/activities/territory/TerritoryTemplate$11;->val$res2:Lcom/lostpixels/fieldservice/activities/territory/TerritoryTemplate$ParseResult;

    invoke-virtual {p1}, Lcom/lostpixels/fieldservice/activities/territory/TerritoryTemplate$ParseResult;->isMixed()Z

    move-result p1

    if-eqz p1, :cond_0

    .line 617
    iget-object p1, p0, Lcom/lostpixels/fieldservice/activities/territory/TerritoryTemplate$11;->this$0:Lcom/lostpixels/fieldservice/activities/territory/TerritoryTemplate;

    invoke-static {p1}, Lcom/lostpixels/fieldservice/activities/territory/TerritoryTemplate;->-$$Nest$fgetmeType(Lcom/lostpixels/fieldservice/activities/territory/TerritoryTemplate;)I

    move-result v1

    iget-object p1, p0, Lcom/lostpixels/fieldservice/activities/territory/TerritoryTemplate$11;->this$0:Lcom/lostpixels/fieldservice/activities/territory/TerritoryTemplate;

    invoke-static {p1}, Lcom/lostpixels/fieldservice/activities/territory/TerritoryTemplate;->-$$Nest$fgetmStreetName(Lcom/lostpixels/fieldservice/activities/territory/TerritoryTemplate;)Landroid/widget/AutoCompleteTextView;

    move-result-object p1

    .line 618
    invoke-virtual {p1}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v2

    iget-object p1, p0, Lcom/lostpixels/fieldservice/activities/territory/TerritoryTemplate$11;->val$res1:Lcom/lostpixels/fieldservice/activities/territory/TerritoryTemplate$ParseResult;

    iget v3, p1, Lcom/lostpixels/fieldservice/activities/territory/TerritoryTemplate$ParseResult;->number:I

    iget-object v4, p0, Lcom/lostpixels/fieldservice/activities/territory/TerritoryTemplate$11;->val$res2:Lcom/lostpixels/fieldservice/activities/territory/TerritoryTemplate$ParseResult;

    iget v4, v4, Lcom/lostpixels/fieldservice/activities/territory/TerritoryTemplate$ParseResult;->number:I

    iget-object p1, p1, Lcom/lostpixels/fieldservice/activities/territory/TerritoryTemplate$ParseResult;->letter:Ljava/lang/String;

    .line 619
    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    invoke-virtual {p1, v0}, Ljava/lang/String;->charAt(I)C

    move-result v5

    iget-object p1, p0, Lcom/lostpixels/fieldservice/activities/territory/TerritoryTemplate$11;->val$res2:Lcom/lostpixels/fieldservice/activities/territory/TerritoryTemplate$ParseResult;

    iget-object p1, p1, Lcom/lostpixels/fieldservice/activities/territory/TerritoryTemplate$ParseResult;->letter:Ljava/lang/String;

    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    invoke-virtual {p1, v0}, Ljava/lang/String;->charAt(I)C

    move-result v6

    iget-object p1, p0, Lcom/lostpixels/fieldservice/activities/territory/TerritoryTemplate$11;->val$res1:Lcom/lostpixels/fieldservice/activities/territory/TerritoryTemplate$ParseResult;

    invoke-virtual {p1}, Lcom/lostpixels/fieldservice/activities/territory/TerritoryTemplate$ParseResult;->letterFirst()Z

    move-result v8

    iget-object p1, p0, Lcom/lostpixels/fieldservice/activities/territory/TerritoryTemplate$11;->this$0:Lcom/lostpixels/fieldservice/activities/territory/TerritoryTemplate;

    invoke-static {p1}, Lcom/lostpixels/fieldservice/activities/territory/TerritoryTemplate;->-$$Nest$fgetmChNotAllLetters(Lcom/lostpixels/fieldservice/activities/territory/TerritoryTemplate;)Landroid/widget/CheckBox;

    move-result-object p1

    invoke-virtual {p1}, Landroid/widget/CompoundButton;->isChecked()Z

    move-result v9

    .line 618
    invoke-static/range {v1 .. v9}, Lcom/lostpixels/fieldservice/utils/AddressGenerator;->generateStreet(ILjava/lang/String;IICCIZZ)Lcom/lostpixels/fieldservice/internal/ministry/Street;

    move-result-object p1

    goto :goto_1

    .line 620
    :cond_0
    iget-object p1, p0, Lcom/lostpixels/fieldservice/activities/territory/TerritoryTemplate$11;->val$res1:Lcom/lostpixels/fieldservice/activities/territory/TerritoryTemplate$ParseResult;

    invoke-virtual {p1}, Lcom/lostpixels/fieldservice/activities/territory/TerritoryTemplate$ParseResult;->isGermanFormat()Z

    move-result p1

    if-eqz p1, :cond_1

    iget-object p1, p0, Lcom/lostpixels/fieldservice/activities/territory/TerritoryTemplate$11;->val$res2:Lcom/lostpixels/fieldservice/activities/territory/TerritoryTemplate$ParseResult;

    invoke-virtual {p1}, Lcom/lostpixels/fieldservice/activities/territory/TerritoryTemplate$ParseResult;->isGermanFormat()Z

    move-result p1

    if-eqz p1, :cond_1

    .line 621
    iget-object p1, p0, Lcom/lostpixels/fieldservice/activities/territory/TerritoryTemplate$11;->this$0:Lcom/lostpixels/fieldservice/activities/territory/TerritoryTemplate;

    invoke-static {p1}, Lcom/lostpixels/fieldservice/activities/territory/TerritoryTemplate;->-$$Nest$fgetmStreetName(Lcom/lostpixels/fieldservice/activities/territory/TerritoryTemplate;)Landroid/widget/AutoCompleteTextView;

    move-result-object p1

    invoke-virtual {p1}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v2

    iget-object p1, p0, Lcom/lostpixels/fieldservice/activities/territory/TerritoryTemplate$11;->val$res1:Lcom/lostpixels/fieldservice/activities/territory/TerritoryTemplate$ParseResult;

    iget v3, p1, Lcom/lostpixels/fieldservice/activities/territory/TerritoryTemplate$ParseResult;->number:I

    iget-object v1, p0, Lcom/lostpixels/fieldservice/activities/territory/TerritoryTemplate$11;->val$res2:Lcom/lostpixels/fieldservice/activities/territory/TerritoryTemplate$ParseResult;

    iget v4, v1, Lcom/lostpixels/fieldservice/activities/territory/TerritoryTemplate$ParseResult;->number:I

    iget v5, p1, Lcom/lostpixels/fieldservice/activities/territory/TerritoryTemplate$ParseResult;->number2:I

    iget v6, v1, Lcom/lostpixels/fieldservice/activities/territory/TerritoryTemplate$ParseResult;->number2:I

    const/4 v7, 0x0

    const/4 v1, 0x2

    invoke-static/range {v1 .. v7}, Lcom/lostpixels/fieldservice/utils/AddressGenerator;->generateStreetGerman(ILjava/lang/String;IIIII)Lcom/lostpixels/fieldservice/internal/ministry/Street;

    move-result-object p1

    goto :goto_1

    .line 623
    :cond_1
    iget-object p1, p0, Lcom/lostpixels/fieldservice/activities/territory/TerritoryTemplate$11;->this$0:Lcom/lostpixels/fieldservice/activities/territory/TerritoryTemplate;

    invoke-static {p1}, Lcom/lostpixels/fieldservice/activities/territory/TerritoryTemplate;->-$$Nest$fgetmeType(Lcom/lostpixels/fieldservice/activities/territory/TerritoryTemplate;)I

    move-result p1

    iget-object v1, p0, Lcom/lostpixels/fieldservice/activities/territory/TerritoryTemplate$11;->this$0:Lcom/lostpixels/fieldservice/activities/territory/TerritoryTemplate;

    invoke-static {v1}, Lcom/lostpixels/fieldservice/activities/territory/TerritoryTemplate;->-$$Nest$fgetmStreetName(Lcom/lostpixels/fieldservice/activities/territory/TerritoryTemplate;)Landroid/widget/AutoCompleteTextView;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    .line 624
    invoke-virtual {v1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/lostpixels/fieldservice/activities/territory/TerritoryTemplate$11;->val$res1:Lcom/lostpixels/fieldservice/activities/territory/TerritoryTemplate$ParseResult;

    iget v2, v2, Lcom/lostpixels/fieldservice/activities/territory/TerritoryTemplate$ParseResult;->number:I

    iget-object v3, p0, Lcom/lostpixels/fieldservice/activities/territory/TerritoryTemplate$11;->val$res2:Lcom/lostpixels/fieldservice/activities/territory/TerritoryTemplate$ParseResult;

    iget v3, v3, Lcom/lostpixels/fieldservice/activities/territory/TerritoryTemplate$ParseResult;->number:I

    .line 623
    invoke-static {p1, v1, v2, v3, v7}, Lcom/lostpixels/fieldservice/utils/AddressGenerator;->generateStreet(ILjava/lang/String;III)Lcom/lostpixels/fieldservice/internal/ministry/Street;

    move-result-object p1

    .line 625
    :goto_1
    iget-object v1, p0, Lcom/lostpixels/fieldservice/activities/territory/TerritoryTemplate$11;->this$0:Lcom/lostpixels/fieldservice/activities/territory/TerritoryTemplate;

    invoke-static {v1}, Lcom/lostpixels/fieldservice/activities/territory/TerritoryTemplate;->-$$Nest$fgetmTerritory(Lcom/lostpixels/fieldservice/activities/territory/TerritoryTemplate;)Lcom/lostpixels/fieldservice/internal/ministry/Territory;

    move-result-object v1

    invoke-static {v1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v2, p0, Lcom/lostpixels/fieldservice/activities/territory/TerritoryTemplate$11;->this$0:Lcom/lostpixels/fieldservice/activities/territory/TerritoryTemplate;

    invoke-static {v2}, Lcom/lostpixels/fieldservice/activities/territory/TerritoryTemplate;->access$000(Lcom/lostpixels/fieldservice/activities/territory/TerritoryTemplate;)Lio/realm/Realm;

    move-result-object v2

    invoke-virtual {v1, v2, p1, v0}, Lcom/lostpixels/fieldservice/internal/ministry/Territory;->addStreet(Lio/realm/Realm;Lcom/lostpixels/fieldservice/internal/ministry/Street;I)Lcom/lostpixels/fieldservice/internal/ministry/Street;

    .line 626
    iget-boolean p1, p0, Lcom/lostpixels/fieldservice/activities/territory/TerritoryTemplate$11;->val$bRemoveWhenAdded:Z

    if-eqz p1, :cond_2

    .line 627
    iget-object p1, p0, Lcom/lostpixels/fieldservice/activities/territory/TerritoryTemplate$11;->this$0:Lcom/lostpixels/fieldservice/activities/territory/TerritoryTemplate;

    invoke-static {p1}, Lcom/lostpixels/fieldservice/activities/territory/TerritoryTemplate;->-$$Nest$fgetmNumberFrom(Lcom/lostpixels/fieldservice/activities/territory/TerritoryTemplate;)Landroid/widget/EditText;

    move-result-object p1

    const-string v0, ""

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 628
    iget-object p1, p0, Lcom/lostpixels/fieldservice/activities/territory/TerritoryTemplate$11;->this$0:Lcom/lostpixels/fieldservice/activities/territory/TerritoryTemplate;

    invoke-static {p1}, Lcom/lostpixels/fieldservice/activities/territory/TerritoryTemplate;->-$$Nest$fgetmNumberTo(Lcom/lostpixels/fieldservice/activities/territory/TerritoryTemplate;)Landroid/widget/EditText;

    move-result-object p1

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 630
    :cond_2
    iget-boolean p1, p0, Lcom/lostpixels/fieldservice/activities/territory/TerritoryTemplate$11;->val$bFinishWhenAdded:Z

    if-eqz p1, :cond_3

    .line 631
    iget-object p1, p0, Lcom/lostpixels/fieldservice/activities/territory/TerritoryTemplate$11;->this$0:Lcom/lostpixels/fieldservice/activities/territory/TerritoryTemplate;

    invoke-static {p1}, Lcom/lostpixels/fieldservice/activities/territory/TerritoryTemplate;->-$$Nest$msetResult(Lcom/lostpixels/fieldservice/activities/territory/TerritoryTemplate;)V

    .line 632
    iget-object p1, p0, Lcom/lostpixels/fieldservice/activities/territory/TerritoryTemplate$11;->this$0:Lcom/lostpixels/fieldservice/activities/territory/TerritoryTemplate;

    invoke-virtual {p1}, Landroid/app/Activity;->finish()V

    .line 635
    :cond_3
    :try_start_1
    iget-object p1, p0, Lcom/lostpixels/fieldservice/activities/territory/TerritoryTemplate$11;->val$dialog2:Landroid/app/Dialog;

    invoke-virtual {p1}, Landroid/app/Dialog;->dismiss()V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_2

    .line 640
    :cond_4
    iget-object v0, p0, Lcom/lostpixels/fieldservice/activities/territory/TerritoryTemplate$11;->this$0:Lcom/lostpixels/fieldservice/activities/territory/TerritoryTemplate;

    const v1, 0x7f1200c4

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1, p1}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object p1

    invoke-virtual {p1}, Landroid/widget/Toast;->show()V

    :catch_1
    :goto_2
    return-void
.end method
