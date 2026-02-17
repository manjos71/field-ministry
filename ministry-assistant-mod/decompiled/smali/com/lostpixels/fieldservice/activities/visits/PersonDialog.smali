.class public Lcom/lostpixels/fieldservice/activities/visits/PersonDialog;
.super Lcom/lostpixels/fieldservice/activities/base/MinistryAssistantActivity;
.source "SourceFile"

# interfaces
.implements Lcom/lostpixels/fieldservice/activities/visits/AddCustomTagDialog$OnTagsSetListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/lostpixels/fieldservice/activities/visits/PersonDialog$ViewPagerAdapter;,
        Lcom/lostpixels/fieldservice/activities/visits/PersonDialog$PersonInfoListAdapter;,
        Lcom/lostpixels/fieldservice/activities/visits/PersonDialog$GetAddressPositionTask;,
        Lcom/lostpixels/fieldservice/activities/visits/PersonDialog$PersonInfoViewHolder;
    }
.end annotation


# static fields
.field private static mSessions:Ljava/util/ArrayList;


# instance fields
.field private bCreateFromTerritory:Z

.field private bCreateNew:Z

.field private bPersonChanged:Z

.field private bShowEditDialog:Z

.field private bSomethingChanged:Z

.field private clearReturnVistDate:Landroid/view/View;

.field private imgFav:Landroid/widget/ImageView;

.field private imgGender:Landroid/widget/ImageView;

.field private imgMagRoute:Landroid/widget/ImageView;

.field private imgPriority:Landroid/widget/ImageView;

.field private imgRV:Landroid/widget/ImageView;

.field private imgStudy:Landroid/widget/ImageView;

.field private lstPersonNotes:Landroid/widget/ListView;

.field private mInfoIndex:I

.field private mPersonKey:J

.field private final mSetBestTimeListener:Lcom/lostpixels/fieldservice/activities/visits/BestTimeForVisit$OnSetBestTimeListener;

.field private final mSetMonthListener:Lcom/lostpixels/fieldservice/activities/visits/MagazineRouteDlg$OnSetMonthsListener;

.field private mSlidingTabLayout:Lcom/lostpixels/fieldservice/ui/slidingtabs/SlidingTabLayout;

.field private mlIncomingVisitTime:J

.field private mlayoutButtons:Landroid/view/View;

.field private mlstPersonInfo:Ljava/util/ArrayList;

.field private person:Lcom/lostpixels/fieldservice/internal/ministry/Person;

.field private tagGroup:Lme/gujun/android/taggroup/TagGroup;

.field private time:J

.field private txtAddress:Landroid/widget/TextView;

.field private txtAddressFirstPage:Landroid/widget/TextView;

.field private txtAge:Landroid/widget/TextView;

.field private txtContinue:Landroid/widget/TextView;

.field private txtCountry:Landroid/widget/TextView;

.field private txtGeneral:Landroid/widget/TextView;

.field private txtLanguages:Landroid/widget/TextView;

.field private txtMail:Landroid/widget/TextView;

.field private txtMotherTongue:Landroid/widget/TextView;

.field private txtName:Landroid/widget/TextView;

.field private txtNeighbourhood:Landroid/widget/TextView;

.field private txtPhone:Landroid/widget/TextView;

.field private txtPhoneHome:Landroid/widget/TextView;

.field private txtPublicationToStudy:Landroid/widget/TextView;

.field private txtTimeForRV:Landroid/widget/TextView;

.field private txtVideoPhone:Landroid/widget/TextView;

.field private txtVisitHours:Landroid/widget/TextView;

.field private viewMagazineHeader:Lcom/lostpixels/fieldservice/ui/MagazineRouteView;

.field private viewMagazineItem:Lcom/lostpixels/fieldservice/ui/MagazineRouteView;


# direct methods
.method public static synthetic $r8$lambda$2UlRbMdboQRrGZZxKfC0tpO7-as(Lcom/lostpixels/fieldservice/activities/visits/PersonDialog;Landroid/view/View;)V
    .locals 0

    const/4 p1, 0x3

    .line 933
    invoke-virtual {p0, p1}, Lcom/lostpixels/fieldservice/activities/visits/PersonDialog;->showDialogs(I)V

    return-void
.end method

.method public static synthetic $r8$lambda$3zObo63xj19Est80BS4A7xSKmiM(Lcom/lostpixels/fieldservice/activities/visits/PersonDialog;Landroid/view/View;)V
    .locals 0

    .line 939
    invoke-direct {p0}, Lcom/lostpixels/fieldservice/activities/visits/PersonDialog;->showBibleStudyDialog()V

    return-void
.end method

