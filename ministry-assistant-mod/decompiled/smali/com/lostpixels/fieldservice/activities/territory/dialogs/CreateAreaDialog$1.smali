.class Lcom/lostpixels/fieldservice/activities/territory/dialogs/CreateAreaDialog$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/lostpixels/fieldservice/activities/territory/dialogs/CreateAreaDialog;->onCreate(Landroid/os/Bundle;)V
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

    .line 130
    iput-object p1, p0, Lcom/lostpixels/fieldservice/activities/territory/dialogs/CreateAreaDialog$1;->this$0:Lcom/lostpixels/fieldservice/activities/territory/dialogs/CreateAreaDialog;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 5

    .line 134
    new-instance p1, Lcom/lostpixels/fieldservice/internal/ministry/Street;

    invoke-direct {p1}, Lcom/lostpixels/fieldservice/internal/ministry/Street;-><init>()V

    .line 135
    invoke-virtual {p1}, Lcom/lostpixels/fieldservice/internal/ministry/Street;->setToArea()V

    .line 136
    iget-object v0, p0, Lcom/lostpixels/fieldservice/activities/territory/dialogs/CreateAreaDialog$1;->this$0:Lcom/lostpixels/fieldservice/activities/territory/dialogs/CreateAreaDialog;

    invoke-static {v0}, Lcom/lostpixels/fieldservice/activities/territory/dialogs/CreateAreaDialog;->-$$Nest$fgetmedtAreaName(Lcom/lostpixels/fieldservice/activities/territory/dialogs/CreateAreaDialog;)Landroid/widget/AutoCompleteTextView;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/lostpixels/fieldservice/internal/ministry/Street;->setStreetName(Ljava/lang/String;)V

    .line 137
    new-instance v0, Lcom/lostpixels/fieldservice/internal/ministry/Address;

    iget-object v1, p0, Lcom/lostpixels/fieldservice/activities/territory/dialogs/CreateAreaDialog$1;->this$0:Lcom/lostpixels/fieldservice/activities/territory/dialogs/CreateAreaDialog;

    invoke-static {v1}, Lcom/lostpixels/fieldservice/activities/territory/dialogs/CreateAreaDialog;->-$$Nest$fgetmedtAreaNumber(Lcom/lostpixels/fieldservice/activities/territory/dialogs/CreateAreaDialog;)Landroid/widget/EditText;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x2

    invoke-direct {v0, v1, v2}, Lcom/lostpixels/fieldservice/internal/ministry/Address;-><init>(Ljava/lang/String;I)V

    .line 138
    invoke-virtual {v0}, Lcom/lostpixels/fieldservice/internal/ministry/Address;->getVisits()Ljava/util/List;

    move-result-object v1

    const/4 v3, 0x0

    invoke-interface {v1, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/lostpixels/fieldservice/internal/ministry/Visit;

    iget-object v4, p0, Lcom/lostpixels/fieldservice/activities/territory/dialogs/CreateAreaDialog$1;->this$0:Lcom/lostpixels/fieldservice/activities/territory/dialogs/CreateAreaDialog;

    invoke-static {v4}, Lcom/lostpixels/fieldservice/activities/territory/dialogs/CreateAreaDialog;->-$$Nest$fgetmPosition(Lcom/lostpixels/fieldservice/activities/territory/dialogs/CreateAreaDialog;)Lcom/google/android/gms/maps/model/LatLng;

    move-result-object v4

    invoke-virtual {v1, v4}, Lcom/lostpixels/fieldservice/internal/ministry/Visit;->setPosition(Lcom/google/android/gms/maps/model/LatLng;)V

    .line 139
    invoke-virtual {p1, v0}, Lcom/lostpixels/fieldservice/internal/ministry/Street;->addAddress(Lcom/lostpixels/fieldservice/internal/ministry/Address;)V

    .line 140
    iget-object v1, p0, Lcom/lostpixels/fieldservice/activities/territory/dialogs/CreateAreaDialog$1;->this$0:Lcom/lostpixels/fieldservice/activities/territory/dialogs/CreateAreaDialog;

    invoke-static {v1}, Lcom/lostpixels/fieldservice/activities/territory/dialogs/CreateAreaDialog;->-$$Nest$fgetmTerritory(Lcom/lostpixels/fieldservice/activities/territory/dialogs/CreateAreaDialog;)Lcom/lostpixels/fieldservice/internal/ministry/Territory;

    move-result-object v1

    invoke-static {v1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v4, p0, Lcom/lostpixels/fieldservice/activities/territory/dialogs/CreateAreaDialog$1;->this$0:Lcom/lostpixels/fieldservice/activities/territory/dialogs/CreateAreaDialog;

    invoke-static {v4}, Lcom/lostpixels/fieldservice/activities/territory/dialogs/CreateAreaDialog;->access$000(Lcom/lostpixels/fieldservice/activities/territory/dialogs/CreateAreaDialog;)Lio/realm/Realm;

    move-result-object v4

    invoke-virtual {v1, v4, p1, v2}, Lcom/lostpixels/fieldservice/internal/ministry/Territory;->addStreet(Lio/realm/Realm;Lcom/lostpixels/fieldservice/internal/ministry/Street;I)Lcom/lostpixels/fieldservice/internal/ministry/Street;

    .line 141
    iget-object p1, p0, Lcom/lostpixels/fieldservice/activities/territory/dialogs/CreateAreaDialog$1;->this$0:Lcom/lostpixels/fieldservice/activities/territory/dialogs/CreateAreaDialog;

    invoke-static {p1}, Lcom/lostpixels/fieldservice/activities/territory/dialogs/CreateAreaDialog;->-$$Nest$fgetmedtAreaNumber(Lcom/lostpixels/fieldservice/activities/territory/dialogs/CreateAreaDialog;)Landroid/widget/EditText;

    move-result-object p1

    const-string v1, ""

    invoke-virtual {p1, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 143
    iget-object p1, p0, Lcom/lostpixels/fieldservice/activities/territory/dialogs/CreateAreaDialog$1;->this$0:Lcom/lostpixels/fieldservice/activities/territory/dialogs/CreateAreaDialog;

    invoke-static {p1}, Lcom/lostpixels/fieldservice/activities/territory/dialogs/CreateAreaDialog;->access$200(Lcom/lostpixels/fieldservice/activities/territory/dialogs/CreateAreaDialog;)Lio/realm/Realm;

    move-result-object p1

    invoke-static {p1}, Lcom/lostpixels/fieldservice/internal/ministry/MinistryManager;->getInstance(Lio/realm/Realm;)Lcom/lostpixels/fieldservice/internal/ministry/MinistryManager;

    move-result-object p1

    iget-object v1, p0, Lcom/lostpixels/fieldservice/activities/territory/dialogs/CreateAreaDialog$1;->this$0:Lcom/lostpixels/fieldservice/activities/territory/dialogs/CreateAreaDialog;

    invoke-static {v1}, Lcom/lostpixels/fieldservice/activities/territory/dialogs/CreateAreaDialog;->access$100(Lcom/lostpixels/fieldservice/activities/territory/dialogs/CreateAreaDialog;)Lio/realm/Realm;

    move-result-object v1

    iget-object v2, p0, Lcom/lostpixels/fieldservice/activities/territory/dialogs/CreateAreaDialog$1;->this$0:Lcom/lostpixels/fieldservice/activities/territory/dialogs/CreateAreaDialog;

    invoke-static {v2}, Lcom/lostpixels/fieldservice/activities/territory/dialogs/CreateAreaDialog;->-$$Nest$fgetmTerritory(Lcom/lostpixels/fieldservice/activities/territory/dialogs/CreateAreaDialog;)Lcom/lostpixels/fieldservice/internal/ministry/Territory;

    move-result-object v2

    invoke-virtual {p1, v1, v2}, Lcom/lostpixels/fieldservice/internal/ministry/MinistryManager;->updateTerritory(Lio/realm/Realm;Lcom/lostpixels/fieldservice/internal/ministry/Territory;)V

    .line 144
    iget-object p1, p0, Lcom/lostpixels/fieldservice/activities/territory/dialogs/CreateAreaDialog$1;->this$0:Lcom/lostpixels/fieldservice/activities/territory/dialogs/CreateAreaDialog;

    invoke-static {p1}, Lcom/lostpixels/fieldservice/activities/territory/dialogs/CreateAreaDialog;->-$$Nest$fgetmTagCheck(Lcom/lostpixels/fieldservice/activities/territory/dialogs/CreateAreaDialog;)Landroid/widget/CheckBox;

    move-result-object p1

    invoke-virtual {p1}, Landroid/widget/CompoundButton;->isChecked()Z

    move-result p1

    if-eqz p1, :cond_0

    .line 145
    iget-object p1, p0, Lcom/lostpixels/fieldservice/activities/territory/dialogs/CreateAreaDialog$1;->this$0:Lcom/lostpixels/fieldservice/activities/territory/dialogs/CreateAreaDialog;

    invoke-virtual {v0}, Lcom/lostpixels/fieldservice/internal/ministry/Address;->getVisits()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/lostpixels/fieldservice/internal/ministry/Visit;

    iput-object v0, p1, Lcom/lostpixels/fieldservice/activities/territory/dialogs/CreateAreaDialog;->mVisitToUpdate:Lcom/lostpixels/fieldservice/internal/ministry/Visit;

    .line 146
    iget-object p1, p0, Lcom/lostpixels/fieldservice/activities/territory/dialogs/CreateAreaDialog$1;->this$0:Lcom/lostpixels/fieldservice/activities/territory/dialogs/CreateAreaDialog;

    invoke-static {p1}, Lcom/lostpixels/fieldservice/activities/territory/dialogs/CreateAreaDialogPermissionsDispatcher;->updatePositionWithPermissionCheck(Lcom/lostpixels/fieldservice/activities/territory/dialogs/CreateAreaDialog;)V

    :cond_0
    return-void
.end method
