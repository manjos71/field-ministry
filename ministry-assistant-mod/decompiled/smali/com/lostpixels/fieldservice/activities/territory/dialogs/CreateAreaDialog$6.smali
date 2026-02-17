.class Lcom/lostpixels/fieldservice/activities/territory/dialogs/CreateAreaDialog$6;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/lostpixels/fieldservice/activities/territory/dialogs/CreateAreaDialog;->onKeyDown(ILandroid/view/KeyEvent;)Z
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/lostpixels/fieldservice/activities/territory/dialogs/CreateAreaDialog;


# direct methods
.method constructor <init>(Lcom/lostpixels/fieldservice/activities/territory/dialogs/CreateAreaDialog;)V
    .locals 0

    .line 241
    iput-object p1, p0, Lcom/lostpixels/fieldservice/activities/territory/dialogs/CreateAreaDialog$6;->this$0:Lcom/lostpixels/fieldservice/activities/territory/dialogs/CreateAreaDialog;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 4

    .line 243
    new-instance p1, Lcom/lostpixels/fieldservice/internal/ministry/Street;

    invoke-direct {p1}, Lcom/lostpixels/fieldservice/internal/ministry/Street;-><init>()V

    .line 244
    invoke-virtual {p1}, Lcom/lostpixels/fieldservice/internal/ministry/Street;->setToArea()V

    .line 245
    iget-object p2, p0, Lcom/lostpixels/fieldservice/activities/territory/dialogs/CreateAreaDialog$6;->this$0:Lcom/lostpixels/fieldservice/activities/territory/dialogs/CreateAreaDialog;

    invoke-static {p2}, Lcom/lostpixels/fieldservice/activities/territory/dialogs/CreateAreaDialog;->-$$Nest$fgetmedtAreaName(Lcom/lostpixels/fieldservice/activities/territory/dialogs/CreateAreaDialog;)Landroid/widget/AutoCompleteTextView;

    move-result-object p2

    invoke-virtual {p2}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object p2

    invoke-virtual {p2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Lcom/lostpixels/fieldservice/internal/ministry/Street;->setStreetName(Ljava/lang/String;)V

    .line 246
    new-instance p2, Lcom/lostpixels/fieldservice/internal/ministry/Address;

    iget-object v0, p0, Lcom/lostpixels/fieldservice/activities/territory/dialogs/CreateAreaDialog$6;->this$0:Lcom/lostpixels/fieldservice/activities/territory/dialogs/CreateAreaDialog;

    invoke-static {v0}, Lcom/lostpixels/fieldservice/activities/territory/dialogs/CreateAreaDialog;->-$$Nest$fgetmedtAreaNumber(Lcom/lostpixels/fieldservice/activities/territory/dialogs/CreateAreaDialog;)Landroid/widget/EditText;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x2

    invoke-direct {p2, v0, v1}, Lcom/lostpixels/fieldservice/internal/ministry/Address;-><init>(Ljava/lang/String;I)V

    .line 247
    invoke-virtual {p2}, Lcom/lostpixels/fieldservice/internal/ministry/Address;->getVisits()Ljava/util/List;

    move-result-object v0

    const/4 v2, 0x0

    invoke-interface {v0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/lostpixels/fieldservice/internal/ministry/Visit;

    iget-object v3, p0, Lcom/lostpixels/fieldservice/activities/territory/dialogs/CreateAreaDialog$6;->this$0:Lcom/lostpixels/fieldservice/activities/territory/dialogs/CreateAreaDialog;

    invoke-static {v3}, Lcom/lostpixels/fieldservice/activities/territory/dialogs/CreateAreaDialog;->-$$Nest$fgetmPosition(Lcom/lostpixels/fieldservice/activities/territory/dialogs/CreateAreaDialog;)Lcom/google/android/gms/maps/model/LatLng;

    move-result-object v3

    invoke-virtual {v0, v3}, Lcom/lostpixels/fieldservice/internal/ministry/Visit;->setPosition(Lcom/google/android/gms/maps/model/LatLng;)V

    .line 248
    invoke-virtual {p1, p2}, Lcom/lostpixels/fieldservice/internal/ministry/Street;->addAddress(Lcom/lostpixels/fieldservice/internal/ministry/Address;)V

    .line 249
    iget-object v0, p0, Lcom/lostpixels/fieldservice/activities/territory/dialogs/CreateAreaDialog$6;->this$0:Lcom/lostpixels/fieldservice/activities/territory/dialogs/CreateAreaDialog;

    invoke-static {v0}, Lcom/lostpixels/fieldservice/activities/territory/dialogs/CreateAreaDialog;->-$$Nest$fgetmTerritory(Lcom/lostpixels/fieldservice/activities/territory/dialogs/CreateAreaDialog;)Lcom/lostpixels/fieldservice/internal/ministry/Territory;

    move-result-object v0

    invoke-static {v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v3, p0, Lcom/lostpixels/fieldservice/activities/territory/dialogs/CreateAreaDialog$6;->this$0:Lcom/lostpixels/fieldservice/activities/territory/dialogs/CreateAreaDialog;

    invoke-static {v3}, Lcom/lostpixels/fieldservice/activities/territory/dialogs/CreateAreaDialog;->access$400(Lcom/lostpixels/fieldservice/activities/territory/dialogs/CreateAreaDialog;)Lio/realm/Realm;

    move-result-object v3

    invoke-virtual {v0, v3, p1, v1}, Lcom/lostpixels/fieldservice/internal/ministry/Territory;->addStreet(Lio/realm/Realm;Lcom/lostpixels/fieldservice/internal/ministry/Street;I)Lcom/lostpixels/fieldservice/internal/ministry/Street;

    .line 250
    iget-object p1, p0, Lcom/lostpixels/fieldservice/activities/territory/dialogs/CreateAreaDialog$6;->this$0:Lcom/lostpixels/fieldservice/activities/territory/dialogs/CreateAreaDialog;

    const/4 v0, 0x1

    invoke-static {p1, v0}, Lcom/lostpixels/fieldservice/activities/territory/dialogs/CreateAreaDialog;->-$$Nest$fputmbShouldExit(Lcom/lostpixels/fieldservice/activities/territory/dialogs/CreateAreaDialog;Z)V

    .line 251
    iget-object p1, p0, Lcom/lostpixels/fieldservice/activities/territory/dialogs/CreateAreaDialog$6;->this$0:Lcom/lostpixels/fieldservice/activities/territory/dialogs/CreateAreaDialog;

    invoke-static {p1}, Lcom/lostpixels/fieldservice/activities/territory/dialogs/CreateAreaDialog;->-$$Nest$msetResult(Lcom/lostpixels/fieldservice/activities/territory/dialogs/CreateAreaDialog;)V

    .line 252
    iget-object p1, p0, Lcom/lostpixels/fieldservice/activities/territory/dialogs/CreateAreaDialog$6;->this$0:Lcom/lostpixels/fieldservice/activities/territory/dialogs/CreateAreaDialog;

    invoke-static {p1}, Lcom/lostpixels/fieldservice/activities/territory/dialogs/CreateAreaDialog;->-$$Nest$fgetmTagCheck(Lcom/lostpixels/fieldservice/activities/territory/dialogs/CreateAreaDialog;)Landroid/widget/CheckBox;

    move-result-object p1

    invoke-virtual {p1}, Landroid/widget/CompoundButton;->isChecked()Z

    move-result p1

    if-eqz p1, :cond_0

    .line 253
    iget-object p1, p0, Lcom/lostpixels/fieldservice/activities/territory/dialogs/CreateAreaDialog$6;->this$0:Lcom/lostpixels/fieldservice/activities/territory/dialogs/CreateAreaDialog;

    invoke-virtual {p2}, Lcom/lostpixels/fieldservice/internal/ministry/Address;->getVisits()Ljava/util/List;

    move-result-object p2

    invoke-interface {p2, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lcom/lostpixels/fieldservice/internal/ministry/Visit;

    iput-object p2, p1, Lcom/lostpixels/fieldservice/activities/territory/dialogs/CreateAreaDialog;->mVisitToUpdate:Lcom/lostpixels/fieldservice/internal/ministry/Visit;

    .line 254
    iget-object p1, p0, Lcom/lostpixels/fieldservice/activities/territory/dialogs/CreateAreaDialog$6;->this$0:Lcom/lostpixels/fieldservice/activities/territory/dialogs/CreateAreaDialog;

    invoke-static {p1}, Lcom/lostpixels/fieldservice/activities/territory/dialogs/CreateAreaDialogPermissionsDispatcher;->updatePositionWithPermissionCheck(Lcom/lostpixels/fieldservice/activities/territory/dialogs/CreateAreaDialog;)V

    return-void

    .line 256
    :cond_0
    iget-object p1, p0, Lcom/lostpixels/fieldservice/activities/territory/dialogs/CreateAreaDialog$6;->this$0:Lcom/lostpixels/fieldservice/activities/territory/dialogs/CreateAreaDialog;

    invoke-virtual {p1}, Landroid/app/Activity;->finish()V

    return-void
.end method
