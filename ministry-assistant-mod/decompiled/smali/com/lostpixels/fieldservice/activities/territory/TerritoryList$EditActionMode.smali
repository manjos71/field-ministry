.class final Lcom/lostpixels/fieldservice/activities/territory/TerritoryList$EditActionMode;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroidx/appcompat/view/ActionMode$Callback;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/lostpixels/fieldservice/activities/territory/TerritoryList;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x12
    name = "EditActionMode"
.end annotation


# instance fields
.field private mapListMenuItem:Landroid/view/MenuItem;

.field saveChanges:Z

.field final synthetic this$0:Lcom/lostpixels/fieldservice/activities/territory/TerritoryList;


# direct methods
.method static bridge synthetic -$$Nest$msaveTerritory(Lcom/lostpixels/fieldservice/activities/territory/TerritoryList$EditActionMode;)V
    .locals 0

    .line 0
    invoke-direct {p0}, Lcom/lostpixels/fieldservice/activities/territory/TerritoryList$EditActionMode;->saveTerritory()V

    return-void
.end method

.method private constructor <init>(Lcom/lostpixels/fieldservice/activities/territory/TerritoryList;)V
    .locals 0

    .line 4257
    iput-object p1, p0, Lcom/lostpixels/fieldservice/activities/territory/TerritoryList$EditActionMode;->this$0:Lcom/lostpixels/fieldservice/activities/territory/TerritoryList;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 p1, 0x0

    .line 4258
    iput-boolean p1, p0, Lcom/lostpixels/fieldservice/activities/territory/TerritoryList$EditActionMode;->saveChanges:Z

    return-void
.end method

.method synthetic constructor <init>(Lcom/lostpixels/fieldservice/activities/territory/TerritoryList;Lcom/lostpixels/fieldservice/activities/territory/TerritoryList-IA;)V
    .locals 0

    .line 0
    invoke-direct {p0, p1}, Lcom/lostpixels/fieldservice/activities/territory/TerritoryList$EditActionMode;-><init>(Lcom/lostpixels/fieldservice/activities/territory/TerritoryList;)V

    return-void
.end method

