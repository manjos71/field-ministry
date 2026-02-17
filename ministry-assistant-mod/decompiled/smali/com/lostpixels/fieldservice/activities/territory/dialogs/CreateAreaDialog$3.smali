.class Lcom/lostpixels/fieldservice/activities/territory/dialogs/CreateAreaDialog$3;
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

    .line 170
    iput-object p1, p0, Lcom/lostpixels/fieldservice/activities/territory/dialogs/CreateAreaDialog$3;->this$0:Lcom/lostpixels/fieldservice/activities/territory/dialogs/CreateAreaDialog;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 5

    .line 174
    iget-object p1, p0, Lcom/lostpixels/fieldservice/activities/territory/dialogs/CreateAreaDialog$3;->this$0:Lcom/lostpixels/fieldservice/activities/territory/dialogs/CreateAreaDialog;

    invoke-static {p1}, Lcom/lostpixels/fieldservice/activities/territory/dialogs/CreateAreaDialog;->-$$Nest$msetResult(Lcom/lostpixels/fieldservice/activities/territory/dialogs/CreateAreaDialog;)V

    .line 176
    iget-object p1, p0, Lcom/lostpixels/fieldservice/activities/territory/dialogs/CreateAreaDialog$3;->this$0:Lcom/lostpixels/fieldservice/activities/territory/dialogs/CreateAreaDialog;

    invoke-static {p1}, Lcom/lostpixels/fieldservice/activities/territory/dialogs/CreateAreaDialog;->-$$Nest$fgetmedtAreaNumber(Lcom/lostpixels/fieldservice/activities/territory/dialogs/CreateAreaDialog;)Landroid/widget/EditText;

    move-result-object p1

    invoke-virtual {p1}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/String;->isEmpty()Z

    move-result p1

    if-nez p1, :cond_0

    .line 177
    new-instance p1, Lcom/lostpixels/fieldservice/internal/ministry/Street;

    invoke-direct {p1}, Lcom/lostpixels/fieldservice/internal/ministry/Street;-><init>()V

    .line 178
    invoke-virtual {p1}, Lcom/lostpixels/fieldservice/internal/ministry/Street;->setToArea()V

    .line 179
    iget-object v0, p0, Lcom/lostpixels/fieldservice/activities/territory/dialogs/CreateAreaDialog$3;->this$0:Lcom/lostpixels/fieldservice/activities/territory/dialogs/CreateAreaDialog;

    invoke-static {v0}, Lcom/lostpixels/fieldservice/activities/territory/dialogs/CreateAreaDialog;->-$$Nest$fgetmedtAreaName(Lcom/lostpixels/fieldservice/activities/territory/dialogs/CreateAreaDialog;)Landroid/widget/AutoCompleteTextView;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/lostpixels/fieldservice/internal/ministry/Street;->setStreetName(Ljava/lang/String;)V

    .line 180
    new-instance v0, Lcom/lostpixels/fieldservice/internal/ministry/Address;

    iget-object v1, p0, Lcom/lostpixels/fieldservice/activities/territory/dialogs/CreateAreaDialog$3;->this$0:Lcom/lostpixels/fieldservice/activities/territory/dialogs/CreateAreaDialog;

    invoke-static {v1}, Lcom/lostpixels/fieldservice/activities/territory/dialogs/CreateAreaDialog;->-$$Nest$fgetmedtAreaNumber(Lcom/lostpixels/fieldservice/activities/territory/dialogs/CreateAreaDialog;)Landroid/widget/EditText;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x2

    invoke-direct {v0, v1, v2}, Lcom/lostpixels/fieldservice/internal/ministry/Address;-><init>(Ljava/lang/String;I)V

    .line 181
    invoke-virtual {v0}, Lcom/lostpixels/fieldservice/internal/ministry/Address;->getVisits()Ljava/util/List;

    move-result-object v1

    const/4 v3, 0x0

    invoke-interface {v1, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/lostpixels/fieldservice/internal/ministry/Visit;

    iget-object v4, p0, Lcom/lostpixels/fieldservice/activities/territory/dialogs/CreateAreaDialog$3;->this$0:Lcom/lostpixels/fieldservice/activities/territory/dialogs/CreateAreaDialog;

    invoke-static {v4}, Lcom/lostpixels/fieldservice/activities/territory/dialogs/CreateAreaDialog;->-$$Nest$fgetmPosition(Lcom/lostpixels/fieldservice/activities/territory/dialogs/CreateAreaDialog;)Lcom/google/android/gms/maps/model/LatLng;

    move-result-object v4

    invoke-virtual {v1, v4}, Lcom/lostpixels/fieldservice/internal/ministry/Visit;->setPosition(Lcom/google/android/gms/maps/model/LatLng;)V

    .line 182
    invoke-virtual {p1, v0}, Lcom/lostpixels/fieldservice/internal/ministry/Street;->addAddress(Lcom/lostpixels/fieldservice/internal/ministry/Address;)V

    .line 183
    iget-object v1, p0, Lcom/lostpixels/fieldservice/activities/territory/dialogs/CreateAreaDialog$3;->this$0:Lcom/lostpixels/fieldservice/activities/territory/dialogs/CreateAreaDialog;

    invoke-static {v1}, Lcom/lostpixels/fieldservice/activities/territory/dialogs/CreateAreaDialog;->-$$Nest$fgetmTerritory(Lcom/lostpixels/fieldservice/activities/territory/dialogs/CreateAreaDialog;)Lcom/lostpixels/fieldservice/internal/ministry/Territory;

    move-result-object v1

    invoke-static {v1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v4, p0, Lcom/lostpixels/fieldservice/activities/territory/dialogs/CreateAreaDialog$3;->this$0:Lcom/lostpixels/fieldservice/activities/territory/dialogs/CreateAreaDialog;

    invoke-static {v4}, Lcom/lostpixels/fieldservice/activities/territory/dialogs/CreateAreaDialog;->access$300(Lcom/lostpixels/fieldservice/activities/territory/dialogs/CreateAreaDialog;)Lio/realm/Realm;

    move-result-object v4

    invoke-virtual {v1, v4, p1, v2}, Lcom/lostpixels/fieldservice/internal/ministry/Territory;->addStreet(Lio/realm/Realm;Lcom/lostpixels/fieldservice/internal/ministry/Street;I)Lcom/lostpixels/fieldservice/internal/ministry/Street;

    .line 184
    iget-object p1, p0, Lcom/lostpixels/fieldservice/activities/territory/dialogs/CreateAreaDialog$3;->this$0:Lcom/lostpixels/fieldservice/activities/territory/dialogs/CreateAreaDialog;

    const/4 v1, 0x1

    invoke-static {p1, v1}, Lcom/lostpixels/fieldservice/activities/territory/dialogs/CreateAreaDialog;->-$$Nest$fputmbShouldExit(Lcom/lostpixels/fieldservice/activities/territory/dialogs/CreateAreaDialog;Z)V

    .line 185
    iget-object p1, p0, Lcom/lostpixels/fieldservice/activities/territory/dialogs/CreateAreaDialog$3;->this$0:Lcom/lostpixels/fieldservice/activities/territory/dialogs/CreateAreaDialog;

    invoke-static {p1}, Lcom/lostpixels/fieldservice/activities/territory/dialogs/CreateAreaDialog;->-$$Nest$fgetmTagCheck(Lcom/lostpixels/fieldservice/activities/territory/dialogs/CreateAreaDialog;)Landroid/widget/CheckBox;

    move-result-object p1

    invoke-virtual {p1}, Landroid/widget/CompoundButton;->isChecked()Z

    move-result p1

    if-eqz p1, :cond_1

    .line 186
    iget-object p1, p0, Lcom/lostpixels/fieldservice/activities/territory/dialogs/CreateAreaDialog$3;->this$0:Lcom/lostpixels/fieldservice/activities/territory/dialogs/CreateAreaDialog;

    invoke-virtual {v0}, Lcom/lostpixels/fieldservice/internal/ministry/Address;->getVisits()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/lostpixels/fieldservice/internal/ministry/Visit;

    iput-object v0, p1, Lcom/lostpixels/fieldservice/activities/territory/dialogs/CreateAreaDialog;->mVisitToUpdate:Lcom/lostpixels/fieldservice/internal/ministry/Visit;

    .line 187
    iget-object p1, p0, Lcom/lostpixels/fieldservice/activities/territory/dialogs/CreateAreaDialog$3;->this$0:Lcom/lostpixels/fieldservice/activities/territory/dialogs/CreateAreaDialog;

    invoke-static {p1}, Lcom/lostpixels/fieldservice/activities/territory/dialogs/CreateAreaDialogPermissionsDispatcher;->updatePositionWithPermissionCheck(Lcom/lostpixels/fieldservice/activities/territory/dialogs/CreateAreaDialog;)V

    goto :goto_0

    .line 189
    :cond_0
    iget-object p1, p0, Lcom/lostpixels/fieldservice/activities/territory/dialogs/CreateAreaDialog$3;->this$0:Lcom/lostpixels/fieldservice/activities/territory/dialogs/CreateAreaDialog;

    invoke-static {p1}, Lcom/lostpixels/fieldservice/activities/territory/dialogs/CreateAreaDialog;->-$$Nest$fgetmTagCheck(Lcom/lostpixels/fieldservice/activities/territory/dialogs/CreateAreaDialog;)Landroid/widget/CheckBox;

    move-result-object p1

    invoke-virtual {p1}, Landroid/widget/CompoundButton;->isChecked()Z

    move-result p1

    if-eqz p1, :cond_1

    .line 190
    iget-object p1, p0, Lcom/lostpixels/fieldservice/activities/territory/dialogs/CreateAreaDialog$3;->this$0:Lcom/lostpixels/fieldservice/activities/territory/dialogs/CreateAreaDialog;

    invoke-virtual {p1}, Landroid/app/Activity;->finish()V

    .line 192
    :cond_1
    :goto_0
    iget-object p1, p0, Lcom/lostpixels/fieldservice/activities/territory/dialogs/CreateAreaDialog$3;->this$0:Lcom/lostpixels/fieldservice/activities/territory/dialogs/CreateAreaDialog;

    invoke-static {p1}, Lcom/lostpixels/fieldservice/activities/territory/dialogs/CreateAreaDialog;->-$$Nest$fgetmTagCheck(Lcom/lostpixels/fieldservice/activities/territory/dialogs/CreateAreaDialog;)Landroid/widget/CheckBox;

    move-result-object p1

    invoke-virtual {p1}, Landroid/widget/CompoundButton;->isChecked()Z

    move-result p1

    if-nez p1, :cond_2

    .line 193
    iget-object p1, p0, Lcom/lostpixels/fieldservice/activities/territory/dialogs/CreateAreaDialog$3;->this$0:Lcom/lostpixels/fieldservice/activities/territory/dialogs/CreateAreaDialog;

    invoke-virtual {p1}, Landroid/app/Activity;->finish()V

    :cond_2
    return-void
.end method
