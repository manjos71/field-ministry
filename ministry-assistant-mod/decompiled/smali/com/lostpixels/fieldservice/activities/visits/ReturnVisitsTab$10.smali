.class Lcom/lostpixels/fieldservice/activities/visits/ReturnVisitsTab$10;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/widget/AdapterView$OnItemClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/lostpixels/fieldservice/activities/visits/ReturnVisitsTab;->createLongClickDialog(Lcom/lostpixels/fieldservice/internal/ministry/Person;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/lostpixels/fieldservice/activities/visits/ReturnVisitsTab;

.field final synthetic val$alertDialog:Landroidx/appcompat/app/AlertDialog;

.field final synthetic val$person:Lcom/lostpixels/fieldservice/internal/ministry/Person;


# direct methods
.method constructor <init>(Lcom/lostpixels/fieldservice/activities/visits/ReturnVisitsTab;Landroidx/appcompat/app/AlertDialog;Lcom/lostpixels/fieldservice/internal/ministry/Person;)V
    .locals 0

    .line 774
    iput-object p1, p0, Lcom/lostpixels/fieldservice/activities/visits/ReturnVisitsTab$10;->this$0:Lcom/lostpixels/fieldservice/activities/visits/ReturnVisitsTab;

    iput-object p2, p0, Lcom/lostpixels/fieldservice/activities/visits/ReturnVisitsTab$10;->val$alertDialog:Landroidx/appcompat/app/AlertDialog;

    iput-object p3, p0, Lcom/lostpixels/fieldservice/activities/visits/ReturnVisitsTab$10;->val$person:Lcom/lostpixels/fieldservice/internal/ministry/Person;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onItemClick(Landroid/widget/AdapterView;Landroid/view/View;IJ)V
    .locals 2

    .line 777
    :try_start_0
    iget-object p1, p0, Lcom/lostpixels/fieldservice/activities/visits/ReturnVisitsTab$10;->val$alertDialog:Landroidx/appcompat/app/AlertDialog;

    invoke-virtual {p1}, Landroidx/appcompat/app/AppCompatDialog;->dismiss()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    nop

    .line 781
    :goto_0
    iget-object p1, p0, Lcom/lostpixels/fieldservice/activities/visits/ReturnVisitsTab$10;->val$person:Lcom/lostpixels/fieldservice/internal/ministry/Person;

    invoke-static {p1}, Lio/realm/RealmObject;->isValid(Lio/realm/RealmModel;)Z

    move-result p1

    if-nez p1, :cond_0

    goto/16 :goto_1

    :cond_0
    long-to-int p1, p4

    const/4 p2, 0x0

    const/4 p3, 0x1

    packed-switch p1, :pswitch_data_0

    goto/16 :goto_1

    .line 822
    :pswitch_0
    :try_start_1
    iget-object p1, p0, Lcom/lostpixels/fieldservice/activities/visits/ReturnVisitsTab$10;->val$alertDialog:Landroidx/appcompat/app/AlertDialog;

    invoke-virtual {p1}, Landroid/app/Dialog;->isShowing()Z

    move-result p1

    if-eqz p1, :cond_1

    .line 823
    iget-object p1, p0, Lcom/lostpixels/fieldservice/activities/visits/ReturnVisitsTab$10;->val$alertDialog:Landroidx/appcompat/app/AlertDialog;

    invoke-virtual {p1}, Landroidx/appcompat/app/AppCompatDialog;->dismiss()V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    .line 827
    :catch_1
    :cond_1
    new-instance p1, Landroid/content/Intent;

    const-string p2, "android.intent.action.VIEW"

    invoke-direct {p1, p2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 828
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string p3, "http://api.whatsapp.com/send?phone="

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p3, p0, Lcom/lostpixels/fieldservice/activities/visits/ReturnVisitsTab$10;->val$person:Lcom/lostpixels/fieldservice/internal/ministry/Person;

    invoke-virtual {p3}, Lcom/lostpixels/fieldservice/internal/ministry/Person;->getCellPhone()Ljava/lang/String;

    move-result-object p3

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {p2}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object p2

    invoke-virtual {p1, p2}, Landroid/content/Intent;->setData(Landroid/net/Uri;)Landroid/content/Intent;

    .line 829
    iget-object p2, p0, Lcom/lostpixels/fieldservice/activities/visits/ReturnVisitsTab$10;->this$0:Lcom/lostpixels/fieldservice/activities/visits/ReturnVisitsTab;

    invoke-virtual {p2, p1}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    goto/16 :goto_1

    .line 813
    :pswitch_1
    :try_start_2
    iget-object p1, p0, Lcom/lostpixels/fieldservice/activities/visits/ReturnVisitsTab$10;->val$alertDialog:Landroidx/appcompat/app/AlertDialog;

    invoke-virtual {p1}, Landroid/app/Dialog;->isShowing()Z

    move-result p1

    if-eqz p1, :cond_2

    .line 814
    iget-object p1, p0, Lcom/lostpixels/fieldservice/activities/visits/ReturnVisitsTab$10;->val$alertDialog:Landroidx/appcompat/app/AlertDialog;

    invoke-virtual {p1}, Landroidx/appcompat/app/AppCompatDialog;->dismiss()V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_2

    .line 818
    :catch_2
    :cond_2
    iget-object p1, p0, Lcom/lostpixels/fieldservice/activities/visits/ReturnVisitsTab$10;->this$0:Lcom/lostpixels/fieldservice/activities/visits/ReturnVisitsTab;

    iget-object p3, p0, Lcom/lostpixels/fieldservice/activities/visits/ReturnVisitsTab$10;->val$person:Lcom/lostpixels/fieldservice/internal/ministry/Person;

    invoke-virtual {p1, p3, p2}, Lcom/lostpixels/fieldservice/activities/visits/ReturnVisitsTab;->openCallVisitDialog(Lcom/lostpixels/fieldservice/internal/ministry/Person;Z)V

    goto/16 :goto_1

    .line 804
    :pswitch_2
    :try_start_3
    iget-object p1, p0, Lcom/lostpixels/fieldservice/activities/visits/ReturnVisitsTab$10;->val$alertDialog:Landroidx/appcompat/app/AlertDialog;

    invoke-virtual {p1}, Landroid/app/Dialog;->isShowing()Z

    move-result p1

    if-eqz p1, :cond_3

    .line 805
    iget-object p1, p0, Lcom/lostpixels/fieldservice/activities/visits/ReturnVisitsTab$10;->val$alertDialog:Landroidx/appcompat/app/AlertDialog;

    invoke-virtual {p1}, Landroidx/appcompat/app/AppCompatDialog;->dismiss()V
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_3

    .line 809
    :catch_3
    :cond_3
    iget-object p1, p0, Lcom/lostpixels/fieldservice/activities/visits/ReturnVisitsTab$10;->this$0:Lcom/lostpixels/fieldservice/activities/visits/ReturnVisitsTab;

    iget-object p2, p0, Lcom/lostpixels/fieldservice/activities/visits/ReturnVisitsTab$10;->val$person:Lcom/lostpixels/fieldservice/internal/ministry/Person;

    invoke-virtual {p1, p2, p3}, Lcom/lostpixels/fieldservice/activities/visits/ReturnVisitsTab;->openCallVisitDialog(Lcom/lostpixels/fieldservice/internal/ministry/Person;Z)V

    goto/16 :goto_1

    .line 833
    :pswitch_3
    iget-object p1, p0, Lcom/lostpixels/fieldservice/activities/visits/ReturnVisitsTab$10;->this$0:Lcom/lostpixels/fieldservice/activities/visits/ReturnVisitsTab;

    iget-object p2, p0, Lcom/lostpixels/fieldservice/activities/visits/ReturnVisitsTab$10;->val$person:Lcom/lostpixels/fieldservice/internal/ministry/Person;

    invoke-static {p1, p2}, Lcom/lostpixels/fieldservice/activities/visits/ReturnVisitsTab;->-$$Nest$mduplicateReturnVisit(Lcom/lostpixels/fieldservice/activities/visits/ReturnVisitsTab;Lcom/lostpixels/fieldservice/internal/ministry/Person;)V

    goto/16 :goto_1

    .line 790
    :pswitch_4
    new-instance p1, Lcom/lostpixels/fieldservice/activities/visits/AttachRVToTerritoryDlg;

    invoke-direct {p1}, Lcom/lostpixels/fieldservice/activities/visits/AttachRVToTerritoryDlg;-><init>()V

    .line 791
    new-instance p2, Landroid/os/Bundle;

    invoke-direct {p2}, Landroid/os/Bundle;-><init>()V

    .line 792
    iget-object p3, p0, Lcom/lostpixels/fieldservice/activities/visits/ReturnVisitsTab$10;->this$0:Lcom/lostpixels/fieldservice/activities/visits/ReturnVisitsTab;

    invoke-static {p3}, Lcom/lostpixels/fieldservice/activities/visits/ReturnVisitsTab;->access$000(Lcom/lostpixels/fieldservice/activities/visits/ReturnVisitsTab;)Lio/realm/Realm;

    move-result-object p3

    invoke-static {p3}, Lcom/lostpixels/fieldservice/internal/ministry/MinistryManager;->getInstance(Lio/realm/Realm;)Lcom/lostpixels/fieldservice/internal/ministry/MinistryManager;

    move-result-object p3

    iget-object p4, p0, Lcom/lostpixels/fieldservice/activities/visits/ReturnVisitsTab$10;->val$person:Lcom/lostpixels/fieldservice/internal/ministry/Person;

    invoke-virtual {p3, p4}, Lcom/lostpixels/fieldservice/internal/ministry/MinistryManager;->getPersonKey(Lcom/lostpixels/fieldservice/internal/ministry/Person;)J

    move-result-wide p3

    const-string p5, "PersonID"

    invoke-virtual {p2, p5, p3, p4}, Landroid/os/BaseBundle;->putLong(Ljava/lang/String;J)V

    .line 793
    invoke-virtual {p1, p2}, Landroidx/fragment/app/Fragment;->setArguments(Landroid/os/Bundle;)V

    .line 794
    iget-object p2, p0, Lcom/lostpixels/fieldservice/activities/visits/ReturnVisitsTab$10;->this$0:Lcom/lostpixels/fieldservice/activities/visits/ReturnVisitsTab;

    invoke-virtual {p2}, Landroidx/fragment/app/FragmentActivity;->getSupportFragmentManager()Landroidx/fragment/app/FragmentManager;

    move-result-object p2

    const-string p3, "attach"

    invoke-virtual {p1, p2, p3}, Landroidx/fragment/app/DialogFragment;->show(Landroidx/fragment/app/FragmentManager;Ljava/lang/String;)V

    goto/16 :goto_1

    .line 896
    :pswitch_5
    iget-object p1, p0, Lcom/lostpixels/fieldservice/activities/visits/ReturnVisitsTab$10;->val$person:Lcom/lostpixels/fieldservice/internal/ministry/Person;

    invoke-virtual {p1}, Lcom/lostpixels/fieldservice/internal/ministry/Person;->isPinnedToFront()Z

    move-result p2

    xor-int/2addr p2, p3

    invoke-virtual {p1, p2}, Lcom/lostpixels/fieldservice/internal/ministry/Person;->setPinnedToFront(Z)V

    .line 897
    iget-object p1, p0, Lcom/lostpixels/fieldservice/activities/visits/ReturnVisitsTab$10;->this$0:Lcom/lostpixels/fieldservice/activities/visits/ReturnVisitsTab;

    invoke-static {p1}, Lcom/lostpixels/fieldservice/activities/visits/ReturnVisitsTab;->access$500(Lcom/lostpixels/fieldservice/activities/visits/ReturnVisitsTab;)Lio/realm/Realm;

    move-result-object p1

    invoke-static {p1}, Lcom/lostpixels/fieldservice/internal/ministry/MinistryManager;->getInstance(Lio/realm/Realm;)Lcom/lostpixels/fieldservice/internal/ministry/MinistryManager;

    move-result-object p1

    iget-object p2, p0, Lcom/lostpixels/fieldservice/activities/visits/ReturnVisitsTab$10;->val$person:Lcom/lostpixels/fieldservice/internal/ministry/Person;

    invoke-virtual {p1, p2}, Lcom/lostpixels/fieldservice/internal/ministry/MinistryManager;->updatePerson(Lcom/lostpixels/fieldservice/internal/ministry/Person;)V

    .line 898
    invoke-static {}, Lcom/lostpixels/fieldservice/ui/nowcards/NowCardListCreator;->resetPinnedVisits()V

    goto/16 :goto_1

    .line 888
    :pswitch_6
    iget-object p1, p0, Lcom/lostpixels/fieldservice/activities/visits/ReturnVisitsTab$10;->val$person:Lcom/lostpixels/fieldservice/internal/ministry/Person;

    invoke-virtual {p1}, Lcom/lostpixels/fieldservice/internal/ministry/Person;->isHidden()Z

    move-result p2

    xor-int/2addr p2, p3

    invoke-virtual {p1, p2}, Lcom/lostpixels/fieldservice/internal/ministry/Person;->setHidden(Z)V

    .line 889
    iget-object p1, p0, Lcom/lostpixels/fieldservice/activities/visits/ReturnVisitsTab$10;->this$0:Lcom/lostpixels/fieldservice/activities/visits/ReturnVisitsTab;

    invoke-static {p1}, Lcom/lostpixels/fieldservice/activities/visits/ReturnVisitsTab;->access$400(Lcom/lostpixels/fieldservice/activities/visits/ReturnVisitsTab;)Lio/realm/Realm;

    move-result-object p1

    invoke-static {p1}, Lcom/lostpixels/fieldservice/internal/ministry/MinistryManager;->getInstance(Lio/realm/Realm;)Lcom/lostpixels/fieldservice/internal/ministry/MinistryManager;

    move-result-object p1

    iget-object p2, p0, Lcom/lostpixels/fieldservice/activities/visits/ReturnVisitsTab$10;->val$person:Lcom/lostpixels/fieldservice/internal/ministry/Person;

    invoke-virtual {p1, p2}, Lcom/lostpixels/fieldservice/internal/ministry/MinistryManager;->updatePerson(Lcom/lostpixels/fieldservice/internal/ministry/Person;)V

    .line 890
    iget-object p1, p0, Lcom/lostpixels/fieldservice/activities/visits/ReturnVisitsTab$10;->this$0:Lcom/lostpixels/fieldservice/activities/visits/ReturnVisitsTab;

    invoke-static {p1}, Lcom/lostpixels/fieldservice/activities/visits/ReturnVisitsTab;->-$$Nest$mupdateTagList(Lcom/lostpixels/fieldservice/activities/visits/ReturnVisitsTab;)V

    .line 891
    iget-object p1, p0, Lcom/lostpixels/fieldservice/activities/visits/ReturnVisitsTab$10;->this$0:Lcom/lostpixels/fieldservice/activities/visits/ReturnVisitsTab;

    invoke-static {p1}, Lcom/lostpixels/fieldservice/activities/visits/ReturnVisitsTab;->-$$Nest$fgetmListFragment(Lcom/lostpixels/fieldservice/activities/visits/ReturnVisitsTab;)Lcom/lostpixels/fieldservice/activities/visits/ReturnVisitsListFragment;

    move-result-object p1

    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    invoke-virtual {p1}, Lcom/lostpixels/fieldservice/activities/visits/ReturnVisitsListFragment;->notifyData()V

    .line 892
    iget-object p1, p0, Lcom/lostpixels/fieldservice/activities/visits/ReturnVisitsTab$10;->this$0:Lcom/lostpixels/fieldservice/activities/visits/ReturnVisitsTab;

    invoke-static {p1}, Lcom/lostpixels/fieldservice/activities/visits/ReturnVisitsTab;->-$$Nest$fgetmMapFragment(Lcom/lostpixels/fieldservice/activities/visits/ReturnVisitsTab;)Lcom/lostpixels/fieldservice/activities/visits/ReturnVisitsMapFragment;

    move-result-object p1

    if-eqz p1, :cond_a

    .line 893
    iget-object p1, p0, Lcom/lostpixels/fieldservice/activities/visits/ReturnVisitsTab$10;->this$0:Lcom/lostpixels/fieldservice/activities/visits/ReturnVisitsTab;

    invoke-static {p1}, Lcom/lostpixels/fieldservice/activities/visits/ReturnVisitsTab;->-$$Nest$fgetmMapFragment(Lcom/lostpixels/fieldservice/activities/visits/ReturnVisitsTab;)Lcom/lostpixels/fieldservice/activities/visits/ReturnVisitsMapFragment;

    move-result-object p1

    invoke-virtual {p1}, Lcom/lostpixels/fieldservice/activities/visits/ReturnVisitsMapFragment;->updateMap()V

    goto/16 :goto_1

    .line 797
    :pswitch_7
    iget-object p1, p0, Lcom/lostpixels/fieldservice/activities/visits/ReturnVisitsTab$10;->this$0:Lcom/lostpixels/fieldservice/activities/visits/ReturnVisitsTab;

    iget-object p2, p0, Lcom/lostpixels/fieldservice/activities/visits/ReturnVisitsTab$10;->val$person:Lcom/lostpixels/fieldservice/internal/ministry/Person;

    invoke-static {p1, p2}, Lcom/lostpixels/fieldservice/activities/visits/ReturnVisitsTab;->-$$Nest$fputshowOnMapPerson(Lcom/lostpixels/fieldservice/activities/visits/ReturnVisitsTab;Lcom/lostpixels/fieldservice/internal/ministry/Person;)V

    .line 798
    iget-object p1, p0, Lcom/lostpixels/fieldservice/activities/visits/ReturnVisitsTab$10;->this$0:Lcom/lostpixels/fieldservice/activities/visits/ReturnVisitsTab;

    invoke-virtual {p1}, Lcom/lostpixels/fieldservice/activities/visits/ReturnVisitsTab;->showMap()V

    .line 799
    iget-object p1, p0, Lcom/lostpixels/fieldservice/activities/visits/ReturnVisitsTab$10;->this$0:Lcom/lostpixels/fieldservice/activities/visits/ReturnVisitsTab;

    invoke-virtual {p1}, Landroidx/appcompat/app/AppCompatActivity;->supportInvalidateOptionsMenu()V

    goto/16 :goto_1

    .line 836
    :pswitch_8
    iget-object p1, p0, Lcom/lostpixels/fieldservice/activities/visits/ReturnVisitsTab$10;->val$person:Lcom/lostpixels/fieldservice/internal/ministry/Person;

    invoke-virtual {p1}, Lcom/lostpixels/fieldservice/internal/ministry/Person;->getPosition()Lcom/google/android/gms/maps/model/LatLng;

    move-result-object p1

    iget-object p2, p0, Lcom/lostpixels/fieldservice/activities/visits/ReturnVisitsTab$10;->this$0:Lcom/lostpixels/fieldservice/activities/visits/ReturnVisitsTab;

    invoke-static {p1, p2}, Lcom/lostpixels/fieldservice/utils/map/NavigationUtils;->navigateTo(Lcom/google/android/gms/maps/model/LatLng;Landroid/app/Activity;)V

    goto/16 :goto_1

    .line 871
    :pswitch_9
    iget-object p1, p0, Lcom/lostpixels/fieldservice/activities/visits/ReturnVisitsTab$10;->val$person:Lcom/lostpixels/fieldservice/internal/ministry/Person;

    if-eqz p1, :cond_a

    .line 872
    invoke-virtual {p1}, Lcom/lostpixels/fieldservice/internal/ministry/Person;->getPosition()Lcom/google/android/gms/maps/model/LatLng;

    move-result-object p1

    if-nez p1, :cond_4

    .line 873
    iget-object p1, p0, Lcom/lostpixels/fieldservice/activities/visits/ReturnVisitsTab$10;->this$0:Lcom/lostpixels/fieldservice/activities/visits/ReturnVisitsTab;

    iget-object p2, p0, Lcom/lostpixels/fieldservice/activities/visits/ReturnVisitsTab$10;->val$person:Lcom/lostpixels/fieldservice/internal/ministry/Person;

    invoke-static {p1, p2}, Lcom/lostpixels/fieldservice/activities/visits/ReturnVisitsTab;->-$$Nest$fputpersonToSetPositionFor(Lcom/lostpixels/fieldservice/activities/visits/ReturnVisitsTab;Lcom/lostpixels/fieldservice/internal/ministry/Person;)V

    .line 874
    iget-object p1, p0, Lcom/lostpixels/fieldservice/activities/visits/ReturnVisitsTab$10;->this$0:Lcom/lostpixels/fieldservice/activities/visits/ReturnVisitsTab;

    invoke-static {p1}, Lcom/lostpixels/fieldservice/activities/visits/ReturnVisitsTabPermissionsDispatcher;->setPersonPositionWithPermissionCheck(Lcom/lostpixels/fieldservice/activities/visits/ReturnVisitsTab;)V

    goto/16 :goto_1

    .line 876
    :cond_4
    iget-object p1, p0, Lcom/lostpixels/fieldservice/activities/visits/ReturnVisitsTab$10;->this$0:Lcom/lostpixels/fieldservice/activities/visits/ReturnVisitsTab;

    invoke-static {p1}, Lcom/lostpixels/fieldservice/activities/visits/ReturnVisitsTab;->-$$Nest$fgetmMapFragment(Lcom/lostpixels/fieldservice/activities/visits/ReturnVisitsTab;)Lcom/lostpixels/fieldservice/activities/visits/ReturnVisitsMapFragment;

    move-result-object p1

    if-eqz p1, :cond_5

    .line 877
    iget-object p1, p0, Lcom/lostpixels/fieldservice/activities/visits/ReturnVisitsTab$10;->this$0:Lcom/lostpixels/fieldservice/activities/visits/ReturnVisitsTab;

    invoke-static {p1}, Lcom/lostpixels/fieldservice/activities/visits/ReturnVisitsTab;->-$$Nest$fgetmMapFragment(Lcom/lostpixels/fieldservice/activities/visits/ReturnVisitsTab;)Lcom/lostpixels/fieldservice/activities/visits/ReturnVisitsMapFragment;

    move-result-object p1

    invoke-virtual {p1}, Lcom/lostpixels/fieldservice/activities/visits/ReturnVisitsMapFragment;->hideInfoWindow()V

    .line 878
    :cond_5
    iget-object p1, p0, Lcom/lostpixels/fieldservice/activities/visits/ReturnVisitsTab$10;->val$person:Lcom/lostpixels/fieldservice/internal/ministry/Person;

    const/4 p2, 0x0

    invoke-virtual {p1, p2}, Lcom/lostpixels/fieldservice/internal/ministry/Person;->setPosition(Lcom/google/android/gms/maps/model/LatLng;)V

    .line 879
    iget-object p1, p0, Lcom/lostpixels/fieldservice/activities/visits/ReturnVisitsTab$10;->this$0:Lcom/lostpixels/fieldservice/activities/visits/ReturnVisitsTab;

    invoke-static {p1}, Lcom/lostpixels/fieldservice/activities/visits/ReturnVisitsTab;->access$200(Lcom/lostpixels/fieldservice/activities/visits/ReturnVisitsTab;)Lio/realm/Realm;

    move-result-object p1

    iget-object p3, p0, Lcom/lostpixels/fieldservice/activities/visits/ReturnVisitsTab$10;->val$person:Lcom/lostpixels/fieldservice/internal/ministry/Person;

    invoke-static {p1, p2, p3}, Lcom/lostpixels/fieldservice/utils/map/PositionUpdater;->updateVisitPosition(Lio/realm/Realm;Lcom/google/android/gms/maps/model/LatLng;Lcom/lostpixels/fieldservice/internal/ministry/Person;)V

    .line 880
    iget-object p1, p0, Lcom/lostpixels/fieldservice/activities/visits/ReturnVisitsTab$10;->this$0:Lcom/lostpixels/fieldservice/activities/visits/ReturnVisitsTab;

    invoke-static {p1}, Lcom/lostpixels/fieldservice/activities/visits/ReturnVisitsTab;->-$$Nest$fgetmListFragment(Lcom/lostpixels/fieldservice/activities/visits/ReturnVisitsTab;)Lcom/lostpixels/fieldservice/activities/visits/ReturnVisitsListFragment;

    move-result-object p1

    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    invoke-virtual {p1}, Lcom/lostpixels/fieldservice/activities/visits/ReturnVisitsListFragment;->notifyData()V

    .line 881
    iget-object p1, p0, Lcom/lostpixels/fieldservice/activities/visits/ReturnVisitsTab$10;->this$0:Lcom/lostpixels/fieldservice/activities/visits/ReturnVisitsTab;

    invoke-static {p1}, Lcom/lostpixels/fieldservice/activities/visits/ReturnVisitsTab;->-$$Nest$fgetmMapFragment(Lcom/lostpixels/fieldservice/activities/visits/ReturnVisitsTab;)Lcom/lostpixels/fieldservice/activities/visits/ReturnVisitsMapFragment;

    move-result-object p1

    if-eqz p1, :cond_6

    .line 882
    iget-object p1, p0, Lcom/lostpixels/fieldservice/activities/visits/ReturnVisitsTab$10;->this$0:Lcom/lostpixels/fieldservice/activities/visits/ReturnVisitsTab;

    invoke-static {p1}, Lcom/lostpixels/fieldservice/activities/visits/ReturnVisitsTab;->-$$Nest$fgetmMapFragment(Lcom/lostpixels/fieldservice/activities/visits/ReturnVisitsTab;)Lcom/lostpixels/fieldservice/activities/visits/ReturnVisitsMapFragment;

    move-result-object p1

    invoke-virtual {p1}, Lcom/lostpixels/fieldservice/activities/visits/ReturnVisitsMapFragment;->updateMap()V

    .line 883
    :cond_6
    iget-object p1, p0, Lcom/lostpixels/fieldservice/activities/visits/ReturnVisitsTab$10;->this$0:Lcom/lostpixels/fieldservice/activities/visits/ReturnVisitsTab;

    invoke-static {p1}, Lcom/lostpixels/fieldservice/activities/visits/ReturnVisitsTab;->access$300(Lcom/lostpixels/fieldservice/activities/visits/ReturnVisitsTab;)Lio/realm/Realm;

    move-result-object p1

    invoke-static {p1}, Lcom/lostpixels/fieldservice/internal/ministry/MinistryManager;->getInstance(Lio/realm/Realm;)Lcom/lostpixels/fieldservice/internal/ministry/MinistryManager;

    move-result-object p1

    iget-object p2, p0, Lcom/lostpixels/fieldservice/activities/visits/ReturnVisitsTab$10;->val$person:Lcom/lostpixels/fieldservice/internal/ministry/Person;

    invoke-virtual {p1, p2}, Lcom/lostpixels/fieldservice/internal/ministry/MinistryManager;->updatePerson(Lcom/lostpixels/fieldservice/internal/ministry/Person;)V

    goto/16 :goto_1

    .line 901
    :pswitch_a
    new-instance p1, Landroidx/appcompat/app/AlertDialog$Builder;

    iget-object p3, p0, Lcom/lostpixels/fieldservice/activities/visits/ReturnVisitsTab$10;->this$0:Lcom/lostpixels/fieldservice/activities/visits/ReturnVisitsTab;

    invoke-direct {p1, p3}, Landroidx/appcompat/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 903
    iget-object p3, p0, Lcom/lostpixels/fieldservice/activities/visits/ReturnVisitsTab$10;->val$person:Lcom/lostpixels/fieldservice/internal/ministry/Person;

    invoke-virtual {p3}, Lcom/lostpixels/fieldservice/internal/ministry/Person;->getAddress()Ljava/lang/String;

    move-result-object p3

    const-string p4, ""

    if-eqz p3, :cond_7

    iget-object p3, p0, Lcom/lostpixels/fieldservice/activities/visits/ReturnVisitsTab$10;->val$person:Lcom/lostpixels/fieldservice/internal/ministry/Person;

    invoke-virtual {p3}, Lcom/lostpixels/fieldservice/internal/ministry/Person;->getAddress()Ljava/lang/String;

    move-result-object p3

    invoke-virtual {p3}, Ljava/lang/String;->isEmpty()Z

    move-result p3

    if-nez p3, :cond_7

    .line 904
    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p3, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p4, p0, Lcom/lostpixels/fieldservice/activities/visits/ReturnVisitsTab$10;->val$person:Lcom/lostpixels/fieldservice/internal/ministry/Person;

    invoke-virtual {p4}, Lcom/lostpixels/fieldservice/internal/ministry/Person;->getAddress()Ljava/lang/String;

    move-result-object p4

    invoke-virtual {p3, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p4

    .line 905
    :cond_7
    iget-object p3, p0, Lcom/lostpixels/fieldservice/activities/visits/ReturnVisitsTab$10;->val$person:Lcom/lostpixels/fieldservice/internal/ministry/Person;

    invoke-virtual {p3}, Lcom/lostpixels/fieldservice/internal/ministry/Person;->getName()Ljava/lang/String;

    move-result-object p3

    const-string p5, "\n"

    if-eqz p3, :cond_9

    iget-object p3, p0, Lcom/lostpixels/fieldservice/activities/visits/ReturnVisitsTab$10;->val$person:Lcom/lostpixels/fieldservice/internal/ministry/Person;

    invoke-virtual {p3}, Lcom/lostpixels/fieldservice/internal/ministry/Person;->getName()Ljava/lang/String;

    move-result-object p3

    invoke-virtual {p3}, Ljava/lang/String;->isEmpty()Z

    move-result p3

    if-nez p3, :cond_9

    .line 906
    invoke-virtual {p4}, Ljava/lang/String;->isEmpty()Z

    move-result p3

    if-nez p3, :cond_8

    .line 907
    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p3, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3, p5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p4

    .line 909
    :cond_8
    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p3, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p4, p0, Lcom/lostpixels/fieldservice/activities/visits/ReturnVisitsTab$10;->val$person:Lcom/lostpixels/fieldservice/internal/ministry/Person;

    invoke-virtual {p4}, Lcom/lostpixels/fieldservice/internal/ministry/Person;->getName()Ljava/lang/String;

    move-result-object p4

    invoke-virtual {p3, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p4

    .line 911
    :cond_9
    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v0, p0, Lcom/lostpixels/fieldservice/activities/visits/ReturnVisitsTab$10;->this$0:Lcom/lostpixels/fieldservice/activities/visits/ReturnVisitsTab;

    const v1, 0x7f120157

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3, p5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p3

    invoke-virtual {p1, p3}, Landroidx/appcompat/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroidx/appcompat/app/AlertDialog$Builder;

    move-result-object p3

    invoke-virtual {p3, p2}, Landroidx/appcompat/app/AlertDialog$Builder;->setCancelable(Z)Landroidx/appcompat/app/AlertDialog$Builder;

    move-result-object p2

    iget-object p3, p0, Lcom/lostpixels/fieldservice/activities/visits/ReturnVisitsTab$10;->this$0:Lcom/lostpixels/fieldservice/activities/visits/ReturnVisitsTab;

    const p4, 0x7f120158

    .line 912
    invoke-virtual {p3, p4}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p3

    new-instance p4, Lcom/lostpixels/fieldservice/activities/visits/ReturnVisitsTab$10$3;

    invoke-direct {p4, p0}, Lcom/lostpixels/fieldservice/activities/visits/ReturnVisitsTab$10$3;-><init>(Lcom/lostpixels/fieldservice/activities/visits/ReturnVisitsTab$10;)V

    invoke-virtual {p2, p3, p4}, Landroidx/appcompat/app/AlertDialog$Builder;->setPositiveButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroidx/appcompat/app/AlertDialog$Builder;

    move-result-object p2

    iget-object p3, p0, Lcom/lostpixels/fieldservice/activities/visits/ReturnVisitsTab$10;->this$0:Lcom/lostpixels/fieldservice/activities/visits/ReturnVisitsTab;

    const p4, 0x7f120152

    .line 935
    invoke-virtual {p3, p4}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p3

    new-instance p4, Lcom/lostpixels/fieldservice/activities/visits/ReturnVisitsTab$10$2;

    invoke-direct {p4, p0}, Lcom/lostpixels/fieldservice/activities/visits/ReturnVisitsTab$10$2;-><init>(Lcom/lostpixels/fieldservice/activities/visits/ReturnVisitsTab$10;)V

    invoke-virtual {p2, p3, p4}, Landroidx/appcompat/app/AlertDialog$Builder;->setNegativeButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroidx/appcompat/app/AlertDialog$Builder;

    .line 940
    invoke-virtual {p1}, Landroidx/appcompat/app/AlertDialog$Builder;->create()Landroidx/appcompat/app/AlertDialog;

    move-result-object p1

    .line 941
    invoke-virtual {p1}, Landroid/app/Dialog;->show()V

    goto :goto_1

    .line 786
    :pswitch_b
    iget-object p1, p0, Lcom/lostpixels/fieldservice/activities/visits/ReturnVisitsTab$10;->this$0:Lcom/lostpixels/fieldservice/activities/visits/ReturnVisitsTab;

    iget-object p2, p0, Lcom/lostpixels/fieldservice/activities/visits/ReturnVisitsTab$10;->val$person:Lcom/lostpixels/fieldservice/internal/ministry/Person;

    invoke-virtual {p1, p2}, Lcom/lostpixels/fieldservice/activities/visits/ReturnVisitsTab;->onBookmarkChanged(Lcom/lostpixels/fieldservice/internal/ministry/Person;)V

    goto :goto_1

    .line 839
    :pswitch_c
    iget-object p1, p0, Lcom/lostpixels/fieldservice/activities/visits/ReturnVisitsTab$10;->this$0:Lcom/lostpixels/fieldservice/activities/visits/ReturnVisitsTab;

    const p4, 0x7f1201be

    invoke-virtual {p1, p4}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p1

    iget-object p4, p0, Lcom/lostpixels/fieldservice/activities/visits/ReturnVisitsTab$10;->this$0:Lcom/lostpixels/fieldservice/activities/visits/ReturnVisitsTab;

    const p5, 0x7f1201bd

    invoke-virtual {p4, p5}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p4

    iget-object p5, p0, Lcom/lostpixels/fieldservice/activities/visits/ReturnVisitsTab$10;->this$0:Lcom/lostpixels/fieldservice/activities/visits/ReturnVisitsTab;

    const v0, 0x7f12036a

    invoke-virtual {p5, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p5

    const/4 v0, 0x3

    new-array v0, v0, [Ljava/lang/CharSequence;

    aput-object p1, v0, p2

    aput-object p4, v0, p3

    const/4 p1, 0x2

    aput-object p5, v0, p1

    .line 841
    new-instance p1, Landroidx/appcompat/app/AlertDialog$Builder;

    iget-object p2, p0, Lcom/lostpixels/fieldservice/activities/visits/ReturnVisitsTab$10;->this$0:Lcom/lostpixels/fieldservice/activities/visits/ReturnVisitsTab;

    invoke-direct {p1, p2}, Landroidx/appcompat/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 842
    iget-object p2, p0, Lcom/lostpixels/fieldservice/activities/visits/ReturnVisitsTab$10;->this$0:Lcom/lostpixels/fieldservice/activities/visits/ReturnVisitsTab;

    const p3, 0x7f1201bc

    invoke-virtual {p2, p3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Landroidx/appcompat/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Landroidx/appcompat/app/AlertDialog$Builder;

    .line 843
    new-instance p2, Lcom/lostpixels/fieldservice/activities/visits/ReturnVisitsTab$10$1;

    invoke-direct {p2, p0}, Lcom/lostpixels/fieldservice/activities/visits/ReturnVisitsTab$10$1;-><init>(Lcom/lostpixels/fieldservice/activities/visits/ReturnVisitsTab$10;)V

    invoke-virtual {p1, v0, p2}, Landroidx/appcompat/app/AlertDialog$Builder;->setItems([Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroidx/appcompat/app/AlertDialog$Builder;

    .line 866
    invoke-virtual {p1}, Landroidx/appcompat/app/AlertDialog$Builder;->create()Landroidx/appcompat/app/AlertDialog;

    move-result-object p1

    .line 867
    invoke-virtual {p1}, Landroid/app/Dialog;->show()V

    :cond_a
    :goto_1
    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_c
        :pswitch_b
        :pswitch_a
        :pswitch_9
        :pswitch_8
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
