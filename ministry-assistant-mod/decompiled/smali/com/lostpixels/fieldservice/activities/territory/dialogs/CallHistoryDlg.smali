.class public Lcom/lostpixels/fieldservice/activities/territory/dialogs/CallHistoryDlg;
.super Landroidx/fragment/app/DialogFragment;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/lostpixels/fieldservice/activities/territory/dialogs/CallHistoryDlg$HistoryArrayAdapter;,
        Lcom/lostpixels/fieldservice/activities/territory/dialogs/CallHistoryDlg$VisitHistoryInfo;,
        Lcom/lostpixels/fieldservice/activities/territory/dialogs/CallHistoryDlg$HistoryComparator;,
        Lcom/lostpixels/fieldservice/activities/territory/dialogs/CallHistoryDlg$AddressViewHolder;
    }
.end annotation


# instance fields
.field private lstHistory:Ljava/util/List;

.field realm:Lio/realm/Realm;

.field private visitId:J


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 47
    invoke-direct {p0}, Landroidx/fragment/app/DialogFragment;-><init>()V

    return-void
.end method

.method private createHistoryList()Ljava/util/List;
    .locals 6

    .line 94
    iget-object v0, p0, Lcom/lostpixels/fieldservice/activities/territory/dialogs/CallHistoryDlg;->lstHistory:Ljava/util/List;

    if-nez v0, :cond_0

    .line 95
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/lostpixels/fieldservice/activities/territory/dialogs/CallHistoryDlg;->lstHistory:Ljava/util/List;

    .line 96
    :cond_0
    iget-object v0, p0, Lcom/lostpixels/fieldservice/activities/territory/dialogs/CallHistoryDlg;->lstHistory:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 98
    iget-object v0, p0, Lcom/lostpixels/fieldservice/activities/territory/dialogs/CallHistoryDlg;->realm:Lio/realm/Realm;

    const-class v1, Lcom/lostpixels/fieldservice/internal/ministry/Visit;

    invoke-virtual {v0, v1}, Lio/realm/Realm;->where(Ljava/lang/Class;)Lio/realm/RealmQuery;

    move-result-object v0

    iget-wide v1, p0, Lcom/lostpixels/fieldservice/activities/territory/dialogs/CallHistoryDlg;->visitId:J

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    const-string v2, "id"

    invoke-virtual {v0, v2, v1}, Lio/realm/RealmQuery;->equalTo(Ljava/lang/String;Ljava/lang/Long;)Lio/realm/RealmQuery;

    move-result-object v0

    invoke-virtual {v0}, Lio/realm/RealmQuery;->findFirst()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/lostpixels/fieldservice/internal/ministry/Visit;

    if-eqz v0, :cond_3

    .line 101
    invoke-virtual {v0}, Lcom/lostpixels/fieldservice/internal/ministry/Visit;->getCallHistory()Ljava/util/List;

    move-result-object v1

    if-eqz v1, :cond_1

    .line 103
    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/lostpixels/fieldservice/internal/ministry/VisitTypeItem;

    .line 104
    iget-object v3, p0, Lcom/lostpixels/fieldservice/activities/territory/dialogs/CallHistoryDlg;->lstHistory:Ljava/util/List;

    new-instance v4, Lcom/lostpixels/fieldservice/activities/territory/dialogs/CallHistoryDlg$VisitHistoryInfo;

    invoke-direct {v4, v2}, Lcom/lostpixels/fieldservice/activities/territory/dialogs/CallHistoryDlg$VisitHistoryInfo;-><init>(Lcom/lostpixels/fieldservice/internal/ministry/VisitTypeItem;)V

    invoke-interface {v3, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 110
    :cond_1
    invoke-virtual {v0}, Lcom/lostpixels/fieldservice/internal/ministry/Visit;->getHouseHolder()J

    move-result-wide v1

    const-wide/16 v3, 0x0

    cmp-long v5, v1, v3

    if-eqz v5, :cond_2

    .line 111
    iget-object v1, p0, Lcom/lostpixels/fieldservice/activities/territory/dialogs/CallHistoryDlg;->realm:Lio/realm/Realm;

    invoke-static {v1}, Lcom/lostpixels/fieldservice/internal/ministry/MinistryManager;->getInstance(Lio/realm/Realm;)Lcom/lostpixels/fieldservice/internal/ministry/MinistryManager;

    move-result-object v1

    iget-object v2, p0, Lcom/lostpixels/fieldservice/activities/territory/dialogs/CallHistoryDlg;->realm:Lio/realm/Realm;

    invoke-virtual {v0}, Lcom/lostpixels/fieldservice/internal/ministry/Visit;->getHouseHolder()J

    move-result-wide v3

    invoke-virtual {v1, v2, v3, v4}, Lcom/lostpixels/fieldservice/internal/ministry/MinistryManager;->getPerson(Lio/realm/Realm;J)Lcom/lostpixels/fieldservice/internal/ministry/Person;

    move-result-object v0

    if-eqz v0, :cond_2

    .line 113
    invoke-virtual {v0}, Lcom/lostpixels/fieldservice/internal/ministry/Person;->getInfo()Ljava/util/List;

    move-result-object v0

    if-eqz v0, :cond_2

    .line 115
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/lostpixels/fieldservice/internal/ministry/VisitInfo;

    .line 116
    iget-object v2, p0, Lcom/lostpixels/fieldservice/activities/territory/dialogs/CallHistoryDlg;->lstHistory:Ljava/util/List;

    new-instance v3, Lcom/lostpixels/fieldservice/activities/territory/dialogs/CallHistoryDlg$VisitHistoryInfo;

    invoke-direct {v3, v1}, Lcom/lostpixels/fieldservice/activities/territory/dialogs/CallHistoryDlg$VisitHistoryInfo;-><init>(Lcom/lostpixels/fieldservice/internal/ministry/VisitInfo;)V

    invoke-interface {v2, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 123
    :cond_2
    iget-object v0, p0, Lcom/lostpixels/fieldservice/activities/territory/dialogs/CallHistoryDlg;->lstHistory:Ljava/util/List;

    new-instance v1, Lcom/lostpixels/fieldservice/activities/territory/dialogs/CallHistoryDlg$HistoryComparator;

    invoke-direct {v1}, Lcom/lostpixels/fieldservice/activities/territory/dialogs/CallHistoryDlg$HistoryComparator;-><init>()V

    invoke-static {v0, v1}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    .line 126
    iget-object v0, p0, Lcom/lostpixels/fieldservice/activities/territory/dialogs/CallHistoryDlg;->lstHistory:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    const/16 v1, 0xa

    if-le v0, v1, :cond_3

    .line 127
    iget-object v0, p0, Lcom/lostpixels/fieldservice/activities/territory/dialogs/CallHistoryDlg;->lstHistory:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v2

    invoke-interface {v0, v1, v2}, Ljava/util/List;->subList(II)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 131
    :cond_3
    iget-object v0, p0, Lcom/lostpixels/fieldservice/activities/territory/dialogs/CallHistoryDlg;->lstHistory:Ljava/util/List;

    return-object v0
.end method


# virtual methods
.method public onAttach(Landroid/content/Context;)V
    .locals 0

    .line 83
    invoke-super {p0, p1}, Landroidx/fragment/app/DialogFragment;->onAttach(Landroid/content/Context;)V

    .line 84
    invoke-static {}, Lio/realm/Realm;->getDefaultInstance()Lio/realm/Realm;

    move-result-object p1

    iput-object p1, p0, Lcom/lostpixels/fieldservice/activities/territory/dialogs/CallHistoryDlg;->realm:Lio/realm/Realm;

    return-void
.end method

.method public onCreateDialog(Landroid/os/Bundle;)Landroid/app/Dialog;
    .locals 4

    .line 58
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->requireActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object p1

    const-string v0, "layout_inflater"

    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/view/LayoutInflater;

    const v0, 0x7f0c0044

    const/4 v1, 0x0

    .line 61
    invoke-virtual {p1, v0, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object p1

    const v0, 0x7f090367

    .line 62
    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ListView;

    const v1, 0x7f090011

    .line 63
    invoke-virtual {p1, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    .line 64
    invoke-direct {p0}, Lcom/lostpixels/fieldservice/activities/territory/dialogs/CallHistoryDlg;->createHistoryList()Ljava/util/List;

    move-result-object v2

    iput-object v2, p0, Lcom/lostpixels/fieldservice/activities/territory/dialogs/CallHistoryDlg;->lstHistory:Ljava/util/List;

    .line 65
    invoke-virtual {v0, v1}, Landroid/widget/AdapterView;->setEmptyView(Landroid/view/View;)V

    .line 66
    new-instance v1, Lcom/lostpixels/fieldservice/activities/territory/dialogs/CallHistoryDlg$HistoryArrayAdapter;

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v2

    iget-object v3, p0, Lcom/lostpixels/fieldservice/activities/territory/dialogs/CallHistoryDlg;->lstHistory:Ljava/util/List;

    invoke-direct {v1, p0, v2, v3}, Lcom/lostpixels/fieldservice/activities/territory/dialogs/CallHistoryDlg$HistoryArrayAdapter;-><init>(Lcom/lostpixels/fieldservice/activities/territory/dialogs/CallHistoryDlg;Landroid/app/Activity;Ljava/util/List;)V

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 67
    new-instance v0, Landroidx/appcompat/app/AlertDialog$Builder;

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v1

    invoke-direct {v0, v1}, Landroidx/appcompat/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    const v1, 0x7f12054d

    .line 68
    invoke-virtual {v0, v1}, Landroidx/appcompat/app/AlertDialog$Builder;->setTitle(I)Landroidx/appcompat/app/AlertDialog$Builder;

    move-result-object v0

    .line 69
    invoke-virtual {v0, p1}, Landroidx/appcompat/app/AlertDialog$Builder;->setView(Landroid/view/View;)Landroidx/appcompat/app/AlertDialog$Builder;

    move-result-object p1

    new-instance v0, Lcom/lostpixels/fieldservice/activities/territory/dialogs/CallHistoryDlg$1;

    invoke-direct {v0, p0}, Lcom/lostpixels/fieldservice/activities/territory/dialogs/CallHistoryDlg$1;-><init>(Lcom/lostpixels/fieldservice/activities/territory/dialogs/CallHistoryDlg;)V

    .line 70
    const-string v1, "OK"

    invoke-virtual {p1, v1, v0}, Landroidx/appcompat/app/AlertDialog$Builder;->setPositiveButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroidx/appcompat/app/AlertDialog$Builder;

    move-result-object p1

    .line 77
    invoke-virtual {p1}, Landroidx/appcompat/app/AlertDialog$Builder;->create()Landroidx/appcompat/app/AlertDialog;

    move-result-object p1

    return-object p1
.end method

.method public onDetach()V
    .locals 1

    .line 89
    invoke-super {p0}, Landroidx/fragment/app/DialogFragment;->onDetach()V

    .line 90
    iget-object v0, p0, Lcom/lostpixels/fieldservice/activities/territory/dialogs/CallHistoryDlg;->realm:Lio/realm/Realm;

    invoke-virtual {v0}, Lio/realm/Realm;->close()V

    return-void
.end method

.method public setVisit(Lcom/lostpixels/fieldservice/internal/ministry/Visit;)V
    .locals 2

    .line 51
    invoke-virtual {p1}, Lcom/lostpixels/fieldservice/internal/ministry/Visit;->getId()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/lostpixels/fieldservice/activities/territory/dialogs/CallHistoryDlg;->visitId:J

    return-void
.end method
