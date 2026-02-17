.class Lcom/lostpixels/fieldservice/activities/territory/dialogs/BuildingDialog$2;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/text/TextWatcher;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/lostpixels/fieldservice/activities/territory/dialogs/BuildingDialog;->onCreate(Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field CurrentWord:Ljava/lang/String;

.field final synthetic this$0:Lcom/lostpixels/fieldservice/activities/territory/dialogs/BuildingDialog;


# direct methods
.method constructor <init>(Lcom/lostpixels/fieldservice/activities/territory/dialogs/BuildingDialog;)V
    .locals 0

    .line 258
    iput-object p1, p0, Lcom/lostpixels/fieldservice/activities/territory/dialogs/BuildingDialog$2;->this$0:Lcom/lostpixels/fieldservice/activities/territory/dialogs/BuildingDialog;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private IsValid(Ljava/lang/CharSequence;)Z
    .locals 4

    const/4 v0, 0x0

    const/4 v1, 0x0

    .line 262
    :goto_0
    invoke-interface {p1}, Ljava/lang/CharSequence;->length()I

    move-result v2

    if-ge v1, v2, :cond_1

    .line 263
    invoke-interface {p1, v1}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v2

    invoke-static {v2}, Ljava/lang/Character;->isLetterOrDigit(C)Z

    move-result v2

    if-nez v2, :cond_0

    invoke-interface {p1, v1}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v2

    invoke-static {v2}, Ljava/lang/Character;->isWhitespace(C)Z

    move-result v2

    if-nez v2, :cond_0

    invoke-interface {p1, v1}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v2

    const/16 v3, 0x2f

    if-eq v2, v3, :cond_0

    invoke-interface {p1, v1}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v2

    const/16 v3, 0x5c

    if-eq v2, v3, :cond_0

    return v0

    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    const/4 p1, 0x1

    return p1
.end method


# virtual methods
.method public afterTextChanged(Landroid/text/Editable;)V
    .locals 0

    return-void
.end method

.method public beforeTextChanged(Ljava/lang/CharSequence;III)V
    .locals 0

    .line 273
    invoke-interface {p1}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/lostpixels/fieldservice/activities/territory/dialogs/BuildingDialog$2;->CurrentWord:Ljava/lang/String;

    return-void
.end method

.method public onTextChanged(Ljava/lang/CharSequence;III)V
    .locals 0

    .line 278
    :try_start_0
    invoke-direct {p0, p1}, Lcom/lostpixels/fieldservice/activities/territory/dialogs/BuildingDialog$2;->IsValid(Ljava/lang/CharSequence;)Z

    move-result p1

    if-nez p1, :cond_2

    .line 279
    iget-object p1, p0, Lcom/lostpixels/fieldservice/activities/territory/dialogs/BuildingDialog$2;->this$0:Lcom/lostpixels/fieldservice/activities/territory/dialogs/BuildingDialog;

    invoke-static {p1}, Lcom/lostpixels/fieldservice/activities/territory/dialogs/BuildingDialog;->-$$Nest$fgetmedtNumber(Lcom/lostpixels/fieldservice/activities/territory/dialogs/BuildingDialog;)Landroid/widget/EditText;

    move-result-object p1

    iget-object p2, p0, Lcom/lostpixels/fieldservice/activities/territory/dialogs/BuildingDialog$2;->CurrentWord:Ljava/lang/String;

    invoke-virtual {p1, p2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 280
    iget-object p1, p0, Lcom/lostpixels/fieldservice/activities/territory/dialogs/BuildingDialog$2;->this$0:Lcom/lostpixels/fieldservice/activities/territory/dialogs/BuildingDialog;

    invoke-static {p1}, Lcom/lostpixels/fieldservice/activities/territory/dialogs/BuildingDialog;->-$$Nest$fgetmedtNumber(Lcom/lostpixels/fieldservice/activities/territory/dialogs/BuildingDialog;)Landroid/widget/EditText;

    move-result-object p1

    iget-object p2, p0, Lcom/lostpixels/fieldservice/activities/territory/dialogs/BuildingDialog$2;->CurrentWord:Ljava/lang/String;

    if-eqz p2, :cond_1

    invoke-virtual {p2}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p2}, Ljava/lang/String;->isEmpty()Z

    move-result p2

    if-eqz p2, :cond_0

    goto :goto_0

    :cond_0
    iget-object p2, p0, Lcom/lostpixels/fieldservice/activities/territory/dialogs/BuildingDialog$2;->CurrentWord:Ljava/lang/String;

    invoke-virtual {p2}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p2}, Ljava/lang/String;->length()I

    move-result p2

    add-int/lit8 p2, p2, -0x1

    goto :goto_1

    :cond_1
    :goto_0
    const/4 p2, 0x0

    :goto_1
    invoke-virtual {p1, p2}, Landroid/widget/EditText;->setSelection(I)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    :cond_2
    return-void
.end method