.method private saveTerritory()V
    .locals 3

    .line 4335
    iget-object v0, p0, Lcom/lostpixels/fieldservice/activities/territory/TerritoryList$EditActionMode;->this$0:Lcom/lostpixels/fieldservice/activities/territory/TerritoryList;

    invoke-static {v0}, Lcom/lostpixels/fieldservice/activities/territory/TerritoryList;->access$4800(Lcom/lostpixels/fieldservice/activities/territory/TerritoryList;)Lio/realm/Realm;

    move-result-object v0

    invoke-static {v0}, Lcom/lostpixels/fieldservice/internal/ministry/MinistryManager;->getInstance(Lio/realm/Realm;)Lcom/lostpixels/fieldservice/internal/ministry/MinistryManager;

    move-result-object v0

    iget-object v1, p0, Lcom/lostpixels/fieldservice/activities/territory/TerritoryList$EditActionMode;->this$0:Lcom/lostpixels/fieldservice/activities/territory/TerritoryList;

    invoke-static {v1}, Lcom/lostpixels/fieldservice/activities/territory/TerritoryList;->access$4700(Lcom/lostpixels/fieldservice/activities/territory/TerritoryList;)Lio/realm/Realm;

    move-result-object v1

    iget-object v2, p0, Lcom/lostpixels/fieldservice/activities/territory/TerritoryList$EditActionMode;->this$0:Lcom/lostpixels/fieldservice/activities/territory/TerritoryList;

    invoke-static {v2}, Lcom/lostpixels/fieldservice/activities/territory/TerritoryList;->-$$Nest$fgetmTerritory(Lcom/lostpixels/fieldservice/activities/territory/TerritoryList;)Lcom/lostpixels/fieldservice/internal/ministry/Territory;

    move-result-object v2

    invoke-static {v2}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    invoke-virtual {v0, v1, v2}, Lcom/lostpixels/fieldservice/internal/ministry/MinistryManager;->updateTerritory(Lio/realm/Realm;Lcom/lostpixels/fieldservice/internal/ministry/Territory;)V

    .line 4337
    iget-object v0, p0, Lcom/lostpixels/fieldservice/activities/territory/TerritoryList$EditActionMode;->this$0:Lcom/lostpixels/fieldservice/activities/territory/TerritoryList;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/lostpixels/fieldservice/activities/territory/TerritoryList;->-$$Nest$fputmTemporaryTerritory(Lcom/lostpixels/fieldservice/activities/territory/TerritoryList;Lcom/lostpixels/fieldservice/internal/ministry/Territory;)V

    .line 4338
    iget-object v0, p0, Lcom/lostpixels/fieldservice/activities/territory/TerritoryList$EditActionMode;->this$0:Lcom/lostpixels/fieldservice/activities/territory/TerritoryList;

    invoke-static {v0, v1}, Lcom/lostpixels/fieldservice/activities/territory/TerritoryList;->-$$Nest$fputeditActionMode(Lcom/lostpixels/fieldservice/activities/territory/TerritoryList;Landroidx/appcompat/view/ActionMode;)V

    .line 4340
    iget-object v0, p0, Lcom/lostpixels/fieldservice/activities/territory/TerritoryList$EditActionMode;->this$0:Lcom/lostpixels/fieldservice/activities/territory/TerritoryList;

    invoke-static {v0}, Lcom/lostpixels/fieldservice/activities/territory/TerritoryList;->-$$Nest$fgetmListFragment(Lcom/lostpixels/fieldservice/activities/territory/TerritoryList;)Lcom/lostpixels/fieldservice/activities/territory/TerritoryListFragment;

    move-result-object v0

    invoke-static {v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v1, p0, Lcom/lostpixels/fieldservice/activities/territory/TerritoryList$EditActionMode;->this$0:Lcom/lostpixels/fieldservice/activities/territory/TerritoryList;

    invoke-static {v1}, Lcom/lostpixels/fieldservice/activities/territory/TerritoryList;->-$$Nest$fgetmTerritory(Lcom/lostpixels/fieldservice/activities/territory/TerritoryList;)Lcom/lostpixels/fieldservice/internal/ministry/Territory;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/lostpixels/fieldservice/activities/territory/TerritoryListFragment;->setTerritory(Lcom/lostpixels/fieldservice/internal/ministry/Territory;)V

    .line 4341
    iget-object v0, p0, Lcom/lostpixels/fieldservice/activities/territory/TerritoryList$EditActionMode;->this$0:Lcom/lostpixels/fieldservice/activities/territory/TerritoryList;

    invoke-static {v0}, Lcom/lostpixels/fieldservice/activities/territory/TerritoryList;->-$$Nest$fgetmMapFragment(Lcom/lostpixels/fieldservice/activities/territory/TerritoryList;)Lcom/lostpixels/fieldservice/activities/territory/TerritoryListMapFragment;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 4342
    iget-object v0, p0, Lcom/lostpixels/fieldservice/activities/territory/TerritoryList$EditActionMode;->this$0:Lcom/lostpixels/fieldservice/activities/territory/TerritoryList;

    invoke-static {v0}, Lcom/lostpixels/fieldservice/activities/territory/TerritoryList;->-$$Nest$fgetmMapFragment(Lcom/lostpixels/fieldservice/activities/territory/TerritoryList;)Lcom/lostpixels/fieldservice/activities/territory/TerritoryListMapFragment;

    move-result-object v0

    iget-object v1, p0, Lcom/lostpixels/fieldservice/activities/territory/TerritoryList$EditActionMode;->this$0:Lcom/lostpixels/fieldservice/activities/territory/TerritoryList;

    invoke-static {v1}, Lcom/lostpixels/fieldservice/activities/territory/TerritoryList;->-$$Nest$fgetmTerritory(Lcom/lostpixels/fieldservice/activities/territory/TerritoryList;)Lcom/lostpixels/fieldservice/internal/ministry/Territory;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/lostpixels/fieldservice/activities/territory/TerritoryListMapFragment;->setTerritory(Lcom/lostpixels/fieldservice/internal/ministry/Territory;)V

    .line 4344
    :cond_0
    iget-object v0, p0, Lcom/lostpixels/fieldservice/activities/territory/TerritoryList$EditActionMode;->this$0:Lcom/lostpixels/fieldservice/activities/territory/TerritoryList;

    invoke-static {v0}, Lcom/lostpixels/fieldservice/activities/territory/TerritoryList;->-$$Nest$fgetmListFragment(Lcom/lostpixels/fieldservice/activities/territory/TerritoryList;)Lcom/lostpixels/fieldservice/activities/territory/TerritoryListFragment;

    move-result-object v0

    const/4 v1, 0x0

    if-eqz v0, :cond_1

    .line 4345
    iget-object v0, p0, Lcom/lostpixels/fieldservice/activities/territory/TerritoryList$EditActionMode;->this$0:Lcom/lostpixels/fieldservice/activities/territory/TerritoryList;

    invoke-static {v0}, Lcom/lostpixels/fieldservice/activities/territory/TerritoryList;->-$$Nest$fgetmListFragment(Lcom/lostpixels/fieldservice/activities/territory/TerritoryList;)Lcom/lostpixels/fieldservice/activities/territory/TerritoryListFragment;

    move-result-object v0

    invoke-virtual {v0, v1}, Lcom/lostpixels/fieldservice/activities/territory/TerritoryListFragment;->setEditMode(Z)V

    .line 4346
    iget-object v0, p0, Lcom/lostpixels/fieldservice/activities/territory/TerritoryList$EditActionMode;->this$0:Lcom/lostpixels/fieldservice/activities/territory/TerritoryList;

    invoke-static {v0}, Lcom/lostpixels/fieldservice/activities/territory/TerritoryList;->-$$Nest$fgetmListFragment(Lcom/lostpixels/fieldservice/activities/territory/TerritoryList;)Lcom/lostpixels/fieldservice/activities/territory/TerritoryListFragment;

    move-result-object v0

    const/4 v2, 0x1

    invoke-virtual {v0, v2}, Lcom/lostpixels/fieldservice/activities/territory/TerritoryListFragment;->update(Z)V

    .line 4349
    :cond_1
    iget-object v0, p0, Lcom/lostpixels/fieldservice/activities/territory/TerritoryList$EditActionMode;->this$0:Lcom/lostpixels/fieldservice/activities/territory/TerritoryList;

    invoke-static {v0}, Lcom/lostpixels/fieldservice/activities/territory/TerritoryList;->-$$Nest$fgetmMapFragment(Lcom/lostpixels/fieldservice/activities/territory/TerritoryList;)Lcom/lostpixels/fieldservice/activities/territory/TerritoryListMapFragment;

    move-result-object v0

    if-eqz v0, :cond_2

    .line 4350
    iget-object v0, p0, Lcom/lostpixels/fieldservice/activities/territory/TerritoryList$EditActionMode;->this$0:Lcom/lostpixels/fieldservice/activities/territory/TerritoryList;

    invoke-static {v0}, Lcom/lostpixels/fieldservice/activities/territory/TerritoryList;->-$$Nest$fgetmMapFragment(Lcom/lostpixels/fieldservice/activities/territory/TerritoryList;)Lcom/lostpixels/fieldservice/activities/territory/TerritoryListMapFragment;

    move-result-object v0

    invoke-virtual {v0, v1}, Lcom/lostpixels/fieldservice/activities/territory/TerritoryListMapFragment;->setEditMode(Z)V

    .line 4351
    iget-object v0, p0, Lcom/lostpixels/fieldservice/activities/territory/TerritoryList$EditActionMode;->this$0:Lcom/lostpixels/fieldservice/activities/territory/TerritoryList;

    invoke-static {v0}, Lcom/lostpixels/fieldservice/activities/territory/TerritoryList;->-$$Nest$fgetmMapFragment(Lcom/lostpixels/fieldservice/activities/territory/TerritoryList;)Lcom/lostpixels/fieldservice/activities/territory/TerritoryListMapFragment;

    move-result-object v0

    invoke-virtual {v0}, Lcom/lostpixels/fieldservice/activities/territory/TerritoryListMapFragment;->update()V

    .line 4354
    :cond_2
    iget-object v0, p0, Lcom/lostpixels/fieldservice/activities/territory/TerritoryList$EditActionMode;->this$0:Lcom/lostpixels/fieldservice/activities/territory/TerritoryList;

    invoke-static {v0}, Lcom/lostpixels/fieldservice/activities/territory/TerritoryList;->-$$Nest$mupdateStatistics(Lcom/lostpixels/fieldservice/activities/territory/TerritoryList;)V

    .line 4356
    iget-object v0, p0, Lcom/lostpixels/fieldservice/activities/territory/TerritoryList$EditActionMode;->this$0:Lcom/lostpixels/fieldservice/activities/territory/TerritoryList;

    invoke-virtual {v0}, Landroidx/appcompat/app/AppCompatActivity;->supportInvalidateOptionsMenu()V

    return-void
.end method


# virtual methods
.method public onActionItemClicked(Landroidx/appcompat/view/ActionMode;Landroid/view/MenuItem;)Z
    .locals 1

    .line 4285
    invoke-interface {p2}, Landroid/view/MenuItem;->getItemId()I

    move-result p1

    const/4 v0, 0x1

    if-nez p1, :cond_0

    .line 4286
    iput-boolean v0, p0, Lcom/lostpixels/fieldservice/activities/territory/TerritoryList$EditActionMode;->saveChanges:Z

    .line 4287
    iget-object p1, p0, Lcom/lostpixels/fieldservice/activities/territory/TerritoryList$EditActionMode;->this$0:Lcom/lostpixels/fieldservice/activities/territory/TerritoryList;

    invoke-static {p1}, Lcom/lostpixels/fieldservice/activities/territory/TerritoryList;->-$$Nest$fgeteditActionMode(Lcom/lostpixels/fieldservice/activities/territory/TerritoryList;)Landroidx/appcompat/view/ActionMode;

    move-result-object p1

    if-eqz p1, :cond_2

    .line 4288
    iget-object p1, p0, Lcom/lostpixels/fieldservice/activities/territory/TerritoryList$EditActionMode;->this$0:Lcom/lostpixels/fieldservice/activities/territory/TerritoryList;

    invoke-static {p1}, Lcom/lostpixels/fieldservice/activities/territory/TerritoryList;->-$$Nest$fgeteditActionMode(Lcom/lostpixels/fieldservice/activities/territory/TerritoryList;)Landroidx/appcompat/view/ActionMode;

    move-result-object p1

    invoke-virtual {p1}, Landroidx/appcompat/view/ActionMode;->finish()V

    goto :goto_0

    .line 4289
    :cond_0
    invoke-interface {p2}, Landroid/view/MenuItem;->getItemId()I

    move-result p1

    const/16 p2, 0xb

    if-ne p1, p2, :cond_2

    .line 4290
    iget-object p1, p0, Lcom/lostpixels/fieldservice/activities/territory/TerritoryList$EditActionMode;->this$0:Lcom/lostpixels/fieldservice/activities/territory/TerritoryList;

    invoke-virtual {p1}, Lcom/lostpixels/fieldservice/activities/territory/TerritoryList;->isMapView()Z

    move-result p1

    if-eqz p1, :cond_1

    .line 4291
    iget-object p1, p0, Lcom/lostpixels/fieldservice/activities/territory/TerritoryList$EditActionMode;->mapListMenuItem:Landroid/view/MenuItem;

    const p2, 0x7f080204

    invoke-interface {p1, p2}, Landroid/view/MenuItem;->setIcon(I)Landroid/view/MenuItem;

    .line 4292
    iget-object p1, p0, Lcom/lostpixels/fieldservice/activities/territory/TerritoryList$EditActionMode;->this$0:Lcom/lostpixels/fieldservice/activities/territory/TerritoryList;

    invoke-virtual {p1}, Lcom/lostpixels/fieldservice/activities/territory/TerritoryList;->showList()V

    goto :goto_0

    .line 4294
    :cond_1
    iget-object p1, p0, Lcom/lostpixels/fieldservice/activities/territory/TerritoryList$EditActionMode;->mapListMenuItem:Landroid/view/MenuItem;

    const p2, 0x7f0801ed

    invoke-interface {p1, p2}, Landroid/view/MenuItem;->setIcon(I)Landroid/view/MenuItem;

    .line 4295
    iget-object p1, p0, Lcom/lostpixels/fieldservice/activities/territory/TerritoryList$EditActionMode;->this$0:Lcom/lostpixels/fieldservice/activities/territory/TerritoryList;

    invoke-virtual {p1}, Lcom/lostpixels/fieldservice/activities/territory/TerritoryList;->showMap()V

    :cond_2
    :goto_0
    return v0
.end method

.method public onCreateActionMode(Landroidx/appcompat/view/ActionMode;Landroid/view/Menu;)Z
    .locals 5

    .line 4263
    iget-object p1, p0, Lcom/lostpixels/fieldservice/activities/territory/TerritoryList$EditActionMode;->this$0:Lcom/lostpixels/fieldservice/activities/territory/TerritoryList;

    const v0, 0x7f1203ce

    invoke-virtual {p1, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p1

    const/4 v0, 0x0

    const/4 v1, 0x1

    invoke-interface {p2, v0, v0, v1, p1}, Landroid/view/Menu;->add(IIILjava/lang/CharSequence;)Landroid/view/MenuItem;

    move-result-object p1

    const/4 v2, 0x2

    invoke-static {p1, v2}, Landroidx/core/view/MenuItemCompat;->setShowAsAction(Landroid/view/MenuItem;I)V

    .line 4266
    iget-object p1, p0, Lcom/lostpixels/fieldservice/activities/territory/TerritoryList$EditActionMode;->this$0:Lcom/lostpixels/fieldservice/activities/territory/TerritoryList;

    invoke-virtual {p1}, Lcom/lostpixels/fieldservice/activities/territory/TerritoryList;->isMapView()Z

    move-result p1

    const v3, 0x7f1204e9

    const/16 v4, 0xb

    if-eqz p1, :cond_0

    .line 4267
    invoke-interface {p2, v0, v4, v0, v3}, Landroid/view/Menu;->add(IIII)Landroid/view/MenuItem;

    move-result-object p1

    const p2, 0x7f0801ed

    invoke-interface {p1, p2}, Landroid/view/MenuItem;->setIcon(I)Landroid/view/MenuItem;

    move-result-object p1

    iput-object p1, p0, Lcom/lostpixels/fieldservice/activities/territory/TerritoryList$EditActionMode;->mapListMenuItem:Landroid/view/MenuItem;

    goto :goto_0

    .line 4269
    :cond_0
    invoke-interface {p2, v0, v4, v0, v3}, Landroid/view/Menu;->add(IIII)Landroid/view/MenuItem;

    move-result-object p1

    const p2, 0x7f080204

    invoke-interface {p1, p2}, Landroid/view/MenuItem;->setIcon(I)Landroid/view/MenuItem;

    move-result-object p1

    iput-object p1, p0, Lcom/lostpixels/fieldservice/activities/territory/TerritoryList$EditActionMode;->mapListMenuItem:Landroid/view/MenuItem;

    .line 4270
    :goto_0
    iget-object p1, p0, Lcom/lostpixels/fieldservice/activities/territory/TerritoryList$EditActionMode;->mapListMenuItem:Landroid/view/MenuItem;

    invoke-static {p1, v2}, Landroidx/core/view/MenuItemCompat;->setShowAsAction(Landroid/view/MenuItem;I)V

    return v1
.end method

.method public onDestroyActionMode(Landroidx/appcompat/view/ActionMode;)V
    .locals 3

    .line 4304
    iget-boolean p1, p0, Lcom/lostpixels/fieldservice/activities/territory/TerritoryList$EditActionMode;->saveChanges:Z

    if-nez p1, :cond_0

    iget-object p1, p0, Lcom/lostpixels/fieldservice/activities/territory/TerritoryList$EditActionMode;->this$0:Lcom/lostpixels/fieldservice/activities/territory/TerritoryList;

    invoke-static {p1}, Lcom/lostpixels/fieldservice/activities/territory/TerritoryList;->-$$Nest$fgetmTemporaryTerritory(Lcom/lostpixels/fieldservice/activities/territory/TerritoryList;)Lcom/lostpixels/fieldservice/internal/ministry/Territory;

    move-result-object p1

    if-eqz p1, :cond_0

    .line 4305
    new-instance p1, Landroidx/appcompat/app/AlertDialog$Builder;

    iget-object v0, p0, Lcom/lostpixels/fieldservice/activities/territory/TerritoryList$EditActionMode;->this$0:Lcom/lostpixels/fieldservice/activities/territory/TerritoryList;

    invoke-direct {p1, v0}, Landroidx/appcompat/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 4306
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Lcom/lostpixels/fieldservice/activities/territory/TerritoryList$EditActionMode;->this$0:Lcom/lostpixels/fieldservice/activities/territory/TerritoryList;

    const v2, 0x7f1204bd

    invoke-virtual {v1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "?"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroidx/appcompat/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroidx/appcompat/app/AlertDialog$Builder;

    move-result-object p1

    new-instance v0, Lcom/lostpixels/fieldservice/activities/territory/TerritoryList$EditActionMode$2;

    invoke-direct {v0, p0}, Lcom/lostpixels/fieldservice/activities/territory/TerritoryList$EditActionMode$2;-><init>(Lcom/lostpixels/fieldservice/activities/territory/TerritoryList$EditActionMode;)V

    const v1, 0x7f12045b

    .line 4307
    invoke-virtual {p1, v1, v0}, Landroidx/appcompat/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroidx/appcompat/app/AlertDialog$Builder;

    move-result-object p1

    new-instance v0, Lcom/lostpixels/fieldservice/activities/territory/TerritoryList$EditActionMode$1;

    invoke-direct {v0, p0}, Lcom/lostpixels/fieldservice/activities/territory/TerritoryList$EditActionMode$1;-><init>(Lcom/lostpixels/fieldservice/activities/territory/TerritoryList$EditActionMode;)V

    const v1, 0x7f12055b

    .line 4322
    invoke-virtual {p1, v1, v0}, Landroidx/appcompat/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroidx/appcompat/app/AlertDialog$Builder;

    move-result-object p1

    .line 4328
    invoke-virtual {p1}, Landroidx/appcompat/app/AlertDialog$Builder;->create()Landroidx/appcompat/app/AlertDialog;

    move-result-object p1

    invoke-virtual {p1}, Landroid/app/Dialog;->show()V

    return-void

    .line 4331
    :cond_0
    invoke-direct {p0}, Lcom/lostpixels/fieldservice/activities/territory/TerritoryList$EditActionMode;->saveTerritory()V

    return-void
.end method

.method public onPrepareActionMode(Landroidx/appcompat/view/ActionMode;Landroid/view/Menu;)Z
    .locals 2

    .line 4277
    iget-object p2, p0, Lcom/lostpixels/fieldservice/activities/territory/TerritoryList$EditActionMode;->this$0:Lcom/lostpixels/fieldservice/activities/territory/TerritoryList;

    const v0, 0x7f1203d9

    invoke-virtual {p2, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p2

    const/4 v0, 0x0

    new-array v1, v0, [Ljava/lang/Object;

    invoke-static {p2, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Landroidx/appcompat/view/ActionMode;->setTitle(Ljava/lang/CharSequence;)V

    return v0
.end method
