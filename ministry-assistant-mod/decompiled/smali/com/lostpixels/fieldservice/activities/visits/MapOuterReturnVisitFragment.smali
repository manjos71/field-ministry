.class public Lcom/lostpixels/fieldservice/activities/visits/MapOuterReturnVisitFragment;
.super Landroidx/fragment/app/Fragment;
.source "SourceFile"


# instance fields
.field chFollowLoc:Landroid/widget/CheckBox;

.field moMapFragment:Lcom/lostpixels/fieldservice/activities/visits/ReturnVisitsMapFragment;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 36
    invoke-direct {p0}, Landroidx/fragment/app/Fragment;-><init>()V

    const/4 v0, 0x0

    .line 38
    iput-object v0, p0, Lcom/lostpixels/fieldservice/activities/visits/MapOuterReturnVisitFragment;->moMapFragment:Lcom/lostpixels/fieldservice/activities/visits/ReturnVisitsMapFragment;

    return-void
.end method


# virtual methods
.method followPosition()V
    .locals 2

    .line 94
    iget-object v0, p0, Lcom/lostpixels/fieldservice/activities/visits/MapOuterReturnVisitFragment;->moMapFragment:Lcom/lostpixels/fieldservice/activities/visits/ReturnVisitsMapFragment;

    invoke-static {v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v1, p0, Lcom/lostpixels/fieldservice/activities/visits/MapOuterReturnVisitFragment;->chFollowLoc:Landroid/widget/CheckBox;

    invoke-virtual {v1}, Landroid/widget/CompoundButton;->isChecked()Z

    move-result v1

    invoke-virtual {v0, v1}, Lcom/lostpixels/fieldservice/activities/visits/ReturnVisitsMapFragment;->followMyLocation(Z)V

    return-void
.end method

.method public getFragment()Lcom/lostpixels/fieldservice/activities/visits/ReturnVisitsMapFragment;
    .locals 1

    .line 133
    iget-object v0, p0, Lcom/lostpixels/fieldservice/activities/visits/MapOuterReturnVisitFragment;->moMapFragment:Lcom/lostpixels/fieldservice/activities/visits/ReturnVisitsMapFragment;

    return-object v0
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 3

    .line 43
    const-string p3, "mapRetTag"

    invoke-static {}, Lio/realm/Realm;->getDefaultInstance()Lio/realm/Realm;

    move-result-object v0

    .line 45
    :try_start_0
    invoke-static {v0}, Lcom/lostpixels/fieldservice/internal/ministry/MinistryManager;->getInstance(Lio/realm/Realm;)Lcom/lostpixels/fieldservice/internal/ministry/MinistryManager;

    move-result-object v1

    const/4 v2, 0x0

    if-nez v1, :cond_0

    const p3, 0x7f0c0087

    .line 46
    invoke-virtual {p1, p3, p2, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 86
    invoke-virtual {v0}, Lio/realm/Realm;->close()V

    return-object p1

    :catchall_0
    move-exception p1

    goto/16 :goto_1

    :catch_0
    move-exception p1

    goto :goto_0

    :cond_0
    const v1, 0x7f0c00a4

    .line 48
    :try_start_1
    invoke-virtual {p1, v1, p2, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p1

    const/4 p2, 0x1

    .line 49
    invoke-virtual {p0, p2}, Landroidx/fragment/app/Fragment;->setRetainInstance(Z)V

    .line 51
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getChildFragmentManager()Landroidx/fragment/app/FragmentManager;

    move-result-object p2

    invoke-virtual {p2, p3}, Landroidx/fragment/app/FragmentManager;->findFragmentByTag(Ljava/lang/String;)Landroidx/fragment/app/Fragment;

    move-result-object p2

    check-cast p2, Lcom/lostpixels/fieldservice/activities/visits/ReturnVisitsMapFragment;

    iput-object p2, p0, Lcom/lostpixels/fieldservice/activities/visits/MapOuterReturnVisitFragment;->moMapFragment:Lcom/lostpixels/fieldservice/activities/visits/ReturnVisitsMapFragment;

    if-nez p2, :cond_1

    .line 53
    new-instance p2, Lcom/lostpixels/fieldservice/activities/visits/ReturnVisitsMapFragment;

    invoke-direct {p2}, Lcom/lostpixels/fieldservice/activities/visits/ReturnVisitsMapFragment;-><init>()V

    iput-object p2, p0, Lcom/lostpixels/fieldservice/activities/visits/MapOuterReturnVisitFragment;->moMapFragment:Lcom/lostpixels/fieldservice/activities/visits/ReturnVisitsMapFragment;

    .line 55
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getChildFragmentManager()Landroidx/fragment/app/FragmentManager;

    move-result-object p2

    invoke-virtual {p2}, Landroidx/fragment/app/FragmentManager;->beginTransaction()Landroidx/fragment/app/FragmentTransaction;

    move-result-object p2

    iget-object v1, p0, Lcom/lostpixels/fieldservice/activities/visits/MapOuterReturnVisitFragment;->moMapFragment:Lcom/lostpixels/fieldservice/activities/visits/ReturnVisitsMapFragment;

    const v2, 0x7f090231

    invoke-virtual {p2, v2, v1, p3}, Landroidx/fragment/app/FragmentTransaction;->add(ILandroidx/fragment/app/Fragment;Ljava/lang/String;)Landroidx/fragment/app/FragmentTransaction;

    move-result-object p2

    .line 56
    invoke-virtual {p2}, Landroidx/fragment/app/FragmentTransaction;->commit()I

    .line 57
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getChildFragmentManager()Landroidx/fragment/app/FragmentManager;

    move-result-object p2

    invoke-virtual {p2}, Landroidx/fragment/app/FragmentManager;->executePendingTransactions()Z

    :cond_1
    const p2, 0x7f0903a6

    .line 60
    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Lcom/lostpixels/fieldservice/ui/MapWrapperLayout;

    const p3, 0x7f09012f

    .line 61
    invoke-virtual {p1, p3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p3

    check-cast p3, Landroid/widget/CheckBox;

    const v1, 0x7f090133

    .line 62
    invoke-virtual {p1, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/CheckBox;

    iput-object v1, p0, Lcom/lostpixels/fieldservice/activities/visits/MapOuterReturnVisitFragment;->chFollowLoc:Landroid/widget/CheckBox;

    .line 64
    new-instance v1, Lcom/lostpixels/fieldservice/activities/visits/MapOuterReturnVisitFragment$1;

    invoke-direct {v1, p0}, Lcom/lostpixels/fieldservice/activities/visits/MapOuterReturnVisitFragment$1;-><init>(Lcom/lostpixels/fieldservice/activities/visits/MapOuterReturnVisitFragment;)V

    invoke-virtual {p3, v1}, Landroid/widget/CompoundButton;->setOnCheckedChangeListener(Landroid/widget/CompoundButton$OnCheckedChangeListener;)V

    .line 71
    iget-object p3, p0, Lcom/lostpixels/fieldservice/activities/visits/MapOuterReturnVisitFragment;->chFollowLoc:Landroid/widget/CheckBox;

    new-instance v1, Lcom/lostpixels/fieldservice/activities/visits/MapOuterReturnVisitFragment$2;

    invoke-direct {v1, p0}, Lcom/lostpixels/fieldservice/activities/visits/MapOuterReturnVisitFragment$2;-><init>(Lcom/lostpixels/fieldservice/activities/visits/MapOuterReturnVisitFragment;)V

    invoke-virtual {p3, v1}, Landroid/widget/CompoundButton;->setOnCheckedChangeListener(Landroid/widget/CompoundButton$OnCheckedChangeListener;)V

    .line 77
    iget-object p3, p0, Lcom/lostpixels/fieldservice/activities/visits/MapOuterReturnVisitFragment;->moMapFragment:Lcom/lostpixels/fieldservice/activities/visits/ReturnVisitsMapFragment;

    invoke-virtual {p3, p2}, Lcom/lostpixels/fieldservice/activities/visits/ReturnVisitsMapFragment;->setMapLayoutWrapper(Lcom/lostpixels/fieldservice/ui/MapWrapperLayout;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 86
    invoke-virtual {v0}, Lio/realm/Realm;->close()V

    return-object p1

    .line 82
    :goto_0
    :try_start_2
    invoke-static {}, Lcom/google/firebase/crashlytics/FirebaseCrashlytics;->getInstance()Lcom/google/firebase/crashlytics/FirebaseCrashlytics;

    move-result-object p2

    invoke-virtual {p2, p1}, Lcom/google/firebase/crashlytics/FirebaseCrashlytics;->recordException(Ljava/lang/Throwable;)V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_1
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_2

    .line 86
    :goto_1
    invoke-virtual {v0}, Lio/realm/Realm;->close()V

    .line 87
    throw p1

    .line 86
    :catch_1
    :goto_2
    invoke-virtual {v0}, Lio/realm/Realm;->close()V

    const/4 p1, 0x0

    return-object p1
.end method

.method public onRequestPermissionsResult(I[Ljava/lang/String;[I)V
    .locals 0

    .line 127
    invoke-super {p0, p1, p2, p3}, Landroidx/fragment/app/Fragment;->onRequestPermissionsResult(I[Ljava/lang/String;[I)V

    .line 129
    invoke-static {p0, p1, p3}, Lcom/lostpixels/fieldservice/activities/visits/MapOuterReturnVisitFragmentPermissionsDispatcher;->onRequestPermissionsResult(Lcom/lostpixels/fieldservice/activities/visits/MapOuterReturnVisitFragment;I[I)V

    return-void
.end method

.method showDeniedForPosition()V
    .locals 3

    .line 120
    const-string v0, "Permission denied"

    const-string v1, "ACCESS_FINE_LOCATION"

    invoke-static {v0, v1}, Lcom/lostpixels/fieldservice/utils/LogToSD;->write(Ljava/lang/String;Ljava/lang/String;)V

    .line 121
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

    .line 99
    new-instance v0, Landroidx/appcompat/app/AlertDialog$Builder;

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->requireContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Landroidx/appcompat/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    const v1, 0x7f12027c

    .line 101
    invoke-virtual {v0, v1}, Landroidx/appcompat/app/AlertDialog$Builder;->setMessage(I)Landroidx/appcompat/app/AlertDialog$Builder;

    move-result-object v1

    const/4 v2, 0x0

    .line 102
    invoke-virtual {v1, v2}, Landroidx/appcompat/app/AlertDialog$Builder;->setCancelable(Z)Landroidx/appcompat/app/AlertDialog$Builder;

    move-result-object v1

    new-instance v2, Lcom/lostpixels/fieldservice/activities/visits/MapOuterReturnVisitFragment$4;

    invoke-direct {v2, p0, p1}, Lcom/lostpixels/fieldservice/activities/visits/MapOuterReturnVisitFragment$4;-><init>(Lcom/lostpixels/fieldservice/activities/visits/MapOuterReturnVisitFragment;Lpermissions/dispatcher/PermissionRequest;)V

    .line 103
    const-string v3, "OK"

    invoke-virtual {v1, v3, v2}, Landroidx/appcompat/app/AlertDialog$Builder;->setPositiveButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroidx/appcompat/app/AlertDialog$Builder;

    move-result-object v1

    new-instance v2, Lcom/lostpixels/fieldservice/activities/visits/MapOuterReturnVisitFragment$3;

    invoke-direct {v2, p0, p1}, Lcom/lostpixels/fieldservice/activities/visits/MapOuterReturnVisitFragment$3;-><init>(Lcom/lostpixels/fieldservice/activities/visits/MapOuterReturnVisitFragment;Lpermissions/dispatcher/PermissionRequest;)V

    const p1, 0x7f12004b

    .line 108
    invoke-virtual {v1, p1, v2}, Landroidx/appcompat/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroidx/appcompat/app/AlertDialog$Builder;

    .line 113
    invoke-virtual {v0}, Landroidx/appcompat/app/AlertDialog$Builder;->create()Landroidx/appcompat/app/AlertDialog;

    move-result-object p1

    .line 114
    invoke-virtual {p1}, Landroid/app/Dialog;->show()V

    return-void
.end method