.method public static synthetic $r8$lambda$9KiU3V7vZfch_zEg2cFGB1Q3_yk(Lcom/lostpixels/fieldservice/activities/visits/PersonDialog;Landroid/widget/AdapterView;Landroid/view/View;IJ)V
    .locals 2

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 1377
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide p1

    iget-wide v0, p0, Lcom/lostpixels/fieldservice/activities/visits/PersonDialog;->time:J

    sub-long/2addr p1, v0

    const-wide/16 v0, 0x3e8

    cmp-long p3, p1, v0

    if-gez p3, :cond_0

    return-void

    :cond_0
    long-to-int p1, p4

    .line 1379
    iput p1, p0, Lcom/lostpixels/fieldservice/activities/visits/PersonDialog;->mInfoIndex:I

    .line 1380
    new-instance p2, Landroid/content/Intent;

    const-class p3, Lcom/lostpixels/fieldservice/activities/visits/EditVisitDialog;

    invoke-direct {p2, p0, p3}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 1382
    iget-object p3, p0, Lcom/lostpixels/fieldservice/activities/visits/PersonDialog;->mlstPersonInfo:Ljava/util/ArrayList;

    invoke-virtual {p3, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/os/Parcelable;

    const-string p3, "VisitInfo"

    invoke-virtual {p2, p3, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 1383
    const-string p1, "IsEditing"

    const/4 p3, 0x1

    invoke-virtual {p2, p1, p3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 1384
    const-string p1, "Person"

    iget-object p4, p0, Lcom/lostpixels/fieldservice/activities/visits/PersonDialog;->person:Lcom/lostpixels/fieldservice/internal/ministry/Person;

    invoke-virtual {p2, p1, p4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 1385
    new-instance p1, Lcom/lostpixels/fieldservice/internal/report/ServiceSession;

    invoke-direct {p1}, Lcom/lostpixels/fieldservice/internal/report/ServiceSession;-><init>()V

    const-string p4, "ServiceSession"

    invoke-virtual {p2, p4, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 1387
    invoke-virtual {p0, p2, p3}, Landroidx/activity/ComponentActivity;->startActivityForResult(Landroid/content/Intent;I)V

    return-void
.end method

.method public static synthetic $r8$lambda$FuFrzkaliRhPLX06Wox49eYuzF8(Lcom/lostpixels/fieldservice/activities/visits/PersonDialog;Landroid/view/View;)V
    .locals 0

    const/4 p1, 0x0

    .line 326
    iput-object p1, p0, Lcom/lostpixels/fieldservice/activities/visits/PersonDialog;->person:Lcom/lostpixels/fieldservice/internal/ministry/Person;

    .line 327
    sput-object p1, Lcom/lostpixels/fieldservice/activities/visits/PersonDialog;->mSessions:Ljava/util/ArrayList;

    .line 328
    invoke-virtual {p0}, Landroid/app/Activity;->finish()V

    return-void
.end method

.method public static synthetic $r8$lambda$HNtMHcYlIZmcuDtxN2Ei-HOxUe4(Lcom/lostpixels/fieldservice/activities/visits/PersonDialog;Lcom/lostpixels/fieldservice/internal/ministry/Visit;)V
    .locals 3

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 1433
    new-instance v0, Ljava/util/Date;

    invoke-direct {v0}, Ljava/util/Date;-><init>()V

    invoke-virtual {p1, v0}, Lcom/lostpixels/fieldservice/internal/ministry/Visit;->setDate(Ljava/util/Date;)V

    .line 1434
    iget-object v0, p0, Lcom/lostpixels/fieldservice/activities/visits/PersonDialog;->person:Lcom/lostpixels/fieldservice/internal/ministry/Person;

    invoke-virtual {v0}, Lcom/lostpixels/fieldservice/internal/ministry/Person;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/lostpixels/fieldservice/internal/ministry/Visit;->setName(Ljava/lang/String;)V

    .line 1435
    iget-object v0, p0, Lcom/lostpixels/fieldservice/activities/visits/PersonDialog;->person:Lcom/lostpixels/fieldservice/internal/ministry/Person;

    invoke-virtual {v0}, Lcom/lostpixels/fieldservice/internal/ministry/Person;->isReturnVisit()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x6

    .line 1436
    invoke-virtual {p1, v0}, Lcom/lostpixels/fieldservice/internal/ministry/Visit;->setType(I)V

    .line 1438
    :cond_0
    iget-object v0, p0, Lcom/lostpixels/fieldservice/activities/visits/PersonDialog;->person:Lcom/lostpixels/fieldservice/internal/ministry/Person;

    invoke-virtual {v0}, Lcom/lostpixels/fieldservice/internal/ministry/Person;->getInfo()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_2

    .line 1439
    iget-object v0, p0, Lcom/lostpixels/fieldservice/activities/visits/PersonDialog;->person:Lcom/lostpixels/fieldservice/internal/ministry/Person;

    invoke-virtual {v0}, Lcom/lostpixels/fieldservice/internal/ministry/Person;->getInfo()Ljava/util/List;

    move-result-object v0

    const/4 v1, 0x0

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/lostpixels/fieldservice/internal/ministry/VisitInfo;

    invoke-virtual {v0}, Lcom/lostpixels/fieldservice/internal/ministry/VisitInfo;->getVisitType()I

    move-result v0

    const/4 v2, 0x3

    if-eq v0, v2, :cond_1

    const/4 v1, 0x1

    :cond_1
    invoke-virtual {p1, v1}, Lcom/lostpixels/fieldservice/internal/ministry/Visit;->setVisitInterested(Z)V

    .line 1440
    :cond_2
    iget-object v0, p0, Lcom/lostpixels/fieldservice/activities/visits/PersonDialog;->person:Lcom/lostpixels/fieldservice/internal/ministry/Person;

    invoke-virtual {v0}, Lcom/lostpixels/fieldservice/internal/ministry/Person;->getCellPhone()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/lostpixels/fieldservice/activities/visits/PersonDialog;->person:Lcom/lostpixels/fieldservice/internal/ministry/Person;

    invoke-virtual {v0}, Lcom/lostpixels/fieldservice/internal/ministry/Person;->getCellPhone()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_3

    .line 1441
    iget-object v0, p0, Lcom/lostpixels/fieldservice/activities/visits/PersonDialog;->person:Lcom/lostpixels/fieldservice/internal/ministry/Person;

    invoke-virtual {v0}, Lcom/lostpixels/fieldservice/internal/ministry/Person;->getCellPhone()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/lostpixels/fieldservice/internal/ministry/Visit;->setCellNumber(Ljava/lang/String;)V

    .line 1442
    :cond_3
    iget-object v0, p0, Lcom/lostpixels/fieldservice/activities/visits/PersonDialog;->person:Lcom/lostpixels/fieldservice/internal/ministry/Person;

    invoke-virtual {v0}, Lcom/lostpixels/fieldservice/internal/ministry/Person;->getHomePhone()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_4

    iget-object v0, p0, Lcom/lostpixels/fieldservice/activities/visits/PersonDialog;->person:Lcom/lostpixels/fieldservice/internal/ministry/Person;

    invoke-virtual {v0}, Lcom/lostpixels/fieldservice/internal/ministry/Person;->getHomePhone()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_4

    .line 1443
    iget-object p0, p0, Lcom/lostpixels/fieldservice/activities/visits/PersonDialog;->person:Lcom/lostpixels/fieldservice/internal/ministry/Person;

    invoke-virtual {p0}, Lcom/lostpixels/fieldservice/internal/ministry/Person;->getHomePhone()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p1, p0}, Lcom/lostpixels/fieldservice/internal/ministry/Visit;->setPhoneNumber(Ljava/lang/String;)V

    :cond_4
    return-void
.end method

.method public static synthetic $r8$lambda$Podweswl_RCf0y4pnS01tNkK9O4(Lcom/lostpixels/fieldservice/activities/visits/PersonDialog;Landroid/widget/AdapterView$AdapterContextMenuInfo;Landroid/content/DialogInterface;I)V
    .locals 0

    .line 1405
    iget-object p2, p0, Lcom/lostpixels/fieldservice/activities/visits/PersonDialog;->mlstPersonInfo:Ljava/util/ArrayList;

    .line 1405
    invoke-static {p2}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    iget-object p3, p0, Lcom/lostpixels/fieldservice/activities/visits/PersonDialog;->lstPersonNotes:Landroid/widget/ListView;

    invoke-virtual {p3}, Landroid/widget/ListView;->getAdapter()Landroid/widget/ListAdapter;

    move-result-object p3

    iget p1, p1, Landroid/widget/AdapterView$AdapterContextMenuInfo;->position:I

    invoke-interface {p3, p1}, Landroid/widget/Adapter;->getItem(I)Ljava/lang/Object;

    move-result-object p1

    invoke-virtual {p2, p1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 1406
    iget-object p1, p0, Lcom/lostpixels/fieldservice/activities/visits/PersonDialog;->lstPersonNotes:Landroid/widget/ListView;

    invoke-virtual {p1}, Landroid/widget/ListView;->getAdapter()Landroid/widget/ListAdapter;

    move-result-object p1

    check-cast p1, Lcom/lostpixels/fieldservice/activities/visits/PersonDialog$PersonInfoListAdapter;

    invoke-virtual {p1}, Landroid/widget/BaseAdapter;->notifyDataSetChanged()V

    const/4 p1, 0x1

    .line 1407
    iput-boolean p1, p0, Lcom/lostpixels/fieldservice/activities/visits/PersonDialog;->bSomethingChanged:Z

    .line 1408
    invoke-direct {p0}, Lcom/lostpixels/fieldservice/activities/visits/PersonDialog;->updateSaveButton()V

    return-void
.end method

.method public static synthetic $r8$lambda$U0tsadzbOrGrRoGVHDLXMs2Ku0w(Lcom/lostpixels/fieldservice/activities/visits/PersonDialog;Ljava/lang/String;)V
    .locals 3

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 946
    new-instance p1, Lcom/lostpixels/fieldservice/activities/visits/AddCustomTagDialog;

    invoke-direct {p1}, Lcom/lostpixels/fieldservice/activities/visits/AddCustomTagDialog;-><init>()V

    .line 947
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 948
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 949
    iget-object v2, p0, Lcom/lostpixels/fieldservice/activities/visits/PersonDialog;->person:Lcom/lostpixels/fieldservice/internal/ministry/Person;

    invoke-static {v2}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    invoke-virtual {v2}, Lcom/lostpixels/fieldservice/internal/ministry/Person;->getCustomTagsSet()Ljava/util/Set;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    .line 950
    const-string v2, "TagsSet"

    invoke-virtual {v0, v2, v1}, Landroid/os/Bundle;->putStringArrayList(Ljava/lang/String;Ljava/util/ArrayList;)V

    .line 951
    invoke-virtual {p1, v0}, Landroidx/fragment/app/Fragment;->setArguments(Landroid/os/Bundle;)V

    .line 952
    invoke-virtual {p0}, Landroidx/fragment/app/FragmentActivity;->getSupportFragmentManager()Landroidx/fragment/app/FragmentManager;

    move-result-object p0

    const-string v0, "addtags"

    invoke-virtual {p1, p0, v0}, Landroidx/fragment/app/DialogFragment;->show(Landroidx/fragment/app/FragmentManager;Ljava/lang/String;)V

    return-void
.end method

.method public static synthetic $r8$lambda$Vajaa4rqcQIbgNCE15jF8r5-ZBY(Lcom/lostpixels/fieldservice/activities/visits/PersonDialog;Landroid/view/View;)V
    .locals 3

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 1027
    new-instance p1, Landroid/app/Dialog;

    invoke-direct {p1, p0}, Landroid/app/Dialog;-><init>(Landroid/content/Context;)V

    const v0, 0x7f0c0091

    .line 1028
    invoke-virtual {p1, v0}, Landroid/app/Dialog;->setContentView(I)V

    const v0, 0x7f120160

    .line 1029
    invoke-virtual {p0, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/app/Dialog;->setTitle(Ljava/lang/CharSequence;)V

    const v0, 0x7f0902a4

    .line 1031
    invoke-virtual {p1, v0}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/EditText;

    .line 1032
    iget-object v1, p0, Lcom/lostpixels/fieldservice/activities/visits/PersonDialog;->person:Lcom/lostpixels/fieldservice/internal/ministry/Person;

    invoke-virtual {v1}, Lcom/lostpixels/fieldservice/internal/ministry/Person;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    const v1, 0x7f0900f5

    .line 1033
    invoke-virtual {p1, v1}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/Button;

    .line 1034
    new-instance v2, Lcom/lostpixels/fieldservice/activities/visits/PersonDialog$$ExternalSyntheticLambda8;

    invoke-direct {v2, p0, v0, p1}, Lcom/lostpixels/fieldservice/activities/visits/PersonDialog$$ExternalSyntheticLambda8;-><init>(Lcom/lostpixels/fieldservice/activities/visits/PersonDialog;Landroid/widget/EditText;Landroid/app/Dialog;)V

    invoke-virtual {v1, v2}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 1042
    invoke-virtual {p1}, Landroid/app/Dialog;->show()V

    return-void
.end method

.method public static synthetic $r8$lambda$Zgbu76ZKbUTQgWvjiTwc_I2zD2w(Lcom/lostpixels/fieldservice/activities/visits/PersonDialog;I)V
    .locals 2

    .line 209
    iget-object v0, p0, Lcom/lostpixels/fieldservice/activities/visits/PersonDialog;->person:Lcom/lostpixels/fieldservice/internal/ministry/Person;

    if-eqz v0, :cond_0

    .line 210
    invoke-static {p1}, Lcom/lostpixels/fieldservice/internal/ministry/Person;->isVisitMorning(I)Z

    move-result v1

    invoke-virtual {v0, v1}, Lcom/lostpixels/fieldservice/internal/ministry/Person;->setVisitMorning(Z)V

    .line 211
    iget-object v0, p0, Lcom/lostpixels/fieldservice/activities/visits/PersonDialog;->person:Lcom/lostpixels/fieldservice/internal/ministry/Person;

    invoke-static {p1}, Lcom/lostpixels/fieldservice/internal/ministry/Person;->isVisitDay(I)Z

    move-result v1

    invoke-virtual {v0, v1}, Lcom/lostpixels/fieldservice/internal/ministry/Person;->setVisitDay(Z)V

    .line 212
    iget-object v0, p0, Lcom/lostpixels/fieldservice/activities/visits/PersonDialog;->person:Lcom/lostpixels/fieldservice/internal/ministry/Person;

    invoke-static {p1}, Lcom/lostpixels/fieldservice/internal/ministry/Person;->isVisitEvening(I)Z

    move-result v1

    invoke-virtual {v0, v1}, Lcom/lostpixels/fieldservice/internal/ministry/Person;->setVisitEvening(Z)V

    .line 213
    iget-object v0, p0, Lcom/lostpixels/fieldservice/activities/visits/PersonDialog;->person:Lcom/lostpixels/fieldservice/internal/ministry/Person;

    invoke-static {p1}, Lcom/lostpixels/fieldservice/internal/ministry/Person;->isVisitWeekend(I)Z

    move-result v1

    invoke-virtual {v0, v1}, Lcom/lostpixels/fieldservice/internal/ministry/Person;->setVisitWeekend(Z)V

    .line 214
    iget-object v0, p0, Lcom/lostpixels/fieldservice/activities/visits/PersonDialog;->person:Lcom/lostpixels/fieldservice/internal/ministry/Person;

    invoke-static {p1}, Lcom/lostpixels/fieldservice/internal/ministry/Person;->isVisitMonday(I)Z

    move-result v1

    invoke-virtual {v0, v1}, Lcom/lostpixels/fieldservice/internal/ministry/Person;->setVisitMonday(Z)V

    .line 215
    iget-object v0, p0, Lcom/lostpixels/fieldservice/activities/visits/PersonDialog;->person:Lcom/lostpixels/fieldservice/internal/ministry/Person;

    invoke-static {p1}, Lcom/lostpixels/fieldservice/internal/ministry/Person;->isVisitTuesday(I)Z

    move-result v1

    invoke-virtual {v0, v1}, Lcom/lostpixels/fieldservice/internal/ministry/Person;->setVisitTuesday(Z)V

    .line 216
    iget-object v0, p0, Lcom/lostpixels/fieldservice/activities/visits/PersonDialog;->person:Lcom/lostpixels/fieldservice/internal/ministry/Person;

    invoke-static {p1}, Lcom/lostpixels/fieldservice/internal/ministry/Person;->isVisitWednesday(I)Z

    move-result v1

    invoke-virtual {v0, v1}, Lcom/lostpixels/fieldservice/internal/ministry/Person;->setVisitWednesday(Z)V

    .line 217
    iget-object v0, p0, Lcom/lostpixels/fieldservice/activities/visits/PersonDialog;->person:Lcom/lostpixels/fieldservice/internal/ministry/Person;

    invoke-static {p1}, Lcom/lostpixels/fieldservice/internal/ministry/Person;->isVisitThursday(I)Z

    move-result v1

    invoke-virtual {v0, v1}, Lcom/lostpixels/fieldservice/internal/ministry/Person;->setVisitThursday(Z)V

    .line 218
    iget-object v0, p0, Lcom/lostpixels/fieldservice/activities/visits/PersonDialog;->person:Lcom/lostpixels/fieldservice/internal/ministry/Person;

    invoke-static {p1}, Lcom/lostpixels/fieldservice/internal/ministry/Person;->isVisitFriday(I)Z

    move-result v1

    invoke-virtual {v0, v1}, Lcom/lostpixels/fieldservice/internal/ministry/Person;->setVisitFriday(Z)V

    .line 219
    iget-object v0, p0, Lcom/lostpixels/fieldservice/activities/visits/PersonDialog;->person:Lcom/lostpixels/fieldservice/internal/ministry/Person;

    invoke-static {p1}, Lcom/lostpixels/fieldservice/internal/ministry/Person;->isVisitSaturday(I)Z

    move-result v1

    invoke-virtual {v0, v1}, Lcom/lostpixels/fieldservice/internal/ministry/Person;->setVisitSaturday(Z)V

    .line 220
    iget-object v0, p0, Lcom/lostpixels/fieldservice/activities/visits/PersonDialog;->person:Lcom/lostpixels/fieldservice/internal/ministry/Person;

    invoke-static {p1}, Lcom/lostpixels/fieldservice/internal/ministry/Person;->isVisitSunday(I)Z

    move-result p1

    invoke-virtual {v0, p1}, Lcom/lostpixels/fieldservice/internal/ministry/Person;->setVisitSunday(Z)V

    .line 222
    invoke-direct {p0}, Lcom/lostpixels/fieldservice/activities/visits/PersonDialog;->setPersonInfo()V

    const/4 p1, 0x1

    .line 223
    iput-boolean p1, p0, Lcom/lostpixels/fieldservice/activities/visits/PersonDialog;->bSomethingChanged:Z

    .line 224
    invoke-direct {p0}, Lcom/lostpixels/fieldservice/activities/visits/PersonDialog;->updateSaveButton()V

    :cond_0
    return-void
.end method

.method public static synthetic $r8$lambda$dFIufpXKyGxXwfnWNQ1vU4INNoQ(Lcom/lostpixels/fieldservice/activities/visits/PersonDialog;Landroid/view/View;)V
    .locals 0

    const/4 p1, 0x3

    .line 935
    invoke-virtual {p0, p1}, Lcom/lostpixels/fieldservice/activities/visits/PersonDialog;->showDialogs(I)V

    return-void
.end method

.method public static synthetic $r8$lambda$eiW6GnD_m0ribNOToYjhCFZWZVg(Lcom/lostpixels/fieldservice/activities/visits/PersonDialog;Landroid/view/View;)V
    .locals 0

    const/4 p1, 0x4

    .line 925
    invoke-virtual {p0, p1}, Lcom/lostpixels/fieldservice/activities/visits/PersonDialog;->showDialogs(I)V

    return-void
.end method

.method public static synthetic $r8$lambda$g0quRScQhHiUBg2oOJJUqnykz6I(Lcom/lostpixels/fieldservice/activities/visits/PersonDialog;Landroid/view/View;)V
    .locals 0

    const/4 p1, 0x0

    .line 889
    invoke-direct {p0, p1}, Lcom/lostpixels/fieldservice/activities/visits/PersonDialog;->openAddVisitDialog(Z)V

    return-void
.end method

.method public static synthetic $r8$lambda$gZKjn8P-58AcrxWcIZrAd_p0FCQ(Lcom/lostpixels/fieldservice/activities/visits/PersonDialog;Landroid/view/View;)V
    .locals 1

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 928
    new-instance p1, Landroid/content/Intent;

    const-class v0, Lcom/lostpixels/fieldservice/activities/visits/AddToCalendarDlg;

    invoke-direct {p1, p0, v0}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 929
    iget-object v0, p0, Lcom/lostpixels/fieldservice/activities/visits/PersonDialog;->person:Lcom/lostpixels/fieldservice/internal/ministry/Person;

    sput-object v0, Lcom/lostpixels/fieldservice/activities/visits/AddToCalendarDlg;->mPerson:Lcom/lostpixels/fieldservice/internal/ministry/Person;

    const/4 v0, 0x2

    .line 930
    invoke-virtual {p0, p1, v0}, Landroidx/activity/ComponentActivity;->startActivityForResult(Landroid/content/Intent;I)V

    return-void
.end method

.method public static synthetic $r8$lambda$j9SbW0Dp9p_5RyOcUFlcpqohkCg(Lcom/lostpixels/fieldservice/activities/visits/PersonDialog;Landroid/view/View;)V
    .locals 0

    .line 937
    invoke-direct {p0}, Lcom/lostpixels/fieldservice/activities/visits/PersonDialog;->showBibleStudyDialog()V

    return-void
.end method

.method public static synthetic $r8$lambda$sIX-aCxgBGI6zW4qrYILdloS78U(Lcom/lostpixels/fieldservice/activities/visits/PersonDialog;Landroid/widget/EditText;Landroid/app/Dialog;Landroid/view/View;)V
    .locals 0

    .line 1035
    iget-object p3, p0, Lcom/lostpixels/fieldservice/activities/visits/PersonDialog;->person:Lcom/lostpixels/fieldservice/internal/ministry/Person;

    .line 1035
    invoke-virtual {p1}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p3, p1}, Lcom/lostpixels/fieldservice/internal/ministry/Person;->setName(Ljava/lang/String;)V

    .line 1036
    invoke-direct {p0}, Lcom/lostpixels/fieldservice/activities/visits/PersonDialog;->setPersonInfo()V

    const/4 p1, 0x1

    .line 1037
    iput-boolean p1, p0, Lcom/lostpixels/fieldservice/activities/visits/PersonDialog;->bSomethingChanged:Z

    .line 1038
    iput-boolean p1, p0, Lcom/lostpixels/fieldservice/activities/visits/PersonDialog;->bPersonChanged:Z

    .line 1039
    invoke-direct {p0}, Lcom/lostpixels/fieldservice/activities/visits/PersonDialog;->updateSaveButton()V

    .line 1040
    invoke-virtual {p2}, Landroid/app/Dialog;->dismiss()V

    return-void
.end method

.method public static synthetic $r8$lambda$tKO1jTYGMKcKAPVIcYF1YkzIvUo(Lcom/lostpixels/fieldservice/activities/visits/PersonDialog;Landroid/view/View;)V
    .locals 1

    .line 1018
    iget-object p1, p0, Lcom/lostpixels/fieldservice/activities/visits/PersonDialog;->person:Lcom/lostpixels/fieldservice/internal/ministry/Person;

    .line 1018
    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    invoke-virtual {p1}, Lcom/lostpixels/fieldservice/internal/ministry/Person;->getPosition()Lcom/google/android/gms/maps/model/LatLng;

    move-result-object p1

    if-eqz p1, :cond_0

    .line 1019
    iget-object p1, p0, Lcom/lostpixels/fieldservice/activities/visits/PersonDialog;->person:Lcom/lostpixels/fieldservice/internal/ministry/Person;

    invoke-virtual {p1}, Lcom/lostpixels/fieldservice/internal/ministry/Person;->getPosition()Lcom/google/android/gms/maps/model/LatLng;

    move-result-object p1

    invoke-static {p1, p0}, Lcom/lostpixels/fieldservice/utils/map/NavigationUtils;->navigateTo(Lcom/google/android/gms/maps/model/LatLng;Landroid/app/Activity;)V

    return-void

    .line 1021
    :cond_0
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v0, p0, Lcom/lostpixels/fieldservice/activities/visits/PersonDialog;->person:Lcom/lostpixels/fieldservice/internal/ministry/Person;

    invoke-virtual {v0}, Lcom/lostpixels/fieldservice/internal/ministry/Person;->getAddress()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, " "

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v0, p0, Lcom/lostpixels/fieldservice/activities/visits/PersonDialog;->person:Lcom/lostpixels/fieldservice/internal/ministry/Person;

    invoke-virtual {v0}, Lcom/lostpixels/fieldservice/internal/ministry/Person;->getCity()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1, p0}, Lcom/lostpixels/fieldservice/utils/map/NavigationUtils;->navigateTo(Ljava/lang/String;Landroid/app/Activity;)V

    return-void
.end method

.method public static synthetic $r8$lambda$xlCh0PLtibd8sIDDPb0mJLcKxe8(Lcom/lostpixels/fieldservice/activities/visits/PersonDialog;Landroid/view/View;)V
    .locals 0

    .line 322
    invoke-direct {p0}, Lcom/lostpixels/fieldservice/activities/visits/PersonDialog;->savePerson()V

    return-void
.end method

.method static bridge synthetic -$$Nest$fgetbPersonChanged(Lcom/lostpixels/fieldservice/activities/visits/PersonDialog;)Z
    .locals 0

    .line 0
    iget-boolean p0, p0, Lcom/lostpixels/fieldservice/activities/visits/PersonDialog;->bPersonChanged:Z

    return p0
.end method

.method static bridge synthetic -$$Nest$fgetmPersonKey(Lcom/lostpixels/fieldservice/activities/visits/PersonDialog;)J
    .locals 2

    .line 0
    iget-wide v0, p0, Lcom/lostpixels/fieldservice/activities/visits/PersonDialog;->mPersonKey:J

    return-wide v0
.end method

.method static bridge synthetic -$$Nest$fgetperson(Lcom/lostpixels/fieldservice/activities/visits/PersonDialog;)Lcom/lostpixels/fieldservice/internal/ministry/Person;
    .locals 0

    .line 0
    iget-object p0, p0, Lcom/lostpixels/fieldservice/activities/visits/PersonDialog;->person:Lcom/lostpixels/fieldservice/internal/ministry/Person;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgettagGroup(Lcom/lostpixels/fieldservice/activities/visits/PersonDialog;)Lme/gujun/android/taggroup/TagGroup;
    .locals 0

    .line 0
    iget-object p0, p0, Lcom/lostpixels/fieldservice/activities/visits/PersonDialog;->tagGroup:Lme/gujun/android/taggroup/TagGroup;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetviewMagazineItem(Lcom/lostpixels/fieldservice/activities/visits/PersonDialog;)Lcom/lostpixels/fieldservice/ui/MagazineRouteView;
    .locals 0

    .line 0
    iget-object p0, p0, Lcom/lostpixels/fieldservice/activities/visits/PersonDialog;->viewMagazineItem:Lcom/lostpixels/fieldservice/ui/MagazineRouteView;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fputbPersonChanged(Lcom/lostpixels/fieldservice/activities/visits/PersonDialog;Z)V
    .locals 0

    .line 0
    iput-boolean p1, p0, Lcom/lostpixels/fieldservice/activities/visits/PersonDialog;->bPersonChanged:Z

    return-void
.end method

.method static bridge synthetic -$$Nest$fputbSomethingChanged(Lcom/lostpixels/fieldservice/activities/visits/PersonDialog;Z)V
    .locals 0

    .line 0
    iput-boolean p1, p0, Lcom/lostpixels/fieldservice/activities/visits/PersonDialog;->bSomethingChanged:Z

    return-void
.end method

.method static bridge synthetic -$$Nest$fputperson(Lcom/lostpixels/fieldservice/activities/visits/PersonDialog;Lcom/lostpixels/fieldservice/internal/ministry/Person;)V
    .locals 0

    .line 0
    iput-object p1, p0, Lcom/lostpixels/fieldservice/activities/visits/PersonDialog;->person:Lcom/lostpixels/fieldservice/internal/ministry/Person;

    return-void
.end method

.method static bridge synthetic -$$Nest$mgetComment(Lcom/lostpixels/fieldservice/activities/visits/PersonDialog;Ljava/util/Date;)Ljava/lang/String;
    .locals 0

    .line 0
    invoke-direct {p0, p1}, Lcom/lostpixels/fieldservice/activities/visits/PersonDialog;->getComment(Ljava/util/Date;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method static bridge synthetic -$$Nest$mopenAddVisitDialog(Lcom/lostpixels/fieldservice/activities/visits/PersonDialog;Z)V
    .locals 0

    .line 0
    invoke-direct {p0, p1}, Lcom/lostpixels/fieldservice/activities/visits/PersonDialog;->openAddVisitDialog(Z)V

    return-void
.end method

.method static bridge synthetic -$$Nest$msaveAndFinish(Lcom/lostpixels/fieldservice/activities/visits/PersonDialog;)V
    .locals 0

    .line 0
    invoke-direct {p0}, Lcom/lostpixels/fieldservice/activities/visits/PersonDialog;->saveAndFinish()V

    return-void
.end method

.method static bridge synthetic -$$Nest$msavePerson(Lcom/lostpixels/fieldservice/activities/visits/PersonDialog;)V
    .locals 0

    .line 0
    invoke-direct {p0}, Lcom/lostpixels/fieldservice/activities/visits/PersonDialog;->savePerson()V

    return-void
.end method

.method static bridge synthetic -$$Nest$msendEmail(Lcom/lostpixels/fieldservice/activities/visits/PersonDialog;)V
    .locals 0

    .line 0
    invoke-direct {p0}, Lcom/lostpixels/fieldservice/activities/visits/PersonDialog;->sendEmail()V

    return-void
.end method

.method static bridge synthetic -$$Nest$msetPersonInfo(Lcom/lostpixels/fieldservice/activities/visits/PersonDialog;)V
    .locals 0

    .line 0
    invoke-direct {p0}, Lcom/lostpixels/fieldservice/activities/visits/PersonDialog;->setPersonInfo()V

    return-void
.end method

.method static bridge synthetic -$$Nest$msetupFragment1(Lcom/lostpixels/fieldservice/activities/visits/PersonDialog;)Landroid/view/View;
    .locals 0

    .line 0
    invoke-direct {p0}, Lcom/lostpixels/fieldservice/activities/visits/PersonDialog;->setupFragment1()Landroid/view/View;

    move-result-object p0

    return-object p0
.end method

.method static bridge synthetic -$$Nest$msetupFragment2(Lcom/lostpixels/fieldservice/activities/visits/PersonDialog;)Landroid/view/View;
    .locals 0

    .line 0
    invoke-direct {p0}, Lcom/lostpixels/fieldservice/activities/visits/PersonDialog;->setupFragment2()Landroid/view/View;

    move-result-object p0

    return-object p0
.end method

.method static bridge synthetic -$$Nest$msetupFragment3(Lcom/lostpixels/fieldservice/activities/visits/PersonDialog;)Landroid/view/View;
    .locals 0

    .line 0
    invoke-direct {p0}, Lcom/lostpixels/fieldservice/activities/visits/PersonDialog;->setupFragment3()Landroid/view/View;

    move-result-object p0

    return-object p0
.end method

.method static bridge synthetic -$$Nest$mshowQuickAction(Lcom/lostpixels/fieldservice/activities/visits/PersonDialog;Landroid/view/View;)V
    .locals 0

    .line 0
    invoke-direct {p0, p1}, Lcom/lostpixels/fieldservice/activities/visits/PersonDialog;->showQuickAction(Landroid/view/View;)V

    return-void
.end method

.method static bridge synthetic -$$Nest$mupdateSaveButton(Lcom/lostpixels/fieldservice/activities/visits/PersonDialog;)V
    .locals 0

    .line 0
    invoke-direct {p0}, Lcom/lostpixels/fieldservice/activities/visits/PersonDialog;->updateSaveButton()V

    return-void
.end method

.method static bridge synthetic -$$Nest$sfgetmSessions()Ljava/util/ArrayList;
    .locals 1

    .line 0
    sget-object v0, Lcom/lostpixels/fieldservice/activities/visits/PersonDialog;->mSessions:Ljava/util/ArrayList;

    return-object v0
.end method

.method static bridge synthetic -$$Nest$sfputmSessions(Ljava/util/ArrayList;)V
    .locals 0

    .line 0
    sput-object p0, Lcom/lostpixels/fieldservice/activities/visits/PersonDialog;->mSessions:Ljava/util/ArrayList;

    return-void
.end method

.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>()V
    .locals 4

    const v0, 0x7f0c00f2

    .line 230
    invoke-direct {p0, v0}, Lcom/lostpixels/fieldservice/activities/base/MinistryAssistantActivity;-><init>(I)V

    const/4 v0, 0x0

    .line 143
    iput-object v0, p0, Lcom/lostpixels/fieldservice/activities/visits/PersonDialog;->person:Lcom/lostpixels/fieldservice/internal/ministry/Person;

    const/4 v1, 0x0

    .line 145
    iput-boolean v1, p0, Lcom/lostpixels/fieldservice/activities/visits/PersonDialog;->bShowEditDialog:Z

    .line 146
    iput-boolean v1, p0, Lcom/lostpixels/fieldservice/activities/visits/PersonDialog;->bCreateNew:Z

    .line 147
    iput-boolean v1, p0, Lcom/lostpixels/fieldservice/activities/visits/PersonDialog;->bCreateFromTerritory:Z

    const-wide/16 v2, 0x0

    .line 148
    iput-wide v2, p0, Lcom/lostpixels/fieldservice/activities/visits/PersonDialog;->time:J

    .line 153
    iput-object v0, p0, Lcom/lostpixels/fieldservice/activities/visits/PersonDialog;->txtNeighbourhood:Landroid/widget/TextView;

    .line 178
    iput-boolean v1, p0, Lcom/lostpixels/fieldservice/activities/visits/PersonDialog;->bSomethingChanged:Z

    .line 181
    iput-boolean v1, p0, Lcom/lostpixels/fieldservice/activities/visits/PersonDialog;->bPersonChanged:Z

    .line 188
    new-instance v0, Lcom/lostpixels/fieldservice/activities/visits/PersonDialog$1;

    invoke-direct {v0, p0}, Lcom/lostpixels/fieldservice/activities/visits/PersonDialog$1;-><init>(Lcom/lostpixels/fieldservice/activities/visits/PersonDialog;)V

    iput-object v0, p0, Lcom/lostpixels/fieldservice/activities/visits/PersonDialog;->mSetMonthListener:Lcom/lostpixels/fieldservice/activities/visits/MagazineRouteDlg$OnSetMonthsListener;

    .line 207
    new-instance v0, Lcom/lostpixels/fieldservice/activities/visits/PersonDialog$$ExternalSyntheticLambda2;

    invoke-direct {v0, p0}, Lcom/lostpixels/fieldservice/activities/visits/PersonDialog$$ExternalSyntheticLambda2;-><init>(Lcom/lostpixels/fieldservice/activities/visits/PersonDialog;)V

    iput-object v0, p0, Lcom/lostpixels/fieldservice/activities/visits/PersonDialog;->mSetBestTimeListener:Lcom/lostpixels/fieldservice/activities/visits/BestTimeForVisit$OnSetBestTimeListener;

    return-void
.end method

.method static synthetic access$000(Lcom/lostpixels/fieldservice/activities/visits/PersonDialog;)Lio/realm/Realm;
    .locals 0

    .line 111
    iget-object p0, p0, Lcom/lostpixels/fieldservice/activities/base/BaseActivity;->realm:Lio/realm/Realm;

    return-object p0
.end method

.method static synthetic access$100(Lcom/lostpixels/fieldservice/activities/visits/PersonDialog;)Lio/realm/Realm;
    .locals 0

    .line 111
    iget-object p0, p0, Lcom/lostpixels/fieldservice/activities/base/BaseActivity;->realm:Lio/realm/Realm;

    return-object p0
.end method

.method static synthetic access$1000(Lcom/lostpixels/fieldservice/activities/visits/PersonDialog;)Lio/realm/Realm;
    .locals 0

    .line 111
    iget-object p0, p0, Lcom/lostpixels/fieldservice/activities/base/BaseActivity;->realm:Lio/realm/Realm;

    return-object p0
.end method

.method static synthetic access$1100(Lcom/lostpixels/fieldservice/activities/visits/PersonDialog;)Lio/realm/Realm;
    .locals 0

    .line 111
    iget-object p0, p0, Lcom/lostpixels/fieldservice/activities/base/BaseActivity;->realm:Lio/realm/Realm;

    return-object p0
.end method

.method static synthetic access$1200(Lcom/lostpixels/fieldservice/activities/visits/PersonDialog;)Lio/realm/Realm;
    .locals 0

    .line 111
    iget-object p0, p0, Lcom/lostpixels/fieldservice/activities/base/BaseActivity;->realm:Lio/realm/Realm;

    return-object p0
.end method

.method static synthetic access$1300(Lcom/lostpixels/fieldservice/activities/visits/PersonDialog;)Lio/realm/Realm;
    .locals 0

    .line 111
    iget-object p0, p0, Lcom/lostpixels/fieldservice/activities/base/BaseActivity;->realm:Lio/realm/Realm;

    return-object p0
.end method

.method static synthetic access$1400(Lcom/lostpixels/fieldservice/activities/visits/PersonDialog;)Lio/realm/Realm;
    .locals 0

    .line 111
    iget-object p0, p0, Lcom/lostpixels/fieldservice/activities/base/BaseActivity;->realm:Lio/realm/Realm;

    return-object p0
.end method

.method static synthetic access$200(Lcom/lostpixels/fieldservice/activities/visits/PersonDialog;)Lio/realm/Realm;
    .locals 0

    .line 111
    iget-object p0, p0, Lcom/lostpixels/fieldservice/activities/base/BaseActivity;->realm:Lio/realm/Realm;

    return-object p0
.end method

.method static synthetic access$300(Lcom/lostpixels/fieldservice/activities/visits/PersonDialog;)Lio/realm/Realm;
    .locals 0

    .line 111
    iget-object p0, p0, Lcom/lostpixels/fieldservice/activities/base/BaseActivity;->realm:Lio/realm/Realm;

    return-object p0
.end method

.method static synthetic access$400(Lcom/lostpixels/fieldservice/activities/visits/PersonDialog;)Lio/realm/Realm;
    .locals 0

    .line 111
    iget-object p0, p0, Lcom/lostpixels/fieldservice/activities/base/BaseActivity;->realm:Lio/realm/Realm;

    return-object p0
.end method

.method static synthetic access$500(Lcom/lostpixels/fieldservice/activities/visits/PersonDialog;)Lio/realm/Realm;
    .locals 0

    .line 111
    iget-object p0, p0, Lcom/lostpixels/fieldservice/activities/base/BaseActivity;->realm:Lio/realm/Realm;

    return-object p0
.end method

.method static synthetic access$600(Lcom/lostpixels/fieldservice/activities/visits/PersonDialog;)Lio/realm/Realm;
    .locals 0

    .line 111
    iget-object p0, p0, Lcom/lostpixels/fieldservice/activities/base/BaseActivity;->realm:Lio/realm/Realm;

    return-object p0
.end method

.method static synthetic access$700(Lcom/lostpixels/fieldservice/activities/visits/PersonDialog;)Lio/realm/Realm;
    .locals 0

    .line 111
    iget-object p0, p0, Lcom/lostpixels/fieldservice/activities/base/BaseActivity;->realm:Lio/realm/Realm;

    return-object p0
.end method

.method static synthetic access$800(Lcom/lostpixels/fieldservice/activities/visits/PersonDialog;)Lio/realm/Realm;
    .locals 0

    .line 111
    iget-object p0, p0, Lcom/lostpixels/fieldservice/activities/base/BaseActivity;->realm:Lio/realm/Realm;

    return-object p0
.end method

.method static synthetic access$900(Lcom/lostpixels/fieldservice/activities/visits/PersonDialog;)Lio/realm/Realm;
    .locals 0

    .line 111
    iget-object p0, p0, Lcom/lostpixels/fieldservice/activities/base/BaseActivity;->realm:Lio/realm/Realm;

    return-object p0
.end method

.method private getComment(Ljava/util/Date;)Ljava/lang/String;
    .locals 11

    .line 1589
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v0

    .line 1590
    invoke-virtual {v0, p1}, Ljava/util/Calendar;->setTime(Ljava/util/Date;)V

    const/4 p1, 0x1

    .line 1591
    invoke-virtual {v0, p1}, Ljava/util/Calendar;->get(I)I

    move-result v1

    const/4 v2, 0x2

    .line 1592
    invoke-virtual {v0, v2}, Ljava/util/Calendar;->get(I)I

    move-result v3

    const/4 v4, 0x5

    .line 1593
    invoke-virtual {v0, v4}, Ljava/util/Calendar;->get(I)I

    move-result v5

    .line 1595
    iget-object v6, p0, Lcom/lostpixels/fieldservice/activities/base/BaseActivity;->realm:Lio/realm/Realm;

    invoke-static {v6}, Lcom/lostpixels/fieldservice/internal/report/ServiceReportManager;->getInstance(Lio/realm/Realm;)Lcom/lostpixels/fieldservice/internal/report/ServiceReportManager;

    move-result-object v6

    iget-object v7, p0, Lcom/lostpixels/fieldservice/activities/base/BaseActivity;->realm:Lio/realm/Realm;

    invoke-virtual {v6, v7}, Lcom/lostpixels/fieldservice/internal/report/ServiceReportManager;->getLastThreeMonths(Lio/realm/Realm;)Ljava/util/List;

    move-result-object v6

    .line 1596
    invoke-interface {v6}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v6

    :cond_0
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_1

    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/lostpixels/fieldservice/internal/report/ServiceSession;

    .line 1597
    invoke-virtual {v7}, Lcom/lostpixels/fieldservice/internal/report/ServiceSession;->getDate()Ljava/util/Date;

    move-result-object v8

    invoke-virtual {v0, v8}, Ljava/util/Calendar;->setTime(Ljava/util/Date;)V

    .line 1598
    invoke-virtual {v0, p1}, Ljava/util/Calendar;->get(I)I

    move-result v8

    .line 1599
    invoke-virtual {v0, v2}, Ljava/util/Calendar;->get(I)I

    move-result v9

    .line 1600
    invoke-virtual {v0, v4}, Ljava/util/Calendar;->get(I)I

    move-result v10

    if-ne v1, v8, :cond_0

    if-ne v3, v9, :cond_0

    if-ne v5, v10, :cond_0

    .line 1603
    invoke-virtual {v7}, Lcom/lostpixels/fieldservice/internal/report/ServiceSession;->getComment()Ljava/lang/String;

    move-result-object p1

    return-object p1

    .line 1605
    :cond_1
    const-string p1, ""

    return-object p1
.end method

.method private openAddVisitDialog(Z)V
    .locals 4

    const/4 v0, -0x1

    .line 1909
    iput v0, p0, Lcom/lostpixels/fieldservice/activities/visits/PersonDialog;->mInfoIndex:I

    .line 1910
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/lostpixels/fieldservice/activities/visits/EditVisitDialog;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 1911
    const-string v1, "IsEditing"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 1912
    const-string v1, "Person"

    iget-object v3, p0, Lcom/lostpixels/fieldservice/activities/visits/PersonDialog;->person:Lcom/lostpixels/fieldservice/internal/ministry/Person;

    invoke-virtual {v0, v1, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 1913
    new-instance v1, Lcom/lostpixels/fieldservice/internal/report/ServiceSession;

    invoke-direct {v1}, Lcom/lostpixels/fieldservice/internal/report/ServiceSession;-><init>()V

    const-string v3, "ServiceSession"

    invoke-virtual {v0, v3, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 1914
    const-string v1, "TagPerson"

    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 1915
    iget-object p1, p0, Lcom/lostpixels/fieldservice/activities/visits/PersonDialog;->mlstPersonInfo:Ljava/util/ArrayList;

    const/4 v1, 0x1

    if-eqz p1, :cond_0

    invoke-virtual {p1}, Ljava/util/ArrayList;->isEmpty()Z

    move-result p1

    if-eqz p1, :cond_1

    :cond_0
    const/4 v2, 0x1

    :cond_1
    const-string p1, "IsFirstVisit"

    invoke-virtual {v0, p1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 1916
    iget-boolean p1, p0, Lcom/lostpixels/fieldservice/activities/visits/PersonDialog;->bCreateNew:Z

    if-eqz p1, :cond_3

    iget-object p1, p0, Lcom/lostpixels/fieldservice/activities/visits/PersonDialog;->mlstPersonInfo:Ljava/util/ArrayList;

    if-eqz p1, :cond_2

    invoke-virtual {p1}, Ljava/util/ArrayList;->isEmpty()Z

    move-result p1

    if-eqz p1, :cond_3

    .line 1917
    :cond_2
    const-string p1, "HidePerson"

    invoke-virtual {v0, p1, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 1918
    :cond_3
    invoke-virtual {p0, v0, v1}, Landroidx/activity/ComponentActivity;->startActivityForResult(Landroid/content/Intent;I)V

    return-void
.end method

.method private populateInfoList()V
    .locals 3

    .line 1369
    iget-object v0, p0, Lcom/lostpixels/fieldservice/activities/visits/PersonDialog;->lstPersonNotes:Landroid/widget/ListView;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/lostpixels/fieldservice/activities/visits/PersonDialog;->mlstPersonInfo:Ljava/util/ArrayList;

    if-eqz v0, :cond_0

    .line 1371
    new-instance v0, Lcom/lostpixels/fieldservice/activities/visits/PersonDialog$PersonInfoListAdapter;

    iget-object v1, p0, Lcom/lostpixels/fieldservice/activities/visits/PersonDialog;->mlstPersonInfo:Ljava/util/ArrayList;

    invoke-static {v1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    check-cast v1, Ljava/util/List;

    const v2, 0x7f0c00f7

    invoke-direct {v0, p0, p0, v2, v1}, Lcom/lostpixels/fieldservice/activities/visits/PersonDialog$PersonInfoListAdapter;-><init>(Lcom/lostpixels/fieldservice/activities/visits/PersonDialog;Landroid/app/Activity;ILjava/util/List;)V

    .line 1373
    iget-object v1, p0, Lcom/lostpixels/fieldservice/activities/visits/PersonDialog;->lstPersonNotes:Landroid/widget/ListView;

    invoke-virtual {v1, v0}, Landroid/widget/ListView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 1374
    iget-object v0, p0, Lcom/lostpixels/fieldservice/activities/visits/PersonDialog;->lstPersonNotes:Landroid/widget/ListView;

    invoke-virtual {p0, v0}, Landroid/app/Activity;->registerForContextMenu(Landroid/view/View;)V

    .line 1375
    iget-object v0, p0, Lcom/lostpixels/fieldservice/activities/visits/PersonDialog;->lstPersonNotes:Landroid/widget/ListView;

    new-instance v1, Lcom/lostpixels/fieldservice/activities/visits/PersonDialog$$ExternalSyntheticLambda4;

    invoke-direct {v1, p0}, Lcom/lostpixels/fieldservice/activities/visits/PersonDialog$$ExternalSyntheticLambda4;-><init>(Lcom/lostpixels/fieldservice/activities/visits/PersonDialog;)V

    invoke-virtual {v0, v1}, Landroid/widget/AdapterView;->setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V

    :cond_0
    return-void
.end method

.method private saveAndFinish()V
    .locals 2

    .line 1502
    new-instance v0, Lcom/lostpixels/fieldservice/activities/visits/PersonDialog$24;

    invoke-direct {v0, p0}, Lcom/lostpixels/fieldservice/activities/visits/PersonDialog$24;-><init>(Lcom/lostpixels/fieldservice/activities/visits/PersonDialog;)V

    invoke-static {v0}, Lcom/lostpixels/fieldservice/realm/RealmHelper;->write(Lcom/lostpixels/fieldservice/realm/RealmHelper$Writer;)Z

    const/4 v0, 0x0

    .line 1579
    sput-object v0, Lcom/lostpixels/fieldservice/activities/visits/PersonDialog;->mSessions:Ljava/util/ArrayList;

    .line 1581
    invoke-static {}, Lcom/lostpixels/fieldservice/ui/nowcards/NowCardListCreator;->resetScheduledVisits()V

    .line 1582
    invoke-static {}, Lcom/lostpixels/fieldservice/ui/nowcards/NowCardListCreator;->resetMonthReport()V

    .line 1584
    const-string v0, "PersonDialog"

    const-string v1, "finish"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1585
    invoke-virtual {p0}, Landroid/app/Activity;->finish()V

    return-void
.end method

.method private savePerson()V
    .locals 9

    .line 1416
    iget-object v0, p0, Lcom/lostpixels/fieldservice/activities/visits/PersonDialog;->person:Lcom/lostpixels/fieldservice/internal/ministry/Person;

    if-eqz v0, :cond_8

    .line 1417
    iget-object v1, p0, Lcom/lostpixels/fieldservice/activities/visits/PersonDialog;->mlstPersonInfo:Ljava/util/ArrayList;

    invoke-virtual {v0, v1}, Lcom/lostpixels/fieldservice/internal/ministry/Person;->setInfo(Ljava/util/List;)V

    .line 1421
    iget-object v0, p0, Lcom/lostpixels/fieldservice/activities/base/BaseActivity;->realm:Lio/realm/Realm;

    invoke-static {v0}, Lcom/lostpixels/fieldservice/internal/ministry/MinistryManager;->getInstance(Lio/realm/Realm;)Lcom/lostpixels/fieldservice/internal/ministry/MinistryManager;

    move-result-object v0

    iget-object v1, p0, Lcom/lostpixels/fieldservice/activities/base/BaseActivity;->realm:Lio/realm/Realm;

    invoke-virtual {v0, v1}, Lcom/lostpixels/fieldservice/internal/ministry/MinistryManager;->getPersons(Lio/realm/Realm;)Lio/realm/RealmResults;

    move-result-object v0

    invoke-virtual {v0}, Lio/realm/RealmResults;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    const-wide/16 v2, -0x1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/lostpixels/fieldservice/internal/ministry/Person;

    .line 1422
    invoke-virtual {v1}, Lcom/lostpixels/fieldservice/internal/ministry/Person;->getId()J

    move-result-wide v4

    iget-object v6, p0, Lcom/lostpixels/fieldservice/activities/visits/PersonDialog;->person:Lcom/lostpixels/fieldservice/internal/ministry/Person;

    invoke-virtual {v6}, Lcom/lostpixels/fieldservice/internal/ministry/Person;->getId()J

    move-result-wide v6

    cmp-long v8, v4, v6

    if-nez v8, :cond_0

    .line 1423
    invoke-virtual {v1}, Lcom/lostpixels/fieldservice/internal/ministry/Person;->getId()J

    move-result-wide v0

    goto :goto_0

    :cond_1
    move-wide v0, v2

    :goto_0
    const/4 v4, 0x1

    const/4 v5, 0x0

    cmp-long v6, v0, v2

    if-eqz v6, :cond_2

    .line 1429
    iget-object v2, p0, Lcom/lostpixels/fieldservice/activities/base/BaseActivity;->realm:Lio/realm/Realm;

    const-class v3, Lcom/lostpixels/fieldservice/internal/ministry/Visit;

    invoke-virtual {v2, v3}, Lio/realm/Realm;->where(Ljava/lang/Class;)Lio/realm/RealmQuery;

    move-result-object v2

    const-string v3, "houseHolder"

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v7

    invoke-virtual {v2, v3, v7}, Lio/realm/RealmQuery;->equalTo(Ljava/lang/String;Ljava/lang/Long;)Lio/realm/RealmQuery;

    move-result-object v2

    invoke-virtual {v2}, Lio/realm/RealmQuery;->findFirst()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/lostpixels/fieldservice/internal/ministry/Visit;

    if-eqz v2, :cond_2

    .line 1432
    new-instance v3, Lcom/lostpixels/fieldservice/activities/visits/PersonDialog$$ExternalSyntheticLambda7;

    invoke-direct {v3, p0, v2}, Lcom/lostpixels/fieldservice/activities/visits/PersonDialog$$ExternalSyntheticLambda7;-><init>(Lcom/lostpixels/fieldservice/activities/visits/PersonDialog;Lcom/lostpixels/fieldservice/internal/ministry/Visit;)V

    invoke-static {v3}, Lcom/lostpixels/fieldservice/realm/RealmHelper;->write(Lcom/lostpixels/fieldservice/realm/RealmHelper$Writer;)Z

    const/4 v2, 0x1

    goto :goto_1

    :cond_2
    const/4 v2, 0x0

    .line 1448
    :goto_1
    iget-object v3, p0, Lcom/lostpixels/fieldservice/activities/visits/PersonDialog;->person:Lcom/lostpixels/fieldservice/internal/ministry/Person;

    invoke-virtual {v3}, Lcom/lostpixels/fieldservice/internal/ministry/Person;->getInfo()Ljava/util/List;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/List;->isEmpty()Z

    move-result v3

    if-nez v3, :cond_4

    .line 1449
    iget-object v3, p0, Lcom/lostpixels/fieldservice/activities/visits/PersonDialog;->person:Lcom/lostpixels/fieldservice/internal/ministry/Person;

    invoke-virtual {v3}, Lcom/lostpixels/fieldservice/internal/ministry/Person;->getInfo()Ljava/util/List;

    move-result-object v7

    invoke-interface {v7, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/lostpixels/fieldservice/internal/ministry/VisitInfo;

    invoke-virtual {v7}, Lcom/lostpixels/fieldservice/internal/ministry/VisitInfo;->getVisitType()I

    move-result v7

    const/4 v8, 0x3

    if-eq v7, v8, :cond_3

    goto :goto_2

    :cond_3
    const/4 v4, 0x0

    :goto_2
    invoke-virtual {v3, v4}, Lcom/lostpixels/fieldservice/internal/ministry/Person;->setInterested(Z)V

    .line 1451
    :cond_4
    iget-boolean v3, p0, Lcom/lostpixels/fieldservice/activities/visits/PersonDialog;->bCreateFromTerritory:Z

    if-nez v3, :cond_5

    if-nez v2, :cond_5

    iget-object v2, p0, Lcom/lostpixels/fieldservice/activities/visits/PersonDialog;->person:Lcom/lostpixels/fieldservice/internal/ministry/Person;

    invoke-virtual {v2}, Lcom/lostpixels/fieldservice/internal/ministry/Person;->isBibleStudy()Z

    move-result v2

    if-nez v2, :cond_5

    iget-object v2, p0, Lcom/lostpixels/fieldservice/activities/visits/PersonDialog;->person:Lcom/lostpixels/fieldservice/internal/ministry/Person;

    invoke-virtual {v2}, Lcom/lostpixels/fieldservice/internal/ministry/Person;->isFavorite()Z

    move-result v2

    if-nez v2, :cond_5

    iget-object v2, p0, Lcom/lostpixels/fieldservice/activities/visits/PersonDialog;->person:Lcom/lostpixels/fieldservice/internal/ministry/Person;

    .line 1452
    invoke-virtual {v2}, Lcom/lostpixels/fieldservice/internal/ministry/Person;->isMagazineRoute()Z

    move-result v2

    if-nez v2, :cond_5

    iget-object v2, p0, Lcom/lostpixels/fieldservice/activities/visits/PersonDialog;->person:Lcom/lostpixels/fieldservice/internal/ministry/Person;

    invoke-virtual {v2}, Lcom/lostpixels/fieldservice/internal/ministry/Person;->isReturnVisit()Z

    move-result v2

    if-nez v2, :cond_5

    .line 1454
    new-instance v0, Landroidx/appcompat/app/AlertDialog$Builder;

    invoke-direct {v0, p0}, Landroidx/appcompat/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    const v1, 0x7f1200dc

    .line 1455
    invoke-virtual {p0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroidx/appcompat/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroidx/appcompat/app/AlertDialog$Builder;

    move-result-object v1

    invoke-virtual {v1, v5}, Landroidx/appcompat/app/AlertDialog$Builder;->setCancelable(Z)Landroidx/appcompat/app/AlertDialog$Builder;

    move-result-object v1

    const v2, 0x7f1203a8

    .line 1456
    invoke-virtual {p0, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    new-instance v3, Lcom/lostpixels/fieldservice/activities/visits/PersonDialog$23;

    invoke-direct {v3, p0}, Lcom/lostpixels/fieldservice/activities/visits/PersonDialog$23;-><init>(Lcom/lostpixels/fieldservice/activities/visits/PersonDialog;)V

    invoke-virtual {v1, v2, v3}, Landroidx/appcompat/app/AlertDialog$Builder;->setPositiveButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroidx/appcompat/app/AlertDialog$Builder;

    move-result-object v1

    const v2, 0x7f12004b

    .line 1471
    invoke-virtual {p0, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    new-instance v3, Lcom/lostpixels/fieldservice/activities/visits/PersonDialog$22;

    invoke-direct {v3, p0}, Lcom/lostpixels/fieldservice/activities/visits/PersonDialog$22;-><init>(Lcom/lostpixels/fieldservice/activities/visits/PersonDialog;)V

    invoke-virtual {v1, v2, v3}, Landroidx/appcompat/app/AlertDialog$Builder;->setNegativeButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroidx/appcompat/app/AlertDialog$Builder;

    .line 1476
    invoke-virtual {v0}, Landroidx/appcompat/app/AlertDialog$Builder;->create()Landroidx/appcompat/app/AlertDialog;

    move-result-object v0

    .line 1477
    invoke-virtual {v0}, Landroid/app/Dialog;->show()V

    return-void

    .line 1481
    :cond_5
    iget-boolean v2, p0, Lcom/lostpixels/fieldservice/activities/visits/PersonDialog;->bCreateNew:Z

    if-eqz v2, :cond_6

    .line 1482
    iget-object v0, p0, Lcom/lostpixels/fieldservice/activities/base/BaseActivity;->realm:Lio/realm/Realm;

    invoke-static {v0}, Lcom/lostpixels/fieldservice/internal/ministry/MinistryManager;->getInstance(Lio/realm/Realm;)Lcom/lostpixels/fieldservice/internal/ministry/MinistryManager;

    move-result-object v0

    iget-object v1, p0, Lcom/lostpixels/fieldservice/activities/base/BaseActivity;->realm:Lio/realm/Realm;

    iget-object v2, p0, Lcom/lostpixels/fieldservice/activities/visits/PersonDialog;->person:Lcom/lostpixels/fieldservice/internal/ministry/Person;

    invoke-virtual {v0, v1, v2}, Lcom/lostpixels/fieldservice/internal/ministry/MinistryManager;->addPerson(Lio/realm/Realm;Lcom/lostpixels/fieldservice/internal/ministry/Person;)J

    move-result-wide v0

    iput-wide v0, p0, Lcom/lostpixels/fieldservice/activities/visits/PersonDialog;->mPersonKey:J

    goto :goto_3

    :cond_6
    if-eqz v6, :cond_7

    .line 1487
    iput-wide v0, p0, Lcom/lostpixels/fieldservice/activities/visits/PersonDialog;->mPersonKey:J

    .line 1488
    iget-object v0, p0, Lcom/lostpixels/fieldservice/activities/base/BaseActivity;->realm:Lio/realm/Realm;

    invoke-static {v0}, Lcom/lostpixels/fieldservice/internal/ministry/MinistryManager;->getInstance(Lio/realm/Realm;)Lcom/lostpixels/fieldservice/internal/ministry/MinistryManager;

    move-result-object v0

    iget-object v1, p0, Lcom/lostpixels/fieldservice/activities/visits/PersonDialog;->person:Lcom/lostpixels/fieldservice/internal/ministry/Person;

    invoke-virtual {v0, v1}, Lcom/lostpixels/fieldservice/internal/ministry/MinistryManager;->updatePerson(Lcom/lostpixels/fieldservice/internal/ministry/Person;)V

    .line 1492
    :cond_7
    :goto_3
    invoke-direct {p0}, Lcom/lostpixels/fieldservice/activities/visits/PersonDialog;->saveAndFinish()V

    return-void

    .line 1497
    :cond_8
    invoke-direct {p0}, Lcom/lostpixels/fieldservice/activities/visits/PersonDialog;->saveAndFinish()V

    return-void
.end method

.method private sendEmail()V
    .locals 3

    .line 1796
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.intent.action.SEND"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const/high16 v1, 0x10000000

    .line 1798
    invoke-virtual {v0, v1}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 1799
    iget-object v1, p0, Lcom/lostpixels/fieldservice/activities/visits/PersonDialog;->person:Lcom/lostpixels/fieldservice/internal/ministry/Person;

    invoke-static {v1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    invoke-virtual {v1}, Lcom/lostpixels/fieldservice/internal/ministry/Person;->getEmail()Ljava/lang/String;

    move-result-object v1

    filled-new-array {v1}, [Ljava/lang/String;

    move-result-object v1

    const-string v2, "android.intent.extra.EMAIL"

    invoke-virtual {v0, v2, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;[Ljava/lang/String;)Landroid/content/Intent;

    .line 1800
    const-string v1, "vnd.android.cursor.dir/email"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setType(Ljava/lang/String;)Landroid/content/Intent;

    .line 1801
    const-string v1, "Email:"

    invoke-static {v0, v1}, Landroid/content/Intent;->createChooser(Landroid/content/Intent;Ljava/lang/CharSequence;)Landroid/content/Intent;

    move-result-object v0

    invoke-virtual {p0, v0}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    return-void
.end method

.method private setPersonInfo()V
    .locals 13

    .line 1014
    invoke-static {p0}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v0

    .line 1015
    const-string v1, "checkGpsAsMinutes"

    const/4 v2, 0x0

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    .line 1017
    new-instance v1, Lcom/lostpixels/fieldservice/activities/visits/PersonDialog$$ExternalSyntheticLambda5;

    invoke-direct {v1, p0}, Lcom/lostpixels/fieldservice/activities/visits/PersonDialog$$ExternalSyntheticLambda5;-><init>(Lcom/lostpixels/fieldservice/activities/visits/PersonDialog;)V

    .line 1023
    iget-object v3, p0, Lcom/lostpixels/fieldservice/activities/visits/PersonDialog;->txtName:Landroid/widget/TextView;

    const/4 v4, 0x2

    const/4 v5, 0x1

    const-string v6, "%s (%s)"

    if-eqz v3, :cond_3

    .line 1024
    iget-object v3, p0, Lcom/lostpixels/fieldservice/activities/visits/PersonDialog;->person:Lcom/lostpixels/fieldservice/internal/ministry/Person;

    invoke-static {v3}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    invoke-virtual {v3}, Lcom/lostpixels/fieldservice/internal/ministry/Person;->getName()Ljava/lang/String;

    move-result-object v3

    if-eqz v3, :cond_0

    iget-object v3, p0, Lcom/lostpixels/fieldservice/activities/visits/PersonDialog;->person:Lcom/lostpixels/fieldservice/internal/ministry/Person;

    invoke-virtual {v3}, Lcom/lostpixels/fieldservice/internal/ministry/Person;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/String;->isEmpty()Z

    move-result v3

    if-nez v3, :cond_0

    .line 1025
    iget-object v3, p0, Lcom/lostpixels/fieldservice/activities/visits/PersonDialog;->txtName:Landroid/widget/TextView;

    iget-object v7, p0, Lcom/lostpixels/fieldservice/activities/visits/PersonDialog;->person:Lcom/lostpixels/fieldservice/internal/ministry/Person;

    invoke-virtual {v7}, Lcom/lostpixels/fieldservice/internal/ministry/Person;->getName()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v3, v7}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 1026
    iget-object v3, p0, Lcom/lostpixels/fieldservice/activities/visits/PersonDialog;->txtName:Landroid/widget/TextView;

    new-instance v7, Lcom/lostpixels/fieldservice/activities/visits/PersonDialog$$ExternalSyntheticLambda6;

    invoke-direct {v7, p0}, Lcom/lostpixels/fieldservice/activities/visits/PersonDialog$$ExternalSyntheticLambda6;-><init>(Lcom/lostpixels/fieldservice/activities/visits/PersonDialog;)V

    invoke-virtual {v3, v7}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    goto :goto_1

    .line 1045
    :cond_0
    iget-object v3, p0, Lcom/lostpixels/fieldservice/activities/visits/PersonDialog;->person:Lcom/lostpixels/fieldservice/internal/ministry/Person;

    invoke-virtual {v3}, Lcom/lostpixels/fieldservice/internal/ministry/Person;->getAddress()Ljava/lang/String;

    move-result-object v3

    if-eqz v3, :cond_2

    iget-object v3, p0, Lcom/lostpixels/fieldservice/activities/visits/PersonDialog;->person:Lcom/lostpixels/fieldservice/internal/ministry/Person;

    invoke-virtual {v3}, Lcom/lostpixels/fieldservice/internal/ministry/Person;->getAddress()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/String;->isEmpty()Z

    move-result v3

    if-nez v3, :cond_2

    .line 1046
    iget-object v3, p0, Lcom/lostpixels/fieldservice/activities/visits/PersonDialog;->person:Lcom/lostpixels/fieldservice/internal/ministry/Person;

    invoke-virtual {v3}, Lcom/lostpixels/fieldservice/internal/ministry/Person;->getApartment()Ljava/lang/String;

    move-result-object v3

    if-eqz v3, :cond_1

    iget-object v3, p0, Lcom/lostpixels/fieldservice/activities/visits/PersonDialog;->person:Lcom/lostpixels/fieldservice/internal/ministry/Person;

    invoke-virtual {v3}, Lcom/lostpixels/fieldservice/internal/ministry/Person;->getApartment()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/String;->isEmpty()Z

    move-result v3

    if-nez v3, :cond_1

    .line 1047
    iget-object v3, p0, Lcom/lostpixels/fieldservice/activities/visits/PersonDialog;->txtName:Landroid/widget/TextView;

    iget-object v7, p0, Lcom/lostpixels/fieldservice/activities/visits/PersonDialog;->person:Lcom/lostpixels/fieldservice/internal/ministry/Person;

    invoke-virtual {v7}, Lcom/lostpixels/fieldservice/internal/ministry/Person;->getAddress()Ljava/lang/String;

    move-result-object v7

    iget-object v8, p0, Lcom/lostpixels/fieldservice/activities/visits/PersonDialog;->person:Lcom/lostpixels/fieldservice/internal/ministry/Person;

    invoke-virtual {v8}, Lcom/lostpixels/fieldservice/internal/ministry/Person;->getApartment()Ljava/lang/String;

    move-result-object v8

    new-array v9, v4, [Ljava/lang/Object;

    aput-object v7, v9, v2

    aput-object v8, v9, v5

    invoke-static {v6, v9}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v3, v7}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0

    .line 1049
    :cond_1
    iget-object v3, p0, Lcom/lostpixels/fieldservice/activities/visits/PersonDialog;->txtName:Landroid/widget/TextView;

    iget-object v7, p0, Lcom/lostpixels/fieldservice/activities/visits/PersonDialog;->person:Lcom/lostpixels/fieldservice/internal/ministry/Person;

    invoke-virtual {v7}, Lcom/lostpixels/fieldservice/internal/ministry/Person;->getAddress()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v3, v7}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 1050
    :goto_0
    iget-object v3, p0, Lcom/lostpixels/fieldservice/activities/visits/PersonDialog;->txtName:Landroid/widget/TextView;

    new-instance v7, Lcom/lostpixels/fieldservice/activities/visits/PersonDialog$16;

    invoke-direct {v7, p0}, Lcom/lostpixels/fieldservice/activities/visits/PersonDialog$16;-><init>(Lcom/lostpixels/fieldservice/activities/visits/PersonDialog;)V

    invoke-virtual {v3, v7}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    goto :goto_1

    .line 1076
    :cond_2
    iget-object v3, p0, Lcom/lostpixels/fieldservice/activities/visits/PersonDialog;->txtName:Landroid/widget/TextView;

    const-string v7, ""

    invoke-virtual {v3, v7}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 1079
    :cond_3
    :goto_1
    iget-object v3, p0, Lcom/lostpixels/fieldservice/activities/visits/PersonDialog;->txtAddressFirstPage:Landroid/widget/TextView;

    const/16 v7, 0x8

    if-eqz v3, :cond_6

    .line 1080
    iget-object v3, p0, Lcom/lostpixels/fieldservice/activities/visits/PersonDialog;->person:Lcom/lostpixels/fieldservice/internal/ministry/Person;

    invoke-static {v3}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    invoke-virtual {v3}, Lcom/lostpixels/fieldservice/internal/ministry/Person;->getName()Ljava/lang/String;

    move-result-object v3

    if-eqz v3, :cond_5

    iget-object v3, p0, Lcom/lostpixels/fieldservice/activities/visits/PersonDialog;->person:Lcom/lostpixels/fieldservice/internal/ministry/Person;

    invoke-virtual {v3}, Lcom/lostpixels/fieldservice/internal/ministry/Person;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/String;->isEmpty()Z

    move-result v3

    if-nez v3, :cond_5

    iget-object v3, p0, Lcom/lostpixels/fieldservice/activities/visits/PersonDialog;->person:Lcom/lostpixels/fieldservice/internal/ministry/Person;

    invoke-virtual {v3}, Lcom/lostpixels/fieldservice/internal/ministry/Person;->getAddress()Ljava/lang/String;

    move-result-object v3

    if-eqz v3, :cond_5

    iget-object v3, p0, Lcom/lostpixels/fieldservice/activities/visits/PersonDialog;->person:Lcom/lostpixels/fieldservice/internal/ministry/Person;

    invoke-virtual {v3}, Lcom/lostpixels/fieldservice/internal/ministry/Person;->getAddress()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/String;->isEmpty()Z

    move-result v3

    if-nez v3, :cond_5

    .line 1081
    iget-object v3, p0, Lcom/lostpixels/fieldservice/activities/visits/PersonDialog;->person:Lcom/lostpixels/fieldservice/internal/ministry/Person;

    invoke-virtual {v3}, Lcom/lostpixels/fieldservice/internal/ministry/Person;->getApartment()Ljava/lang/String;

    move-result-object v3

    if-eqz v3, :cond_4

    iget-object v3, p0, Lcom/lostpixels/fieldservice/activities/visits/PersonDialog;->person:Lcom/lostpixels/fieldservice/internal/ministry/Person;

    invoke-virtual {v3}, Lcom/lostpixels/fieldservice/internal/ministry/Person;->getApartment()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/String;->isEmpty()Z

    move-result v3

    if-nez v3, :cond_4

    .line 1082
    iget-object v3, p0, Lcom/lostpixels/fieldservice/activities/visits/PersonDialog;->txtAddressFirstPage:Landroid/widget/TextView;

    iget-object v8, p0, Lcom/lostpixels/fieldservice/activities/visits/PersonDialog;->person:Lcom/lostpixels/fieldservice/internal/ministry/Person;

    invoke-virtual {v8}, Lcom/lostpixels/fieldservice/internal/ministry/Person;->getAddress()Ljava/lang/String;

    move-result-object v8

    iget-object v9, p0, Lcom/lostpixels/fieldservice/activities/visits/PersonDialog;->person:Lcom/lostpixels/fieldservice/internal/ministry/Person;

    invoke-virtual {v9}, Lcom/lostpixels/fieldservice/internal/ministry/Person;->getApartment()Ljava/lang/String;

    move-result-object v9

    new-array v10, v4, [Ljava/lang/Object;

    aput-object v8, v10, v2

    aput-object v9, v10, v5

    invoke-static {v6, v10}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v3, v6}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_2

    .line 1084
    :cond_4
    iget-object v3, p0, Lcom/lostpixels/fieldservice/activities/visits/PersonDialog;->txtAddressFirstPage:Landroid/widget/TextView;

    iget-object v6, p0, Lcom/lostpixels/fieldservice/activities/visits/PersonDialog;->person:Lcom/lostpixels/fieldservice/internal/ministry/Person;

    invoke-virtual {v6}, Lcom/lostpixels/fieldservice/internal/ministry/Person;->getAddress()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v3, v6}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 1085
    :goto_2
    iget-object v3, p0, Lcom/lostpixels/fieldservice/activities/visits/PersonDialog;->txtAddressFirstPage:Landroid/widget/TextView;

    invoke-virtual {v3, v2}, Landroid/view/View;->setVisibility(I)V

    .line 1086
    iget-object v3, p0, Lcom/lostpixels/fieldservice/activities/visits/PersonDialog;->txtAddressFirstPage:Landroid/widget/TextView;

    new-instance v6, Lcom/lostpixels/fieldservice/activities/visits/PersonDialog$17;

    invoke-direct {v6, p0}, Lcom/lostpixels/fieldservice/activities/visits/PersonDialog$17;-><init>(Lcom/lostpixels/fieldservice/activities/visits/PersonDialog;)V

    invoke-virtual {v3, v6}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    goto :goto_3

    .line 1112
    :cond_5
    iget-object v3, p0, Lcom/lostpixels/fieldservice/activities/visits/PersonDialog;->txtAddressFirstPage:Landroid/widget/TextView;

    invoke-virtual {v3, v7}, Landroid/view/View;->setVisibility(I)V

    .line 1114
    :cond_6
    :goto_3
    iget-object v3, p0, Lcom/lostpixels/fieldservice/activities/visits/PersonDialog;->txtAddress:Landroid/widget/TextView;

    if-eqz v3, :cond_b

    .line 1115
    iget-object v3, p0, Lcom/lostpixels/fieldservice/activities/visits/PersonDialog;->person:Lcom/lostpixels/fieldservice/internal/ministry/Person;

    invoke-static {v3}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    invoke-virtual {v3}, Lcom/lostpixels/fieldservice/internal/ministry/Person;->getAddress()Ljava/lang/String;

    move-result-object v3

    if-eqz v3, :cond_a

    iget-object v3, p0, Lcom/lostpixels/fieldservice/activities/visits/PersonDialog;->person:Lcom/lostpixels/fieldservice/internal/ministry/Person;

    invoke-virtual {v3}, Lcom/lostpixels/fieldservice/internal/ministry/Person;->getAddress()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/String;->isEmpty()Z

    move-result v3

    if-nez v3, :cond_a

    .line 1116
    iget-object v3, p0, Lcom/lostpixels/fieldservice/activities/visits/PersonDialog;->person:Lcom/lostpixels/fieldservice/internal/ministry/Person;

    invoke-virtual {v3}, Lcom/lostpixels/fieldservice/internal/ministry/Person;->getAddress()Ljava/lang/String;

    move-result-object v3

    .line 1117
    iget-object v6, p0, Lcom/lostpixels/fieldservice/activities/visits/PersonDialog;->person:Lcom/lostpixels/fieldservice/internal/ministry/Person;

    invoke-virtual {v6}, Lcom/lostpixels/fieldservice/internal/ministry/Person;->getApartment()Ljava/lang/String;

    move-result-object v6

    const-string v8, ")"

    if-eqz v6, :cond_7

    iget-object v6, p0, Lcom/lostpixels/fieldservice/activities/visits/PersonDialog;->person:Lcom/lostpixels/fieldservice/internal/ministry/Person;

    invoke-virtual {v6}, Lcom/lostpixels/fieldservice/internal/ministry/Person;->getApartment()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/String;->isEmpty()Z

    move-result v6

    if-nez v6, :cond_7

    .line 1118
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, " ("

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Lcom/lostpixels/fieldservice/activities/visits/PersonDialog;->person:Lcom/lostpixels/fieldservice/internal/ministry/Person;

    invoke-virtual {v3}, Lcom/lostpixels/fieldservice/internal/ministry/Person;->getApartment()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 1119
    :cond_7
    iget-object v6, p0, Lcom/lostpixels/fieldservice/activities/visits/PersonDialog;->person:Lcom/lostpixels/fieldservice/internal/ministry/Person;

    invoke-virtual {v6}, Lcom/lostpixels/fieldservice/internal/ministry/Person;->getPosition()Lcom/google/android/gms/maps/model/LatLng;

    move-result-object v6

    if-eqz v6, :cond_9

    .line 1120
    const-string v6, "\n("

    if-eqz v0, :cond_8

    .line 1121
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Lcom/lostpixels/fieldservice/activities/visits/PersonDialog;->person:Lcom/lostpixels/fieldservice/internal/ministry/Person;

    invoke-virtual {v3}, Lcom/lostpixels/fieldservice/internal/ministry/Person;->getPosition()Lcom/google/android/gms/maps/model/LatLng;

    move-result-object v3

    iget-wide v9, v3, Lcom/google/android/gms/maps/model/LatLng;->latitude:D

    iget-object v3, p0, Lcom/lostpixels/fieldservice/activities/visits/PersonDialog;->person:Lcom/lostpixels/fieldservice/internal/ministry/Person;

    invoke-virtual {v3}, Lcom/lostpixels/fieldservice/internal/ministry/Person;->getPosition()Lcom/google/android/gms/maps/model/LatLng;

    move-result-object v3

    iget-wide v11, v3, Lcom/google/android/gms/maps/model/LatLng;->longitude:D

    invoke-static {v9, v10, v11, v12}, Lcom/lostpixels/fieldservice/utils/map/PositionUtils;->getGPSCoordinatesAsDegrees(DD)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    goto :goto_4

    .line 1123
    :cond_8
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Lcom/lostpixels/fieldservice/activities/visits/PersonDialog;->person:Lcom/lostpixels/fieldservice/internal/ministry/Person;

    invoke-virtual {v3}, Lcom/lostpixels/fieldservice/internal/ministry/Person;->getPosition()Lcom/google/android/gms/maps/model/LatLng;

    move-result-object v3

    iget-wide v9, v3, Lcom/google/android/gms/maps/model/LatLng;->latitude:D

    invoke-static {v9, v10}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v3

    new-array v6, v5, [Ljava/lang/Object;

    aput-object v3, v6, v2

    const-string v3, "%.4f"

    invoke-static {v3, v6}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v6, "; "

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v6, p0, Lcom/lostpixels/fieldservice/activities/visits/PersonDialog;->person:Lcom/lostpixels/fieldservice/internal/ministry/Person;

    invoke-virtual {v6}, Lcom/lostpixels/fieldservice/internal/ministry/Person;->getPosition()Lcom/google/android/gms/maps/model/LatLng;

    move-result-object v6

    iget-wide v9, v6, Lcom/google/android/gms/maps/model/LatLng;->longitude:D

    invoke-static {v9, v10}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v6

    new-array v9, v5, [Ljava/lang/Object;

    aput-object v6, v9, v2

    invoke-static {v3, v9}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 1125
    :cond_9
    :goto_4
    iget-object v0, p0, Lcom/lostpixels/fieldservice/activities/visits/PersonDialog;->txtAddress:Landroid/widget/TextView;

    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 1126
    iget-object v0, p0, Lcom/lostpixels/fieldservice/activities/visits/PersonDialog;->txtAddress:Landroid/widget/TextView;

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    goto :goto_5

    .line 1128
    :cond_a
    iget-object v0, p0, Lcom/lostpixels/fieldservice/activities/visits/PersonDialog;->txtAddress:Landroid/widget/TextView;

    invoke-virtual {v0, v7}, Landroid/view/View;->setVisibility(I)V

    .line 1130
    :cond_b
    :goto_5
    iget-object v0, p0, Lcom/lostpixels/fieldservice/activities/visits/PersonDialog;->txtNeighbourhood:Landroid/widget/TextView;

    const-string v3, ", "

    if-eqz v0, :cond_13

    .line 1131
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 1132
    iget-object v6, p0, Lcom/lostpixels/fieldservice/activities/visits/PersonDialog;->person:Lcom/lostpixels/fieldservice/internal/ministry/Person;

    invoke-static {v6}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    invoke-virtual {v6}, Lcom/lostpixels/fieldservice/internal/ministry/Person;->getSuburb()Ljava/lang/String;

    move-result-object v6

    if-eqz v6, :cond_c

    iget-object v6, p0, Lcom/lostpixels/fieldservice/activities/visits/PersonDialog;->person:Lcom/lostpixels/fieldservice/internal/ministry/Person;

    invoke-virtual {v6}, Lcom/lostpixels/fieldservice/internal/ministry/Person;->getSuburb()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/String;->isEmpty()Z

    move-result v6

    if-nez v6, :cond_c

    .line 1133
    iget-object v6, p0, Lcom/lostpixels/fieldservice/activities/visits/PersonDialog;->person:Lcom/lostpixels/fieldservice/internal/ministry/Person;

    invoke-virtual {v6}, Lcom/lostpixels/fieldservice/internal/ministry/Person;->getSuburb()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1135
    :cond_c
    iget-object v6, p0, Lcom/lostpixels/fieldservice/activities/visits/PersonDialog;->person:Lcom/lostpixels/fieldservice/internal/ministry/Person;

    invoke-virtual {v6}, Lcom/lostpixels/fieldservice/internal/ministry/Person;->getPostalCode()Ljava/lang/String;

    move-result-object v6

    if-eqz v6, :cond_e

    iget-object v6, p0, Lcom/lostpixels/fieldservice/activities/visits/PersonDialog;->person:Lcom/lostpixels/fieldservice/internal/ministry/Person;

    invoke-virtual {v6}, Lcom/lostpixels/fieldservice/internal/ministry/Person;->getPostalCode()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/String;->isEmpty()Z

    move-result v6

    if-nez v6, :cond_e

    .line 1136
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->length()I

    move-result v6

    if-lez v6, :cond_d

    .line 1137
    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1138
    :cond_d
    iget-object v6, p0, Lcom/lostpixels/fieldservice/activities/visits/PersonDialog;->person:Lcom/lostpixels/fieldservice/internal/ministry/Person;

    invoke-virtual {v6}, Lcom/lostpixels/fieldservice/internal/ministry/Person;->getPostalCode()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/4 v6, 0x0

    goto :goto_6

    :cond_e
    const/4 v6, 0x1

    .line 1141
    :goto_6
    iget-object v8, p0, Lcom/lostpixels/fieldservice/activities/visits/PersonDialog;->person:Lcom/lostpixels/fieldservice/internal/ministry/Person;

    invoke-virtual {v8}, Lcom/lostpixels/fieldservice/internal/ministry/Person;->getCity()Ljava/lang/String;

    move-result-object v8

    if-eqz v8, :cond_11

    iget-object v8, p0, Lcom/lostpixels/fieldservice/activities/visits/PersonDialog;->person:Lcom/lostpixels/fieldservice/internal/ministry/Person;

    invoke-virtual {v8}, Lcom/lostpixels/fieldservice/internal/ministry/Person;->getCity()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/String;->isEmpty()Z

    move-result v8

    if-nez v8, :cond_11

    .line 1142
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->length()I

    move-result v8

    if-lez v8, :cond_10

    if-eqz v6, :cond_f

    move-object v6, v3

    goto :goto_7

    .line 1143
    :cond_f
    const-string v6, " "

    :goto_7
    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1144
    :cond_10
    iget-object v6, p0, Lcom/lostpixels/fieldservice/activities/visits/PersonDialog;->person:Lcom/lostpixels/fieldservice/internal/ministry/Person;

    invoke-virtual {v6}, Lcom/lostpixels/fieldservice/internal/ministry/Person;->getCity()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1146
    :cond_11
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->length()I

    move-result v6

    if-lez v6, :cond_12

    .line 1147
    iget-object v6, p0, Lcom/lostpixels/fieldservice/activities/visits/PersonDialog;->txtNeighbourhood:Landroid/widget/TextView;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v6, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_8

    .line 1149
    :cond_12
    iget-object v0, p0, Lcom/lostpixels/fieldservice/activities/visits/PersonDialog;->txtNeighbourhood:Landroid/widget/TextView;

    invoke-virtual {v0, v7}, Landroid/view/View;->setVisibility(I)V

    .line 1153
    :cond_13
    :goto_8
    iget-object v0, p0, Lcom/lostpixels/fieldservice/activities/visits/PersonDialog;->txtTimeForRV:Landroid/widget/TextView;

    const v6, 0x7f12018d

    if-eqz v0, :cond_15

    .line 1154
    iget-object v0, p0, Lcom/lostpixels/fieldservice/activities/visits/PersonDialog;->person:Lcom/lostpixels/fieldservice/internal/ministry/Person;

    invoke-static {v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    invoke-virtual {v0}, Lcom/lostpixels/fieldservice/internal/ministry/Person;->getTimeForRV()Ljava/util/Date;

    move-result-object v0

    if-eqz v0, :cond_14

    .line 1155
    iget-object v0, p0, Lcom/lostpixels/fieldservice/activities/visits/PersonDialog;->txtTimeForRV:Landroid/widget/TextView;

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const/4 v9, 0x3

    invoke-static {v9}, Ljava/text/DateFormat;->getDateInstance(I)Ljava/text/DateFormat;

    move-result-object v10

    iget-object v11, p0, Lcom/lostpixels/fieldservice/activities/visits/PersonDialog;->person:Lcom/lostpixels/fieldservice/internal/ministry/Person;

    invoke-virtual {v11}, Lcom/lostpixels/fieldservice/internal/ministry/Person;->getTimeForRV()Ljava/util/Date;

    move-result-object v11

    invoke-virtual {v10, v11}, Ljava/text/DateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v8, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v10, " - "

    invoke-virtual {v8, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1156
    invoke-static {v9}, Ljava/text/DateFormat;->getTimeInstance(I)Ljava/text/DateFormat;

    move-result-object v9

    iget-object v10, p0, Lcom/lostpixels/fieldservice/activities/visits/PersonDialog;->person:Lcom/lostpixels/fieldservice/internal/ministry/Person;

    invoke-virtual {v10}, Lcom/lostpixels/fieldservice/internal/ministry/Person;->getTimeForRV()Ljava/util/Date;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/text/DateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    .line 1155
    invoke-virtual {v0, v8}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 1158
    iget-object v0, p0, Lcom/lostpixels/fieldservice/activities/visits/PersonDialog;->clearReturnVistDate:Landroid/view/View;

    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    goto :goto_9

    .line 1160
    :cond_14
    iget-object v0, p0, Lcom/lostpixels/fieldservice/activities/visits/PersonDialog;->txtTimeForRV:Landroid/widget/TextView;

    invoke-virtual {p0, v6}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v0, v8}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 1161
    iget-object v0, p0, Lcom/lostpixels/fieldservice/activities/visits/PersonDialog;->clearReturnVistDate:Landroid/view/View;

    const/4 v8, 0x4

    invoke-virtual {v0, v8}, Landroid/view/View;->setVisibility(I)V

    .line 1164
    :cond_15
    :goto_9
    iget-object v0, p0, Lcom/lostpixels/fieldservice/activities/visits/PersonDialog;->txtPublicationToStudy:Landroid/widget/TextView;

    if-eqz v0, :cond_16

    iget-object v0, p0, Lcom/lostpixels/fieldservice/activities/visits/PersonDialog;->person:Lcom/lostpixels/fieldservice/internal/ministry/Person;

    invoke-static {v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    invoke-virtual {v0}, Lcom/lostpixels/fieldservice/internal/ministry/Person;->getStudyPublication()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_16

    iget-object v0, p0, Lcom/lostpixels/fieldservice/activities/visits/PersonDialog;->person:Lcom/lostpixels/fieldservice/internal/ministry/Person;

    .line 1165
    invoke-virtual {v0}, Lcom/lostpixels/fieldservice/internal/ministry/Person;->getStudyPublication()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_16

    .line 1166
    iget-object v0, p0, Lcom/lostpixels/fieldservice/activities/visits/PersonDialog;->txtPublicationToStudy:Landroid/widget/TextView;

    iget-object v8, p0, Lcom/lostpixels/fieldservice/activities/visits/PersonDialog;->person:Lcom/lostpixels/fieldservice/internal/ministry/Person;

    invoke-virtual {v8}, Lcom/lostpixels/fieldservice/internal/ministry/Person;->getStudyPublication()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v0, v8}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_a

    .line 1167
    :cond_16
    iget-object v0, p0, Lcom/lostpixels/fieldservice/activities/visits/PersonDialog;->txtPublicationToStudy:Landroid/widget/TextView;

    if-eqz v0, :cond_17

    .line 1168
    invoke-virtual {p0, v6}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v0, v8}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 1170
    :cond_17
    :goto_a
    iget-object v0, p0, Lcom/lostpixels/fieldservice/activities/visits/PersonDialog;->txtContinue:Landroid/widget/TextView;

    if-eqz v0, :cond_18

    iget-object v0, p0, Lcom/lostpixels/fieldservice/activities/visits/PersonDialog;->person:Lcom/lostpixels/fieldservice/internal/ministry/Person;

    invoke-static {v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    invoke-virtual {v0}, Lcom/lostpixels/fieldservice/internal/ministry/Person;->getContinueStudy()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_18

    iget-object v0, p0, Lcom/lostpixels/fieldservice/activities/visits/PersonDialog;->person:Lcom/lostpixels/fieldservice/internal/ministry/Person;

    invoke-virtual {v0}, Lcom/lostpixels/fieldservice/internal/ministry/Person;->getContinueStudy()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_18

    .line 1171
    iget-object v0, p0, Lcom/lostpixels/fieldservice/activities/visits/PersonDialog;->txtContinue:Landroid/widget/TextView;

    iget-object v8, p0, Lcom/lostpixels/fieldservice/activities/visits/PersonDialog;->person:Lcom/lostpixels/fieldservice/internal/ministry/Person;

    invoke-virtual {v8}, Lcom/lostpixels/fieldservice/internal/ministry/Person;->getContinueStudy()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v0, v8}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_b

    .line 1172
    :cond_18
    iget-object v0, p0, Lcom/lostpixels/fieldservice/activities/visits/PersonDialog;->txtContinue:Landroid/widget/TextView;

    if-eqz v0, :cond_19

    .line 1173
    invoke-virtual {p0, v6}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v0, v8}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 1174
    :cond_19
    :goto_b
    iget-object v0, p0, Lcom/lostpixels/fieldservice/activities/visits/PersonDialog;->viewMagazineHeader:Lcom/lostpixels/fieldservice/ui/MagazineRouteView;

    if-eqz v0, :cond_1a

    .line 1175
    invoke-virtual {v0, v2}, Lcom/lostpixels/fieldservice/ui/MagazineRouteView;->displayName(Z)V

    .line 1177
    :cond_1a
    iget-object v0, p0, Lcom/lostpixels/fieldservice/activities/visits/PersonDialog;->viewMagazineItem:Lcom/lostpixels/fieldservice/ui/MagazineRouteView;

    if-eqz v0, :cond_1b

    .line 1178
    iget-object v8, p0, Lcom/lostpixels/fieldservice/activities/visits/PersonDialog;->person:Lcom/lostpixels/fieldservice/internal/ministry/Person;

    invoke-static {v8}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    invoke-virtual {v8}, Lcom/lostpixels/fieldservice/internal/ministry/Person;->getMagazineRouteMap()[Z

    move-result-object v8

    invoke-virtual {v0, v8}, Lcom/lostpixels/fieldservice/ui/MagazineRouteView;->setMagazineMap([Z)V

    .line 1179
    iget-object v0, p0, Lcom/lostpixels/fieldservice/activities/visits/PersonDialog;->viewMagazineItem:Lcom/lostpixels/fieldservice/ui/MagazineRouteView;

    invoke-virtual {v0, v2}, Lcom/lostpixels/fieldservice/ui/MagazineRouteView;->displayName(Z)V

    .line 1181
    :cond_1b
    iget-object v0, p0, Lcom/lostpixels/fieldservice/activities/visits/PersonDialog;->txtVisitHours:Landroid/widget/TextView;

    if-eqz v0, :cond_33

    .line 1182
    iget-object v0, p0, Lcom/lostpixels/fieldservice/activities/visits/PersonDialog;->person:Lcom/lostpixels/fieldservice/internal/ministry/Person;

    if-eqz v0, :cond_32

    invoke-virtual {v0}, Lcom/lostpixels/fieldservice/internal/ministry/Person;->hasVisitTimeSet()Z

    move-result v0

    if-nez v0, :cond_1c

    goto/16 :goto_c

    .line 1185
    :cond_1c
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 1186
    iget-object v6, p0, Lcom/lostpixels/fieldservice/activities/visits/PersonDialog;->person:Lcom/lostpixels/fieldservice/internal/ministry/Person;

    invoke-virtual {v6}, Lcom/lostpixels/fieldservice/internal/ministry/Person;->visitMorning()Z

    move-result v6

    if-eqz v6, :cond_1d

    const v6, 0x7f120451

    .line 1187
    invoke-virtual {p0, v6}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1188
    :cond_1d
    iget-object v6, p0, Lcom/lostpixels/fieldservice/activities/visits/PersonDialog;->person:Lcom/lostpixels/fieldservice/internal/ministry/Person;

    invoke-virtual {v6}, Lcom/lostpixels/fieldservice/internal/ministry/Person;->visitDay()Z

    move-result v6

    if-eqz v6, :cond_1f

    .line 1189
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->length()I

    move-result v6

    if-lez v6, :cond_1e

    .line 1190
    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_1e
    const v6, 0x7f1203c2

    .line 1191
    invoke-virtual {p0, v6}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1193
    :cond_1f
    iget-object v6, p0, Lcom/lostpixels/fieldservice/activities/visits/PersonDialog;->person:Lcom/lostpixels/fieldservice/internal/ministry/Person;

    invoke-virtual {v6}, Lcom/lostpixels/fieldservice/internal/ministry/Person;->visitEvening()Z

    move-result v6

    if-eqz v6, :cond_21

    .line 1194
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->length()I

    move-result v6

    if-lez v6, :cond_20

    .line 1195
    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_20
    const v6, 0x7f1203e0

    .line 1196
    invoke-virtual {p0, v6}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1198
    :cond_21
    iget-object v6, p0, Lcom/lostpixels/fieldservice/activities/visits/PersonDialog;->person:Lcom/lostpixels/fieldservice/internal/ministry/Person;

    invoke-virtual {v6}, Lcom/lostpixels/fieldservice/internal/ministry/Person;->visitWeekend()Z

    move-result v6

    if-eqz v6, :cond_23

    .line 1199
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->length()I

    move-result v6

    if-lez v6, :cond_22

    .line 1200
    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_22
    const v6, 0x7f120555

    .line 1201
    invoke-virtual {p0, v6}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1203
    :cond_23
    iget-object v6, p0, Lcom/lostpixels/fieldservice/activities/visits/PersonDialog;->person:Lcom/lostpixels/fieldservice/internal/ministry/Person;

    invoke-virtual {v6}, Lcom/lostpixels/fieldservice/internal/ministry/Person;->visitMonday()Z

    move-result v6

    if-eqz v6, :cond_25

    .line 1204
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->length()I

    move-result v6

    if-lez v6, :cond_24

    .line 1205
    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_24
    const v6, 0x7f120449

    .line 1206
    invoke-virtual {p0, v6}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1209
    :cond_25
    iget-object v6, p0, Lcom/lostpixels/fieldservice/activities/visits/PersonDialog;->person:Lcom/lostpixels/fieldservice/internal/ministry/Person;

    invoke-virtual {v6}, Lcom/lostpixels/fieldservice/internal/ministry/Person;->visitTuesday()Z

    move-result v6

    if-eqz v6, :cond_27

    .line 1210
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->length()I

    move-result v6

    if-lez v6, :cond_26

    .line 1211
    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_26
    const v6, 0x7f12053e

    .line 1212
    invoke-virtual {p0, v6}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1214
    :cond_27
    iget-object v6, p0, Lcom/lostpixels/fieldservice/activities/visits/PersonDialog;->person:Lcom/lostpixels/fieldservice/internal/ministry/Person;

    invoke-virtual {v6}, Lcom/lostpixels/fieldservice/internal/ministry/Person;->visitWednesday()Z

    move-result v6

    if-eqz v6, :cond_29

    .line 1215
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->length()I

    move-result v6

    if-lez v6, :cond_28

    .line 1216
    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_28
    const v6, 0x7f120554

    .line 1217
    invoke-virtual {p0, v6}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1219
    :cond_29
    iget-object v6, p0, Lcom/lostpixels/fieldservice/activities/visits/PersonDialog;->person:Lcom/lostpixels/fieldservice/internal/ministry/Person;

    invoke-virtual {v6}, Lcom/lostpixels/fieldservice/internal/ministry/Person;->visitThursday()Z

    move-result v6

    if-eqz v6, :cond_2b

    .line 1220
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->length()I

    move-result v6

    if-lez v6, :cond_2a

    .line 1221
    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_2a
    const v6, 0x7f120533

    .line 1222
    invoke-virtual {p0, v6}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1224
    :cond_2b
    iget-object v6, p0, Lcom/lostpixels/fieldservice/activities/visits/PersonDialog;->person:Lcom/lostpixels/fieldservice/internal/ministry/Person;

    invoke-virtual {v6}, Lcom/lostpixels/fieldservice/internal/ministry/Person;->visitFriday()Z

    move-result v6

    if-eqz v6, :cond_2d

    .line 1225
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->length()I

    move-result v6

    if-lez v6, :cond_2c

    .line 1226
    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_2c
    const v6, 0x7f120405

    .line 1227
    invoke-virtual {p0, v6}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1229
    :cond_2d
    iget-object v6, p0, Lcom/lostpixels/fieldservice/activities/visits/PersonDialog;->person:Lcom/lostpixels/fieldservice/internal/ministry/Person;

    invoke-virtual {v6}, Lcom/lostpixels/fieldservice/internal/ministry/Person;->visitSaturday()Z

    move-result v6

    if-eqz v6, :cond_2f

    .line 1230
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->length()I

    move-result v6

    if-lez v6, :cond_2e

    .line 1231
    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_2e
    const v6, 0x7f1204bb

    .line 1232
    invoke-virtual {p0, v6}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1234
    :cond_2f
    iget-object v6, p0, Lcom/lostpixels/fieldservice/activities/visits/PersonDialog;->person:Lcom/lostpixels/fieldservice/internal/ministry/Person;

    invoke-virtual {v6}, Lcom/lostpixels/fieldservice/internal/ministry/Person;->visitSunday()Z

    move-result v6

    if-eqz v6, :cond_31

    .line 1235
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->length()I

    move-result v6

    if-lez v6, :cond_30

    .line 1236
    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_30
    const v3, 0x7f120508

    .line 1237
    invoke-virtual {p0, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1239
    :cond_31
    iget-object v3, p0, Lcom/lostpixels/fieldservice/activities/visits/PersonDialog;->txtVisitHours:Landroid/widget/TextView;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_d

    .line 1183
    :cond_32
    :goto_c
    iget-object v0, p0, Lcom/lostpixels/fieldservice/activities/visits/PersonDialog;->txtVisitHours:Landroid/widget/TextView;

    invoke-virtual {p0, v6}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 1244
    :cond_33
    :goto_d
    iget-object v0, p0, Lcom/lostpixels/fieldservice/activities/visits/PersonDialog;->txtPhone:Landroid/widget/TextView;

    if-eqz v0, :cond_34

    iget-object v0, p0, Lcom/lostpixels/fieldservice/activities/visits/PersonDialog;->person:Lcom/lostpixels/fieldservice/internal/ministry/Person;

    invoke-static {v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    invoke-virtual {v0}, Lcom/lostpixels/fieldservice/internal/ministry/Person;->getCellPhone()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_34

    iget-object v0, p0, Lcom/lostpixels/fieldservice/activities/visits/PersonDialog;->person:Lcom/lostpixels/fieldservice/internal/ministry/Person;

    invoke-virtual {v0}, Lcom/lostpixels/fieldservice/internal/ministry/Person;->getCellPhone()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_34

    .line 1245
    iget-object v0, p0, Lcom/lostpixels/fieldservice/activities/visits/PersonDialog;->txtPhone:Landroid/widget/TextView;

    iget-object v3, p0, Lcom/lostpixels/fieldservice/activities/visits/PersonDialog;->person:Lcom/lostpixels/fieldservice/internal/ministry/Person;

    invoke-virtual {v3}, Lcom/lostpixels/fieldservice/internal/ministry/Person;->getCellPhone()Ljava/lang/String;

    move-result-object v3

    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v6

    invoke-virtual {v6}, Ljava/util/Locale;->getCountry()Ljava/lang/String;

    move-result-object v6

    invoke-static {v3, v6}, Landroid/telephony/PhoneNumberUtils;->formatNumber(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 1247
    iget-object v0, p0, Lcom/lostpixels/fieldservice/activities/visits/PersonDialog;->txtPhone:Landroid/widget/TextView;

    new-instance v3, Lcom/lostpixels/fieldservice/activities/visits/PersonDialog$18;

    invoke-direct {v3, p0}, Lcom/lostpixels/fieldservice/activities/visits/PersonDialog$18;-><init>(Lcom/lostpixels/fieldservice/activities/visits/PersonDialog;)V

    invoke-virtual {v0, v3}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 1254
    :cond_34
    iget-object v0, p0, Lcom/lostpixels/fieldservice/activities/visits/PersonDialog;->txtPhoneHome:Landroid/widget/TextView;

    if-eqz v0, :cond_35

    iget-object v0, p0, Lcom/lostpixels/fieldservice/activities/visits/PersonDialog;->person:Lcom/lostpixels/fieldservice/internal/ministry/Person;

    invoke-static {v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    invoke-virtual {v0}, Lcom/lostpixels/fieldservice/internal/ministry/Person;->getHomePhone()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_35

    iget-object v0, p0, Lcom/lostpixels/fieldservice/activities/visits/PersonDialog;->person:Lcom/lostpixels/fieldservice/internal/ministry/Person;

    invoke-virtual {v0}, Lcom/lostpixels/fieldservice/internal/ministry/Person;->getHomePhone()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_35

    .line 1256
    iget-object v0, p0, Lcom/lostpixels/fieldservice/activities/visits/PersonDialog;->txtPhoneHome:Landroid/widget/TextView;

    iget-object v3, p0, Lcom/lostpixels/fieldservice/activities/visits/PersonDialog;->person:Lcom/lostpixels/fieldservice/internal/ministry/Person;

    invoke-virtual {v3}, Lcom/lostpixels/fieldservice/internal/ministry/Person;->getHomePhone()Ljava/lang/String;

    move-result-object v3

    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v6

    invoke-virtual {v6}, Ljava/util/Locale;->getCountry()Ljava/lang/String;

    move-result-object v6

    invoke-static {v3, v6}, Landroid/telephony/PhoneNumberUtils;->formatNumber(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 1257
    iget-object v0, p0, Lcom/lostpixels/fieldservice/activities/visits/PersonDialog;->txtPhoneHome:Landroid/widget/TextView;

    new-instance v3, Lcom/lostpixels/fieldservice/activities/visits/PersonDialog$19;

    invoke-direct {v3, p0}, Lcom/lostpixels/fieldservice/activities/visits/PersonDialog$19;-><init>(Lcom/lostpixels/fieldservice/activities/visits/PersonDialog;)V

    invoke-virtual {v0, v3}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 1271
    :cond_35
    iget-object v0, p0, Lcom/lostpixels/fieldservice/activities/visits/PersonDialog;->txtVideoPhone:Landroid/widget/TextView;

    if-eqz v0, :cond_36

    iget-object v0, p0, Lcom/lostpixels/fieldservice/activities/visits/PersonDialog;->person:Lcom/lostpixels/fieldservice/internal/ministry/Person;

    invoke-static {v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    invoke-virtual {v0}, Lcom/lostpixels/fieldservice/internal/ministry/Person;->getVideoPhone()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_36

    iget-object v0, p0, Lcom/lostpixels/fieldservice/activities/visits/PersonDialog;->person:Lcom/lostpixels/fieldservice/internal/ministry/Person;

    invoke-virtual {v0}, Lcom/lostpixels/fieldservice/internal/ministry/Person;->getVideoPhone()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_36

    .line 1272
    iget-object v0, p0, Lcom/lostpixels/fieldservice/activities/visits/PersonDialog;->txtVideoPhone:Landroid/widget/TextView;

    iget-object v3, p0, Lcom/lostpixels/fieldservice/activities/visits/PersonDialog;->person:Lcom/lostpixels/fieldservice/internal/ministry/Person;

    invoke-virtual {v3}, Lcom/lostpixels/fieldservice/internal/ministry/Person;->getVideoPhone()Ljava/lang/String;

    move-result-object v3

    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v6

    invoke-virtual {v6}, Ljava/util/Locale;->getCountry()Ljava/lang/String;

    move-result-object v6

    invoke-static {v3, v6}, Landroid/telephony/PhoneNumberUtils;->formatNumber(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 1273
    iget-object v0, p0, Lcom/lostpixels/fieldservice/activities/visits/PersonDialog;->txtVideoPhone:Landroid/widget/TextView;

    new-instance v3, Lcom/lostpixels/fieldservice/activities/visits/PersonDialog$20;

    invoke-direct {v3, p0}, Lcom/lostpixels/fieldservice/activities/visits/PersonDialog$20;-><init>(Lcom/lostpixels/fieldservice/activities/visits/PersonDialog;)V

    invoke-virtual {v0, v3}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 1286
    :cond_36
    iget-object v0, p0, Lcom/lostpixels/fieldservice/activities/visits/PersonDialog;->txtMail:Landroid/widget/TextView;

    if-eqz v0, :cond_37

    iget-object v0, p0, Lcom/lostpixels/fieldservice/activities/visits/PersonDialog;->person:Lcom/lostpixels/fieldservice/internal/ministry/Person;

    invoke-static {v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    invoke-virtual {v0}, Lcom/lostpixels/fieldservice/internal/ministry/Person;->getEmail()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_37

    iget-object v0, p0, Lcom/lostpixels/fieldservice/activities/visits/PersonDialog;->person:Lcom/lostpixels/fieldservice/internal/ministry/Person;

    invoke-virtual {v0}, Lcom/lostpixels/fieldservice/internal/ministry/Person;->getEmail()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_37

    .line 1287
    iget-object v0, p0, Lcom/lostpixels/fieldservice/activities/visits/PersonDialog;->txtMail:Landroid/widget/TextView;

    iget-object v3, p0, Lcom/lostpixels/fieldservice/activities/visits/PersonDialog;->person:Lcom/lostpixels/fieldservice/internal/ministry/Person;

    invoke-virtual {v3}, Lcom/lostpixels/fieldservice/internal/ministry/Person;->getEmail()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 1288
    iget-object v0, p0, Lcom/lostpixels/fieldservice/activities/visits/PersonDialog;->txtMail:Landroid/widget/TextView;

    new-instance v3, Lcom/lostpixels/fieldservice/activities/visits/PersonDialog$21;

    invoke-direct {v3, p0}, Lcom/lostpixels/fieldservice/activities/visits/PersonDialog$21;-><init>(Lcom/lostpixels/fieldservice/activities/visits/PersonDialog;)V

    invoke-virtual {v0, v3}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 1295
    :cond_37
    iget-object v0, p0, Lcom/lostpixels/fieldservice/activities/visits/PersonDialog;->txtLanguages:Landroid/widget/TextView;

    if-eqz v0, :cond_38

    iget-object v0, p0, Lcom/lostpixels/fieldservice/activities/visits/PersonDialog;->person:Lcom/lostpixels/fieldservice/internal/ministry/Person;

    invoke-static {v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    invoke-virtual {v0}, Lcom/lostpixels/fieldservice/internal/ministry/Person;->getLanguages()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_38

    iget-object v0, p0, Lcom/lostpixels/fieldservice/activities/visits/PersonDialog;->person:Lcom/lostpixels/fieldservice/internal/ministry/Person;

    invoke-virtual {v0}, Lcom/lostpixels/fieldservice/internal/ministry/Person;->getLanguages()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_38

    .line 1296
    iget-object v0, p0, Lcom/lostpixels/fieldservice/activities/visits/PersonDialog;->txtLanguages:Landroid/widget/TextView;

    iget-object v3, p0, Lcom/lostpixels/fieldservice/activities/visits/PersonDialog;->person:Lcom/lostpixels/fieldservice/internal/ministry/Person;

    invoke-virtual {v3}, Lcom/lostpixels/fieldservice/internal/ministry/Person;->getLanguages()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 1297
    :cond_38
    iget-object v0, p0, Lcom/lostpixels/fieldservice/activities/visits/PersonDialog;->txtMotherTongue:Landroid/widget/TextView;

    if-eqz v0, :cond_39

    iget-object v0, p0, Lcom/lostpixels/fieldservice/activities/visits/PersonDialog;->person:Lcom/lostpixels/fieldservice/internal/ministry/Person;

    invoke-static {v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    invoke-virtual {v0}, Lcom/lostpixels/fieldservice/internal/ministry/Person;->getMotherTounge()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_39

    iget-object v0, p0, Lcom/lostpixels/fieldservice/activities/visits/PersonDialog;->person:Lcom/lostpixels/fieldservice/internal/ministry/Person;

    invoke-virtual {v0}, Lcom/lostpixels/fieldservice/internal/ministry/Person;->getMotherTounge()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_39

    .line 1298
    iget-object v0, p0, Lcom/lostpixels/fieldservice/activities/visits/PersonDialog;->txtMotherTongue:Landroid/widget/TextView;

    iget-object v3, p0, Lcom/lostpixels/fieldservice/activities/visits/PersonDialog;->person:Lcom/lostpixels/fieldservice/internal/ministry/Person;

    invoke-virtual {v3}, Lcom/lostpixels/fieldservice/internal/ministry/Person;->getMotherTounge()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 1299
    :cond_39
    iget-object v0, p0, Lcom/lostpixels/fieldservice/activities/visits/PersonDialog;->txtCountry:Landroid/widget/TextView;

    if-eqz v0, :cond_3a

    iget-object v0, p0, Lcom/lostpixels/fieldservice/activities/visits/PersonDialog;->person:Lcom/lostpixels/fieldservice/internal/ministry/Person;

    invoke-static {v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    invoke-virtual {v0}, Lcom/lostpixels/fieldservice/internal/ministry/Person;->getCountry()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_3a

    iget-object v0, p0, Lcom/lostpixels/fieldservice/activities/visits/PersonDialog;->person:Lcom/lostpixels/fieldservice/internal/ministry/Person;

    invoke-virtual {v0}, Lcom/lostpixels/fieldservice/internal/ministry/Person;->getCountry()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_3a

    .line 1300
    iget-object v0, p0, Lcom/lostpixels/fieldservice/activities/visits/PersonDialog;->txtCountry:Landroid/widget/TextView;

    iget-object v3, p0, Lcom/lostpixels/fieldservice/activities/visits/PersonDialog;->person:Lcom/lostpixels/fieldservice/internal/ministry/Person;

    invoke-virtual {v3}, Lcom/lostpixels/fieldservice/internal/ministry/Person;->getCountry()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 1301
    iget-object v0, p0, Lcom/lostpixels/fieldservice/activities/visits/PersonDialog;->txtAddress:Landroid/widget/TextView;

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 1303
    :cond_3a
    iget-object v0, p0, Lcom/lostpixels/fieldservice/activities/visits/PersonDialog;->txtGeneral:Landroid/widget/TextView;

    if-eqz v0, :cond_3b

    iget-object v0, p0, Lcom/lostpixels/fieldservice/activities/visits/PersonDialog;->person:Lcom/lostpixels/fieldservice/internal/ministry/Person;

    invoke-static {v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    invoke-virtual {v0}, Lcom/lostpixels/fieldservice/internal/ministry/Person;->getGeneralInfo()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_3b

    iget-object v0, p0, Lcom/lostpixels/fieldservice/activities/visits/PersonDialog;->person:Lcom/lostpixels/fieldservice/internal/ministry/Person;

    invoke-virtual {v0}, Lcom/lostpixels/fieldservice/internal/ministry/Person;->getGeneralInfo()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_3b

    .line 1304
    iget-object v0, p0, Lcom/lostpixels/fieldservice/activities/visits/PersonDialog;->txtGeneral:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/lostpixels/fieldservice/activities/visits/PersonDialog;->person:Lcom/lostpixels/fieldservice/internal/ministry/Person;

    invoke-virtual {v1}, Lcom/lostpixels/fieldservice/internal/ministry/Person;->getGeneralInfo()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 1305
    :cond_3b
    iget-object v0, p0, Lcom/lostpixels/fieldservice/activities/visits/PersonDialog;->txtAge:Landroid/widget/TextView;

    if-eqz v0, :cond_3d

    .line 1306
    iget-object v0, p0, Lcom/lostpixels/fieldservice/activities/visits/PersonDialog;->person:Lcom/lostpixels/fieldservice/internal/ministry/Person;

    invoke-static {v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    invoke-virtual {v0}, Lcom/lostpixels/fieldservice/internal/ministry/Person;->getAge()I

    move-result v0

    if-lez v0, :cond_3c

    .line 1307
    iget-object v0, p0, Lcom/lostpixels/fieldservice/activities/visits/PersonDialog;->txtAge:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/lostpixels/fieldservice/activities/visits/PersonDialog;->person:Lcom/lostpixels/fieldservice/internal/ministry/Person;

    invoke-virtual {v1}, Lcom/lostpixels/fieldservice/internal/ministry/Person;->getAge()I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const v3, 0x7f12055a

    invoke-virtual {p0, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v3

    new-array v4, v4, [Ljava/lang/Object;

    aput-object v1, v4, v2

    aput-object v3, v4, v5

    const-string v1, "%d %s"

    invoke-static {v1, v4}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_e

    .line 1309
    :cond_3c
    iget-object v0, p0, Lcom/lostpixels/fieldservice/activities/visits/PersonDialog;->txtAge:Landroid/widget/TextView;

    invoke-virtual {v0, v7}, Landroid/view/View;->setVisibility(I)V

    .line 1312
    :cond_3d
    :goto_e
    invoke-direct {p0}, Lcom/lostpixels/fieldservice/activities/visits/PersonDialog;->populateInfoList()V

    .line 1313
    invoke-direct {p0}, Lcom/lostpixels/fieldservice/activities/visits/PersonDialog;->setupStatusButtons()V

    .line 1314
    iget-object v0, p0, Lcom/lostpixels/fieldservice/activities/visits/PersonDialog;->imgGender:Landroid/widget/ImageView;

    if-eqz v0, :cond_3e

    iget-object v1, p0, Lcom/lostpixels/fieldservice/activities/visits/PersonDialog;->person:Lcom/lostpixels/fieldservice/internal/ministry/Person;

    if-eqz v1, :cond_3e

    .line 1315
    invoke-static {v1}, Lcom/lostpixels/fieldservice/helpfunctions/UIHelpers;->getHouseholderImage(Lcom/lostpixels/fieldservice/internal/ministry/Person;)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    :cond_3e
    return-void
.end method

.method private setupCustomTags()V
    .locals 2

    .line 974
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 975
    iget-object v1, p0, Lcom/lostpixels/fieldservice/activities/visits/PersonDialog;->person:Lcom/lostpixels/fieldservice/internal/ministry/Person;

    if-eqz v1, :cond_0

    .line 976
    invoke-virtual {v1}, Lcom/lostpixels/fieldservice/internal/ministry/Person;->getCustomTagsSet()Ljava/util/Set;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 977
    :cond_0
    iget-object v1, p0, Lcom/lostpixels/fieldservice/activities/visits/PersonDialog;->tagGroup:Lme/gujun/android/taggroup/TagGroup;

    invoke-virtual {v1, v0}, Lme/gujun/android/taggroup/TagGroup;->setTags(Ljava/util/List;)V

    return-void
.end method

.method private setupFragment1()Landroid/view/View;
    .locals 7

    .line 791
    invoke-virtual {p0}, Landroid/app/Activity;->getLayoutInflater()Landroid/view/LayoutInflater;

    move-result-object v0

    const/4 v1, 0x0

    const/4 v2, 0x1

    const v3, 0x7f0c00f3

    .line 792
    invoke-virtual {v0, v3, v1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    const v1, 0x7f090399

    .line 794
    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ListView;

    iput-object v1, p0, Lcom/lostpixels/fieldservice/activities/visits/PersonDialog;->lstPersonNotes:Landroid/widget/ListView;

    const v1, 0x7f090013

    .line 795
    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    .line 796
    iget-object v2, p0, Lcom/lostpixels/fieldservice/activities/visits/PersonDialog;->lstPersonNotes:Landroid/widget/ListView;

    invoke-virtual {v2, v1}, Landroid/widget/AdapterView;->setEmptyView(Landroid/view/View;)V

    const v2, 0x7f090218

    .line 797
    invoke-virtual {v0, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Lcom/lostpixels/fieldservice/ui/Fab;

    const v3, 0x7f09027d

    .line 798
    invoke-virtual {v0, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/ImageView;

    iput-object v3, p0, Lcom/lostpixels/fieldservice/activities/visits/PersonDialog;->imgGender:Landroid/widget/ImageView;

    const v3, 0x7f090619

    .line 799
    invoke-virtual {v0, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/TextView;

    iput-object v3, p0, Lcom/lostpixels/fieldservice/activities/visits/PersonDialog;->txtName:Landroid/widget/TextView;

    const v3, 0x7f0905df

    .line 800
    invoke-virtual {v0, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/TextView;

    iput-object v3, p0, Lcom/lostpixels/fieldservice/activities/visits/PersonDialog;->txtAddressFirstPage:Landroid/widget/TextView;

    const v3, 0x7f09028e

    .line 802
    invoke-virtual {v0, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/ImageView;

    iput-object v3, p0, Lcom/lostpixels/fieldservice/activities/visits/PersonDialog;->imgRV:Landroid/widget/ImageView;

    const v3, 0x7f090294

    .line 803
    invoke-virtual {v0, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/ImageView;

    iput-object v3, p0, Lcom/lostpixels/fieldservice/activities/visits/PersonDialog;->imgStudy:Landroid/widget/ImageView;

    const v3, 0x7f090281

    .line 804
    invoke-virtual {v0, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/ImageView;

    iput-object v3, p0, Lcom/lostpixels/fieldservice/activities/visits/PersonDialog;->imgMagRoute:Landroid/widget/ImageView;

    const v3, 0x7f09027c

    .line 805
    invoke-virtual {v0, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/ImageView;

    iput-object v3, p0, Lcom/lostpixels/fieldservice/activities/visits/PersonDialog;->imgFav:Landroid/widget/ImageView;

    const v3, 0x7f090287

    .line 806
    invoke-virtual {v0, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/ImageView;

    iput-object v3, p0, Lcom/lostpixels/fieldservice/activities/visits/PersonDialog;->imgPriority:Landroid/widget/ImageView;

    const v3, 0x7f09005d

    .line 808
    invoke-virtual {v0, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    const v4, 0x7f090340

    .line 809
    invoke-virtual {v0, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    .line 812
    invoke-static {p0}, Lcom/lostpixels/fieldservice/utils/ColorUtils;->getFabColor(Landroid/content/Context;)I

    move-result v5

    .line 813
    invoke-virtual {v2, v5}, Lcom/lostpixels/fieldservice/ui/Fab;->setColor(I)V

    .line 814
    invoke-virtual {p0}, Landroidx/appcompat/app/AppCompatActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    const v6, 0x7f080086

    invoke-static {v5, v6}, Landroid/graphics/BitmapFactory;->decodeResource(Landroid/content/res/Resources;I)Landroid/graphics/Bitmap;

    move-result-object v5

    .line 816
    invoke-virtual {v2, v5}, Lcom/lostpixels/fieldservice/ui/Fab;->setDrawable(Landroid/graphics/Bitmap;)V

    .line 817
    iget-object v5, p0, Lcom/lostpixels/fieldservice/activities/visits/PersonDialog;->lstPersonNotes:Landroid/widget/ListView;

    invoke-virtual {v2, v5}, Lcom/lostpixels/fieldservice/ui/Fab;->listenTo(Landroid/widget/AbsListView;)V

    .line 819
    new-instance v5, Lcom/lostpixels/fieldservice/activities/visits/PersonDialog$11;

    invoke-direct {v5, p0}, Lcom/lostpixels/fieldservice/activities/visits/PersonDialog$11;-><init>(Lcom/lostpixels/fieldservice/activities/visits/PersonDialog;)V

    invoke-virtual {v1, v5}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 827
    new-instance v1, Lcom/lostpixels/fieldservice/activities/visits/PersonDialog$12;

    invoke-direct {v1, p0}, Lcom/lostpixels/fieldservice/activities/visits/PersonDialog$12;-><init>(Lcom/lostpixels/fieldservice/activities/visits/PersonDialog;)V

    .line 856
    invoke-virtual {v3, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 858
    new-instance v1, Lcom/lostpixels/fieldservice/activities/visits/PersonDialog$13;

    invoke-direct {v1, p0}, Lcom/lostpixels/fieldservice/activities/visits/PersonDialog$13;-><init>(Lcom/lostpixels/fieldservice/activities/visits/PersonDialog;)V

    .line 878
    iget-object v3, p0, Lcom/lostpixels/fieldservice/activities/visits/PersonDialog;->imgPriority:Landroid/widget/ImageView;

    invoke-virtual {v3, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 879
    invoke-virtual {v4, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const v1, 0x7f0905e2

    .line 881
    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, p0, Lcom/lostpixels/fieldservice/activities/visits/PersonDialog;->txtAge:Landroid/widget/TextView;

    .line 883
    iget-object v1, p0, Lcom/lostpixels/fieldservice/activities/visits/PersonDialog;->person:Lcom/lostpixels/fieldservice/internal/ministry/Person;

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/lostpixels/fieldservice/activities/visits/PersonDialog;->mlstPersonInfo:Ljava/util/ArrayList;

    if-eqz v1, :cond_0

    invoke-virtual {v1}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_1

    :cond_0
    iget-object v1, p0, Lcom/lostpixels/fieldservice/activities/visits/PersonDialog;->person:Lcom/lostpixels/fieldservice/internal/ministry/Person;

    invoke-virtual {v1}, Lcom/lostpixels/fieldservice/internal/ministry/Person;->getInfo()Ljava/util/List;

    move-result-object v1

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/lostpixels/fieldservice/activities/visits/PersonDialog;->person:Lcom/lostpixels/fieldservice/internal/ministry/Person;

    invoke-virtual {v1}, Lcom/lostpixels/fieldservice/internal/ministry/Person;->getInfo()Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_1

    .line 884
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, p0, Lcom/lostpixels/fieldservice/activities/visits/PersonDialog;->mlstPersonInfo:Ljava/util/ArrayList;

    .line 885
    iget-object v3, p0, Lcom/lostpixels/fieldservice/activities/visits/PersonDialog;->person:Lcom/lostpixels/fieldservice/internal/ministry/Person;

    invoke-virtual {v3}, Lcom/lostpixels/fieldservice/internal/ministry/Person;->getInfo()Ljava/util/List;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    .line 886
    iget-object v1, p0, Lcom/lostpixels/fieldservice/activities/visits/PersonDialog;->person:Lcom/lostpixels/fieldservice/internal/ministry/Person;

    invoke-virtual {v1}, Lcom/lostpixels/fieldservice/internal/ministry/Person;->clearVisitInfoList()V

    .line 889
    :cond_1
    new-instance v1, Lcom/lostpixels/fieldservice/activities/visits/PersonDialog$$ExternalSyntheticLambda16;

    invoke-direct {v1, p0}, Lcom/lostpixels/fieldservice/activities/visits/PersonDialog$$ExternalSyntheticLambda16;-><init>(Lcom/lostpixels/fieldservice/activities/visits/PersonDialog;)V

    invoke-virtual {v2, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 891
    iget-object v1, p0, Lcom/lostpixels/fieldservice/activities/visits/PersonDialog;->person:Lcom/lostpixels/fieldservice/internal/ministry/Person;

    if-eqz v1, :cond_2

    .line 892
    invoke-direct {p0}, Lcom/lostpixels/fieldservice/activities/visits/PersonDialog;->setPersonInfo()V

    .line 893
    invoke-direct {p0}, Lcom/lostpixels/fieldservice/activities/visits/PersonDialog;->setupStatusButtons()V

    :cond_2
    return-object v0
.end method

.method private setupFragment2()Landroid/view/View;
    .locals 4

    .line 900
    invoke-virtual {p0}, Landroid/app/Activity;->getLayoutInflater()Landroid/view/LayoutInflater;

    move-result-object v0

    const v1, 0x7f0c00f4

    const/4 v2, 0x0

    const/4 v3, 0x1

    .line 901
    invoke-virtual {v0, v1, v2, v3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    const v1, 0x7f09052d

    .line 903
    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, p0, Lcom/lostpixels/fieldservice/activities/visits/PersonDialog;->txtTimeForRV:Landroid/widget/TextView;

    const v1, 0x7f090629

    .line 904
    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, p0, Lcom/lostpixels/fieldservice/activities/visits/PersonDialog;->txtPublicationToStudy:Landroid/widget/TextView;

    const v1, 0x7f09051c

    .line 905
    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, p0, Lcom/lostpixels/fieldservice/activities/visits/PersonDialog;->txtContinue:Landroid/widget/TextView;

    const v1, 0x7f09039f

    .line 907
    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Lcom/lostpixels/fieldservice/ui/MagazineRouteView;

    iput-object v1, p0, Lcom/lostpixels/fieldservice/activities/visits/PersonDialog;->viewMagazineHeader:Lcom/lostpixels/fieldservice/ui/MagazineRouteView;

    const v1, 0x7f0903a0

    .line 908
    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Lcom/lostpixels/fieldservice/ui/MagazineRouteView;

    iput-object v1, p0, Lcom/lostpixels/fieldservice/activities/visits/PersonDialog;->viewMagazineItem:Lcom/lostpixels/fieldservice/ui/MagazineRouteView;

    .line 909
    iget-object v1, p0, Lcom/lostpixels/fieldservice/activities/visits/PersonDialog;->viewMagazineHeader:Lcom/lostpixels/fieldservice/ui/MagazineRouteView;

    invoke-virtual {v1, v3}, Lcom/lostpixels/fieldservice/ui/MagazineRouteView;->setIsHeader(Z)V

    const v1, 0x7f090549

    .line 910
    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Lme/gujun/android/taggroup/TagGroup;

    iput-object v1, p0, Lcom/lostpixels/fieldservice/activities/visits/PersonDialog;->tagGroup:Lme/gujun/android/taggroup/TagGroup;

    const v1, 0x7f090174

    .line 912
    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    iput-object v1, p0, Lcom/lostpixels/fieldservice/activities/visits/PersonDialog;->clearReturnVistDate:Landroid/view/View;

    .line 913
    new-instance v2, Lcom/lostpixels/fieldservice/activities/visits/PersonDialog$14;

    invoke-direct {v2, p0}, Lcom/lostpixels/fieldservice/activities/visits/PersonDialog$14;-><init>(Lcom/lostpixels/fieldservice/activities/visits/PersonDialog;)V

    invoke-virtual {v1, v2}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const v1, 0x7f09051a

    .line 923
    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, p0, Lcom/lostpixels/fieldservice/activities/visits/PersonDialog;->txtVisitHours:Landroid/widget/TextView;

    .line 925
    new-instance v2, Lcom/lostpixels/fieldservice/activities/visits/PersonDialog$$ExternalSyntheticLambda9;

    invoke-direct {v2, p0}, Lcom/lostpixels/fieldservice/activities/visits/PersonDialog$$ExternalSyntheticLambda9;-><init>(Lcom/lostpixels/fieldservice/activities/visits/PersonDialog;)V

    invoke-virtual {v1, v2}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 927
    iget-object v1, p0, Lcom/lostpixels/fieldservice/activities/visits/PersonDialog;->txtTimeForRV:Landroid/widget/TextView;

    new-instance v2, Lcom/lostpixels/fieldservice/activities/visits/PersonDialog$$ExternalSyntheticLambda10;

    invoke-direct {v2, p0}, Lcom/lostpixels/fieldservice/activities/visits/PersonDialog$$ExternalSyntheticLambda10;-><init>(Lcom/lostpixels/fieldservice/activities/visits/PersonDialog;)V

    invoke-virtual {v1, v2}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 933
    iget-object v1, p0, Lcom/lostpixels/fieldservice/activities/visits/PersonDialog;->viewMagazineItem:Lcom/lostpixels/fieldservice/ui/MagazineRouteView;

    new-instance v2, Lcom/lostpixels/fieldservice/activities/visits/PersonDialog$$ExternalSyntheticLambda11;

    invoke-direct {v2, p0}, Lcom/lostpixels/fieldservice/activities/visits/PersonDialog$$ExternalSyntheticLambda11;-><init>(Lcom/lostpixels/fieldservice/activities/visits/PersonDialog;)V

    invoke-virtual {v1, v2}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 935
    iget-object v1, p0, Lcom/lostpixels/fieldservice/activities/visits/PersonDialog;->viewMagazineHeader:Lcom/lostpixels/fieldservice/ui/MagazineRouteView;

    new-instance v2, Lcom/lostpixels/fieldservice/activities/visits/PersonDialog$$ExternalSyntheticLambda12;

    invoke-direct {v2, p0}, Lcom/lostpixels/fieldservice/activities/visits/PersonDialog$$ExternalSyntheticLambda12;-><init>(Lcom/lostpixels/fieldservice/activities/visits/PersonDialog;)V

    invoke-virtual {v1, v2}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 937
    iget-object v1, p0, Lcom/lostpixels/fieldservice/activities/visits/PersonDialog;->txtPublicationToStudy:Landroid/widget/TextView;

    new-instance v2, Lcom/lostpixels/fieldservice/activities/visits/PersonDialog$$ExternalSyntheticLambda13;

    invoke-direct {v2, p0}, Lcom/lostpixels/fieldservice/activities/visits/PersonDialog$$ExternalSyntheticLambda13;-><init>(Lcom/lostpixels/fieldservice/activities/visits/PersonDialog;)V

    invoke-virtual {v1, v2}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 939
    iget-object v1, p0, Lcom/lostpixels/fieldservice/activities/visits/PersonDialog;->txtContinue:Landroid/widget/TextView;

    new-instance v2, Lcom/lostpixels/fieldservice/activities/visits/PersonDialog$$ExternalSyntheticLambda14;

    invoke-direct {v2, p0}, Lcom/lostpixels/fieldservice/activities/visits/PersonDialog$$ExternalSyntheticLambda14;-><init>(Lcom/lostpixels/fieldservice/activities/visits/PersonDialog;)V

    invoke-virtual {v1, v2}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 941
    iget-object v1, p0, Lcom/lostpixels/fieldservice/activities/visits/PersonDialog;->person:Lcom/lostpixels/fieldservice/internal/ministry/Person;

    if-eqz v1, :cond_0

    .line 942
    invoke-direct {p0}, Lcom/lostpixels/fieldservice/activities/visits/PersonDialog;->setPersonInfo()V

    .line 945
    :cond_0
    iget-object v1, p0, Lcom/lostpixels/fieldservice/activities/visits/PersonDialog;->tagGroup:Lme/gujun/android/taggroup/TagGroup;

    new-instance v2, Lcom/lostpixels/fieldservice/activities/visits/PersonDialog$$ExternalSyntheticLambda15;

    invoke-direct {v2, p0}, Lcom/lostpixels/fieldservice/activities/visits/PersonDialog$$ExternalSyntheticLambda15;-><init>(Lcom/lostpixels/fieldservice/activities/visits/PersonDialog;)V

    invoke-virtual {v1, v2}, Lme/gujun/android/taggroup/TagGroup;->setOnTagClickListener(Lme/gujun/android/taggroup/TagGroup$OnTagClickListener;)V

    .line 954
    iget-object v1, p0, Lcom/lostpixels/fieldservice/activities/visits/PersonDialog;->tagGroup:Lme/gujun/android/taggroup/TagGroup;

    new-instance v2, Lcom/lostpixels/fieldservice/activities/visits/PersonDialog$15;

    invoke-direct {v2, p0}, Lcom/lostpixels/fieldservice/activities/visits/PersonDialog$15;-><init>(Lcom/lostpixels/fieldservice/activities/visits/PersonDialog;)V

    invoke-virtual {v1, v2}, Lme/gujun/android/taggroup/TagGroup;->setOnTagChangeListener(Lme/gujun/android/taggroup/TagGroup$OnTagChangeListener;)V

    .line 967
    invoke-direct {p0}, Lcom/lostpixels/fieldservice/activities/visits/PersonDialog;->setupCustomTags()V

    return-object v0
.end method

.method private setupFragment3()Landroid/view/View;
    .locals 4

    .line 982
    invoke-virtual {p0}, Landroid/app/Activity;->getLayoutInflater()Landroid/view/LayoutInflater;

    move-result-object v0

    const/4 v1, 0x0

    const/4 v2, 0x1

    const v3, 0x7f0c00f5

    .line 983
    invoke-virtual {v0, v3, v1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    .line 985
    invoke-static {p0}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v1

    .line 986
    const-string v2, "checkShowVideoPhone"

    const/4 v3, 0x0

    invoke-interface {v1, v2, v3}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v1

    const v2, 0x7f090526

    .line 989
    invoke-virtual {v0, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    iput-object v2, p0, Lcom/lostpixels/fieldservice/activities/visits/PersonDialog;->txtPhone:Landroid/widget/TextView;

    const v2, 0x7f09052a

    .line 990
    invoke-virtual {v0, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    iput-object v2, p0, Lcom/lostpixels/fieldservice/activities/visits/PersonDialog;->txtPhoneHome:Landroid/widget/TextView;

    const v2, 0x7f09052e

    .line 991
    invoke-virtual {v0, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    iput-object v2, p0, Lcom/lostpixels/fieldservice/activities/visits/PersonDialog;->txtVideoPhone:Landroid/widget/TextView;

    const v2, 0x7f090297

    .line 992
    invoke-virtual {v0, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/ImageView;

    if-eqz v1, :cond_0

    .line 994
    invoke-virtual {v2, v3}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 995
    iget-object v1, p0, Lcom/lostpixels/fieldservice/activities/visits/PersonDialog;->txtVideoPhone:Landroid/widget/TextView;

    invoke-virtual {v1, v3}, Landroid/view/View;->setVisibility(I)V

    :cond_0
    const v1, 0x7f09051f

    .line 997
    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, p0, Lcom/lostpixels/fieldservice/activities/visits/PersonDialog;->txtMail:Landroid/widget/TextView;

    const v1, 0x7f090525

    .line 998
    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, p0, Lcom/lostpixels/fieldservice/activities/visits/PersonDialog;->txtLanguages:Landroid/widget/TextView;

    const v1, 0x7f090527

    .line 999
    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, p0, Lcom/lostpixels/fieldservice/activities/visits/PersonDialog;->txtMotherTongue:Landroid/widget/TextView;

    const v1, 0x7f090524

    .line 1000
    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, p0, Lcom/lostpixels/fieldservice/activities/visits/PersonDialog;->txtCountry:Landroid/widget/TextView;

    const v1, 0x7f090520

    .line 1001
    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, p0, Lcom/lostpixels/fieldservice/activities/visits/PersonDialog;->txtGeneral:Landroid/widget/TextView;

    const v1, 0x7f090518

    .line 1002
    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, p0, Lcom/lostpixels/fieldservice/activities/visits/PersonDialog;->txtAddress:Landroid/widget/TextView;

    const v1, 0x7f09051b

    .line 1003
    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, p0, Lcom/lostpixels/fieldservice/activities/visits/PersonDialog;->txtNeighbourhood:Landroid/widget/TextView;

    .line 1005
    iget-object v1, p0, Lcom/lostpixels/fieldservice/activities/visits/PersonDialog;->person:Lcom/lostpixels/fieldservice/internal/ministry/Person;

    if-eqz v1, :cond_1

    .line 1006
    invoke-direct {p0}, Lcom/lostpixels/fieldservice/activities/visits/PersonDialog;->setPersonInfo()V

    :cond_1
    return-object v0
.end method

.method private setupStatusButtons()V
    .locals 2

    .line 738
    iget-object v0, p0, Lcom/lostpixels/fieldservice/activities/visits/PersonDialog;->imgRV:Landroid/widget/ImageView;

    if-eqz v0, :cond_1

    const v1, 0x7f080303

    .line 739
    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 740
    iget-object v0, p0, Lcom/lostpixels/fieldservice/activities/visits/PersonDialog;->person:Lcom/lostpixels/fieldservice/internal/ministry/Person;

    invoke-static {v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    invoke-virtual {v0}, Lcom/lostpixels/fieldservice/internal/ministry/Person;->isReturnVisit()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 741
    iget-object v0, p0, Lcom/lostpixels/fieldservice/activities/visits/PersonDialog;->imgRV:Landroid/widget/ImageView;

    invoke-static {p0}, Lcom/lostpixels/fieldservice/utils/ColorUtils;->getAccentColor(Landroid/content/Context;)I

    move-result v1

    invoke-static {v0, v1}, Lcom/lostpixels/fieldservice/utils/ColorUtils;->tintImage(Landroid/widget/ImageView;I)V

    goto :goto_0

    .line 743
    :cond_0
    iget-object v0, p0, Lcom/lostpixels/fieldservice/activities/visits/PersonDialog;->imgRV:Landroid/widget/ImageView;

    invoke-virtual {v0}, Landroid/widget/ImageView;->clearColorFilter()V

    .line 746
    :cond_1
    :goto_0
    iget-object v0, p0, Lcom/lostpixels/fieldservice/activities/visits/PersonDialog;->imgStudy:Landroid/widget/ImageView;

    if-eqz v0, :cond_3

    const v1, 0x7f080343

    .line 747
    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 748
    iget-object v0, p0, Lcom/lostpixels/fieldservice/activities/visits/PersonDialog;->person:Lcom/lostpixels/fieldservice/internal/ministry/Person;

    invoke-static {v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    invoke-virtual {v0}, Lcom/lostpixels/fieldservice/internal/ministry/Person;->isBibleStudy()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 749
    iget-object v0, p0, Lcom/lostpixels/fieldservice/activities/visits/PersonDialog;->imgStudy:Landroid/widget/ImageView;

    invoke-static {p0}, Lcom/lostpixels/fieldservice/utils/ColorUtils;->getAccentColor(Landroid/content/Context;)I

    move-result v1

    invoke-static {v0, v1}, Lcom/lostpixels/fieldservice/utils/ColorUtils;->tintImage(Landroid/widget/ImageView;I)V

    goto :goto_1

    .line 751
    :cond_2
    iget-object v0, p0, Lcom/lostpixels/fieldservice/activities/visits/PersonDialog;->imgStudy:Landroid/widget/ImageView;

    invoke-virtual {v0}, Landroid/widget/ImageView;->clearColorFilter()V

    .line 754
    :cond_3
    :goto_1
    iget-object v0, p0, Lcom/lostpixels/fieldservice/activities/visits/PersonDialog;->imgMagRoute:Landroid/widget/ImageView;

    if-eqz v0, :cond_5

    const v1, 0x7f0801f9

    .line 755
    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 756
    iget-object v0, p0, Lcom/lostpixels/fieldservice/activities/visits/PersonDialog;->person:Lcom/lostpixels/fieldservice/internal/ministry/Person;

    invoke-static {v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    invoke-virtual {v0}, Lcom/lostpixels/fieldservice/internal/ministry/Person;->isMagazineRoute()Z

    move-result v0

    if-eqz v0, :cond_4

    .line 757
    iget-object v0, p0, Lcom/lostpixels/fieldservice/activities/visits/PersonDialog;->imgMagRoute:Landroid/widget/ImageView;

    invoke-static {p0}, Lcom/lostpixels/fieldservice/utils/ColorUtils;->getAccentColor(Landroid/content/Context;)I

    move-result v1

    invoke-static {v0, v1}, Lcom/lostpixels/fieldservice/utils/ColorUtils;->tintImage(Landroid/widget/ImageView;I)V

    goto :goto_2

    .line 759
    :cond_4
    iget-object v0, p0, Lcom/lostpixels/fieldservice/activities/visits/PersonDialog;->imgMagRoute:Landroid/widget/ImageView;

    invoke-virtual {v0}, Landroid/widget/ImageView;->clearColorFilter()V

    .line 762
    :cond_5
    :goto_2
    iget-object v0, p0, Lcom/lostpixels/fieldservice/activities/visits/PersonDialog;->imgFav:Landroid/widget/ImageView;

    if-eqz v0, :cond_7

    const v1, 0x7f080171

    .line 763
    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 764
    iget-object v0, p0, Lcom/lostpixels/fieldservice/activities/visits/PersonDialog;->person:Lcom/lostpixels/fieldservice/internal/ministry/Person;

    invoke-static {v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    invoke-virtual {v0}, Lcom/lostpixels/fieldservice/internal/ministry/Person;->isFavorite()Z

    move-result v0

    if-eqz v0, :cond_6

    .line 765
    iget-object v0, p0, Lcom/lostpixels/fieldservice/activities/visits/PersonDialog;->imgFav:Landroid/widget/ImageView;

    invoke-static {p0}, Lcom/lostpixels/fieldservice/utils/ColorUtils;->getAccentColor(Landroid/content/Context;)I

    move-result v1

    invoke-static {v0, v1}, Lcom/lostpixels/fieldservice/utils/ColorUtils;->tintImage(Landroid/widget/ImageView;I)V

    goto :goto_3

    .line 767
    :cond_6
    iget-object v0, p0, Lcom/lostpixels/fieldservice/activities/visits/PersonDialog;->imgFav:Landroid/widget/ImageView;

    invoke-virtual {v0}, Landroid/widget/ImageView;->clearColorFilter()V

    .line 770
    :cond_7
    :goto_3
    iget-object v0, p0, Lcom/lostpixels/fieldservice/activities/visits/PersonDialog;->imgPriority:Landroid/widget/ImageView;

    if-eqz v0, :cond_c

    .line 771
    iget-object v0, p0, Lcom/lostpixels/fieldservice/activities/visits/PersonDialog;->person:Lcom/lostpixels/fieldservice/internal/ministry/Person;

    invoke-static {v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    invoke-virtual {v0}, Lcom/lostpixels/fieldservice/internal/ministry/Person;->getPriority()I

    move-result v0

    if-eqz v0, :cond_b

    const/4 v1, 0x1

    if-eq v0, v1, :cond_a

    const/4 v1, 0x2

    if-eq v0, v1, :cond_9

    const/4 v1, 0x3

    if-eq v0, v1, :cond_8

    goto :goto_4

    .line 782
    :cond_8
    iget-object v0, p0, Lcom/lostpixels/fieldservice/activities/visits/PersonDialog;->imgPriority:Landroid/widget/ImageView;

    const v1, 0x7f0802eb

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    return-void

    .line 779
    :cond_9
    iget-object v0, p0, Lcom/lostpixels/fieldservice/activities/visits/PersonDialog;->imgPriority:Landroid/widget/ImageView;

    const v1, 0x7f0802ea

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    return-void

    .line 776
    :cond_a
    iget-object v0, p0, Lcom/lostpixels/fieldservice/activities/visits/PersonDialog;->imgPriority:Landroid/widget/ImageView;

    const v1, 0x7f0802e9

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    return-void

    .line 773
    :cond_b
    iget-object v0, p0, Lcom/lostpixels/fieldservice/activities/visits/PersonDialog;->imgPriority:Landroid/widget/ImageView;

    const v1, 0x7f0802e8

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    :cond_c
    :goto_4
    return-void
.end method

.method private showBibleStudyDialog()V
    .locals 5

    .line 1741
    new-instance v0, Landroid/app/Dialog;

    invoke-direct {v0, p0}, Landroid/app/Dialog;-><init>(Landroid/content/Context;)V

    const v1, 0x7f120503

    .line 1743
    invoke-virtual {p0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/app/Dialog;->setTitle(Ljava/lang/CharSequence;)V

    const v1, 0x7f0c0084

    .line 1744
    invoke-virtual {v0, v1}, Landroid/app/Dialog;->setContentView(I)V

    const v1, 0x7f0900f5

    .line 1746
    invoke-virtual {v0, v1}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/Button;

    const v2, 0x7f090203

    .line 1747
    invoke-virtual {v0, v2}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/EditText;

    .line 1748
    iget-object v3, p0, Lcom/lostpixels/fieldservice/activities/visits/PersonDialog;->person:Lcom/lostpixels/fieldservice/internal/ministry/Person;

    invoke-static {v3}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    invoke-virtual {v3}, Lcom/lostpixels/fieldservice/internal/ministry/Person;->getStudyPublication()Ljava/lang/String;

    move-result-object v3

    if-eqz v3, :cond_0

    .line 1749
    iget-object v3, p0, Lcom/lostpixels/fieldservice/activities/visits/PersonDialog;->person:Lcom/lostpixels/fieldservice/internal/ministry/Person;

    invoke-virtual {v3}, Lcom/lostpixels/fieldservice/internal/ministry/Person;->getStudyPublication()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :cond_0
    const v3, 0x7f0901ed

    .line 1750
    invoke-virtual {v0, v3}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/EditText;

    .line 1751
    iget-object v4, p0, Lcom/lostpixels/fieldservice/activities/visits/PersonDialog;->person:Lcom/lostpixels/fieldservice/internal/ministry/Person;

    invoke-virtual {v4}, Lcom/lostpixels/fieldservice/internal/ministry/Person;->getContinueStudy()Ljava/lang/String;

    move-result-object v4

    if-eqz v4, :cond_1

    .line 1752
    iget-object v4, p0, Lcom/lostpixels/fieldservice/activities/visits/PersonDialog;->person:Lcom/lostpixels/fieldservice/internal/ministry/Person;

    invoke-virtual {v4}, Lcom/lostpixels/fieldservice/internal/ministry/Person;->getContinueStudy()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 1753
    :cond_1
    new-instance v4, Lcom/lostpixels/fieldservice/activities/visits/PersonDialog$27;

    invoke-direct {v4, p0, v2, v3, v0}, Lcom/lostpixels/fieldservice/activities/visits/PersonDialog$27;-><init>(Lcom/lostpixels/fieldservice/activities/visits/PersonDialog;Landroid/widget/EditText;Landroid/widget/EditText;Landroid/app/Dialog;)V

    invoke-virtual {v1, v4}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const v1, 0x7f0900e6

    .line 1768
    invoke-virtual {v0, v1}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/Button;

    .line 1769
    new-instance v2, Lcom/lostpixels/fieldservice/activities/visits/PersonDialog$28;

    invoke-direct {v2, p0, v0}, Lcom/lostpixels/fieldservice/activities/visits/PersonDialog$28;-><init>(Lcom/lostpixels/fieldservice/activities/visits/PersonDialog;Landroid/app/Dialog;)V

    invoke-virtual {v1, v2}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 1780
    invoke-virtual {v0}, Landroid/app/Dialog;->show()V

    return-void
.end method

.method private showQuickAction(Landroid/view/View;)V
    .locals 7

    .line 1860
    new-instance v0, Lcom/lostpixels/fieldservice/ui/ActionItem;

    const v1, 0x7f1201b6

    invoke-virtual {p0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0}, Landroidx/appcompat/app/AppCompatActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f080233

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v2

    const/4 v3, 0x0

    invoke-direct {v0, v3, v1, v2}, Lcom/lostpixels/fieldservice/ui/ActionItem;-><init>(ILjava/lang/String;Landroid/graphics/drawable/Drawable;)V

    .line 1862
    new-instance v1, Lcom/lostpixels/fieldservice/ui/ActionItem;

    const v2, 0x7f120148

    invoke-virtual {p0, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0}, Landroidx/appcompat/app/AppCompatActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    const v5, 0x7f0800ef

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v4

    const/4 v5, 0x1

    invoke-direct {v1, v5, v2, v4}, Lcom/lostpixels/fieldservice/ui/ActionItem;-><init>(ILjava/lang/String;Landroid/graphics/drawable/Drawable;)V

    .line 1865
    const-string v2, "com.whatsapp"

    invoke-static {v2, p0}, Lcom/lostpixels/fieldservice/helpfunctions/HelpFunctions;->isPackageInstalled(Ljava/lang/String;Landroid/content/Context;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 1866
    new-instance v2, Lcom/lostpixels/fieldservice/ui/ActionItem;

    invoke-virtual {p0}, Landroidx/appcompat/app/AppCompatActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    const v5, 0x7f08038d

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v4

    const/4 v5, 0x2

    const-string v6, "WhatsApp"

    invoke-direct {v2, v5, v6, v4}, Lcom/lostpixels/fieldservice/ui/ActionItem;-><init>(ILjava/lang/String;Landroid/graphics/drawable/Drawable;)V

    goto :goto_0

    :cond_0
    const/4 v2, 0x0

    .line 1870
    :goto_0
    new-instance v4, Lcom/lostpixels/fieldservice/ui/QuickAction;

    invoke-virtual {p1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v5

    invoke-direct {v4, v5, v3}, Lcom/lostpixels/fieldservice/ui/QuickAction;-><init>(Landroid/content/Context;I)V

    .line 1871
    new-instance v3, Lcom/lostpixels/fieldservice/activities/visits/PersonDialog$30;

    invoke-direct {v3, p0}, Lcom/lostpixels/fieldservice/activities/visits/PersonDialog$30;-><init>(Lcom/lostpixels/fieldservice/activities/visits/PersonDialog;)V

    invoke-virtual {v4, v3}, Lcom/lostpixels/fieldservice/ui/QuickAction;->setOnActionItemClickListener(Lcom/lostpixels/fieldservice/ui/QuickAction$OnActionItemClickListener;)V

    .line 1894
    invoke-virtual {v4, v0}, Lcom/lostpixels/fieldservice/ui/QuickAction;->addActionItem(Lcom/lostpixels/fieldservice/ui/ActionItem;)V

    .line 1895
    invoke-virtual {v4, v1}, Lcom/lostpixels/fieldservice/ui/QuickAction;->addActionItem(Lcom/lostpixels/fieldservice/ui/ActionItem;)V

    if-eqz v2, :cond_1

    .line 1897
    invoke-virtual {v4, v2}, Lcom/lostpixels/fieldservice/ui/QuickAction;->addActionItem(Lcom/lostpixels/fieldservice/ui/ActionItem;)V

    :cond_1
    const/4 v0, 0x5

    .line 1898
    invoke-virtual {v4, v0}, Lcom/lostpixels/fieldservice/ui/QuickAction;->setAnimStyle(I)V

    .line 1899
    invoke-virtual {v4, p1}, Lcom/lostpixels/fieldservice/ui/QuickAction;->show(Landroid/view/View;)V

    return-void
.end method

.method private sortVisitInfoList(Ljava/util/List;)V
    .locals 1

    .line 1785
    new-instance v0, Lcom/lostpixels/fieldservice/activities/visits/PersonDialog$29;

    invoke-direct {v0, p0}, Lcom/lostpixels/fieldservice/activities/visits/PersonDialog$29;-><init>(Lcom/lostpixels/fieldservice/activities/visits/PersonDialog;)V

    .line 1792
    invoke-static {p1, v0}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    return-void
.end method

.method private updateSaveButton()V
    .locals 2

    .line 1903
    iget-object v0, p0, Lcom/lostpixels/fieldservice/activities/visits/PersonDialog;->mlayoutButtons:Landroid/view/View;

    if-eqz v0, :cond_2

    .line 1904
    iget-boolean v1, p0, Lcom/lostpixels/fieldservice/activities/visits/PersonDialog;->bSomethingChanged:Z

    if-nez v1, :cond_1

    iget-boolean v1, p0, Lcom/lostpixels/fieldservice/activities/visits/PersonDialog;->bPersonChanged:Z

    if-eqz v1, :cond_0

    goto :goto_0

    :cond_0
    const/16 v1, 0x8

    goto :goto_1

    :cond_1
    :goto_0
    const/4 v1, 0x0

    :goto_1
    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    :cond_2
    return-void
.end method


# virtual methods
.method exportPerson()V
    .locals 6

    .line 1806
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.intent.action.INSERT_OR_EDIT"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 1807
    const-string v1, "vnd.android.cursor.item/contact"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setType(Ljava/lang/String;)Landroid/content/Intent;

    .line 1809
    iget-object v1, p0, Lcom/lostpixels/fieldservice/activities/visits/PersonDialog;->person:Lcom/lostpixels/fieldservice/internal/ministry/Person;

    invoke-static {v1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    invoke-virtual {v1}, Lcom/lostpixels/fieldservice/internal/ministry/Person;->getName()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/lostpixels/fieldservice/activities/visits/PersonDialog;->person:Lcom/lostpixels/fieldservice/internal/ministry/Person;

    invoke-virtual {v1}, Lcom/lostpixels/fieldservice/internal/ministry/Person;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_0

    .line 1810
    iget-object v1, p0, Lcom/lostpixels/fieldservice/activities/visits/PersonDialog;->person:Lcom/lostpixels/fieldservice/internal/ministry/Person;

    invoke-virtual {v1}, Lcom/lostpixels/fieldservice/internal/ministry/Person;->getName()Ljava/lang/String;

    move-result-object v1

    const-string v2, "name"

    invoke-virtual {v0, v2, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 1813
    :cond_0
    iget-object v1, p0, Lcom/lostpixels/fieldservice/activities/visits/PersonDialog;->person:Lcom/lostpixels/fieldservice/internal/ministry/Person;

    invoke-virtual {v1}, Lcom/lostpixels/fieldservice/internal/ministry/Person;->getAddress()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/lostpixels/fieldservice/activities/visits/PersonDialog;->person:Lcom/lostpixels/fieldservice/internal/ministry/Person;

    invoke-virtual {v1}, Lcom/lostpixels/fieldservice/internal/ministry/Person;->getAddress()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_1

    .line 1814
    iget-object v1, p0, Lcom/lostpixels/fieldservice/activities/visits/PersonDialog;->person:Lcom/lostpixels/fieldservice/internal/ministry/Person;

    invoke-virtual {v1}, Lcom/lostpixels/fieldservice/internal/ministry/Person;->getAddress()Ljava/lang/String;

    move-result-object v1

    const-string v2, "postal"

    invoke-virtual {v0, v2, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 1818
    :cond_1
    iget-object v1, p0, Lcom/lostpixels/fieldservice/activities/visits/PersonDialog;->person:Lcom/lostpixels/fieldservice/internal/ministry/Person;

    invoke-virtual {v1}, Lcom/lostpixels/fieldservice/internal/ministry/Person;->getCellPhone()Ljava/lang/String;

    move-result-object v1

    const-string v2, "phone"

    const/4 v3, 0x1

    const/4 v4, 0x0

    if-eqz v1, :cond_2

    iget-object v1, p0, Lcom/lostpixels/fieldservice/activities/visits/PersonDialog;->person:Lcom/lostpixels/fieldservice/internal/ministry/Person;

    invoke-virtual {v1}, Lcom/lostpixels/fieldservice/internal/ministry/Person;->getCellPhone()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_2

    .line 1820
    iget-object v1, p0, Lcom/lostpixels/fieldservice/activities/visits/PersonDialog;->person:Lcom/lostpixels/fieldservice/internal/ministry/Person;

    invoke-virtual {v1}, Lcom/lostpixels/fieldservice/internal/ministry/Person;->getCellPhone()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v2, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 1821
    const-string v1, "phone_type"

    const/4 v5, 0x2

    invoke-virtual {v0, v1, v5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    const/4 v1, 0x1

    goto :goto_0

    :cond_2
    const/4 v1, 0x0

    .line 1825
    :goto_0
    iget-object v5, p0, Lcom/lostpixels/fieldservice/activities/visits/PersonDialog;->person:Lcom/lostpixels/fieldservice/internal/ministry/Person;

    invoke-virtual {v5}, Lcom/lostpixels/fieldservice/internal/ministry/Person;->getHomePhone()Ljava/lang/String;

    move-result-object v5

    if-eqz v5, :cond_4

    iget-object v5, p0, Lcom/lostpixels/fieldservice/activities/visits/PersonDialog;->person:Lcom/lostpixels/fieldservice/internal/ministry/Person;

    invoke-virtual {v5}, Lcom/lostpixels/fieldservice/internal/ministry/Person;->getHomePhone()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/String;->isEmpty()Z

    move-result v5

    if-nez v5, :cond_4

    if-eqz v1, :cond_3

    .line 1826
    const-string v2, "secondary_phone"

    .line 1827
    :cond_3
    iget-object v1, p0, Lcom/lostpixels/fieldservice/activities/visits/PersonDialog;->person:Lcom/lostpixels/fieldservice/internal/ministry/Person;

    invoke-virtual {v1}, Lcom/lostpixels/fieldservice/internal/ministry/Person;->getHomePhone()Ljava/lang/String;

    move-result-object v1

    .line 1826
    invoke-virtual {v0, v2, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 1828
    const-string v1, "secondary_phone_type"

    invoke-virtual {v0, v1, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 1832
    :cond_4
    iget-object v1, p0, Lcom/lostpixels/fieldservice/activities/visits/PersonDialog;->person:Lcom/lostpixels/fieldservice/internal/ministry/Person;

    invoke-virtual {v1}, Lcom/lostpixels/fieldservice/internal/ministry/Person;->getEmail()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_5

    iget-object v1, p0, Lcom/lostpixels/fieldservice/activities/visits/PersonDialog;->person:Lcom/lostpixels/fieldservice/internal/ministry/Person;

    invoke-virtual {v1}, Lcom/lostpixels/fieldservice/internal/ministry/Person;->getEmail()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_5

    .line 1833
    iget-object v1, p0, Lcom/lostpixels/fieldservice/activities/visits/PersonDialog;->person:Lcom/lostpixels/fieldservice/internal/ministry/Person;

    invoke-virtual {v1}, Lcom/lostpixels/fieldservice/internal/ministry/Person;->getEmail()Ljava/lang/String;

    move-result-object v1

    const-string v2, "email"

    invoke-virtual {v0, v2, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 1836
    :cond_5
    iget-object v1, p0, Lcom/lostpixels/fieldservice/activities/visits/PersonDialog;->person:Lcom/lostpixels/fieldservice/internal/ministry/Person;

    invoke-virtual {v1}, Lcom/lostpixels/fieldservice/internal/ministry/Person;->getGeneralInfo()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_6

    iget-object v1, p0, Lcom/lostpixels/fieldservice/activities/visits/PersonDialog;->person:Lcom/lostpixels/fieldservice/internal/ministry/Person;

    invoke-virtual {v1}, Lcom/lostpixels/fieldservice/internal/ministry/Person;->getGeneralInfo()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_6

    .line 1837
    iget-object v1, p0, Lcom/lostpixels/fieldservice/activities/visits/PersonDialog;->person:Lcom/lostpixels/fieldservice/internal/ministry/Person;

    invoke-virtual {v1}, Lcom/lostpixels/fieldservice/internal/ministry/Person;->getGeneralInfo()Ljava/lang/String;

    move-result-object v1

    const-string v2, "notes"

    invoke-virtual {v0, v2, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 1840
    :cond_6
    :try_start_0
    invoke-virtual {p0, v0}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V
    :try_end_0
    .catch Landroid/content/ActivityNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception v0

    .line 1842
    const-string v1, "Export person"

    invoke-static {v0}, Lcom/lostpixels/fieldservice/helpfunctions/HelpFunctions;->getStackTrace(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Lcom/lostpixels/fieldservice/utils/LogToSD;->write(Ljava/lang/String;Ljava/lang/String;)V

    const v0, 0x7f1203de

    .line 1843
    invoke-virtual {p0, v0}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    move-result-object v0

    invoke-static {p0, v0, v4}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    return-void
.end method

.method protected onActivityResult(IILandroid/content/Intent;)V
    .locals 6

    .line 1645
    iget-object v0, p0, Lcom/lostpixels/fieldservice/activities/visits/PersonDialog;->person:Lcom/lostpixels/fieldservice/internal/ministry/Person;

    invoke-static {v0, p0}, Lcom/lostpixels/fieldservice/helpfunctions/ConsistancyChecks;->restartIfNull(Ljava/lang/Object;Landroid/app/Activity;)Z

    move-result v0

    if-nez v0, :cond_c

    .line 1646
    const-string v0, "Person"

    const/4 v1, -0x1

    const/4 v2, 0x0

    const/4 v3, 0x1

    if-eqz p1, :cond_8

    if-eq p1, v3, :cond_2

    const/4 v2, 0x2

    if-eq p1, v2, :cond_1

    const/16 v2, 0x10

    if-eq p1, v2, :cond_0

    goto/16 :goto_2

    :cond_0
    if-ne p2, v1, :cond_c

    .line 1673
    invoke-virtual {p3, v0}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Lcom/lostpixels/fieldservice/internal/ministry/Person;

    iput-object v0, p0, Lcom/lostpixels/fieldservice/activities/visits/PersonDialog;->person:Lcom/lostpixels/fieldservice/internal/ministry/Person;

    .line 1674
    invoke-direct {p0}, Lcom/lostpixels/fieldservice/activities/visits/PersonDialog;->setPersonInfo()V

    .line 1675
    iput-boolean v3, p0, Lcom/lostpixels/fieldservice/activities/visits/PersonDialog;->bSomethingChanged:Z

    .line 1676
    invoke-direct {p0}, Lcom/lostpixels/fieldservice/activities/visits/PersonDialog;->updateSaveButton()V

    goto/16 :goto_2

    :cond_1
    if-ne p2, v1, :cond_c

    .line 1665
    invoke-direct {p0}, Lcom/lostpixels/fieldservice/activities/visits/PersonDialog;->setPersonInfo()V

    .line 1666
    iput-boolean v3, p0, Lcom/lostpixels/fieldservice/activities/visits/PersonDialog;->bSomethingChanged:Z

    .line 1667
    invoke-direct {p0}, Lcom/lostpixels/fieldservice/activities/visits/PersonDialog;->updateSaveButton()V

    goto/16 :goto_2

    :cond_2
    if-ne p2, v1, :cond_c

    .line 1681
    const-string v1, "VisitInfo"

    invoke-virtual {p3, v1}, Landroid/content/Intent;->hasExtra(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_c

    .line 1682
    invoke-virtual {p3, v0}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Lcom/lostpixels/fieldservice/internal/ministry/Person;

    iput-object v0, p0, Lcom/lostpixels/fieldservice/activities/visits/PersonDialog;->person:Lcom/lostpixels/fieldservice/internal/ministry/Person;

    .line 1683
    sget-object v0, Lcom/lostpixels/fieldservice/activities/visits/PersonDialog;->mSessions:Ljava/util/ArrayList;

    if-nez v0, :cond_3

    .line 1684
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    sput-object v0, Lcom/lostpixels/fieldservice/activities/visits/PersonDialog;->mSessions:Ljava/util/ArrayList;

    .line 1686
    :cond_3
    const-string v0, "ServiceSession"

    invoke-virtual {p3, v0}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Lcom/lostpixels/fieldservice/internal/report/ServiceSession;

    .line 1687
    sget-object v4, Lcom/lostpixels/fieldservice/activities/visits/PersonDialog;->mSessions:Ljava/util/ArrayList;

    invoke-virtual {v4, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1688
    iput-boolean v3, p0, Lcom/lostpixels/fieldservice/activities/visits/PersonDialog;->bSomethingChanged:Z

    .line 1689
    invoke-direct {p0}, Lcom/lostpixels/fieldservice/activities/visits/PersonDialog;->updateSaveButton()V

    .line 1690
    iget-object v0, p0, Lcom/lostpixels/fieldservice/activities/visits/PersonDialog;->viewMagazineItem:Lcom/lostpixels/fieldservice/ui/MagazineRouteView;

    if-eqz v0, :cond_4

    .line 1691
    iget-object v4, p0, Lcom/lostpixels/fieldservice/activities/visits/PersonDialog;->person:Lcom/lostpixels/fieldservice/internal/ministry/Person;

    invoke-static {v4}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    invoke-virtual {v4}, Lcom/lostpixels/fieldservice/internal/ministry/Person;->getMagazineRouteMap()[Z

    move-result-object v4

    invoke-virtual {v0, v4}, Lcom/lostpixels/fieldservice/ui/MagazineRouteView;->setMagazineMap([Z)V

    .line 1693
    :cond_4
    const-string v0, "IsEditing"

    invoke-virtual {p3, v0, v2}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v0

    if-nez v0, :cond_6

    .line 1696
    iget-object v0, p0, Lcom/lostpixels/fieldservice/activities/visits/PersonDialog;->mlstPersonInfo:Ljava/util/ArrayList;

    if-nez v0, :cond_5

    .line 1697
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/lostpixels/fieldservice/activities/visits/PersonDialog;->mlstPersonInfo:Ljava/util/ArrayList;

    .line 1698
    iget-object v4, p0, Lcom/lostpixels/fieldservice/activities/visits/PersonDialog;->person:Lcom/lostpixels/fieldservice/internal/ministry/Person;

    invoke-static {v4}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    invoke-virtual {v4}, Lcom/lostpixels/fieldservice/internal/ministry/Person;->getInfo()Ljava/util/List;

    move-result-object v4

    invoke-virtual {v0, v4}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    .line 1702
    :cond_5
    invoke-virtual {p3, v1}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Lcom/lostpixels/fieldservice/internal/ministry/VisitInfo;

    .line 1703
    iget-object v1, p0, Lcom/lostpixels/fieldservice/activities/visits/PersonDialog;->mlstPersonInfo:Ljava/util/ArrayList;

    invoke-virtual {v1, v2, v0}, Ljava/util/ArrayList;->add(ILjava/lang/Object;)V

    .line 1704
    iget-object v0, p0, Lcom/lostpixels/fieldservice/activities/visits/PersonDialog;->mlstPersonInfo:Ljava/util/ArrayList;

    invoke-direct {p0, v0}, Lcom/lostpixels/fieldservice/activities/visits/PersonDialog;->sortVisitInfoList(Ljava/util/List;)V

    .line 1705
    invoke-direct {p0}, Lcom/lostpixels/fieldservice/activities/visits/PersonDialog;->populateInfoList()V

    goto :goto_0

    .line 1708
    :cond_6
    invoke-virtual {p3, v1}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Lcom/lostpixels/fieldservice/internal/ministry/VisitInfo;

    .line 1709
    iget-object v1, p0, Lcom/lostpixels/fieldservice/activities/visits/PersonDialog;->mlstPersonInfo:Ljava/util/ArrayList;

    invoke-static {v1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    iget v2, p0, Lcom/lostpixels/fieldservice/activities/visits/PersonDialog;->mInfoIndex:I

    invoke-virtual {v1, v2, v0}, Ljava/util/ArrayList;->set(ILjava/lang/Object;)Ljava/lang/Object;

    .line 1710
    iget-object v0, p0, Lcom/lostpixels/fieldservice/activities/visits/PersonDialog;->mlstPersonInfo:Ljava/util/ArrayList;

    invoke-direct {p0, v0}, Lcom/lostpixels/fieldservice/activities/visits/PersonDialog;->sortVisitInfoList(Ljava/util/List;)V

    .line 1711
    iget-object v0, p0, Lcom/lostpixels/fieldservice/activities/visits/PersonDialog;->lstPersonNotes:Landroid/widget/ListView;

    if-eqz v0, :cond_7

    .line 1712
    invoke-virtual {v0}, Landroid/widget/ListView;->getAdapter()Landroid/widget/ListAdapter;

    move-result-object v0

    check-cast v0, Lcom/lostpixels/fieldservice/activities/visits/PersonDialog$PersonInfoListAdapter;

    if-eqz v0, :cond_7

    .line 1714
    invoke-virtual {v0}, Landroid/widget/BaseAdapter;->notifyDataSetChanged()V

    .line 1717
    :cond_7
    :goto_0
    iget-object v0, p0, Lcom/lostpixels/fieldservice/activities/visits/PersonDialog;->person:Lcom/lostpixels/fieldservice/internal/ministry/Person;

    invoke-static {v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    invoke-virtual {v0}, Lcom/lostpixels/fieldservice/internal/ministry/Person;->getTimeForRV()Ljava/util/Date;

    move-result-object v0

    if-eqz v0, :cond_c

    iget-object v0, p0, Lcom/lostpixels/fieldservice/activities/visits/PersonDialog;->person:Lcom/lostpixels/fieldservice/internal/ministry/Person;

    invoke-virtual {v0}, Lcom/lostpixels/fieldservice/internal/ministry/Person;->getTimeForRV()Ljava/util/Date;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/Date;->getTime()J

    move-result-wide v0

    iget-wide v4, p0, Lcom/lostpixels/fieldservice/activities/visits/PersonDialog;->mlIncomingVisitTime:J

    cmp-long v2, v0, v4

    if-eqz v2, :cond_c

    .line 1718
    iput-boolean v3, p0, Lcom/lostpixels/fieldservice/activities/visits/PersonDialog;->bPersonChanged:Z

    .line 1719
    invoke-direct {p0}, Lcom/lostpixels/fieldservice/activities/visits/PersonDialog;->updateSaveButton()V

    goto :goto_2

    :cond_8
    if-ne p2, v1, :cond_c

    .line 1649
    invoke-virtual {p3, v0}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Lcom/lostpixels/fieldservice/internal/ministry/Person;

    iput-object v0, p0, Lcom/lostpixels/fieldservice/activities/visits/PersonDialog;->person:Lcom/lostpixels/fieldservice/internal/ministry/Person;

    .line 1650
    iget-boolean v1, p0, Lcom/lostpixels/fieldservice/activities/visits/PersonDialog;->bCreateNew:Z

    if-eqz v1, :cond_a

    invoke-static {v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    invoke-virtual {v0}, Lcom/lostpixels/fieldservice/internal/ministry/Person;->getInfo()Ljava/util/List;

    move-result-object v0

    if-eqz v0, :cond_9

    iget-object v0, p0, Lcom/lostpixels/fieldservice/activities/visits/PersonDialog;->person:Lcom/lostpixels/fieldservice/internal/ministry/Person;

    invoke-virtual {v0}, Lcom/lostpixels/fieldservice/internal/ministry/Person;->getInfo()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_a

    :cond_9
    const/4 v0, 0x1

    goto :goto_1

    :cond_a
    const/4 v0, 0x0

    .line 1651
    :goto_1
    const-string v1, "TagPerson"

    if-nez v0, :cond_b

    invoke-virtual {p3, v1, v2}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v4

    if-eqz v4, :cond_b

    .line 1652
    new-instance v4, Lcom/lostpixels/fieldservice/activities/visits/PersonDialog$GetAddressPositionTask;

    iget-object v5, p0, Lcom/lostpixels/fieldservice/activities/visits/PersonDialog;->person:Lcom/lostpixels/fieldservice/internal/ministry/Person;

    invoke-direct {v4, p0, p0, v5}, Lcom/lostpixels/fieldservice/activities/visits/PersonDialog$GetAddressPositionTask;-><init>(Lcom/lostpixels/fieldservice/activities/visits/PersonDialog;Landroid/content/Context;Lcom/lostpixels/fieldservice/internal/ministry/Person;)V

    new-array v5, v2, [Ljava/lang/Void;

    invoke-virtual {v4, v5}, Landroid/os/AsyncTask;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    .line 1654
    :cond_b
    invoke-direct {p0}, Lcom/lostpixels/fieldservice/activities/visits/PersonDialog;->setPersonInfo()V

    .line 1655
    iput-boolean v3, p0, Lcom/lostpixels/fieldservice/activities/visits/PersonDialog;->bSomethingChanged:Z

    .line 1656
    iput-boolean v3, p0, Lcom/lostpixels/fieldservice/activities/visits/PersonDialog;->bPersonChanged:Z

    .line 1657
    invoke-direct {p0}, Lcom/lostpixels/fieldservice/activities/visits/PersonDialog;->updateSaveButton()V

    if-eqz v0, :cond_c

    .line 1660
    invoke-virtual {p3, v1, v2}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v0

    invoke-direct {p0, v0}, Lcom/lostpixels/fieldservice/activities/visits/PersonDialog;->openAddVisitDialog(Z)V

    .line 1725
    :cond_c
    :goto_2
    invoke-super {p0, p1, p2, p3}, Lcom/lostpixels/fieldservice/activities/base/MinistryAssistantActivity;->onActivityResult(IILandroid/content/Intent;)V

    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 12

    .line 251
    invoke-super {p0, p1}, Lcom/lostpixels/fieldservice/activities/base/MinistryAssistantActivity;->onCreate(Landroid/os/Bundle;)V

    .line 252
    iget-boolean v0, p0, Lcom/lostpixels/fieldservice/activities/base/MinistryAssistantActivity;->mbRestart:Z

    if-eqz v0, :cond_0

    return-void

    .line 255
    :cond_0
    invoke-static {}, Lcom/lostpixels/fieldservice/utils/PerfToSD;->start()V

    const-wide/16 v0, -0x1

    .line 256
    iput-wide v0, p0, Lcom/lostpixels/fieldservice/activities/visits/PersonDialog;->mPersonKey:J

    const/4 v0, -0x1

    .line 257
    iput v0, p0, Lcom/lostpixels/fieldservice/activities/visits/PersonDialog;->mInfoIndex:I

    .line 259
    invoke-virtual {p0}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    const-wide/16 v1, 0x0

    .line 260
    const-string v3, "CreateNew"

    const-string v4, "Person"

    const/4 v5, 0x1

    const/4 v6, 0x0

    if-eqz p1, :cond_1

    .line 261
    invoke-virtual {p0, p1}, Lcom/lostpixels/fieldservice/activities/visits/PersonDialog;->restoreInstanceState(Landroid/os/Bundle;)V

    goto/16 :goto_2

    :cond_1
    if-eqz v0, :cond_c

    .line 263
    const-string p1, "Before unwrap"

    invoke-static {p1}, Lcom/lostpixels/fieldservice/utils/PerfToSD;->lap(Ljava/lang/String;)V

    .line 265
    invoke-virtual {v0, v4}, Landroid/content/Intent;->hasExtra(Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_2

    .line 266
    invoke-virtual {v0, v4}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object p1

    check-cast p1, Lcom/lostpixels/fieldservice/internal/ministry/Person;

    iput-object p1, p0, Lcom/lostpixels/fieldservice/activities/visits/PersonDialog;->person:Lcom/lostpixels/fieldservice/internal/ministry/Person;

    goto :goto_0

    .line 267
    :cond_2
    const-string p1, "PersonID"

    invoke-virtual {v0, p1}, Landroid/content/Intent;->hasExtra(Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_3

    .line 268
    iget-object v7, p0, Lcom/lostpixels/fieldservice/activities/base/BaseActivity;->realm:Lio/realm/Realm;

    invoke-static {v7}, Lcom/lostpixels/fieldservice/internal/ministry/MinistryManager;->getInstance(Lio/realm/Realm;)Lcom/lostpixels/fieldservice/internal/ministry/MinistryManager;

    move-result-object v8

    iget-object v9, p0, Lcom/lostpixels/fieldservice/activities/base/BaseActivity;->realm:Lio/realm/Realm;

    invoke-virtual {v0, p1, v1, v2}, Landroid/content/Intent;->getLongExtra(Ljava/lang/String;J)J

    move-result-wide v10

    invoke-virtual {v8, v9, v10, v11}, Lcom/lostpixels/fieldservice/internal/ministry/MinistryManager;->getPerson(Lio/realm/Realm;J)Lcom/lostpixels/fieldservice/internal/ministry/Person;

    move-result-object p1

    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    invoke-static {v7, p1}, Lcom/lostpixels/fieldservice/internal/ministry/Person;->clonePerson(Lio/realm/Realm;Lcom/lostpixels/fieldservice/internal/ministry/Person;)Lcom/lostpixels/fieldservice/internal/ministry/Person;

    move-result-object p1

    iput-object p1, p0, Lcom/lostpixels/fieldservice/activities/visits/PersonDialog;->person:Lcom/lostpixels/fieldservice/internal/ministry/Person;

    goto :goto_0

    .line 269
    :cond_3
    invoke-virtual {v0}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object p1

    if-eqz p1, :cond_4

    invoke-virtual {v0}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object p1

    const-string v7, "fieldservice.action.addfromshortcut"

    invoke-virtual {p1, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_4

    .line 270
    new-instance p1, Lcom/lostpixels/fieldservice/internal/ministry/Person;

    invoke-direct {p1}, Lcom/lostpixels/fieldservice/internal/ministry/Person;-><init>()V

    iput-object p1, p0, Lcom/lostpixels/fieldservice/activities/visits/PersonDialog;->person:Lcom/lostpixels/fieldservice/internal/ministry/Person;

    .line 271
    invoke-virtual {p1, v5}, Lcom/lostpixels/fieldservice/internal/ministry/Person;->setReturnVisit(Z)V

    .line 272
    iput-boolean v5, p0, Lcom/lostpixels/fieldservice/activities/visits/PersonDialog;->bCreateNew:Z

    .line 273
    iput-boolean v6, p0, Lcom/lostpixels/fieldservice/activities/visits/PersonDialog;->bCreateFromTerritory:Z

    .line 274
    iput-boolean v5, p0, Lcom/lostpixels/fieldservice/activities/visits/PersonDialog;->bShowEditDialog:Z

    .line 277
    :cond_4
    :goto_0
    const-string p1, "After unwrap"

    invoke-static {p1}, Lcom/lostpixels/fieldservice/utils/PerfToSD;->lap(Ljava/lang/String;)V

    .line 278
    const-string p1, "CreatedFromTerritory"

    invoke-virtual {v0, p1}, Landroid/content/Intent;->hasExtra(Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_5

    .line 279
    invoke-virtual {v0, p1, v6}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result p1

    iput-boolean p1, p0, Lcom/lostpixels/fieldservice/activities/visits/PersonDialog;->bCreateFromTerritory:Z

    .line 280
    :cond_5
    invoke-virtual {v0, v3}, Landroid/content/Intent;->hasExtra(Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_6

    .line 281
    invoke-virtual {v0, v3, v6}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result p1

    iput-boolean p1, p0, Lcom/lostpixels/fieldservice/activities/visits/PersonDialog;->bCreateNew:Z

    .line 282
    iput-boolean p1, p0, Lcom/lostpixels/fieldservice/activities/visits/PersonDialog;->bShowEditDialog:Z

    .line 286
    :cond_6
    iget-boolean p1, p0, Lcom/lostpixels/fieldservice/activities/visits/PersonDialog;->bCreateNew:Z

    if-eqz p1, :cond_c

    iget-boolean p1, p0, Lcom/lostpixels/fieldservice/activities/visits/PersonDialog;->bCreateFromTerritory:Z

    if-nez p1, :cond_c

    .line 287
    invoke-static {}, Lcom/lostpixels/fieldservice/utils/map/PositionReceiver;->getFoundCity()Ljava/lang/String;

    move-result-object p1

    .line 288
    invoke-static {}, Lcom/lostpixels/fieldservice/utils/map/PositionReceiver;->getFoundAddressNumber()Ljava/lang/String;

    move-result-object v0

    .line 289
    invoke-static {}, Lcom/lostpixels/fieldservice/utils/map/PositionReceiver;->getFoundStreet()Ljava/lang/String;

    move-result-object v7

    .line 290
    invoke-static {}, Lcom/lostpixels/fieldservice/utils/map/PositionReceiver;->getFoundPostal()Ljava/lang/String;

    move-result-object v8

    .line 291
    invoke-static {p0}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v9

    .line 292
    const-string v10, "checkNumberBeforeStreet"

    invoke-interface {v9, v10, v6}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v9

    if-eqz p1, :cond_7

    .line 295
    iget-object v10, p0, Lcom/lostpixels/fieldservice/activities/visits/PersonDialog;->person:Lcom/lostpixels/fieldservice/internal/ministry/Person;

    invoke-static {v10}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    invoke-virtual {v10, p1}, Lcom/lostpixels/fieldservice/internal/ministry/Person;->setCity(Ljava/lang/String;)V

    :cond_7
    if-nez v0, :cond_8

    .line 299
    iget-object v0, p0, Lcom/lostpixels/fieldservice/activities/visits/PersonDialog;->person:Lcom/lostpixels/fieldservice/internal/ministry/Person;

    invoke-static {v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    const-string v7, ""

    invoke-virtual {v0, v7}, Lcom/lostpixels/fieldservice/internal/ministry/Person;->setAddress(Ljava/lang/String;)V

    goto :goto_1

    :cond_8
    if-eqz v7, :cond_a

    if-eqz v0, :cond_a

    const/4 v10, 0x2

    .line 302
    const-string v11, "%s %s"

    if-eqz v9, :cond_9

    .line 303
    iget-object v9, p0, Lcom/lostpixels/fieldservice/activities/visits/PersonDialog;->person:Lcom/lostpixels/fieldservice/internal/ministry/Person;

    invoke-static {v9}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    new-array v10, v10, [Ljava/lang/Object;

    aput-object v0, v10, v6

    aput-object v7, v10, v5

    invoke-static {v11, v10}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v9, v0}, Lcom/lostpixels/fieldservice/internal/ministry/Person;->setAddress(Ljava/lang/String;)V

    goto :goto_1

    .line 305
    :cond_9
    iget-object v9, p0, Lcom/lostpixels/fieldservice/activities/visits/PersonDialog;->person:Lcom/lostpixels/fieldservice/internal/ministry/Person;

    invoke-static {v9}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    new-array v10, v10, [Ljava/lang/Object;

    aput-object v7, v10, v6

    aput-object v0, v10, v5

    invoke-static {v11, v10}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v9, v0}, Lcom/lostpixels/fieldservice/internal/ministry/Person;->setAddress(Ljava/lang/String;)V

    :cond_a
    :goto_1
    if-eqz v8, :cond_b

    .line 308
    iget-object v0, p0, Lcom/lostpixels/fieldservice/activities/visits/PersonDialog;->person:Lcom/lostpixels/fieldservice/internal/ministry/Person;

    invoke-static {v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    invoke-virtual {v0, v8}, Lcom/lostpixels/fieldservice/internal/ministry/Person;->setPostalCode(Ljava/lang/String;)V

    .line 311
    :cond_b
    iget-object v0, p0, Lcom/lostpixels/fieldservice/activities/base/BaseActivity;->realm:Lio/realm/Realm;

    invoke-static {v0}, Lcom/lostpixels/fieldservice/internal/ministry/MinistryManager;->getInstance(Lio/realm/Realm;)Lcom/lostpixels/fieldservice/internal/ministry/MinistryManager;

    move-result-object v0

    invoke-virtual {v0, p0, p1}, Lcom/lostpixels/fieldservice/internal/ministry/MinistryManager;->addCityIfNew(Landroid/content/Context;Ljava/lang/String;)V

    .line 316
    :cond_c
    :goto_2
    invoke-virtual {p0}, Landroidx/appcompat/app/AppCompatActivity;->getSupportActionBar()Landroidx/appcompat/app/ActionBar;

    move-result-object p1

    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    invoke-virtual {p1, v5}, Landroidx/appcompat/app/ActionBar;->setDisplayHomeAsUpEnabled(Z)V

    .line 317
    invoke-virtual {p0}, Landroidx/appcompat/app/AppCompatActivity;->getSupportActionBar()Landroidx/appcompat/app/ActionBar;

    move-result-object p1

    const v0, 0x7f12058a

    invoke-virtual {p1, v0}, Landroidx/appcompat/app/ActionBar;->setTitle(I)V

    const p1, 0x7f090305

    .line 319
    invoke-virtual {p0, p1}, Landroidx/appcompat/app/AppCompatActivity;->findViewById(I)Landroid/view/View;

    move-result-object p1

    iput-object p1, p0, Lcom/lostpixels/fieldservice/activities/visits/PersonDialog;->mlayoutButtons:Landroid/view/View;

    const p1, 0x7f0900ef

    .line 321
    invoke-virtual {p0, p1}, Landroidx/appcompat/app/AppCompatActivity;->findViewById(I)Landroid/view/View;

    move-result-object p1

    .line 322
    new-instance v0, Lcom/lostpixels/fieldservice/activities/visits/PersonDialog$$ExternalSyntheticLambda0;

    invoke-direct {v0, p0}, Lcom/lostpixels/fieldservice/activities/visits/PersonDialog$$ExternalSyntheticLambda0;-><init>(Lcom/lostpixels/fieldservice/activities/visits/PersonDialog;)V

    invoke-virtual {p1, v0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const p1, 0x7f0900ee

    .line 324
    invoke-virtual {p0, p1}, Landroidx/appcompat/app/AppCompatActivity;->findViewById(I)Landroid/view/View;

    move-result-object p1

    .line 325
    new-instance v0, Lcom/lostpixels/fieldservice/activities/visits/PersonDialog$$ExternalSyntheticLambda1;

    invoke-direct {v0, p0}, Lcom/lostpixels/fieldservice/activities/visits/PersonDialog$$ExternalSyntheticLambda1;-><init>(Lcom/lostpixels/fieldservice/activities/visits/PersonDialog;)V

    invoke-virtual {p1, v0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const p1, 0x7f090665

    .line 331
    invoke-virtual {p0, p1}, Landroidx/appcompat/app/AppCompatActivity;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroidx/viewpager/widget/ViewPager;

    .line 333
    new-instance v0, Lcom/lostpixels/fieldservice/activities/visits/PersonDialog$ViewPagerAdapter;

    invoke-direct {v0, p0, p1}, Lcom/lostpixels/fieldservice/activities/visits/PersonDialog$ViewPagerAdapter;-><init>(Lcom/lostpixels/fieldservice/activities/visits/PersonDialog;Landroidx/viewpager/widget/ViewPager;)V

    .line 334
    invoke-virtual {p1, v0}, Landroidx/viewpager/widget/ViewPager;->setAdapter(Landroidx/viewpager/widget/PagerAdapter;)V

    .line 335
    const-string v0, "In the middle"

    invoke-static {v0}, Lcom/lostpixels/fieldservice/utils/PerfToSD;->lap(Ljava/lang/String;)V

    const v0, 0x7f0904e4

    .line 338
    invoke-virtual {p0, v0}, Landroidx/appcompat/app/AppCompatActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/lostpixels/fieldservice/ui/slidingtabs/SlidingTabLayout;

    iput-object v0, p0, Lcom/lostpixels/fieldservice/activities/visits/PersonDialog;->mSlidingTabLayout:Lcom/lostpixels/fieldservice/ui/slidingtabs/SlidingTabLayout;

    const v7, 0x7f0c0145

    const v8, 0x1020014

    .line 339
    invoke-virtual {v0, v7, v8}, Lcom/lostpixels/fieldservice/ui/slidingtabs/SlidingTabLayout;->setCustomTabView(II)V

    .line 340
    iget-object v0, p0, Lcom/lostpixels/fieldservice/activities/visits/PersonDialog;->mSlidingTabLayout:Lcom/lostpixels/fieldservice/ui/slidingtabs/SlidingTabLayout;

    invoke-virtual {v0, v5}, Lcom/lostpixels/fieldservice/ui/slidingtabs/SlidingTabLayout;->setDistributeEvenly(Z)V

    .line 341
    iget-object v0, p0, Lcom/lostpixels/fieldservice/activities/visits/PersonDialog;->mSlidingTabLayout:Lcom/lostpixels/fieldservice/ui/slidingtabs/SlidingTabLayout;

    invoke-virtual {v0, p1}, Lcom/lostpixels/fieldservice/ui/slidingtabs/SlidingTabLayout;->setViewPager(Landroidx/viewpager/widget/ViewPager;)V

    .line 342
    iget-object p1, p0, Lcom/lostpixels/fieldservice/activities/visits/PersonDialog;->mSlidingTabLayout:Lcom/lostpixels/fieldservice/ui/slidingtabs/SlidingTabLayout;

    invoke-static {p0}, Lcom/lostpixels/fieldservice/utils/ColorUtils;->getAccentColor(Landroid/content/Context;)I

    move-result v0

    filled-new-array {v0}, [I

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/lostpixels/fieldservice/ui/slidingtabs/SlidingTabLayout;->setSelectedIndicatorColors([I)V

    .line 345
    iget-object p1, p0, Lcom/lostpixels/fieldservice/activities/visits/PersonDialog;->person:Lcom/lostpixels/fieldservice/internal/ministry/Person;

    if-eqz p1, :cond_d

    invoke-virtual {p1}, Lcom/lostpixels/fieldservice/internal/ministry/Person;->getTimeForRV()Ljava/util/Date;

    move-result-object p1

    if-eqz p1, :cond_d

    .line 346
    iget-object p1, p0, Lcom/lostpixels/fieldservice/activities/visits/PersonDialog;->person:Lcom/lostpixels/fieldservice/internal/ministry/Person;

    invoke-virtual {p1}, Lcom/lostpixels/fieldservice/internal/ministry/Person;->getTimeForRV()Ljava/util/Date;

    move-result-object p1

    invoke-virtual {p1}, Ljava/util/Date;->getTime()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/lostpixels/fieldservice/activities/visits/PersonDialog;->mlIncomingVisitTime:J

    goto :goto_3

    .line 348
    :cond_d
    iput-wide v1, p0, Lcom/lostpixels/fieldservice/activities/visits/PersonDialog;->mlIncomingVisitTime:J

    .line 350
    :goto_3
    invoke-direct {p0}, Lcom/lostpixels/fieldservice/activities/visits/PersonDialog;->updateSaveButton()V

    .line 351
    sget-object p1, Lcom/lostpixels/fieldservice/activities/visits/PersonDialog;->mSessions:Ljava/util/ArrayList;

    if-nez p1, :cond_e

    .line 352
    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    sput-object p1, Lcom/lostpixels/fieldservice/activities/visits/PersonDialog;->mSessions:Ljava/util/ArrayList;

    .line 354
    :cond_e
    iget-boolean p1, p0, Lcom/lostpixels/fieldservice/activities/visits/PersonDialog;->bShowEditDialog:Z

    if-eqz p1, :cond_f

    .line 355
    iput-boolean v6, p0, Lcom/lostpixels/fieldservice/activities/visits/PersonDialog;->bShowEditDialog:Z

    .line 356
    new-instance p1, Landroid/content/Intent;

    const-class v0, Lcom/lostpixels/fieldservice/activities/visits/EditPersonDialog;

    invoke-direct {p1, p0, v0}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 357
    iget-object v0, p0, Lcom/lostpixels/fieldservice/activities/visits/PersonDialog;->person:Lcom/lostpixels/fieldservice/internal/ministry/Person;

    invoke-virtual {p1, v4, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 358
    iget-boolean v0, p0, Lcom/lostpixels/fieldservice/activities/visits/PersonDialog;->bCreateNew:Z

    invoke-virtual {p1, v3, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 359
    invoke-virtual {p0, p1, v6}, Landroidx/activity/ComponentActivity;->startActivityForResult(Landroid/content/Intent;I)V

    .line 362
    :cond_f
    const-string p1, "CreatePersonDialog"

    invoke-static {p1}, Lcom/lostpixels/fieldservice/utils/PerfToSD;->stop(Ljava/lang/String;)V

    return-void
.end method

.method public onCreateContextMenu(Landroid/view/ContextMenu;Landroid/view/View;Landroid/view/ContextMenu$ContextMenuInfo;)V
    .locals 1

    .line 1396
    check-cast p3, Landroid/widget/AdapterView$AdapterContextMenuInfo;

    .line 1398
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide p1

    iput-wide p1, p0, Lcom/lostpixels/fieldservice/activities/visits/PersonDialog;->time:J

    const p1, 0x7f120151

    .line 1399
    invoke-virtual {p0, p1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p1

    filled-new-array {p1}, [Ljava/lang/String;

    move-result-object p1

    .line 1401
    new-instance p2, Landroidx/appcompat/app/AlertDialog$Builder;

    invoke-direct {p2, p0}, Landroidx/appcompat/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    const v0, 0x7f12012e

    .line 1402
    invoke-virtual {p0, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Landroidx/appcompat/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Landroidx/appcompat/app/AlertDialog$Builder;

    .line 1403
    new-instance v0, Lcom/lostpixels/fieldservice/activities/visits/PersonDialog$$ExternalSyntheticLambda3;

    invoke-direct {v0, p0, p3}, Lcom/lostpixels/fieldservice/activities/visits/PersonDialog$$ExternalSyntheticLambda3;-><init>(Lcom/lostpixels/fieldservice/activities/visits/PersonDialog;Landroid/widget/AdapterView$AdapterContextMenuInfo;)V

    invoke-virtual {p2, p1, v0}, Landroidx/appcompat/app/AlertDialog$Builder;->setItems([Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroidx/appcompat/app/AlertDialog$Builder;

    .line 1410
    invoke-virtual {p2}, Landroidx/appcompat/app/AlertDialog$Builder;->create()Landroidx/appcompat/app/AlertDialog;

    move-result-object p1

    .line 1411
    invoke-virtual {p1}, Landroid/app/Dialog;->show()V

    return-void
.end method

.method public onKeyDown(ILandroid/view/KeyEvent;)Z
    .locals 2

    const/4 v0, 0x4

    if-ne p1, v0, :cond_1

    .line 1610
    iget-boolean v0, p0, Lcom/lostpixels/fieldservice/activities/visits/PersonDialog;->bSomethingChanged:Z

    if-eqz v0, :cond_0

    .line 1611
    new-instance p1, Landroidx/appcompat/app/AlertDialog$Builder;

    invoke-direct {p1, p0}, Landroidx/appcompat/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    const p2, 0x7f1204bd

    .line 1612
    invoke-virtual {p0, p2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Landroidx/appcompat/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroidx/appcompat/app/AlertDialog$Builder;

    move-result-object p2

    const/4 v0, 0x0

    invoke-virtual {p2, v0}, Landroidx/appcompat/app/AlertDialog$Builder;->setCancelable(Z)Landroidx/appcompat/app/AlertDialog$Builder;

    move-result-object p2

    const v0, 0x7f12055b

    .line 1613
    invoke-virtual {p0, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    new-instance v1, Lcom/lostpixels/fieldservice/activities/visits/PersonDialog$26;

    invoke-direct {v1, p0}, Lcom/lostpixels/fieldservice/activities/visits/PersonDialog$26;-><init>(Lcom/lostpixels/fieldservice/activities/visits/PersonDialog;)V

    invoke-virtual {p2, v0, v1}, Landroidx/appcompat/app/AlertDialog$Builder;->setPositiveButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroidx/appcompat/app/AlertDialog$Builder;

    move-result-object p2

    const v0, 0x7f12045b

    .line 1617
    invoke-virtual {p0, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    new-instance v1, Lcom/lostpixels/fieldservice/activities/visits/PersonDialog$25;

    invoke-direct {v1, p0}, Lcom/lostpixels/fieldservice/activities/visits/PersonDialog$25;-><init>(Lcom/lostpixels/fieldservice/activities/visits/PersonDialog;)V

    invoke-virtual {p2, v0, v1}, Landroidx/appcompat/app/AlertDialog$Builder;->setNegativeButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroidx/appcompat/app/AlertDialog$Builder;

    .line 1624
    invoke-virtual {p1}, Landroidx/appcompat/app/AlertDialog$Builder;->create()Landroidx/appcompat/app/AlertDialog;

    move-result-object p1

    .line 1625
    invoke-virtual {p1}, Landroid/app/Dialog;->show()V

    const/4 p1, 0x1

    return p1

    .line 1628
    :cond_0
    const-string v0, "PersonDialog"

    const-string v1, "onKeyDown"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1630
    :cond_1
    invoke-super {p0, p1, p2}, Landroidx/appcompat/app/AppCompatActivity;->onKeyDown(ILandroid/view/KeyEvent;)Z

    move-result p1

    return p1
.end method

.method public onOptionsItemSelected(Landroid/view/MenuItem;)Z
    .locals 7

    .line 442
    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v0

    const v1, 0x102002c

    const/4 v2, 0x0

    const/4 v3, 0x0

    if-eq v0, v1, :cond_3

    const-string v1, "tel:"

    const-string v4, "android.intent.action.DIAL"

    const-string v5, "Person"

    const/4 v6, 0x1

    packed-switch v0, :pswitch_data_0

    packed-switch v0, :pswitch_data_1

    goto/16 :goto_0

    .line 637
    :pswitch_0
    new-instance p1, Landroid/content/Intent;

    const-string v0, "android.intent.action.VIEW"

    invoke-direct {p1, v0}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 638
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "http://api.whatsapp.com/send?phone="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/lostpixels/fieldservice/activities/visits/PersonDialog;->person:Lcom/lostpixels/fieldservice/internal/ministry/Person;

    invoke-static {v1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    invoke-virtual {v1}, Lcom/lostpixels/fieldservice/internal/ministry/Person;->getCellPhone()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/content/Intent;->setData(Landroid/net/Uri;)Landroid/content/Intent;

    .line 639
    invoke-virtual {p0, p1}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    return v6

    .line 526
    :pswitch_1
    iget-object p1, p0, Lcom/lostpixels/fieldservice/activities/visits/PersonDialog;->person:Lcom/lostpixels/fieldservice/internal/ministry/Person;

    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v0, p0, Lcom/lostpixels/fieldservice/activities/visits/PersonDialog;->person:Lcom/lostpixels/fieldservice/internal/ministry/Person;

    invoke-virtual {v0}, Lcom/lostpixels/fieldservice/internal/ministry/Person;->isHidden()Z

    move-result v0

    xor-int/2addr v0, v6

    invoke-virtual {p1, v0}, Lcom/lostpixels/fieldservice/internal/ministry/Person;->setHidden(Z)V

    .line 527
    iput-boolean v6, p0, Lcom/lostpixels/fieldservice/activities/visits/PersonDialog;->bSomethingChanged:Z

    .line 528
    iput-boolean v6, p0, Lcom/lostpixels/fieldservice/activities/visits/PersonDialog;->bPersonChanged:Z

    .line 529
    invoke-direct {p0}, Lcom/lostpixels/fieldservice/activities/visits/PersonDialog;->updateSaveButton()V

    .line 530
    invoke-virtual {p0}, Landroidx/appcompat/app/AppCompatActivity;->supportInvalidateOptionsMenu()V

    return v6

    :pswitch_2
    const/16 v0, 0x17

    .line 444
    invoke-virtual {p0, v0}, Lcom/lostpixels/fieldservice/activities/visits/PersonDialog;->showPopup(I)V

    goto/16 :goto_0

    .line 533
    :pswitch_3
    new-instance p1, Landroidx/appcompat/app/AlertDialog$Builder;

    invoke-direct {p1, p0}, Landroidx/appcompat/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 535
    iget-object v0, p0, Lcom/lostpixels/fieldservice/activities/visits/PersonDialog;->person:Lcom/lostpixels/fieldservice/internal/ministry/Person;

    invoke-static {v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    invoke-virtual {v0}, Lcom/lostpixels/fieldservice/internal/ministry/Person;->getAddress()Ljava/lang/String;

    move-result-object v0

    const-string v1, ""

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/lostpixels/fieldservice/activities/visits/PersonDialog;->person:Lcom/lostpixels/fieldservice/internal/ministry/Person;

    invoke-virtual {v0}, Lcom/lostpixels/fieldservice/internal/ministry/Person;->getAddress()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_0

    .line 536
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/lostpixels/fieldservice/activities/visits/PersonDialog;->person:Lcom/lostpixels/fieldservice/internal/ministry/Person;

    invoke-virtual {v1}, Lcom/lostpixels/fieldservice/internal/ministry/Person;->getAddress()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 537
    :cond_0
    iget-object v0, p0, Lcom/lostpixels/fieldservice/activities/visits/PersonDialog;->person:Lcom/lostpixels/fieldservice/internal/ministry/Person;

    invoke-virtual {v0}, Lcom/lostpixels/fieldservice/internal/ministry/Person;->getName()Ljava/lang/String;

    move-result-object v0

    const-string v2, "\n"

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/lostpixels/fieldservice/activities/visits/PersonDialog;->person:Lcom/lostpixels/fieldservice/internal/ministry/Person;

    invoke-virtual {v0}, Lcom/lostpixels/fieldservice/internal/ministry/Person;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_2

    .line 538
    invoke-virtual {v1}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_1

    .line 539
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 541
    :cond_1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/lostpixels/fieldservice/activities/visits/PersonDialog;->person:Lcom/lostpixels/fieldservice/internal/ministry/Person;

    invoke-virtual {v1}, Lcom/lostpixels/fieldservice/internal/ministry/Person;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 543
    :cond_2
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const v4, 0x7f120157

    invoke-virtual {p0, v4}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroidx/appcompat/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroidx/appcompat/app/AlertDialog$Builder;

    move-result-object v0

    invoke-virtual {v0, v3}, Landroidx/appcompat/app/AlertDialog$Builder;->setCancelable(Z)Landroidx/appcompat/app/AlertDialog$Builder;

    move-result-object v0

    const v1, 0x7f120158

    .line 544
    invoke-virtual {p0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    new-instance v2, Lcom/lostpixels/fieldservice/activities/visits/PersonDialog$5;

    invoke-direct {v2, p0}, Lcom/lostpixels/fieldservice/activities/visits/PersonDialog$5;-><init>(Lcom/lostpixels/fieldservice/activities/visits/PersonDialog;)V

    invoke-virtual {v0, v1, v2}, Landroidx/appcompat/app/AlertDialog$Builder;->setPositiveButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroidx/appcompat/app/AlertDialog$Builder;

    move-result-object v0

    const v1, 0x7f120152

    .line 586
    invoke-virtual {p0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    new-instance v2, Lcom/lostpixels/fieldservice/activities/visits/PersonDialog$4;

    invoke-direct {v2, p0}, Lcom/lostpixels/fieldservice/activities/visits/PersonDialog$4;-><init>(Lcom/lostpixels/fieldservice/activities/visits/PersonDialog;)V

    invoke-virtual {v0, v1, v2}, Landroidx/appcompat/app/AlertDialog$Builder;->setNegativeButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroidx/appcompat/app/AlertDialog$Builder;

    .line 591
    invoke-virtual {p1}, Landroidx/appcompat/app/AlertDialog$Builder;->create()Landroidx/appcompat/app/AlertDialog;

    move-result-object p1

    .line 592
    invoke-virtual {p1}, Landroid/app/Dialog;->show()V

    return v6

    .line 614
    :pswitch_4
    iget-object p1, p0, Lcom/lostpixels/fieldservice/activities/visits/PersonDialog;->person:Lcom/lostpixels/fieldservice/internal/ministry/Person;

    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v0, p0, Lcom/lostpixels/fieldservice/activities/visits/PersonDialog;->person:Lcom/lostpixels/fieldservice/internal/ministry/Person;

    invoke-virtual {v0}, Lcom/lostpixels/fieldservice/internal/ministry/Person;->isPinnedToFront()Z

    move-result v0

    xor-int/2addr v0, v6

    invoke-virtual {p1, v0}, Lcom/lostpixels/fieldservice/internal/ministry/Person;->setPinnedToFront(Z)V

    .line 615
    iput-boolean v6, p0, Lcom/lostpixels/fieldservice/activities/visits/PersonDialog;->bSomethingChanged:Z

    .line 616
    invoke-direct {p0}, Lcom/lostpixels/fieldservice/activities/visits/PersonDialog;->updateSaveButton()V

    .line 617
    invoke-virtual {p0}, Landroidx/appcompat/app/AppCompatActivity;->supportInvalidateOptionsMenu()V

    .line 618
    invoke-static {}, Lcom/lostpixels/fieldservice/ui/nowcards/NowCardListCreator;->resetPinnedVisits()V

    return v6

    .line 652
    :pswitch_5
    invoke-virtual {p0}, Lcom/lostpixels/fieldservice/activities/visits/PersonDialog;->exportPerson()V

    return v6

    .line 648
    :pswitch_6
    invoke-direct {p0}, Lcom/lostpixels/fieldservice/activities/visits/PersonDialog;->sendEmail()V

    return v6

    .line 622
    :pswitch_7
    iget-object p1, p0, Lcom/lostpixels/fieldservice/activities/visits/PersonDialog;->person:Lcom/lostpixels/fieldservice/internal/ministry/Person;

    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    invoke-virtual {p1}, Lcom/lostpixels/fieldservice/internal/ministry/Person;->getPosition()Lcom/google/android/gms/maps/model/LatLng;

    move-result-object p1

    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    invoke-static {p1, p0}, Lcom/lostpixels/fieldservice/utils/map/NavigationUtils;->navigateTo(Lcom/google/android/gms/maps/model/LatLng;Landroid/app/Activity;)V

    return v6

    .line 608
    :pswitch_8
    new-instance p1, Landroid/content/Intent;

    const-class v0, Lcom/lostpixels/fieldservice/activities/visits/PersonMapDialog;

    invoke-direct {p1, p0, v0}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 609
    iget-object v0, p0, Lcom/lostpixels/fieldservice/activities/visits/PersonDialog;->person:Lcom/lostpixels/fieldservice/internal/ministry/Person;

    invoke-virtual {p1, v5, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    const/16 v0, 0x10

    .line 610
    invoke-virtual {p0, p1, v0}, Landroidx/activity/ComponentActivity;->startActivityForResult(Landroid/content/Intent;I)V

    return v6

    .line 600
    :pswitch_9
    iget-object p1, p0, Lcom/lostpixels/fieldservice/activities/visits/PersonDialog;->person:Lcom/lostpixels/fieldservice/internal/ministry/Person;

    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    invoke-virtual {p1, v2}, Lcom/lostpixels/fieldservice/internal/ministry/Person;->setPosition(Lcom/google/android/gms/maps/model/LatLng;)V

    .line 601
    iget-object p1, p0, Lcom/lostpixels/fieldservice/activities/base/BaseActivity;->realm:Lio/realm/Realm;

    iget-object v0, p0, Lcom/lostpixels/fieldservice/activities/visits/PersonDialog;->person:Lcom/lostpixels/fieldservice/internal/ministry/Person;

    invoke-static {p1, v2, v0}, Lcom/lostpixels/fieldservice/utils/map/PositionUpdater;->updateVisitPosition(Lio/realm/Realm;Lcom/google/android/gms/maps/model/LatLng;Lcom/lostpixels/fieldservice/internal/ministry/Person;)V

    .line 602
    invoke-virtual {p0}, Landroidx/appcompat/app/AppCompatActivity;->supportInvalidateOptionsMenu()V

    .line 603
    iput-boolean v6, p0, Lcom/lostpixels/fieldservice/activities/visits/PersonDialog;->bSomethingChanged:Z

    .line 604
    invoke-direct {p0}, Lcom/lostpixels/fieldservice/activities/visits/PersonDialog;->updateSaveButton()V

    return v6

    .line 596
    :pswitch_a
    invoke-static {p0}, Lcom/lostpixels/fieldservice/activities/visits/PersonDialogPermissionsDispatcher;->tagPositionWithPermissionCheck(Lcom/lostpixels/fieldservice/activities/visits/PersonDialog;)V

    return v6

    .line 643
    :pswitch_b
    new-instance p1, Landroid/content/Intent;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/lostpixels/fieldservice/activities/visits/PersonDialog;->person:Lcom/lostpixels/fieldservice/internal/ministry/Person;

    invoke-static {v1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    invoke-virtual {v1}, Lcom/lostpixels/fieldservice/internal/ministry/Person;->getHomePhone()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    invoke-direct {p1, v4, v0}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    .line 644
    invoke-virtual {p0, p1}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    return v6

    .line 632
    :pswitch_c
    new-instance p1, Landroid/content/Intent;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/lostpixels/fieldservice/activities/visits/PersonDialog;->person:Lcom/lostpixels/fieldservice/internal/ministry/Person;

    invoke-static {v1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    invoke-virtual {v1}, Lcom/lostpixels/fieldservice/internal/ministry/Person;->getCellPhone()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    invoke-direct {p1, v4, v0}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    .line 633
    invoke-virtual {p0, p1}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    return v6

    .line 626
    :pswitch_d
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "smsto:"

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v0, p0, Lcom/lostpixels/fieldservice/activities/visits/PersonDialog;->person:Lcom/lostpixels/fieldservice/internal/ministry/Person;

    invoke-static {v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    invoke-virtual {v0}, Lcom/lostpixels/fieldservice/internal/ministry/Person;->getCellPhone()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object p1

    .line 627
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.intent.action.SENDTO"

    invoke-direct {v0, v1, p1}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    .line 628
    invoke-virtual {p0, v0}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    return v6

    :pswitch_e
    const p1, 0x7f1201be

    .line 447
    invoke-virtual {p0, p1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p1

    const v0, 0x7f1201bd

    invoke-virtual {p0, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    const v1, 0x7f12036a

    invoke-virtual {p0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    const v2, 0x7f12035c

    invoke-virtual {p0, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    const/4 v4, 0x4

    new-array v4, v4, [Ljava/lang/CharSequence;

    aput-object p1, v4, v3

    aput-object v0, v4, v6

    const/4 p1, 0x2

    aput-object v1, v4, p1

    const/4 p1, 0x3

    aput-object v2, v4, p1

    .line 449
    iget-object p1, p0, Lcom/lostpixels/fieldservice/activities/base/BaseActivity;->realm:Lio/realm/Realm;

    iget-object v0, p0, Lcom/lostpixels/fieldservice/activities/visits/PersonDialog;->person:Lcom/lostpixels/fieldservice/internal/ministry/Person;

    invoke-static {v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    invoke-static {p1, v0}, Lcom/lostpixels/fieldservice/internal/ministry/Person;->clonePerson(Lio/realm/Realm;Lcom/lostpixels/fieldservice/internal/ministry/Person;)Lcom/lostpixels/fieldservice/internal/ministry/Person;

    move-result-object p1

    .line 450
    iget-object v0, p0, Lcom/lostpixels/fieldservice/activities/visits/PersonDialog;->mlstPersonInfo:Ljava/util/ArrayList;

    invoke-virtual {p1, v0}, Lcom/lostpixels/fieldservice/internal/ministry/Person;->setInfo(Ljava/util/List;)V

    .line 451
    new-instance v0, Landroidx/appcompat/app/AlertDialog$Builder;

    invoke-direct {v0, p0}, Landroidx/appcompat/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    const v1, 0x7f1201bc

    .line 452
    invoke-virtual {p0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroidx/appcompat/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Landroidx/appcompat/app/AlertDialog$Builder;

    .line 453
    new-instance v1, Lcom/lostpixels/fieldservice/activities/visits/PersonDialog$3;

    invoke-direct {v1, p0, p1}, Lcom/lostpixels/fieldservice/activities/visits/PersonDialog$3;-><init>(Lcom/lostpixels/fieldservice/activities/visits/PersonDialog;Lcom/lostpixels/fieldservice/internal/ministry/Person;)V

    invoke-virtual {v0, v4, v1}, Landroidx/appcompat/app/AlertDialog$Builder;->setItems([Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroidx/appcompat/app/AlertDialog$Builder;

    .line 521
    invoke-virtual {v0}, Landroidx/appcompat/app/AlertDialog$Builder;->create()Landroidx/appcompat/app/AlertDialog;

    move-result-object p1

    .line 522
    invoke-virtual {p1}, Landroid/app/Dialog;->show()V

    return v6

    .line 656
    :pswitch_f
    new-instance p1, Landroid/content/Intent;

    const-class v0, Lcom/lostpixels/fieldservice/activities/visits/EditPersonDialog;

    invoke-direct {p1, p0, v0}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 657
    iget-object v0, p0, Lcom/lostpixels/fieldservice/activities/visits/PersonDialog;->person:Lcom/lostpixels/fieldservice/internal/ministry/Person;

    invoke-virtual {p1, v5, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 658
    invoke-virtual {p0, p1, v3}, Landroidx/activity/ComponentActivity;->startActivityForResult(Landroid/content/Intent;I)V

    return v6

    .line 661
    :cond_3
    iget-boolean v0, p0, Lcom/lostpixels/fieldservice/activities/visits/PersonDialog;->bSomethingChanged:Z

    if-eqz v0, :cond_4

    .line 662
    new-instance v0, Landroidx/appcompat/app/AlertDialog$Builder;

    invoke-direct {v0, p0}, Landroidx/appcompat/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    const v1, 0x7f1204bd

    .line 663
    invoke-virtual {p0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroidx/appcompat/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroidx/appcompat/app/AlertDialog$Builder;

    move-result-object v1

    invoke-virtual {v1, v3}, Landroidx/appcompat/app/AlertDialog$Builder;->setCancelable(Z)Landroidx/appcompat/app/AlertDialog$Builder;

    move-result-object v1

    const v2, 0x7f12055b

    .line 664
    invoke-virtual {p0, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    new-instance v3, Lcom/lostpixels/fieldservice/activities/visits/PersonDialog$7;

    invoke-direct {v3, p0}, Lcom/lostpixels/fieldservice/activities/visits/PersonDialog$7;-><init>(Lcom/lostpixels/fieldservice/activities/visits/PersonDialog;)V

    invoke-virtual {v1, v2, v3}, Landroidx/appcompat/app/AlertDialog$Builder;->setPositiveButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroidx/appcompat/app/AlertDialog$Builder;

    move-result-object v1

    const v2, 0x7f12045b

    .line 673
    invoke-virtual {p0, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    new-instance v3, Lcom/lostpixels/fieldservice/activities/visits/PersonDialog$6;

    invoke-direct {v3, p0}, Lcom/lostpixels/fieldservice/activities/visits/PersonDialog$6;-><init>(Lcom/lostpixels/fieldservice/activities/visits/PersonDialog;)V

    invoke-virtual {v1, v2, v3}, Landroidx/appcompat/app/AlertDialog$Builder;->setNegativeButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroidx/appcompat/app/AlertDialog$Builder;

    .line 685
    invoke-virtual {v0}, Landroidx/appcompat/app/AlertDialog$Builder;->create()Landroidx/appcompat/app/AlertDialog;

    move-result-object v0

    .line 686
    invoke-virtual {v0}, Landroid/app/Dialog;->show()V

    goto :goto_0

    .line 688
    :cond_4
    sput-object v2, Lcom/lostpixels/fieldservice/activities/visits/PersonDialog;->mSessions:Ljava/util/ArrayList;

    .line 689
    invoke-virtual {p0}, Landroid/app/Activity;->finish()V

    .line 693
    :goto_0
    invoke-super {p0, p1}, Landroid/app/Activity;->onOptionsItemSelected(Landroid/view/MenuItem;)Z

    move-result p1

    return p1

    nop

    :pswitch_data_0
    .packed-switch 0x9
        :pswitch_f
        :pswitch_e
        :pswitch_d
        :pswitch_c
        :pswitch_b
        :pswitch_a
        :pswitch_9
        :pswitch_8
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
    .end packed-switch

    :pswitch_data_1
    .packed-switch 0x16
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public onPrepareOptionsMenu(Landroid/view/Menu;)Z
    .locals 4

    .line 367
    iget-object v0, p0, Lcom/lostpixels/fieldservice/activities/visits/PersonDialog;->person:Lcom/lostpixels/fieldservice/internal/ministry/Person;

    invoke-static {v0, p0}, Lcom/lostpixels/fieldservice/helpfunctions/ConsistancyChecks;->restartIfNull(Ljava/lang/Object;Landroid/app/Activity;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 368
    invoke-super {p0, p1}, Landroid/app/Activity;->onPrepareOptionsMenu(Landroid/view/Menu;)Z

    move-result p1

    return p1

    .line 370
    :cond_0
    invoke-interface {p1}, Landroid/view/Menu;->clear()V

    const v0, 0x7f12015e

    .line 372
    invoke-virtual {p0, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x0

    const/16 v2, 0x9

    invoke-interface {p1, v1, v2, v1, v0}, Landroid/view/Menu;->add(IIILjava/lang/CharSequence;)Landroid/view/MenuItem;

    move-result-object v0

    const v2, 0x7f08015c

    invoke-interface {v0, v2}, Landroid/view/MenuItem;->setIcon(I)Landroid/view/MenuItem;

    move-result-object v0

    const/4 v2, 0x2

    invoke-static {v0, v2}, Landroidx/core/view/MenuItemCompat;->setShowAsAction(Landroid/view/MenuItem;I)V

    const v0, 0x7f12012e

    .line 375
    invoke-virtual {p0, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    const/16 v3, 0x17

    invoke-interface {p1, v1, v3, v1, v0}, Landroid/view/Menu;->add(IIILjava/lang/CharSequence;)Landroid/view/MenuItem;

    move-result-object v0

    const v1, 0x7f080076

    invoke-interface {v0, v1}, Landroid/view/MenuItem;->setIcon(I)Landroid/view/MenuItem;

    move-result-object v0

    invoke-static {v0, v2}, Landroidx/core/view/MenuItemCompat;->setShowAsAction(Landroid/view/MenuItem;I)V

    .line 377
    invoke-super {p0, p1}, Landroid/app/Activity;->onPrepareOptionsMenu(Landroid/view/Menu;)Z

    move-result p1

    return p1
.end method

.method public onRequestPermissionsResult(I[Ljava/lang/String;[I)V
    .locals 0

    .line 1851
    invoke-super {p0, p1, p2, p3}, Landroidx/fragment/app/FragmentActivity;->onRequestPermissionsResult(I[Ljava/lang/String;[I)V

    .line 1853
    invoke-static {p0, p1, p3}, Lcom/lostpixels/fieldservice/activities/visits/PersonDialogPermissionsDispatcher;->onRequestPermissionsResult(Lcom/lostpixels/fieldservice/activities/visits/PersonDialog;I[I)V

    return-void
.end method

.method protected onRestart()V
    .locals 1

    .line 241
    invoke-static {}, Lcom/lostpixels/fieldservice/helpfunctions/ConsistancyChecks;->installExceptionHandler()V

    .line 242
    iget-object v0, p0, Lcom/lostpixels/fieldservice/activities/visits/PersonDialog;->person:Lcom/lostpixels/fieldservice/internal/ministry/Person;

    invoke-static {v0, p0}, Lcom/lostpixels/fieldservice/helpfunctions/ConsistancyChecks;->restartIfNull(Ljava/lang/Object;Landroid/app/Activity;)Z

    .line 243
    invoke-super {p0}, Landroid/app/Activity;->onRestart()V

    return-void
.end method

.method protected onResume()V
    .locals 0

    .line 235
    invoke-static {p0}, Lcom/lostpixels/fieldservice/helpfunctions/ConsistancyChecks;->restartIfImported(Landroid/app/Activity;)Z

    .line 236
    invoke-super {p0}, Lcom/lostpixels/fieldservice/activities/base/MinistryAssistantActivity;->onResume()V

    return-void
.end method

.method public onSaveInstanceState(Landroid/os/Bundle;)V
    .locals 3

    .line 1335
    const-string v0, "Changed"

    iget-boolean v1, p0, Lcom/lostpixels/fieldservice/activities/visits/PersonDialog;->bSomethingChanged:Z

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 1336
    const-string v0, "PersonChanged"

    iget-boolean v1, p0, Lcom/lostpixels/fieldservice/activities/visits/PersonDialog;->bPersonChanged:Z

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 1337
    const-string v0, "ItemList"

    iget-object v1, p0, Lcom/lostpixels/fieldservice/activities/visits/PersonDialog;->mlstPersonInfo:Ljava/util/ArrayList;

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putParcelableArrayList(Ljava/lang/String;Ljava/util/ArrayList;)V

    .line 1338
    const-string v0, "Person"

    iget-object v1, p0, Lcom/lostpixels/fieldservice/activities/visits/PersonDialog;->person:Lcom/lostpixels/fieldservice/internal/ministry/Person;

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    .line 1339
    const-string v0, "PersonID"

    iget-wide v1, p0, Lcom/lostpixels/fieldservice/activities/visits/PersonDialog;->mPersonKey:J

    invoke-virtual {p1, v0, v1, v2}, Landroid/os/BaseBundle;->putLong(Ljava/lang/String;J)V

    .line 1340
    const-string v0, "CreateNew"

    iget-boolean v1, p0, Lcom/lostpixels/fieldservice/activities/visits/PersonDialog;->bCreateNew:Z

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 1341
    const-string v0, "CreatedFromTerritory"

    iget-boolean v1, p0, Lcom/lostpixels/fieldservice/activities/visits/PersonDialog;->bCreateFromTerritory:Z

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 1342
    const-string v0, "ShowDlg"

    iget-boolean v1, p0, Lcom/lostpixels/fieldservice/activities/visits/PersonDialog;->bShowEditDialog:Z

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 1343
    const-string v0, "InfoIx"

    iget v1, p0, Lcom/lostpixels/fieldservice/activities/visits/PersonDialog;->mInfoIndex:I

    invoke-virtual {p1, v0, v1}, Landroid/os/BaseBundle;->putInt(Ljava/lang/String;I)V

    .line 1345
    const-string v0, "ServiceSession"

    sget-object v1, Lcom/lostpixels/fieldservice/activities/visits/PersonDialog;->mSessions:Ljava/util/ArrayList;

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putParcelableArrayList(Ljava/lang/String;Ljava/util/ArrayList;)V

    .line 1347
    invoke-super {p0, p1}, Landroidx/activity/ComponentActivity;->onSaveInstanceState(Landroid/os/Bundle;)V

    return-void
.end method

.method public onTagsSet(Ljava/util/List;)V
    .locals 2

    .line 1635
    iget-object v0, p0, Lcom/lostpixels/fieldservice/activities/visits/PersonDialog;->person:Lcom/lostpixels/fieldservice/internal/ministry/Person;

    invoke-static {v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    invoke-virtual {v0}, Lcom/lostpixels/fieldservice/internal/ministry/Person;->clearCustomTag()V

    .line 1636
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 1637
    iget-object v1, p0, Lcom/lostpixels/fieldservice/activities/visits/PersonDialog;->person:Lcom/lostpixels/fieldservice/internal/ministry/Person;

    invoke-virtual {v1, v0}, Lcom/lostpixels/fieldservice/internal/ministry/Person;->addCustomTag(Ljava/lang/String;)V

    goto :goto_0

    .line 1638
    :cond_0
    invoke-direct {p0}, Lcom/lostpixels/fieldservice/activities/visits/PersonDialog;->setupCustomTags()V

    const/4 p1, 0x1

    .line 1639
    iput-boolean p1, p0, Lcom/lostpixels/fieldservice/activities/visits/PersonDialog;->bPersonChanged:Z

    .line 1640
    invoke-direct {p0}, Lcom/lostpixels/fieldservice/activities/visits/PersonDialog;->updateSaveButton()V

    return-void
.end method

.method public restoreInstanceState(Landroid/os/Bundle;)V
    .locals 2

    .line 1354
    const-string v0, "Changed"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/lostpixels/fieldservice/activities/visits/PersonDialog;->bSomethingChanged:Z

    .line 1355
    const-string v0, "PersonChanged"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/lostpixels/fieldservice/activities/visits/PersonDialog;->bPersonChanged:Z

    .line 1356
    const-string v0, "ItemList"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getParcelableArrayList(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v0

    iput-object v0, p0, Lcom/lostpixels/fieldservice/activities/visits/PersonDialog;->mlstPersonInfo:Ljava/util/ArrayList;

    .line 1357
    const-string v0, "Person"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Lcom/lostpixels/fieldservice/internal/ministry/Person;

    iput-object v0, p0, Lcom/lostpixels/fieldservice/activities/visits/PersonDialog;->person:Lcom/lostpixels/fieldservice/internal/ministry/Person;

    .line 1358
    const-string v0, "PersonID"

    invoke-virtual {p1, v0}, Landroid/os/BaseBundle;->getLong(Ljava/lang/String;)J

    move-result-wide v0

    iput-wide v0, p0, Lcom/lostpixels/fieldservice/activities/visits/PersonDialog;->mPersonKey:J

    .line 1359
    const-string v0, "CreateNew"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/lostpixels/fieldservice/activities/visits/PersonDialog;->bCreateNew:Z

    .line 1360
    const-string v0, "CreatedFromTerritory"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/lostpixels/fieldservice/activities/visits/PersonDialog;->bCreateFromTerritory:Z

    .line 1361
    const-string v0, "ShowDlg"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/lostpixels/fieldservice/activities/visits/PersonDialog;->bShowEditDialog:Z

    .line 1362
    const-string v0, "InfoIx"

    invoke-virtual {p1, v0}, Landroid/os/BaseBundle;->getInt(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/lostpixels/fieldservice/activities/visits/PersonDialog;->mInfoIndex:I

    .line 1363
    const-string v0, "ServiceSession"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getParcelableArrayList(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object p1

    sput-object p1, Lcom/lostpixels/fieldservice/activities/visits/PersonDialog;->mSessions:Ljava/util/ArrayList;

    .line 1364
    invoke-direct {p0}, Lcom/lostpixels/fieldservice/activities/visits/PersonDialog;->updateSaveButton()V

    return-void
.end method

.method showDeniedForPosition()V
    .locals 2

    .line 733
    const-string v0, "Permission denied"

    const-string v1, "ACCESS_FINE_LOCATION"

    invoke-static {v0, v1}, Lcom/lostpixels/fieldservice/utils/LogToSD;->write(Ljava/lang/String;Ljava/lang/String;)V

    const v0, 0x7f120279

    .line 734
    invoke-virtual {p0, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x0

    invoke-static {p0, v0, v1}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    return-void
.end method

.method protected showDialogs(I)V
    .locals 2

    const/4 v0, 0x3

    if-eq p1, v0, :cond_1

    const/4 v0, 0x4

    if-eq p1, v0, :cond_0

    goto :goto_0

    .line 1325
    :cond_0
    iget-object p1, p0, Lcom/lostpixels/fieldservice/activities/visits/PersonDialog;->person:Lcom/lostpixels/fieldservice/internal/ministry/Person;

    if-eqz p1, :cond_2

    .line 1326
    new-instance p1, Lcom/lostpixels/fieldservice/activities/visits/BestTimeForVisit;

    iget-object v0, p0, Lcom/lostpixels/fieldservice/activities/visits/PersonDialog;->mSetBestTimeListener:Lcom/lostpixels/fieldservice/activities/visits/BestTimeForVisit$OnSetBestTimeListener;

    iget-object v1, p0, Lcom/lostpixels/fieldservice/activities/visits/PersonDialog;->person:Lcom/lostpixels/fieldservice/internal/ministry/Person;

    invoke-virtual {v1}, Lcom/lostpixels/fieldservice/internal/ministry/Person;->getBestVisitTime()I

    move-result v1

    invoke-direct {p1, p0, v0, v1}, Lcom/lostpixels/fieldservice/activities/visits/BestTimeForVisit;-><init>(Landroid/content/Context;Lcom/lostpixels/fieldservice/activities/visits/BestTimeForVisit$OnSetBestTimeListener;I)V

    invoke-virtual {p1}, Landroid/app/Dialog;->show()V

    return-void

    .line 1321
    :cond_1
    iget-object p1, p0, Lcom/lostpixels/fieldservice/activities/visits/PersonDialog;->person:Lcom/lostpixels/fieldservice/internal/ministry/Person;

    if-eqz p1, :cond_2

    .line 1322
    new-instance p1, Lcom/lostpixels/fieldservice/activities/visits/MagazineRouteDlg;

    iget-object v0, p0, Lcom/lostpixels/fieldservice/activities/visits/PersonDialog;->mSetMonthListener:Lcom/lostpixels/fieldservice/activities/visits/MagazineRouteDlg$OnSetMonthsListener;

    iget-object v1, p0, Lcom/lostpixels/fieldservice/activities/visits/PersonDialog;->person:Lcom/lostpixels/fieldservice/internal/ministry/Person;

    invoke-virtual {v1}, Lcom/lostpixels/fieldservice/internal/ministry/Person;->getMagazineRouteMap()[Z

    move-result-object v1

    invoke-direct {p1, p0, v0, v1}, Lcom/lostpixels/fieldservice/activities/visits/MagazineRouteDlg;-><init>(Landroid/content/Context;Lcom/lostpixels/fieldservice/activities/visits/MagazineRouteDlg$OnSetMonthsListener;[Z)V

    invoke-virtual {p1}, Landroid/app/Dialog;->show()V

    :cond_2
    :goto_0
    return-void
.end method

.method public showPopup(I)V
    .locals 7

    .line 382
    invoke-virtual {p0, p1}, Landroidx/appcompat/app/AppCompatActivity;->findViewById(I)Landroid/view/View;

    move-result-object p1

    .line 384
    new-instance v0, Landroidx/appcompat/widget/PopupMenu;

    invoke-direct {v0, p0, p1}, Landroidx/appcompat/widget/PopupMenu;-><init>(Landroid/content/Context;Landroid/view/View;)V

    .line 385
    new-instance p1, Lcom/lostpixels/fieldservice/activities/visits/PersonDialog$2;

    invoke-direct {p1, p0}, Lcom/lostpixels/fieldservice/activities/visits/PersonDialog$2;-><init>(Lcom/lostpixels/fieldservice/activities/visits/PersonDialog;)V

    invoke-virtual {v0, p1}, Landroidx/appcompat/widget/PopupMenu;->setOnMenuItemClickListener(Landroidx/appcompat/widget/PopupMenu$OnMenuItemClickListener;)V

    .line 392
    invoke-static {p0}, Lcom/lostpixels/fieldservice/ui/ThemeManager;->isLightTheme(Landroid/content/Context;)Z

    move-result p1

    .line 393
    invoke-virtual {v0}, Landroidx/appcompat/widget/PopupMenu;->getMenu()Landroid/view/Menu;

    move-result-object v1

    const/16 v2, 0xa

    const v3, 0x7f1201bc

    const/4 v4, 0x0

    invoke-interface {v1, v4, v2, v4, v3}, Landroid/view/Menu;->add(IIII)Landroid/view/MenuItem;

    move-result-object v1

    if-nez p1, :cond_0

    const v2, 0x7f0801d5

    goto :goto_0

    :cond_0
    const v2, 0x7f0801d6

    :goto_0
    invoke-interface {v1, v2}, Landroid/view/MenuItem;->setIcon(I)Landroid/view/MenuItem;

    .line 394
    iget-object v1, p0, Lcom/lostpixels/fieldservice/activities/visits/PersonDialog;->person:Lcom/lostpixels/fieldservice/internal/ministry/Person;

    invoke-static {v1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    invoke-virtual {v1}, Lcom/lostpixels/fieldservice/internal/ministry/Person;->getCellPhone()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_4

    iget-object v1, p0, Lcom/lostpixels/fieldservice/activities/visits/PersonDialog;->person:Lcom/lostpixels/fieldservice/internal/ministry/Person;

    invoke-virtual {v1}, Lcom/lostpixels/fieldservice/internal/ministry/Person;->getCellPhone()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_4

    .line 395
    invoke-virtual {v0}, Landroidx/appcompat/widget/PopupMenu;->getMenu()Landroid/view/Menu;

    move-result-object v1

    const/16 v2, 0xb

    const v3, 0x7f1201b6

    invoke-interface {v1, v4, v2, v4, v3}, Landroid/view/Menu;->add(IIII)Landroid/view/MenuItem;

    move-result-object v1

    if-nez p1, :cond_1

    const v2, 0x7f08018d

    goto :goto_1

    :cond_1
    const v2, 0x7f08018e

    :goto_1
    invoke-interface {v1, v2}, Landroid/view/MenuItem;->setIcon(I)Landroid/view/MenuItem;

    .line 396
    invoke-virtual {v0}, Landroidx/appcompat/widget/PopupMenu;->getMenu()Landroid/view/Menu;

    move-result-object v1

    const/16 v2, 0xc

    const v3, 0x7f120148

    invoke-interface {v1, v4, v2, v4, v3}, Landroid/view/Menu;->add(IIII)Landroid/view/MenuItem;

    move-result-object v1

    if-nez p1, :cond_2

    const v2, 0x7f080250

    goto :goto_2

    :cond_2
    const v2, 0x7f080251

    :goto_2
    invoke-interface {v1, v2}, Landroid/view/MenuItem;->setIcon(I)Landroid/view/MenuItem;

    .line 397
    const-string v1, "com.whatsapp"

    invoke-static {v1, p0}, Lcom/lostpixels/fieldservice/helpfunctions/HelpFunctions;->isPackageInstalled(Ljava/lang/String;Landroid/content/Context;)Z

    move-result v1

    if-eqz v1, :cond_4

    .line 398
    invoke-virtual {v0}, Landroidx/appcompat/widget/PopupMenu;->getMenu()Landroid/view/Menu;

    move-result-object v1

    const/16 v2, 0x19

    const-string v3, "WhatsApp"

    invoke-interface {v1, v4, v2, v4, v3}, Landroid/view/Menu;->add(IIILjava/lang/CharSequence;)Landroid/view/MenuItem;

    move-result-object v1

    if-nez p1, :cond_3

    const v2, 0x7f08038b

    goto :goto_3

    :cond_3
    const v2, 0x7f08038c

    :goto_3
    invoke-interface {v1, v2}, Landroid/view/MenuItem;->setIcon(I)Landroid/view/MenuItem;

    .line 403
    :cond_4
    iget-object v1, p0, Lcom/lostpixels/fieldservice/activities/visits/PersonDialog;->person:Lcom/lostpixels/fieldservice/internal/ministry/Person;

    invoke-virtual {v1}, Lcom/lostpixels/fieldservice/internal/ministry/Person;->getHomePhone()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_6

    iget-object v1, p0, Lcom/lostpixels/fieldservice/activities/visits/PersonDialog;->person:Lcom/lostpixels/fieldservice/internal/ministry/Person;

    invoke-virtual {v1}, Lcom/lostpixels/fieldservice/internal/ministry/Person;->getHomePhone()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_6

    .line 404
    invoke-virtual {v0}, Landroidx/appcompat/widget/PopupMenu;->getMenu()Landroid/view/Menu;

    move-result-object v1

    const/16 v2, 0xd

    const v3, 0x7f120147

    invoke-interface {v1, v4, v2, v4, v3}, Landroid/view/Menu;->add(IIII)Landroid/view/MenuItem;

    move-result-object v1

    if-nez p1, :cond_5

    const v2, 0x7f080180

    goto :goto_4

    :cond_5
    const v2, 0x7f080181

    :goto_4
    invoke-interface {v1, v2}, Landroid/view/MenuItem;->setIcon(I)Landroid/view/MenuItem;

    .line 406
    :cond_6
    iget-object v1, p0, Lcom/lostpixels/fieldservice/activities/visits/PersonDialog;->person:Lcom/lostpixels/fieldservice/internal/ministry/Person;

    invoke-virtual {v1}, Lcom/lostpixels/fieldservice/internal/ministry/Person;->getEmail()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_8

    iget-object v1, p0, Lcom/lostpixels/fieldservice/activities/visits/PersonDialog;->person:Lcom/lostpixels/fieldservice/internal/ministry/Person;

    invoke-virtual {v1}, Lcom/lostpixels/fieldservice/internal/ministry/Person;->getEmail()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_8

    .line 407
    invoke-virtual {v0}, Landroidx/appcompat/widget/PopupMenu;->getMenu()Landroid/view/Menu;

    move-result-object v1

    const/16 v2, 0x12

    const v3, 0x7f1201b1

    invoke-interface {v1, v4, v2, v4, v3}, Landroid/view/Menu;->add(IIII)Landroid/view/MenuItem;

    move-result-object v1

    if-nez p1, :cond_7

    const v2, 0x7f08019b

    goto :goto_5

    :cond_7
    const v2, 0x7f08019c

    :goto_5
    invoke-interface {v1, v2}, Landroid/view/MenuItem;->setIcon(I)Landroid/view/MenuItem;

    .line 409
    :cond_8
    iget-object v1, p0, Lcom/lostpixels/fieldservice/activities/visits/PersonDialog;->person:Lcom/lostpixels/fieldservice/internal/ministry/Person;

    invoke-virtual {v1}, Lcom/lostpixels/fieldservice/internal/ministry/Person;->isPinnedToFront()Z

    move-result v1

    const v2, 0x7f0801aa

    const v3, 0x7f0801a9

    const/16 v5, 0x14

    if-eqz v1, :cond_a

    .line 410
    invoke-virtual {v0}, Landroidx/appcompat/widget/PopupMenu;->getMenu()Landroid/view/Menu;

    move-result-object v1

    const v6, 0x7f120541

    invoke-interface {v1, v4, v5, v4, v6}, Landroid/view/Menu;->add(IIII)Landroid/view/MenuItem;

    move-result-object v1

    if-nez p1, :cond_9

    const v2, 0x7f0801a9

    :cond_9
    invoke-interface {v1, v2}, Landroid/view/MenuItem;->setIcon(I)Landroid/view/MenuItem;

    goto :goto_6

    .line 412
    :cond_a
    invoke-virtual {v0}, Landroidx/appcompat/widget/PopupMenu;->getMenu()Landroid/view/Menu;

    move-result-object v1

    const v6, 0x7f12048b

    invoke-interface {v1, v4, v5, v4, v6}, Landroid/view/Menu;->add(IIII)Landroid/view/MenuItem;

    move-result-object v1

    if-nez p1, :cond_b

    const v2, 0x7f0801a9

    :cond_b
    invoke-interface {v1, v2}, Landroid/view/MenuItem;->setIcon(I)Landroid/view/MenuItem;

    .line 414
    :goto_6
    iget-object v1, p0, Lcom/lostpixels/fieldservice/activities/visits/PersonDialog;->person:Lcom/lostpixels/fieldservice/internal/ministry/Person;

    invoke-virtual {v1}, Lcom/lostpixels/fieldservice/internal/ministry/Person;->getPosition()Lcom/google/android/gms/maps/model/LatLng;

    move-result-object v1

    if-nez v1, :cond_d

    .line 415
    invoke-virtual {v0}, Landroidx/appcompat/widget/PopupMenu;->getMenu()Landroid/view/Menu;

    move-result-object v1

    const/16 v2, 0xe

    const v3, 0x7f120520

    invoke-interface {v1, v4, v2, v4, v3}, Landroid/view/Menu;->add(IIII)Landroid/view/MenuItem;

    move-result-object v1

    if-nez p1, :cond_c

    const v2, 0x7f08023a

    goto :goto_7

    :cond_c
    const v2, 0x7f08023b

    :goto_7
    invoke-interface {v1, v2}, Landroid/view/MenuItem;->setIcon(I)Landroid/view/MenuItem;

    goto :goto_b

    .line 417
    :cond_d
    invoke-virtual {v0}, Landroidx/appcompat/widget/PopupMenu;->getMenu()Landroid/view/Menu;

    move-result-object v1

    const/16 v2, 0x10

    const v3, 0x7f1204e9

    invoke-interface {v1, v4, v2, v4, v3}, Landroid/view/Menu;->add(IIII)Landroid/view/MenuItem;

    move-result-object v1

    if-nez p1, :cond_e

    const v2, 0x7f080204

    goto :goto_8

    :cond_e
    const v2, 0x7f080205

    :goto_8
    invoke-interface {v1, v2}, Landroid/view/MenuItem;->setIcon(I)Landroid/view/MenuItem;

    .line 418
    invoke-virtual {v0}, Landroidx/appcompat/widget/PopupMenu;->getMenu()Landroid/view/Menu;

    move-result-object v1

    const/16 v2, 0x11

    const v3, 0x7f12045a

    invoke-interface {v1, v4, v2, v4, v3}, Landroid/view/Menu;->add(IIII)Landroid/view/MenuItem;

    move-result-object v1

    if-nez p1, :cond_f

    const v2, 0x7f080292

    goto :goto_9

    :cond_f
    const v2, 0x7f080293

    :goto_9
    invoke-interface {v1, v2}, Landroid/view/MenuItem;->setIcon(I)Landroid/view/MenuItem;

    .line 419
    invoke-virtual {v0}, Landroidx/appcompat/widget/PopupMenu;->getMenu()Landroid/view/Menu;

    move-result-object v1

    const/16 v2, 0xf

    const v3, 0x7f1204a9

    invoke-interface {v1, v4, v2, v4, v3}, Landroid/view/Menu;->add(IIII)Landroid/view/MenuItem;

    move-result-object v1

    if-nez p1, :cond_10

    const v2, 0x7f08020b

    goto :goto_a

    :cond_10
    const v2, 0x7f08020c

    :goto_a
    invoke-interface {v1, v2}, Landroid/view/MenuItem;->setIcon(I)Landroid/view/MenuItem;

    .line 422
    :goto_b
    invoke-virtual {v0}, Landroidx/appcompat/widget/PopupMenu;->getMenu()Landroid/view/Menu;

    move-result-object v1

    const/16 v2, 0x13

    const v3, 0x7f1203e3

    invoke-interface {v1, v4, v2, v4, v3}, Landroid/view/Menu;->add(IIII)Landroid/view/MenuItem;

    move-result-object v1

    if-nez p1, :cond_11

    const v2, 0x7f0801a5

    goto :goto_c

    :cond_11
    const v2, 0x7f0801a6

    :goto_c
    invoke-interface {v1, v2}, Landroid/view/MenuItem;->setIcon(I)Landroid/view/MenuItem;

    .line 423
    iget-object v1, p0, Lcom/lostpixels/fieldservice/activities/visits/PersonDialog;->person:Lcom/lostpixels/fieldservice/internal/ministry/Person;

    invoke-virtual {v1}, Lcom/lostpixels/fieldservice/internal/ministry/Person;->isHidden()Z

    move-result v1

    const/16 v2, 0x18

    if-nez v1, :cond_13

    .line 424
    invoke-virtual {v0}, Landroidx/appcompat/widget/PopupMenu;->getMenu()Landroid/view/Menu;

    move-result-object v1

    const v3, 0x7f12040a

    invoke-interface {v1, v4, v2, v4, v3}, Landroid/view/Menu;->add(IIII)Landroid/view/MenuItem;

    move-result-object v1

    if-nez p1, :cond_12

    const v2, 0x7f08017e

    goto :goto_d

    :cond_12
    const v2, 0x7f08017f

    :goto_d
    invoke-interface {v1, v2}, Landroid/view/MenuItem;->setIcon(I)Landroid/view/MenuItem;

    goto :goto_f

    .line 426
    :cond_13
    invoke-virtual {v0}, Landroidx/appcompat/widget/PopupMenu;->getMenu()Landroid/view/Menu;

    move-result-object v1

    const v3, 0x7f1204ea

    invoke-interface {v1, v4, v2, v4, v3}, Landroid/view/Menu;->add(IIII)Landroid/view/MenuItem;

    move-result-object v1

    if-nez p1, :cond_14

    const v2, 0x7f08037f

    goto :goto_e

    :cond_14
    const v2, 0x7f080380

    :goto_e
    invoke-interface {v1, v2}, Landroid/view/MenuItem;->setIcon(I)Landroid/view/MenuItem;

    .line 428
    :goto_f
    invoke-virtual {v0}, Landroidx/appcompat/widget/PopupMenu;->getMenu()Landroid/view/Menu;

    move-result-object v1

    const/16 v2, 0x16

    const v3, 0x7f120151

    invoke-interface {v1, v4, v2, v4, v3}, Landroid/view/Menu;->add(IIII)Landroid/view/MenuItem;

    move-result-object v1

    if-nez p1, :cond_15

    const p1, 0x7f080195

    goto :goto_10

    :cond_15
    const p1, 0x7f080196

    :goto_10
    invoke-interface {v1, p1}, Landroid/view/MenuItem;->setIcon(I)Landroid/view/MenuItem;

    .line 429
    invoke-virtual {v0}, Landroidx/appcompat/widget/PopupMenu;->show()V

    .line 432
    invoke-virtual {v0}, Landroidx/appcompat/widget/PopupMenu;->getMenu()Landroid/view/Menu;

    move-result-object p1

    instance-of p1, p1, Landroidx/appcompat/view/menu/MenuBuilder;

    if-eqz p1, :cond_16

    .line 434
    invoke-virtual {v0}, Landroidx/appcompat/widget/PopupMenu;->getMenu()Landroid/view/Menu;

    move-result-object p1

    check-cast p1, Landroidx/appcompat/view/menu/MenuBuilder;

    const/4 v1, 0x1

    .line 435
    invoke-virtual {p1, v1}, Landroidx/appcompat/view/menu/MenuBuilder;->setOptionalIconsVisible(Z)V

    .line 437
    :cond_16
    invoke-virtual {v0}, Landroidx/appcompat/widget/PopupMenu;->show()V

    return-void
.end method

.method showRationaleForPosition(Lpermissions/dispatcher/PermissionRequest;)V
    .locals 4

    .line 712
    new-instance v0, Landroidx/appcompat/app/AlertDialog$Builder;

    invoke-direct {v0, p0}, Landroidx/appcompat/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    const v1, 0x7f12027c

    .line 714
    invoke-virtual {v0, v1}, Landroidx/appcompat/app/AlertDialog$Builder;->setMessage(I)Landroidx/appcompat/app/AlertDialog$Builder;

    move-result-object v1

    const/4 v2, 0x0

    .line 715
    invoke-virtual {v1, v2}, Landroidx/appcompat/app/AlertDialog$Builder;->setCancelable(Z)Landroidx/appcompat/app/AlertDialog$Builder;

    move-result-object v1

    new-instance v2, Lcom/lostpixels/fieldservice/activities/visits/PersonDialog$10;

    invoke-direct {v2, p0, p1}, Lcom/lostpixels/fieldservice/activities/visits/PersonDialog$10;-><init>(Lcom/lostpixels/fieldservice/activities/visits/PersonDialog;Lpermissions/dispatcher/PermissionRequest;)V

    .line 716
    const-string v3, "OK"

    invoke-virtual {v1, v3, v2}, Landroidx/appcompat/app/AlertDialog$Builder;->setPositiveButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroidx/appcompat/app/AlertDialog$Builder;

    move-result-object v1

    new-instance v2, Lcom/lostpixels/fieldservice/activities/visits/PersonDialog$9;

    invoke-direct {v2, p0, p1}, Lcom/lostpixels/fieldservice/activities/visits/PersonDialog$9;-><init>(Lcom/lostpixels/fieldservice/activities/visits/PersonDialog;Lpermissions/dispatcher/PermissionRequest;)V

    const p1, 0x7f12004b

    .line 721
    invoke-virtual {v1, p1, v2}, Landroidx/appcompat/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroidx/appcompat/app/AlertDialog$Builder;

    .line 726
    invoke-virtual {v0}, Landroidx/appcompat/app/AlertDialog$Builder;->create()Landroidx/appcompat/app/AlertDialog;

    move-result-object p1

    .line 727
    invoke-virtual {p1}, Landroid/app/Dialog;->show()V

    return-void
.end method

.method tagPosition()V
    .locals 3

    .line 698
    iget-object v0, p0, Lcom/lostpixels/fieldservice/activities/base/BaseActivity;->realm:Lio/realm/Realm;

    iget-object v1, p0, Lcom/lostpixels/fieldservice/activities/visits/PersonDialog;->person:Lcom/lostpixels/fieldservice/internal/ministry/Person;

    invoke-static {v1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v2, Lcom/lostpixels/fieldservice/activities/visits/PersonDialog$8;

    invoke-direct {v2, p0}, Lcom/lostpixels/fieldservice/activities/visits/PersonDialog$8;-><init>(Lcom/lostpixels/fieldservice/activities/visits/PersonDialog;)V

    invoke-static {v0, v1, p0, v2}, Lcom/lostpixels/fieldservice/utils/map/PositionUpdater;->showUpdatePositionDialog(Lio/realm/Realm;Lcom/lostpixels/fieldservice/internal/ministry/Person;Landroid/app/Activity;Lcom/lostpixels/fieldservice/utils/map/PositionUpdater$PositionFoundListener;)V

    return-void
.end method
