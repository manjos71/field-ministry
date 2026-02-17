.class Lcom/lostpixels/fieldservice/activities/territory/dialogs/PhoneTerritoryDlg$4;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/lostpixels/fieldservice/activities/territory/dialogs/PhoneTerritoryDlg;->onKeyDown(ILandroid/view/KeyEvent;)Z
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

    .line 174
    iput-object p1, p0, Lcom/lostpixels/fieldservice/activities/territory/dialogs/PhoneTerritoryDlg$4;->this$0:Lcom/lostpixels/fieldservice/activities/territory/dialogs/PhoneTerritoryDlg;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 4

    .line 176
    new-instance p1, Lcom/lostpixels/fieldservice/internal/ministry/Street;

    invoke-direct {p1}, Lcom/lostpixels/fieldservice/internal/ministry/Street;-><init>()V

    .line 177
    invoke-virtual {p1}, Lcom/lostpixels/fieldservice/internal/ministry/Street;->setToArea()V

    .line 178
    iget-object p2, p0, Lcom/lostpixels/fieldservice/activities/territory/dialogs/PhoneTerritoryDlg$4;->this$0:Lcom/lostpixels/fieldservice/activities/territory/dialogs/PhoneTerritoryDlg;

    invoke-static {p2}, Lcom/lostpixels/fieldservice/activities/territory/dialogs/PhoneTerritoryDlg;->-$$Nest$fgetmedtStreet(Lcom/lostpixels/fieldservice/activities/territory/dialogs/PhoneTerritoryDlg;)Landroid/widget/AutoCompleteTextView;

    move-result-object p2

    invoke-virtual {p2}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object p2

    invoke-virtual {p2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Lcom/lostpixels/fieldservice/internal/ministry/Street;->setStreetName(Ljava/lang/String;)V

    .line 179
    new-instance p2, Lcom/lostpixels/fieldservice/internal/ministry/Address;

    iget-object v0, p0, Lcom/lostpixels/fieldservice/activities/territory/dialogs/PhoneTerritoryDlg$4;->this$0:Lcom/lostpixels/fieldservice/activities/territory/dialogs/PhoneTerritoryDlg;

    invoke-static {v0}, Lcom/lostpixels/fieldservice/activities/territory/dialogs/PhoneTerritoryDlg;->-$$Nest$fgetmedtStreetNumber(Lcom/lostpixels/fieldservice/activities/territory/dialogs/PhoneTerritoryDlg;)Landroid/widget/EditText;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x3

    invoke-direct {p2, v0, v1}, Lcom/lostpixels/fieldservice/internal/ministry/Address;-><init>(Ljava/lang/String;I)V

    .line 180
    invoke-virtual {p2}, Lcom/lostpixels/fieldservice/internal/ministry/Address;->getVisits()Ljava/util/List;

    move-result-object v0

    const/4 v2, 0x0

    invoke-interface {v0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/lostpixels/fieldservice/internal/ministry/Visit;

    iget-object v3, p0, Lcom/lostpixels/fieldservice/activities/territory/dialogs/PhoneTerritoryDlg$4;->this$0:Lcom/lostpixels/fieldservice/activities/territory/dialogs/PhoneTerritoryDlg;

    invoke-static {v3}, Lcom/lostpixels/fieldservice/activities/territory/dialogs/PhoneTerritoryDlg;->-$$Nest$fgetmedtName(Lcom/lostpixels/fieldservice/activities/territory/dialogs/PhoneTerritoryDlg;)Landroid/widget/EditText;

    move-result-object v3

    invoke-virtual {v3}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Lcom/lostpixels/fieldservice/internal/ministry/Visit;->setName(Ljava/lang/String;)V

    .line 181
    invoke-virtual {p2}, Lcom/lostpixels/fieldservice/internal/ministry/Address;->getVisits()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/lostpixels/fieldservice/internal/ministry/Visit;

    iget-object v3, p0, Lcom/lostpixels/fieldservice/activities/territory/dialogs/PhoneTerritoryDlg$4;->this$0:Lcom/lostpixels/fieldservice/activities/territory/dialogs/PhoneTerritoryDlg;

    invoke-static {v3}, Lcom/lostpixels/fieldservice/activities/territory/dialogs/PhoneTerritoryDlg;->-$$Nest$fgetmedtPhoneNumber(Lcom/lostpixels/fieldservice/activities/territory/dialogs/PhoneTerritoryDlg;)Landroid/widget/EditText;

    move-result-object v3

    invoke-virtual {v3}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Lcom/lostpixels/fieldservice/internal/ministry/Visit;->setPhoneNumber(Ljava/lang/String;)V

    .line 182
    invoke-virtual {p2}, Lcom/lostpixels/fieldservice/internal/ministry/Address;->getVisits()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/lostpixels/fieldservice/internal/ministry/Visit;

    iget-object v2, p0, Lcom/lostpixels/fieldservice/activities/territory/dialogs/PhoneTerritoryDlg$4;->this$0:Lcom/lostpixels/fieldservice/activities/territory/dialogs/PhoneTerritoryDlg;

    invoke-static {v2}, Lcom/lostpixels/fieldservice/activities/territory/dialogs/PhoneTerritoryDlg;->-$$Nest$fgetmedtCellNumber(Lcom/lostpixels/fieldservice/activities/territory/dialogs/PhoneTerritoryDlg;)Landroid/widget/EditText;

    move-result-object v2

    invoke-virtual {v2}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/lostpixels/fieldservice/internal/ministry/Visit;->setCellNumber(Ljava/lang/String;)V

    .line 183
    invoke-virtual {p1, p2}, Lcom/lostpixels/fieldservice/internal/ministry/Street;->addAddress(Lcom/lostpixels/fieldservice/internal/ministry/Address;)V

    .line 184
    iget-object p2, p0, Lcom/lostpixels/fieldservice/activities/territory/dialogs/PhoneTerritoryDlg$4;->this$0:Lcom/lostpixels/fieldservice/activities/territory/dialogs/PhoneTerritoryDlg;

    invoke-static {p2}, Lcom/lostpixels/fieldservice/activities/territory/dialogs/PhoneTerritoryDlg;->-$$Nest$fgetmTerritory(Lcom/lostpixels/fieldservice/activities/territory/dialogs/PhoneTerritoryDlg;)Lcom/lostpixels/fieldservice/internal/ministry/Territory;

    move-result-object p2

    invoke-static {p2}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v0, p0, Lcom/lostpixels/fieldservice/activities/territory/dialogs/PhoneTerritoryDlg$4;->this$0:Lcom/lostpixels/fieldservice/activities/territory/dialogs/PhoneTerritoryDlg;

    invoke-static {v0}, Lcom/lostpixels/fieldservice/activities/territory/dialogs/PhoneTerritoryDlg;->access$100(Lcom/lostpixels/fieldservice/activities/territory/dialogs/PhoneTerritoryDlg;)Lio/realm/Realm;

    move-result-object v0

    invoke-virtual {p2, v0, p1, v1}, Lcom/lostpixels/fieldservice/internal/ministry/Territory;->addStreet(Lio/realm/Realm;Lcom/lostpixels/fieldservice/internal/ministry/Street;I)Lcom/lostpixels/fieldservice/internal/ministry/Street;

    .line 185
    iget-object p1, p0, Lcom/lostpixels/fieldservice/activities/territory/dialogs/PhoneTerritoryDlg$4;->this$0:Lcom/lostpixels/fieldservice/activities/territory/dialogs/PhoneTerritoryDlg;

    invoke-static {p1}, Lcom/lostpixels/fieldservice/activities/territory/dialogs/PhoneTerritoryDlg;->-$$Nest$msetResult(Lcom/lostpixels/fieldservice/activities/territory/dialogs/PhoneTerritoryDlg;)V

    .line 186
    iget-object p1, p0, Lcom/lostpixels/fieldservice/activities/territory/dialogs/PhoneTerritoryDlg$4;->this$0:Lcom/lostpixels/fieldservice/activities/territory/dialogs/PhoneTerritoryDlg;

    invoke-virtual {p1}, Landroid/app/Activity;->finish()V

    return-void
.end method
