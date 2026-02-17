.class public Lcom/lostpixels/fieldservice/activities/territory/MapOuterTerritoryListFragment;
.super Landroidx/fragment/app/Fragment;
.source "SourceFile"


# instance fields
.field chFollowLoc:Landroid/widget/CheckBox;

.field moMapFragment:Lcom/lostpixels/fieldservice/activities/territory/TerritoryListMapFragment;

.field realm:Lio/realm/Realm;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 36
    invoke-direct {p0}, Landroidx/fragment/app/Fragment;-><init>()V

    const/4 v0, 0x0

    .line 38
    iput-object v0, p0, Lcom/lostpixels/fieldservice/activities/territory/MapOuterTerritoryListFragment;->moMapFragment:Lcom/lostpixels/fieldservice/activities/territory/TerritoryListMapFragment;

    return-void
.end method


# virtual methods
.method followPosition()V
    .locals 2

    .line 89
    iget-object v0, p0, Lcom/lostpixels/fieldservice/activities/territory/MapOuterTerritoryListFragment;->moMapFragment:Lcom/lostpixels/fieldservice/activities/territory/TerritoryListMapFragment;

    invoke-static {v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v1, p0, Lcom/lostpixels/fieldservice/activities/territory/MapOuterTerritoryListFragment;->chFollowLoc:Landroid/widget/CheckBox;

    invoke-virtual {v1}, Landroid/widget/CompoundButton;->isChecked()Z

    move-result v1

    invoke-virtual {v0, v1}, Lcom/lostpixels/fieldservice/activities/territory/TerritoryListMapFragment;->followMyLocation(Z)V

    return-void
.end method

.method public getFragment()Lcom/lostpixels/fieldservice/activities/territory/TerritoryListMapFragment;
    .locals 1

    .line 128
    iget-object v0, p0, Lcom/lostpixels/fieldservice/activities/territory/MapOuterTerritoryListFragment;->moMapFragment:Lcom/lostpixels/fieldservice/activities/territory/TerritoryListMapFragment;

    return-object v0
.end method

.method public onAttach(Landroid/content/Context;)V
    .locals 0

    .line 83
    invoke-super {p0, p1}, Landroidx/fragment/app/Fragment;->onAttach(Landroid/content/Context;)V

    .line 84
    invoke-static {}, Lio/realm/Realm;->getDefaultInstance()Lio/realm/Realm;

    move-result-object p1

    iput-object p1, p0, Lcom/lostpixels/fieldservice/activities/territory/MapOuterTerritoryListFragment;->realm:Lio/realm/Realm;

    return-void
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 2

    .line 44
    iget-object p3, p0, Lcom/lostpixels/fieldservice/activities/territory/MapOuterTerritoryListFragment;->realm:Lio/realm/Realm;

    invoke-static {p3}, Lcom/lostpixels/fieldservice/internal/ministry/MinistryManager;->getInstance(Lio/realm/Realm;)Lcom/lostpixels/fieldservice/internal/ministry/MinistryManager;

    move-result-object p3

    const/4 v0, 0x0

    if-nez p3, :cond_0

    const p3, 0x7f0c0087

    .line 45
    invoke-virtual {p1, p3, p2, v0}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p1

    return-object p1

    :cond_0
    const p3, 0x7f0c00a4

    .line 47
    invoke-virtual {p1, p3, p2, v0}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p1

    const/4 p2, 0x1

    .line 48
    invoke-virtual {p0, p2}, Landroidx/fragment/app/Fragment;->setRetainInstance(Z)V

    .line 50
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getChildFragmentManager()Landroidx/fragment/app/FragmentManager;

    move-result-object p2

    const-string p3, "mapListTag"

    invoke-virtual {p2, p3}, Landroidx/fragment/app/FragmentManager;->findFragmentByTag(Ljava/lang/String;)Landroidx/fragment/app/Fragment;

    move-result-object p2

    check-cast p2, Lcom/lostpixels/fieldservice/activities/territory/TerritoryListMapFragment;

    iput-object p2, p0, Lcom/lostpixels/fieldservice/activities/territory/MapOuterTerritoryListFragment;->moMapFragment:Lcom/lostpixels/fieldservice/activities/territory/TerritoryListMapFragment;

    if-nez p2, :cond_1

    .line 52
    new-instance p2, Lcom/lostpixels/fieldservice/activities/territory/TerritoryListMapFragment;

    invoke-direct {p2}, Lcom/lostpixels/fieldservice/activities/territory/TerritoryListMapFragment;-><init>()V

    iput-object p2, p0, Lcom/lostpixels/fieldservice/activities/territory/MapOuterTerritoryListFragment;->moMapFragment:Lcom/lostpixels/fieldservice/activities/territory/TerritoryListMapFragment;

    .line 54
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getChildFragmentManager()Landroidx/fragment/app/FragmentManager;

    move-result-object p2

    invoke-virtual {p2}, Landroidx/fragment/app/FragmentManager;->beginTransaction()Landroidx/fragment/app/FragmentTransaction;

    move-result-object p2

    const v0, 0x7f090231

    iget-object v1, p0, Lcom/lostpixels/fieldservice/activities/territory/MapOuterTerritoryListFragment;->moMapFragment:Lcom/lostpixels/fieldservice/activities/territory/TerritoryListMapFragment;

    invoke-virtual {p2, v0, v1, p3}, Landroidx/fragment/app/FragmentTransaction;->add(ILandroidx/fragment/app/Fragment;Ljava/lang/String;)Landroidx/fragment/app/FragmentTransaction;

    move-result-object p2

    .line 55
    invoke-virtual {p2}, Landroidx/fragment/app/FragmentTransaction;->commit()I

    .line 56
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getChildFragmentManager()Landroidx/fragment/app/FragmentManager;

    move-result-object p2

    invoke-virtual {p2}, Landroidx/fragment/app/FragmentManager;->executePendingTransactions()Z

    :cond_1
    const p2, 0x7f0903a6

    .line 59
    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Lcom/lostpixels/fieldservice/ui/MapWrapperLayout;

    const p3, 0x7f09012f

    .line 60
    invoke-virtual {p1, p3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p3

    check-cast p3, Landroid/widget/CheckBox;

    const v0, 0x7f090133

    .line 61
    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/CheckBox;

    iput-object v0, p0, Lcom/lostpixels/fieldservice/activities/territory/MapOuterTerritoryListFragment;->chFollowLoc:Landroid/widget/CheckBox;

    .line 63
    new-instance v0, Lcom/lostpixels/fieldservice/activities/territory/MapOuterTerritoryListFragment$1;

    invoke-direct {v0, p0}, Lcom/lostpixels/fieldservice/activities/territory/MapOuterTerritoryListFragment$1;-><init>(Lcom/lostpixels/fieldservice/activities/territory/MapOuterTerritoryListFragment;)V

    invoke-virtual {p3, v0}, Landroid/widget/CompoundButton;->setOnCheckedChangeListener(Landroid/widget/CompoundButton$OnCheckedChangeListener;)V

    .line 70
    iget-object p3, p0, Lcom/lostpixels/fieldservice/activities/territory/MapOuterTerritoryListFragment;->chFollowLoc:Landroid/widget/CheckBox;

    new-instance v0, Lcom/lostpixels/fieldservice/activities/territory/MapOuterTerritoryListFragment$2;

    invoke-direct {v0, p0}, Lcom/lostpixels/fieldservice/activities/territory/MapOuterTerritoryListFragment$2;-><init>(Lcom/lostpixels/fieldservice/activities/territory/MapOuterTerritoryListFragment;)V

    invoke-virtual {p3, v0}, Landroid/widget/CompoundButton;->setOnCheckedChangeListener(Landroid/widget/CompoundButton$OnCheckedChangeListener;)V

    .line 76
    iget-object p3, p0, Lcom/lostpixels/fieldservice/activities/territory/MapOuterTerritoryListFragment;->moMapFragment:Lcom/lostpixels/fieldservice/activities/territory/TerritoryListMapFragment;

    invoke-virtual {p3, p2}, Lcom/lostpixels/fieldservice/activities/territory/TerritoryListMapFragment;->setMapLayoutWrapper(Lcom/lostpixels/fieldservice/ui/MapWrapperLayout;)V

    return-object p1
.end method

.method public onDetach()V
    .locals 1

    .line 138
    invoke-super {p0}, Landroidx/fragment/app/Fragment;->onDetach()V

    .line 139
    iget-object v0, p0, Lcom/lostpixels/fieldservice/activities/territory/MapOuterTerritoryListFragment;->realm:Lio/realm/Realm;

    invoke-virtual {v0}, Lio/realm/Realm;->close()V

    return-void
.end method

.method public onRequestPermissionsResult(I[Ljava/lang/String;[I)V
    .locals 0

    .line 122
    invoke-super {p0, p1, p2, p3}, Landroidx/fragment/app/Fragment;->onRequestPermissionsResult(I[Ljava/lang/String;[I)V

    .line 124
    invoke-static {p0, p1, p3}, Lcom/lostpixels/fieldservice/activities/territory/MapOuterTerritoryListFragmentPermissionsDispatcher;->onRequestPermissionsResult(Lcom/lostpixels/fieldservice/activities/territory/MapOuterTerritoryListFragment;I[I)V

    return-void
.end method

.method showDeniedForPosition()V
    .locals 3

    .line 115
    const-string v0, "Permission denied"

    const-string v1, "ACCESS_FINE_LOCATION"

    invoke-static {v0, v1}, Lcom/lostpixels/fieldservice/utils/LogToSD;->write(Ljava/lang/String;Ljava/lang/String;)V

    .line 116
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v0

    const v1, 0x7f120279

    invoke-virtual {p0, v1}, Landroidx/fragment/app/Fragment;->getString(I)Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    return-void
.end method

.method showRationaleForPosition(Lpermissions/dispatcher/PermissionRequest;)V
    .locals 4

    .line 94
    new-instance v0, Landroidx/appcompat/app/AlertDialog$Builder;

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->requireContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Landroidx/appcompat/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    const v1, 0x7f12027c

    .line 96
    invoke-virtual {v0, v1}, Landroidx/appcompat/app/AlertDialog$Builder;->setMessage(I)Landroidx/appcompat/app/AlertDialog$Builder;

    move-result-object v1

    const/4 v2, 0x0

    .line 97
    invoke-virtual {v1, v2}, Landroidx/appcompat/app/AlertDialog$Builder;->setCancelable(Z)Landroidx/appcompat/app/AlertDialog$Builder;

    move-result-object v1

    new-instance v2, Lcom/lostpixels/fieldservice/activities/territory/MapOuterTerritoryListFragment$4;

    invoke-direct {v2, p0, p1}, Lcom/lostpixels/fieldservice/activities/territory/MapOuterTerritoryListFragment$4;-><init>(Lcom/lostpixels/fieldservice/activities/territory/MapOuterTerritoryListFragment;Lpermissions/dispatcher/PermissionRequest;)V

    .line 98
    const-string v3, "OK"

    invoke-virtual {v1, v3, v2}, Landroidx/appcompat/app/AlertDialog$Builder;->setPositiveButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroidx/appcompat/app/AlertDialog$Builder;

    move-result-object v1

    new-instance v2, Lcom/lostpixels/fieldservice/activities/territory/MapOuterTerritoryListFragment$3;

    invoke-direct {v2, p0, p1}, Lcom/lostpixels/fieldservice/activities/territory/MapOuterTerritoryListFragment$3;-><init>(Lcom/lostpixels/fieldservice/activities/territory/MapOuterTerritoryListFragment;Lpermissions/dispatcher/PermissionRequest;)V

    const p1, 0x7f12004b

    .line 103
    invoke-virtual {v1, p1, v2}, Landroidx/appcompat/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroidx/appcompat/app/AlertDialog$Builder;

    .line 108
    invoke-virtual {v0}, Landroidx/appcompat/app/AlertDialog$Builder;->create()Landroidx/appcompat/app/AlertDialog;

    move-result-object p1

    .line 109
    invoke-virtual {p1}, Landroid/app/Dialog;->show()V

    return-void
.end method
