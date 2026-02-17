.class Lcom/lostpixels/fieldservice/activities/territory/TerritoryTabFragment$9;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/widget/AdapterView$OnItemClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/lostpixels/fieldservice/activities/territory/TerritoryTabFragment;->createLongClickDialog(Lcom/lostpixels/fieldservice/internal/ministry/Territory;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/lostpixels/fieldservice/activities/territory/TerritoryTabFragment;

.field final synthetic val$alertDialog:Landroidx/appcompat/app/AlertDialog;

.field final synthetic val$territory:Lcom/lostpixels/fieldservice/internal/ministry/Territory;


# direct methods
.method constructor <init>(Lcom/lostpixels/fieldservice/activities/territory/TerritoryTabFragment;Landroidx/appcompat/app/AlertDialog;Lcom/lostpixels/fieldservice/internal/ministry/Territory;)V
    .locals 0

    .line 672
    iput-object p1, p0, Lcom/lostpixels/fieldservice/activities/territory/TerritoryTabFragment$9;->this$0:Lcom/lostpixels/fieldservice/activities/territory/TerritoryTabFragment;

    iput-object p2, p0, Lcom/lostpixels/fieldservice/activities/territory/TerritoryTabFragment$9;->val$alertDialog:Landroidx/appcompat/app/AlertDialog;

    iput-object p3, p0, Lcom/lostpixels/fieldservice/activities/territory/TerritoryTabFragment$9;->val$territory:Lcom/lostpixels/fieldservice/internal/ministry/Territory;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onItemClick(Landroid/widget/AdapterView;Landroid/view/View;IJ)V
    .locals 4

    .line 675
    :try_start_0
    iget-object p1, p0, Lcom/lostpixels/fieldservice/activities/territory/TerritoryTabFragment$9;->val$alertDialog:Landroidx/appcompat/app/AlertDialog;

    invoke-virtual {p1}, Landroidx/appcompat/app/AppCompatDialog;->dismiss()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    nop

    :goto_0
    long-to-int p1, p4

    const/4 p2, 0x2

    const/16 p3, 0xb

    .line 679
    const-string p4, "delete"

    const-string p5, "id"

    const-class v0, Lcom/lostpixels/fieldservice/activities/territory/returnterritory/ReturnTerritoryWizard;

    const-string v1, "android.intent.action.VIEW"

    const/4 v2, 0x0

    const/4 v3, 0x1

    packed-switch p1, :pswitch_data_0

    :pswitch_0
    goto/16 :goto_4

    .line 780
    :pswitch_1
    iget-object p1, p0, Lcom/lostpixels/fieldservice/activities/territory/TerritoryTabFragment$9;->this$0:Lcom/lostpixels/fieldservice/activities/territory/TerritoryTabFragment;

    invoke-virtual {p1}, Landroidx/fragment/app/Fragment;->requireActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object p1

    invoke-virtual {p1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object p1

    new-instance p3, Landroid/content/ComponentName;

    const-string p4, "com.lostpixels.fieldservice"

    const-string p5, "com.lostpixels.fieldservice.ImportDialogAliasWeb"

    invoke-direct {p3, p4, p5}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p1, p3, p2, v3}, Landroid/content/pm/PackageManager;->setComponentEnabledSetting(Landroid/content/ComponentName;II)V

    .line 783
    new-instance p1, Landroid/content/Intent;

    iget-object p2, p0, Lcom/lostpixels/fieldservice/activities/territory/TerritoryTabFragment$9;->val$territory:Lcom/lostpixels/fieldservice/internal/ministry/Territory;

    invoke-virtual {p2}, Lcom/lostpixels/fieldservice/internal/ministry/Territory;->getURL()Ljava/lang/String;

    move-result-object p2

    invoke-static {p2}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object p2

    invoke-direct {p1, v1, p2}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    .line 784
    iget-object p2, p0, Lcom/lostpixels/fieldservice/activities/territory/TerritoryTabFragment$9;->this$0:Lcom/lostpixels/fieldservice/activities/territory/TerritoryTabFragment;

    invoke-virtual {p2, p1}, Landroidx/fragment/app/Fragment;->startActivity(Landroid/content/Intent;)V

    .line 787
    iget-object p1, p0, Lcom/lostpixels/fieldservice/activities/territory/TerritoryTabFragment$9;->this$0:Lcom/lostpixels/fieldservice/activities/territory/TerritoryTabFragment;

    invoke-virtual {p1}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object p1

    const-string p2, "alarm"

    invoke-virtual {p1, p2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/app/AlarmManager;

    .line 788
    new-instance p2, Landroid/content/Intent;

    iget-object p3, p0, Lcom/lostpixels/fieldservice/activities/territory/TerritoryTabFragment$9;->this$0:Lcom/lostpixels/fieldservice/activities/territory/TerritoryTabFragment;

    invoke-virtual {p3}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object p3

    const-class p4, Lcom/lostpixels/fieldservice/receivers/ImportProxyWebEnablerReceiver;

    invoke-direct {p2, p3, p4}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 789
    iget-object p3, p0, Lcom/lostpixels/fieldservice/activities/territory/TerritoryTabFragment$9;->this$0:Lcom/lostpixels/fieldservice/activities/territory/TerritoryTabFragment;

    invoke-virtual {p3}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object p3

    const p4, 0x117d6

    const/high16 p5, 0xc000000

    invoke-static {p3, p4, p2, p5}, Landroid/app/PendingIntent;->getBroadcast(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object p2

    .line 791
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object p3

    const/16 p4, 0xd

    .line 792
    invoke-virtual {p3, p4, v3}, Ljava/util/Calendar;->add(II)V

    .line 793
    invoke-virtual {p3}, Ljava/util/Calendar;->getTimeInMillis()J

    move-result-wide p3

    invoke-virtual {p1, v2, p3, p4, p2}, Landroid/app/AlarmManager;->set(IJLandroid/app/PendingIntent;)V

    goto/16 :goto_4

    .line 861
    :pswitch_2
    iget-object p1, p0, Lcom/lostpixels/fieldservice/activities/territory/TerritoryTabFragment$9;->val$territory:Lcom/lostpixels/fieldservice/internal/ministry/Territory;

    invoke-virtual {p1}, Lcom/lostpixels/fieldservice/internal/ministry/Territory;->isReturned()Z

    move-result p1

    if-eqz p1, :cond_0

    .line 862
    iget-object p1, p0, Lcom/lostpixels/fieldservice/activities/territory/TerritoryTabFragment$9;->val$territory:Lcom/lostpixels/fieldservice/internal/ministry/Territory;

    new-instance p2, Ljava/util/Date;

    invoke-direct {p2}, Ljava/util/Date;-><init>()V

    invoke-virtual {p1, p2}, Lcom/lostpixels/fieldservice/internal/ministry/Territory;->setDateCreated(Ljava/util/Date;)V

    .line 863
    iget-object p1, p0, Lcom/lostpixels/fieldservice/activities/territory/TerritoryTabFragment$9;->val$territory:Lcom/lostpixels/fieldservice/internal/ministry/Territory;

    invoke-virtual {p1}, Lcom/lostpixels/fieldservice/internal/ministry/Territory;->isReturned()Z

    move-result p2

    xor-int/2addr p2, v3

    invoke-virtual {p1, p2}, Lcom/lostpixels/fieldservice/internal/ministry/Territory;->returnTerritory(Z)V

    .line 864
    iget-object p1, p0, Lcom/lostpixels/fieldservice/activities/territory/TerritoryTabFragment$9;->this$0:Lcom/lostpixels/fieldservice/activities/territory/TerritoryTabFragment;

    iget-object p1, p1, Lcom/lostpixels/fieldservice/activities/territory/TerritoryTabFragment;->realm:Lio/realm/Realm;

    invoke-static {p1}, Lcom/lostpixels/fieldservice/internal/ministry/MinistryManager;->getInstance(Lio/realm/Realm;)Lcom/lostpixels/fieldservice/internal/ministry/MinistryManager;

    move-result-object p1

    iget-object p2, p0, Lcom/lostpixels/fieldservice/activities/territory/TerritoryTabFragment$9;->this$0:Lcom/lostpixels/fieldservice/activities/territory/TerritoryTabFragment;

    iget-object p2, p2, Lcom/lostpixels/fieldservice/activities/territory/TerritoryTabFragment;->realm:Lio/realm/Realm;

    iget-object p3, p0, Lcom/lostpixels/fieldservice/activities/territory/TerritoryTabFragment$9;->val$territory:Lcom/lostpixels/fieldservice/internal/ministry/Territory;

    invoke-virtual {p1, p2, p3}, Lcom/lostpixels/fieldservice/internal/ministry/MinistryManager;->updateTerritory(Lio/realm/Realm;Lcom/lostpixels/fieldservice/internal/ministry/Territory;)V

    .line 865
    iget-object p1, p0, Lcom/lostpixels/fieldservice/activities/territory/TerritoryTabFragment$9;->this$0:Lcom/lostpixels/fieldservice/activities/territory/TerritoryTabFragment;

    invoke-static {p1}, Lcom/lostpixels/fieldservice/activities/territory/TerritoryTabFragment;->-$$Nest$fgetmTerritoriesList(Lcom/lostpixels/fieldservice/activities/territory/TerritoryTabFragment;)Landroid/widget/ListView;

    move-result-object p1

    invoke-virtual {p1}, Landroid/widget/ListView;->getAdapter()Landroid/widget/ListAdapter;

    move-result-object p1

    check-cast p1, Landroid/widget/BaseAdapter;

    invoke-virtual {p1}, Landroid/widget/BaseAdapter;->notifyDataSetChanged()V

    goto/16 :goto_4

    .line 867
    :cond_0
    iget-object p1, p0, Lcom/lostpixels/fieldservice/activities/territory/TerritoryTabFragment$9;->this$0:Lcom/lostpixels/fieldservice/activities/territory/TerritoryTabFragment;

    iget-object p1, p1, Lcom/lostpixels/fieldservice/activities/territory/TerritoryTabFragment;->realm:Lio/realm/Realm;

    iget-object p2, p0, Lcom/lostpixels/fieldservice/activities/territory/TerritoryTabFragment$9;->val$territory:Lcom/lostpixels/fieldservice/internal/ministry/Territory;

    invoke-static {p1, p2}, Lcom/lostpixels/fieldservice/helpfunctions/HelpFunctions;->hasInterestedPersons(Lio/realm/Realm;Lcom/lostpixels/fieldservice/internal/ministry/Territory;)Z

    move-result p1

    if-nez p1, :cond_2

    iget-object p1, p0, Lcom/lostpixels/fieldservice/activities/territory/TerritoryTabFragment$9;->val$territory:Lcom/lostpixels/fieldservice/internal/ministry/Territory;

    invoke-static {p1}, Lcom/lostpixels/fieldservice/helpfunctions/HelpFunctions;->hasTerritoryHelperLink(Lcom/lostpixels/fieldservice/internal/ministry/Territory;)Z

    move-result p1

    if-eqz p1, :cond_1

    goto :goto_1

    .line 873
    :cond_1
    iget-object p1, p0, Lcom/lostpixels/fieldservice/activities/territory/TerritoryTabFragment$9;->val$territory:Lcom/lostpixels/fieldservice/internal/ministry/Territory;

    invoke-virtual {p1}, Lcom/lostpixels/fieldservice/internal/ministry/Territory;->isReturned()Z

    move-result p2

    xor-int/2addr p2, v3

    invoke-virtual {p1, p2}, Lcom/lostpixels/fieldservice/internal/ministry/Territory;->returnTerritory(Z)V

    .line 874
    iget-object p1, p0, Lcom/lostpixels/fieldservice/activities/territory/TerritoryTabFragment$9;->this$0:Lcom/lostpixels/fieldservice/activities/territory/TerritoryTabFragment;

    iget-object p1, p1, Lcom/lostpixels/fieldservice/activities/territory/TerritoryTabFragment;->realm:Lio/realm/Realm;

    invoke-static {p1}, Lcom/lostpixels/fieldservice/internal/ministry/MinistryManager;->getInstance(Lio/realm/Realm;)Lcom/lostpixels/fieldservice/internal/ministry/MinistryManager;

    move-result-object p1

    iget-object p2, p0, Lcom/lostpixels/fieldservice/activities/territory/TerritoryTabFragment$9;->this$0:Lcom/lostpixels/fieldservice/activities/territory/TerritoryTabFragment;

    iget-object p2, p2, Lcom/lostpixels/fieldservice/activities/territory/TerritoryTabFragment;->realm:Lio/realm/Realm;

    iget-object p3, p0, Lcom/lostpixels/fieldservice/activities/territory/TerritoryTabFragment$9;->val$territory:Lcom/lostpixels/fieldservice/internal/ministry/Territory;

    invoke-virtual {p1, p2, p3}, Lcom/lostpixels/fieldservice/internal/ministry/MinistryManager;->updateTerritory(Lio/realm/Realm;Lcom/lostpixels/fieldservice/internal/ministry/Territory;)V

    .line 875
    iget-object p1, p0, Lcom/lostpixels/fieldservice/activities/territory/TerritoryTabFragment$9;->this$0:Lcom/lostpixels/fieldservice/activities/territory/TerritoryTabFragment;

    invoke-static {p1}, Lcom/lostpixels/fieldservice/activities/territory/TerritoryTabFragment;->-$$Nest$fgetmTerritoriesList(Lcom/lostpixels/fieldservice/activities/territory/TerritoryTabFragment;)Landroid/widget/ListView;

    move-result-object p1

    invoke-virtual {p1}, Landroid/widget/ListView;->getAdapter()Landroid/widget/ListAdapter;

    move-result-object p1

    check-cast p1, Landroid/widget/BaseAdapter;

    invoke-virtual {p1}, Landroid/widget/BaseAdapter;->notifyDataSetChanged()V

    goto/16 :goto_4

    .line 868
    :cond_2
    :goto_1
    new-instance p1, Landroid/content/Intent;

    iget-object p2, p0, Lcom/lostpixels/fieldservice/activities/territory/TerritoryTabFragment$9;->this$0:Lcom/lostpixels/fieldservice/activities/territory/TerritoryTabFragment;

    invoke-virtual {p2}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object p2

    invoke-direct {p1, p2, v0}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 869
    iget-object p2, p0, Lcom/lostpixels/fieldservice/activities/territory/TerritoryTabFragment$9;->val$territory:Lcom/lostpixels/fieldservice/internal/ministry/Territory;

    invoke-virtual {p2}, Lcom/lostpixels/fieldservice/internal/ministry/Territory;->getId()J

    move-result-wide v0

    invoke-virtual {p1, p5, v0, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;J)Landroid/content/Intent;

    .line 870
    invoke-virtual {p1, p4, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 871
    iget-object p2, p0, Lcom/lostpixels/fieldservice/activities/territory/TerritoryTabFragment$9;->this$0:Lcom/lostpixels/fieldservice/activities/territory/TerritoryTabFragment;

    invoke-virtual {p2, p1, p3}, Landroidx/fragment/app/Fragment;->startActivityForResult(Landroid/content/Intent;I)V

    goto/16 :goto_4

    .line 855
    :pswitch_3
    iget-object p1, p0, Lcom/lostpixels/fieldservice/activities/territory/TerritoryTabFragment$9;->val$territory:Lcom/lostpixels/fieldservice/internal/ministry/Territory;

    invoke-virtual {p1}, Lcom/lostpixels/fieldservice/internal/ministry/Territory;->isHidden()Z

    move-result p2

    xor-int/2addr p2, v3

    invoke-virtual {p1, p2}, Lcom/lostpixels/fieldservice/internal/ministry/Territory;->hide(Z)V

    .line 856
    iget-object p1, p0, Lcom/lostpixels/fieldservice/activities/territory/TerritoryTabFragment$9;->this$0:Lcom/lostpixels/fieldservice/activities/territory/TerritoryTabFragment;

    iget-object p1, p1, Lcom/lostpixels/fieldservice/activities/territory/TerritoryTabFragment;->realm:Lio/realm/Realm;

    invoke-static {p1}, Lcom/lostpixels/fieldservice/internal/ministry/MinistryManager;->getInstance(Lio/realm/Realm;)Lcom/lostpixels/fieldservice/internal/ministry/MinistryManager;

    move-result-object p1

    iget-object p2, p0, Lcom/lostpixels/fieldservice/activities/territory/TerritoryTabFragment$9;->this$0:Lcom/lostpixels/fieldservice/activities/territory/TerritoryTabFragment;

    iget-object p2, p2, Lcom/lostpixels/fieldservice/activities/territory/TerritoryTabFragment;->realm:Lio/realm/Realm;

    iget-object p3, p0, Lcom/lostpixels/fieldservice/activities/territory/TerritoryTabFragment$9;->val$territory:Lcom/lostpixels/fieldservice/internal/ministry/Territory;

    invoke-virtual {p1, p2, p3}, Lcom/lostpixels/fieldservice/internal/ministry/MinistryManager;->updateTerritory(Lio/realm/Realm;Lcom/lostpixels/fieldservice/internal/ministry/Territory;)V

    .line 857
    iget-object p1, p0, Lcom/lostpixels/fieldservice/activities/territory/TerritoryTabFragment$9;->this$0:Lcom/lostpixels/fieldservice/activities/territory/TerritoryTabFragment;

    invoke-virtual {p1}, Lcom/lostpixels/fieldservice/activities/territory/TerritoryTabFragment;->updateList()V

    goto/16 :goto_4

    .line 729
    :pswitch_4
    iget-object p1, p0, Lcom/lostpixels/fieldservice/activities/territory/TerritoryTabFragment$9;->this$0:Lcom/lostpixels/fieldservice/activities/territory/TerritoryTabFragment;

    iget-object p2, p0, Lcom/lostpixels/fieldservice/activities/territory/TerritoryTabFragment$9;->val$territory:Lcom/lostpixels/fieldservice/internal/ministry/Territory;

    invoke-static {p1, p2}, Lcom/lostpixels/fieldservice/activities/territory/TerritoryTabFragment;->-$$Nest$mresetTerritory(Lcom/lostpixels/fieldservice/activities/territory/TerritoryTabFragment;Lcom/lostpixels/fieldservice/internal/ministry/Territory;)V

    goto/16 :goto_4

    .line 835
    :pswitch_5
    iget-object p1, p0, Lcom/lostpixels/fieldservice/activities/territory/TerritoryTabFragment$9;->val$territory:Lcom/lostpixels/fieldservice/internal/ministry/Territory;

    iget-object p2, p0, Lcom/lostpixels/fieldservice/activities/territory/TerritoryTabFragment$9;->this$0:Lcom/lostpixels/fieldservice/activities/territory/TerritoryTabFragment;

    invoke-virtual {p2}, Landroidx/fragment/app/Fragment;->requireContext()Landroid/content/Context;

    move-result-object p2

    invoke-static {p1, p2}, Lcom/lostpixels/fieldservice/helpfunctions/HelpFunctions;->getTerritoryCard(Lcom/lostpixels/fieldservice/internal/ministry/Territory;Landroid/content/Context;)Ljava/lang/String;

    move-result-object p1

    if-eqz p1, :cond_8

    .line 837
    new-instance p2, Ljava/io/File;

    invoke-direct {p2, p1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 838
    iget-object p1, p0, Lcom/lostpixels/fieldservice/activities/territory/TerritoryTabFragment$9;->this$0:Lcom/lostpixels/fieldservice/activities/territory/TerritoryTabFragment;

    invoke-virtual {p1}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object p1

    invoke-static {p1, p2}, Lcom/lostpixels/fieldservice/utils/ContentUriProvider;->getUriForFile(Landroid/content/Context;Ljava/io/File;)Landroid/net/Uri;

    move-result-object p1

    .line 842
    new-instance p2, Landroid/content/Intent;

    const-string p3, "android.intent.action.SEND"

    invoke-direct {p2, p3}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 843
    const-string p3, "image/jpg"

    invoke-virtual {p2, p3}, Landroid/content/Intent;->setType(Ljava/lang/String;)Landroid/content/Intent;

    .line 844
    const-string p3, "android.intent.extra.STREAM"

    invoke-virtual {p2, p3, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 845
    invoke-virtual {p2, v3}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 846
    iget-object p1, p0, Lcom/lostpixels/fieldservice/activities/territory/TerritoryTabFragment$9;->this$0:Lcom/lostpixels/fieldservice/activities/territory/TerritoryTabFragment;

    const p3, 0x7f1204d0

    invoke-virtual {p1, p3}, Landroidx/fragment/app/Fragment;->getString(I)Ljava/lang/String;

    move-result-object p3

    invoke-static {p2, p3}, Landroid/content/Intent;->createChooser(Landroid/content/Intent;Ljava/lang/CharSequence;)Landroid/content/Intent;

    move-result-object p2

    invoke-virtual {p1, p2}, Landroidx/fragment/app/Fragment;->startActivity(Landroid/content/Intent;)V

    goto/16 :goto_4

    .line 796
    :pswitch_6
    iget-object p1, p0, Lcom/lostpixels/fieldservice/activities/territory/TerritoryTabFragment$9;->this$0:Lcom/lostpixels/fieldservice/activities/territory/TerritoryTabFragment;

    const p3, 0x7f1201be

    invoke-virtual {p1, p3}, Landroidx/fragment/app/Fragment;->getString(I)Ljava/lang/String;

    move-result-object p1

    iget-object p3, p0, Lcom/lostpixels/fieldservice/activities/territory/TerritoryTabFragment$9;->this$0:Lcom/lostpixels/fieldservice/activities/territory/TerritoryTabFragment;

    const p4, 0x7f1201bd

    invoke-virtual {p3, p4}, Landroidx/fragment/app/Fragment;->getString(I)Ljava/lang/String;

    move-result-object p3

    new-array p2, p2, [Ljava/lang/CharSequence;

    aput-object p1, p2, v2

    aput-object p3, p2, v3

    .line 798
    new-instance p1, Landroidx/appcompat/app/AlertDialog$Builder;

    iget-object p3, p0, Lcom/lostpixels/fieldservice/activities/territory/TerritoryTabFragment$9;->this$0:Lcom/lostpixels/fieldservice/activities/territory/TerritoryTabFragment;

    invoke-virtual {p3}, Landroidx/fragment/app/Fragment;->requireActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object p3

    invoke-direct {p1, p3}, Landroidx/appcompat/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 799
    iget-object p3, p0, Lcom/lostpixels/fieldservice/activities/territory/TerritoryTabFragment$9;->this$0:Lcom/lostpixels/fieldservice/activities/territory/TerritoryTabFragment;

    const p4, 0x7f1201bc

    invoke-virtual {p3, p4}, Landroidx/fragment/app/Fragment;->getString(I)Ljava/lang/String;

    move-result-object p3

    invoke-virtual {p1, p3}, Landroidx/appcompat/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Landroidx/appcompat/app/AlertDialog$Builder;

    .line 800
    new-instance p3, Lcom/lostpixels/fieldservice/activities/territory/TerritoryTabFragment$9$3;

    invoke-direct {p3, p0}, Lcom/lostpixels/fieldservice/activities/territory/TerritoryTabFragment$9$3;-><init>(Lcom/lostpixels/fieldservice/activities/territory/TerritoryTabFragment$9;)V

    invoke-virtual {p1, p2, p3}, Landroidx/appcompat/app/AlertDialog$Builder;->setItems([Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroidx/appcompat/app/AlertDialog$Builder;

    .line 831
    invoke-virtual {p1}, Landroidx/appcompat/app/AlertDialog$Builder;->create()Landroidx/appcompat/app/AlertDialog;

    move-result-object p1

    .line 832
    invoke-virtual {p1}, Landroid/app/Dialog;->show()V

    goto/16 :goto_4

    .line 850
    :pswitch_7
    new-instance p1, Landroid/content/Intent;

    iget-object p2, p0, Lcom/lostpixels/fieldservice/activities/territory/TerritoryTabFragment$9;->this$0:Lcom/lostpixels/fieldservice/activities/territory/TerritoryTabFragment;

    invoke-virtual {p2}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object p2

    const-class p3, Lcom/lostpixels/fieldservice/activities/territory/dialogs/TerritoryOverviewDialog;

    invoke-direct {p1, p2, p3}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 851
    iget-object p2, p0, Lcom/lostpixels/fieldservice/activities/territory/TerritoryTabFragment$9;->val$territory:Lcom/lostpixels/fieldservice/internal/ministry/Territory;

    invoke-virtual {p2}, Lcom/lostpixels/fieldservice/internal/ministry/Territory;->getId()J

    move-result-wide p2

    const-string p4, "TerritoryID"

    invoke-virtual {p1, p4, p2, p3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;J)Landroid/content/Intent;

    .line 852
    iget-object p2, p0, Lcom/lostpixels/fieldservice/activities/territory/TerritoryTabFragment$9;->this$0:Lcom/lostpixels/fieldservice/activities/territory/TerritoryTabFragment;

    invoke-virtual {p2, p1}, Landroidx/fragment/app/Fragment;->startActivity(Landroid/content/Intent;)V

    goto/16 :goto_4

    .line 687
    :pswitch_8
    iget-object p1, p0, Lcom/lostpixels/fieldservice/activities/territory/TerritoryTabFragment$9;->val$territory:Lcom/lostpixels/fieldservice/internal/ministry/Territory;

    iget-object p2, p0, Lcom/lostpixels/fieldservice/activities/territory/TerritoryTabFragment$9;->this$0:Lcom/lostpixels/fieldservice/activities/territory/TerritoryTabFragment;

    invoke-virtual {p2}, Landroidx/fragment/app/Fragment;->requireContext()Landroid/content/Context;

    move-result-object p2

    invoke-static {p1, p2}, Lcom/lostpixels/fieldservice/helpfunctions/HelpFunctions;->getTerritoryCard(Lcom/lostpixels/fieldservice/internal/ministry/Territory;Landroid/content/Context;)Ljava/lang/String;

    move-result-object p1

    if-eqz p1, :cond_8

    .line 689
    new-instance p2, Ljava/io/File;

    invoke-direct {p2, p1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 690
    invoke-virtual {p2}, Ljava/io/File;->exists()Z

    move-result p3

    if-eqz p3, :cond_8

    .line 691
    new-instance p3, Landroid/content/Intent;

    invoke-direct {p3}, Landroid/content/Intent;-><init>()V

    .line 692
    invoke-virtual {p3, v1}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 693
    invoke-virtual {p3, v3}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 694
    invoke-static {p1}, Lcom/lostpixels/fieldservice/helpfunctions/HelpFunctions;->getMimeType(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 695
    iget-object p4, p0, Lcom/lostpixels/fieldservice/activities/territory/TerritoryTabFragment$9;->this$0:Lcom/lostpixels/fieldservice/activities/territory/TerritoryTabFragment;

    invoke-virtual {p4}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object p4

    invoke-static {p4, p2}, Lcom/lostpixels/fieldservice/utils/ContentUriProvider;->getUriForFile(Landroid/content/Context;Ljava/io/File;)Landroid/net/Uri;

    move-result-object p4

    .line 697
    iget-object p5, p0, Lcom/lostpixels/fieldservice/activities/territory/TerritoryTabFragment$9;->this$0:Lcom/lostpixels/fieldservice/activities/territory/TerritoryTabFragment;

    invoke-virtual {p5}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object p5

    invoke-virtual {p5}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object p5

    const/high16 v0, 0x10000

    invoke-virtual {p5, p3, v0}, Landroid/content/pm/PackageManager;->queryIntentActivities(Landroid/content/Intent;I)Ljava/util/List;

    move-result-object p5

    .line 698
    invoke-interface {p5}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p5

    :goto_2
    invoke-interface {p5}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_3

    invoke-interface {p5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/pm/ResolveInfo;

    .line 699
    iget-object v0, v0, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v0, v0, Landroid/content/pm/ActivityInfo;->packageName:Ljava/lang/String;

    .line 700
    iget-object v1, p0, Lcom/lostpixels/fieldservice/activities/territory/TerritoryTabFragment$9;->this$0:Lcom/lostpixels/fieldservice/activities/territory/TerritoryTabFragment;

    invoke-virtual {v1}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object v1

    const/4 v3, 0x3

    invoke-virtual {v1, v0, p4, v3}, Landroid/content/Context;->grantUriPermission(Ljava/lang/String;Landroid/net/Uri;I)V

    goto :goto_2

    .line 703
    :cond_3
    invoke-virtual {p3, p4, p1}, Landroid/content/Intent;->setDataAndType(Landroid/net/Uri;Ljava/lang/String;)Landroid/content/Intent;

    .line 708
    :try_start_1
    iget-object p4, p0, Lcom/lostpixels/fieldservice/activities/territory/TerritoryTabFragment$9;->this$0:Lcom/lostpixels/fieldservice/activities/territory/TerritoryTabFragment;

    invoke-virtual {p4, p3}, Landroidx/fragment/app/Fragment;->startActivity(Landroid/content/Intent;)V
    :try_end_1
    .catch Landroid/content/ActivityNotFoundException; {:try_start_1 .. :try_end_1} :catch_1

    goto/16 :goto_4

    :catch_1
    nop

    if-nez p1, :cond_4

    .line 711
    const-string p1, ""

    .line 712
    :cond_4
    const-string p4, "image/"

    invoke-virtual {p1, p4}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result p4

    if-eqz p4, :cond_5

    .line 713
    const-string p1, "image/*"

    .line 714
    :cond_5
    iget-object p4, p0, Lcom/lostpixels/fieldservice/activities/territory/TerritoryTabFragment$9;->this$0:Lcom/lostpixels/fieldservice/activities/territory/TerritoryTabFragment;

    invoke-virtual {p4}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object p4

    invoke-static {p4, p2}, Lcom/lostpixels/fieldservice/utils/ContentUriProvider;->getUriForFile(Landroid/content/Context;Ljava/io/File;)Landroid/net/Uri;

    move-result-object p2

    .line 716
    invoke-virtual {p3, p2, p1}, Landroid/content/Intent;->setDataAndType(Landroid/net/Uri;Ljava/lang/String;)Landroid/content/Intent;

    .line 719
    :try_start_2
    iget-object p1, p0, Lcom/lostpixels/fieldservice/activities/territory/TerritoryTabFragment$9;->this$0:Lcom/lostpixels/fieldservice/activities/territory/TerritoryTabFragment;

    invoke-virtual {p1, p3}, Landroidx/fragment/app/Fragment;->startActivity(Landroid/content/Intent;)V
    :try_end_2
    .catch Landroid/content/ActivityNotFoundException; {:try_start_2 .. :try_end_2} :catch_2

    goto/16 :goto_4

    .line 721
    :catch_2
    iget-object p1, p0, Lcom/lostpixels/fieldservice/activities/territory/TerritoryTabFragment$9;->this$0:Lcom/lostpixels/fieldservice/activities/territory/TerritoryTabFragment;

    invoke-virtual {p1}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object p1

    iget-object p2, p0, Lcom/lostpixels/fieldservice/activities/territory/TerritoryTabFragment$9;->this$0:Lcom/lostpixels/fieldservice/activities/territory/TerritoryTabFragment;

    const p3, 0x7f1200bb

    invoke-virtual {p2, p3}, Landroidx/fragment/app/Fragment;->getString(I)Ljava/lang/String;

    move-result-object p2

    invoke-static {p1, p2, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object p1

    invoke-virtual {p1}, Landroid/widget/Toast;->show()V

    goto/16 :goto_4

    .line 733
    :pswitch_9
    iget-object p1, p0, Lcom/lostpixels/fieldservice/activities/territory/TerritoryTabFragment$9;->this$0:Lcom/lostpixels/fieldservice/activities/territory/TerritoryTabFragment;

    iget-object p1, p1, Lcom/lostpixels/fieldservice/activities/territory/TerritoryTabFragment;->realm:Lio/realm/Realm;

    iget-object p2, p0, Lcom/lostpixels/fieldservice/activities/territory/TerritoryTabFragment$9;->val$territory:Lcom/lostpixels/fieldservice/internal/ministry/Territory;

    invoke-static {p1, p2}, Lcom/lostpixels/fieldservice/helpfunctions/HelpFunctions;->hasInterestedPersons(Lio/realm/Realm;Lcom/lostpixels/fieldservice/internal/ministry/Territory;)Z

    move-result p1

    if-nez p1, :cond_7

    iget-object p1, p0, Lcom/lostpixels/fieldservice/activities/territory/TerritoryTabFragment$9;->val$territory:Lcom/lostpixels/fieldservice/internal/ministry/Territory;

    invoke-static {p1}, Lcom/lostpixels/fieldservice/helpfunctions/HelpFunctions;->hasTerritoryHelperLink(Lcom/lostpixels/fieldservice/internal/ministry/Territory;)Z

    move-result p1

    if-eqz p1, :cond_6

    goto :goto_3

    .line 739
    :cond_6
    new-instance p1, Landroidx/appcompat/app/AlertDialog$Builder;

    iget-object p2, p0, Lcom/lostpixels/fieldservice/activities/territory/TerritoryTabFragment$9;->this$0:Lcom/lostpixels/fieldservice/activities/territory/TerritoryTabFragment;

    invoke-virtual {p2}, Landroidx/fragment/app/Fragment;->requireActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object p2

    invoke-direct {p1, p2}, Landroidx/appcompat/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 740
    iget-object p2, p0, Lcom/lostpixels/fieldservice/activities/territory/TerritoryTabFragment$9;->this$0:Lcom/lostpixels/fieldservice/activities/territory/TerritoryTabFragment;

    const p3, 0x7f120156

    invoke-virtual {p2, p3}, Landroidx/fragment/app/Fragment;->getString(I)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Landroidx/appcompat/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroidx/appcompat/app/AlertDialog$Builder;

    move-result-object p2

    .line 741
    invoke-virtual {p2, v2}, Landroidx/appcompat/app/AlertDialog$Builder;->setCancelable(Z)Landroidx/appcompat/app/AlertDialog$Builder;

    move-result-object p2

    iget-object p3, p0, Lcom/lostpixels/fieldservice/activities/territory/TerritoryTabFragment$9;->this$0:Lcom/lostpixels/fieldservice/activities/territory/TerritoryTabFragment;

    const p4, 0x7f120158

    .line 742
    invoke-virtual {p3, p4}, Landroidx/fragment/app/Fragment;->getString(I)Ljava/lang/String;

    move-result-object p3

    new-instance p4, Lcom/lostpixels/fieldservice/activities/territory/TerritoryTabFragment$9$2;

    invoke-direct {p4, p0}, Lcom/lostpixels/fieldservice/activities/territory/TerritoryTabFragment$9$2;-><init>(Lcom/lostpixels/fieldservice/activities/territory/TerritoryTabFragment$9;)V

    invoke-virtual {p2, p3, p4}, Landroidx/appcompat/app/AlertDialog$Builder;->setPositiveButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroidx/appcompat/app/AlertDialog$Builder;

    move-result-object p2

    iget-object p3, p0, Lcom/lostpixels/fieldservice/activities/territory/TerritoryTabFragment$9;->this$0:Lcom/lostpixels/fieldservice/activities/territory/TerritoryTabFragment;

    const p4, 0x7f120152

    .line 768
    invoke-virtual {p3, p4}, Landroidx/fragment/app/Fragment;->getString(I)Ljava/lang/String;

    move-result-object p3

    new-instance p4, Lcom/lostpixels/fieldservice/activities/territory/TerritoryTabFragment$9$1;

    invoke-direct {p4, p0}, Lcom/lostpixels/fieldservice/activities/territory/TerritoryTabFragment$9$1;-><init>(Lcom/lostpixels/fieldservice/activities/territory/TerritoryTabFragment$9;)V

    invoke-virtual {p2, p3, p4}, Landroidx/appcompat/app/AlertDialog$Builder;->setNegativeButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroidx/appcompat/app/AlertDialog$Builder;

    move-result-object p2

    iget-object p3, p0, Lcom/lostpixels/fieldservice/activities/territory/TerritoryTabFragment$9;->this$0:Lcom/lostpixels/fieldservice/activities/territory/TerritoryTabFragment;

    const p4, 0x7f120151

    .line 772
    invoke-virtual {p3, p4}, Landroidx/fragment/app/Fragment;->getString(I)Ljava/lang/String;

    move-result-object p3

    invoke-virtual {p2, p3}, Landroidx/appcompat/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Landroidx/appcompat/app/AlertDialog$Builder;

    .line 774
    invoke-virtual {p1}, Landroidx/appcompat/app/AlertDialog$Builder;->create()Landroidx/appcompat/app/AlertDialog;

    move-result-object p1

    .line 775
    invoke-virtual {p1}, Landroid/app/Dialog;->show()V

    goto :goto_4

    .line 734
    :cond_7
    :goto_3
    new-instance p1, Landroid/content/Intent;

    iget-object p2, p0, Lcom/lostpixels/fieldservice/activities/territory/TerritoryTabFragment$9;->this$0:Lcom/lostpixels/fieldservice/activities/territory/TerritoryTabFragment;

    invoke-virtual {p2}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object p2

    invoke-direct {p1, p2, v0}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 735
    iget-object p2, p0, Lcom/lostpixels/fieldservice/activities/territory/TerritoryTabFragment$9;->val$territory:Lcom/lostpixels/fieldservice/internal/ministry/Territory;

    invoke-virtual {p2}, Lcom/lostpixels/fieldservice/internal/ministry/Territory;->getId()J

    move-result-wide v0

    invoke-virtual {p1, p5, v0, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;J)Landroid/content/Intent;

    .line 736
    invoke-virtual {p1, p4, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 737
    iget-object p2, p0, Lcom/lostpixels/fieldservice/activities/territory/TerritoryTabFragment$9;->this$0:Lcom/lostpixels/fieldservice/activities/territory/TerritoryTabFragment;

    invoke-virtual {p2, p1, p3}, Landroidx/fragment/app/Fragment;->startActivityForResult(Landroid/content/Intent;I)V

    goto :goto_4

    .line 681
    :pswitch_a
    new-instance p1, Landroid/content/Intent;

    iget-object p2, p0, Lcom/lostpixels/fieldservice/activities/territory/TerritoryTabFragment$9;->this$0:Lcom/lostpixels/fieldservice/activities/territory/TerritoryTabFragment;

    invoke-virtual {p2}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object p2

    const-class p3, Lcom/lostpixels/fieldservice/activities/territory/TerritoryAdder;

    invoke-direct {p1, p2, p3}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 682
    const-string p2, "IsEditing"

    invoke-virtual {p1, p2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 683
    iget-object p2, p0, Lcom/lostpixels/fieldservice/activities/territory/TerritoryTabFragment$9;->val$territory:Lcom/lostpixels/fieldservice/internal/ministry/Territory;

    invoke-virtual {p2}, Lcom/lostpixels/fieldservice/internal/ministry/Territory;->getId()J

    move-result-wide p2

    const-string p4, "Territory"

    invoke-virtual {p1, p4, p2, p3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;J)Landroid/content/Intent;

    .line 684
    iget-object p2, p0, Lcom/lostpixels/fieldservice/activities/territory/TerritoryTabFragment$9;->this$0:Lcom/lostpixels/fieldservice/activities/territory/TerritoryTabFragment;

    invoke-virtual {p2, p1, v2}, Landroidx/fragment/app/Fragment;->startActivityForResult(Landroid/content/Intent;I)V

    :cond_8
    :goto_4
    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_a
        :pswitch_9
        :pswitch_8
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_0
        :pswitch_3
        :pswitch_2
        :pswitch_1
    .end packed-switch
.end method
