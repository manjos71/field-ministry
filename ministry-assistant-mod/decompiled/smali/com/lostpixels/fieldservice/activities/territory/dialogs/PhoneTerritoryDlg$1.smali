.class Lcom/lostpixels/fieldservice/activities/territory/dialogs/PhoneTerritoryDlg$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/lostpixels/fieldservice/activities/territory/dialogs/PhoneTerritoryDlg;->onCreate(Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/lostpixels/fieldservice/activities/territory/dialogs/PhoneTerritoryDlg;


# direct methods
.method constructor <init>(Lcom/lostpixels/fieldservice/activities/territory/dialogs/PhoneTerritoryDlg;)V
    .locals 0

    .line 131
    iput-object p1, p0, Lcom/lostpixels/fieldservice/activities/territory/dialogs/PhoneTerritoryDlg$1;->this$0:Lcom/lostpixels/fieldservice/activities/territory/dialogs/PhoneTerritoryDlg;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 5

    .line 135
    iget-object p1, p0, Lcom/lostpixels/fieldservice/activities/territory/dialogs/PhoneTerritoryDlg$1;->this$0:Lcom/lostpixels/fieldservice/activities/territory/dialogs/PhoneTerritoryDlg;

    invoke-static {p1}, Lcom/lostpixels/fieldservice/activities/territory/dialogs/PhoneTerritoryDlg;->-$$Nest$msetResult(Lcom/lostpixels/fieldservice/activities/territory/dialogs/PhoneTerritoryDlg;)V

    .line 137
    iget-object p1, p0, Lcom/lostpixels/fieldservice/activities/territory/dialogs/PhoneTerritoryDlg$1;->this$0:Lcom/lostpixels/fieldservice/activities/territory/dialogs/PhoneTerritoryDlg;

    invoke-static {p1}, Lcom/lostpixels/fieldservice/activities/territory/dialogs/PhoneTerritoryDlg;->-$$Nest$fgetmedtPhoneNumber(Lcom/lostpixels/fieldservice/activities/territory/dialogs/PhoneTerritoryDlg;)Landroid/widget/EditText;

    move-result-object p1

    invoke-virtual {p1}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/String;->isEmpty()Z

    move-result p1

    if-eqz p1, :cond_0

    iget-object p1, p0, Lcom/lostpixels/fieldservice/activities/territory/dialogs/PhoneTerritoryDlg$1;->this$0:Lcom/lostpixels/fieldservice/activities/territory/dialogs/PhoneTerritoryDlg;

    invoke-static {p1}, Lcom/lostpixels/fieldservice/activities/territory/dialogs/PhoneTerritoryDlg;->-$$Nest$fgetmedtCellNumber(Lcom/lostpixels/fieldservice/activities/territory/dialogs/PhoneTerritoryDlg;)Landroid/widget/EditText;

    move-result-object p1

    .line 138
    invoke-virtual {p1}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/String;->isEmpty()Z

    move-result p1

    if-nez p1, :cond_1

    .line 139
    :cond_0
    new-instance p1, Lcom/lostpixels/fieldservice/internal/ministry/Street;

    invoke-direct {p1}, Lcom/lostpixels/fieldservice/internal/ministry/Street;-><init>()V

    .line 140
    iget-object v0, p0, Lcom/lostpixels/fieldservice/activities/territory/dialogs/PhoneTerritoryDlg$1;->this$0:Lcom/lostpixels/fieldservice/activities/territory/dialogs/PhoneTerritoryDlg;

    invoke-static {v0}, Lcom/lostpixels/fieldservice/activities/territory/dialogs/PhoneTerritoryDlg;->-$$Nest$fgetmedtStreet(Lcom/lostpixels/fieldservice/activities/territory/dialogs/PhoneTerritoryDlg;)Landroid/widget/AutoCompleteTextView;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/lostpixels/fieldservice/internal/ministry/Street;->setStreetName(Ljava/lang/String;)V

    .line 141
    new-instance v0, Lcom/lostpixels/fieldservice/internal/ministry/Address;

    iget-object v1, p0, Lcom/lostpixels/fieldservice/activities/territory/dialogs/PhoneTerritoryDlg$1;->this$0:Lcom/lostpixels/fieldservice/activities/territory/dialogs/PhoneTerritoryDlg;

    invoke-static {v1}, Lcom/lostpixels/fieldservice/activities/territory/dialogs/PhoneTerritoryDlg;->-$$Nest$fgetmedtStreetNumber(Lcom/lostpixels/fieldservice/activities/territory/dialogs/PhoneTerritoryDlg;)Landroid/widget/EditText;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x3

    invoke-direct {v0, v1, v2}, Lcom/lostpixels/fieldservice/internal/ministry/Address;-><init>(Ljava/lang/String;I)V

    .line 142
    invoke-virtual {v0}, Lcom/lostpixels/fieldservice/internal/ministry/Address;->getVisits()Ljava/util/List;

    move-result-object v1

    const/4 v3, 0x0

    invoke-interface {v1, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/lostpixels/fieldservice/internal/ministry/Visit;

    iget-object v4, p0, Lcom/lostpixels/fieldservice/activities/territory/dialogs/PhoneTerritoryDlg$1;->this$0:Lcom/lostpixels/fieldservice/activities/territory/dialogs/PhoneTerritoryDlg;

    invoke-static {v4}, Lcom/lostpixels/fieldservice/activities/territory/dialogs/PhoneTerritoryDlg;->-$$Nest$fgetmedtName(Lcom/lostpixels/fieldservice/activities/territory/dialogs/PhoneTerritoryDlg;)Landroid/widget/EditText;

    move-result-object v4

    invoke-virtual {v4}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v4}, Lcom/lostpixels/fieldservice/internal/ministry/Visit;->setName(Ljava/lang/String;)V

    .line 143
    invoke-virtual {v0}, Lcom/lostpixels/fieldservice/internal/ministry/Address;->getVisits()Ljava/util/List;

    move-result-object v1

    invoke-interface {v1, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/lostpixels/fieldservice/internal/ministry/Visit;

    iget-object v4, p0, Lcom/lostpixels/fieldservice/activities/territory/dialogs/PhoneTerritoryDlg$1;->this$0:Lcom/lostpixels/fieldservice/activities/territory/dialogs/PhoneTerritoryDlg;

    invoke-static {v4}, Lcom/lostpixels/fieldservice/activities/territory/dialogs/PhoneTerritoryDlg;->-$$Nest$fgetmedtPhoneNumber(Lcom/lostpixels/fieldservice/activities/territory/dialogs/PhoneTerritoryDlg;)Landroid/widget/EditText;

    move-result-object v4

    invoke-virtual {v4}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v4}, Lcom/lostpixels/fieldservice/internal/ministry/Visit;->setPhoneNumber(Ljava/lang/String;)V

    .line 144
    invoke-virtual {v0}, Lcom/lostpixels/fieldservice/internal/ministry/Address;->getVisits()Ljava/util/List;

    move-result-object v1

    invoke-interface {v1, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/lostpixels/fieldservice/internal/ministry/Visit;

    iget-object v3, p0, Lcom/lostpixels/fieldservice/activities/territory/dialogs/PhoneTerritoryDlg$1;->this$0:Lcom/lostpixels/fieldservice/activities/territory/dialogs/PhoneTerritoryDlg;

    invoke-static {v3}, Lcom/lostpixels/fieldservice/activities/territory/dialogs/PhoneTerritoryDlg;->-$$Nest$fgetmedtCellNumber(Lcom/lostpixels/fieldservice/activities/territory/dialogs/PhoneTerritoryDlg;)Landroid/widget/EditText;

    move-result-object v3

    invoke-virtual {v3}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Lcom/lostpixels/fieldservice/internal/ministry/Visit;->setCellNumber(Ljava/lang/String;)V

    .line 145
    invoke-virtual {p1, v0}, Lcom/lostpixels/fieldservice/internal/ministry/Street;->addAddress(Lcom/lostpixels/fieldservice/internal/ministry/Address;)V

    .line 146
    iget-object v0, p0, Lcom/lostpixels/fieldservice/activities/territory/dialogs/PhoneTerritoryDlg$1;->this$0:Lcom/lostpixels/fieldservice/activities/territory/dialogs/PhoneTerritoryDlg;

    invoke-static {v0}, Lcom/lostpixels/fieldservice/activities/territory/dialogs/PhoneTerritoryDlg;->-$$Nest$fgetmTerritory(Lcom/lostpixels/fieldservice/activities/territory/dialogs/PhoneTerritoryDlg;)Lcom/lostpixels/fieldservice/internal/ministry/Territory;

    move-result-object v0

    invoke-static {v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v1, p0, Lcom/lostpixels/fieldservice/activities/territory/dialogs/PhoneTerritoryDlg$1;->this$0:Lcom/lostpixels/fieldservice/activities/territory/dialogs/PhoneTerritoryDlg;

    invoke-static {v1}, Lcom/lostpixels/fieldservice/activities/territory/dialogs/PhoneTerritoryDlg;->access$000(Lcom/lostpixels/fieldservice/activities/territory/dialogs/PhoneTerritoryDlg;)Lio/realm/Realm;

    move-result-object v1

    invoke-virtual {v0, v1, p1, v2}, Lcom/lostpixels/fieldservice/internal/ministry/Territory;->addStreet(Lio/realm/Realm;Lcom/lostpixels/fieldservice/internal/ministry/Street;I)Lcom/lostpixels/fieldservice/internal/ministry/Street;

    .line 149
    :cond_1
    iget-object p1, p0, Lcom/lostpixels/fieldservice/activities/territory/dialogs/PhoneTerritoryDlg$1;->this$0:Lcom/lostpixels/fieldservice/activities/territory/dialogs/PhoneTerritoryDlg;

    invoke-virtual {p1}, Landroid/app/Activity;->finish()V

    return-void
.end method
