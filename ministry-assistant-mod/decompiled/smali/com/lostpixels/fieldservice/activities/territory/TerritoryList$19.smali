.class Lcom/lostpixels/fieldservice/activities/territory/TerritoryList$19;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/widget/AdapterView$OnItemClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/lostpixels/fieldservice/activities/territory/TerritoryList;->createLongClickDialog(Lcom/lostpixels/fieldservice/internal/ministry/Visit;Lcom/lostpixels/fieldservice/internal/ministry/Street;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/lostpixels/fieldservice/activities/territory/TerritoryList;

.field final synthetic val$alertDialog:Landroidx/appcompat/app/AlertDialog;

.field final synthetic val$menuItems:[Ljava/lang/String;

.field final synthetic val$street:Lcom/lostpixels/fieldservice/internal/ministry/Street;

.field final synthetic val$visit:Lcom/lostpixels/fieldservice/internal/ministry/Visit;


# direct methods
.method constructor <init>(Lcom/lostpixels/fieldservice/activities/territory/TerritoryList;Landroidx/appcompat/app/AlertDialog;Lcom/lostpixels/fieldservice/internal/ministry/Visit;[Ljava/lang/String;Lcom/lostpixels/fieldservice/internal/ministry/Street;)V
    .locals 0

    .line 2332
    iput-object p1, p0, Lcom/lostpixels/fieldservice/activities/territory/TerritoryList$19;->this$0:Lcom/lostpixels/fieldservice/activities/territory/TerritoryList;

    iput-object p2, p0, Lcom/lostpixels/fieldservice/activities/territory/TerritoryList$19;->val$alertDialog:Landroidx/appcompat/app/AlertDialog;

    iput-object p3, p0, Lcom/lostpixels/fieldservice/activities/territory/TerritoryList$19;->val$visit:Lcom/lostpixels/fieldservice/internal/ministry/Visit;

    iput-object p4, p0, Lcom/lostpixels/fieldservice/activities/territory/TerritoryList$19;->val$menuItems:[Ljava/lang/String;

    iput-object p5, p0, Lcom/lostpixels/fieldservice/activities/territory/TerritoryList$19;->val$street:Lcom/lostpixels/fieldservice/internal/ministry/Street;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onItemClick(Landroid/widget/AdapterView;Landroid/view/View;IJ)V
    .locals 10

    long-to-int p1, p4

    const p2, 0x7f0902a4

    const p3, 0x7f120160

    const p4, 0x7f0c0091

    .line 2335
    const-class p5, Lcom/lostpixels/fieldservice/activities/territory/dialogs/RuralTerritoryReorder;

    const/16 v0, 0x10

    const/16 v1, 0x11

    const-wide/16 v2, 0x0

    const v4, 0x7f0900f5

    const/4 v5, 0x5

    const/4 v6, 0x0

    const/4 v7, 0x3

    const/4 v8, 0x1

    const/4 v9, 0x0

    packed-switch p1, :pswitch_data_0

    :pswitch_0
    goto/16 :goto_5

    .line 2400
    :pswitch_1
    iget-object p1, p0, Lcom/lostpixels/fieldservice/activities/territory/TerritoryList$19;->val$visit:Lcom/lostpixels/fieldservice/internal/ministry/Visit;

    invoke-virtual {p1, v1}, Lcom/lostpixels/fieldservice/internal/ministry/Visit;->setType(I)V

    .line 2401
    iget-object p1, p0, Lcom/lostpixels/fieldservice/activities/territory/TerritoryList$19;->this$0:Lcom/lostpixels/fieldservice/activities/territory/TerritoryList;

    iget-object p2, p0, Lcom/lostpixels/fieldservice/activities/territory/TerritoryList$19;->val$visit:Lcom/lostpixels/fieldservice/internal/ministry/Visit;

    const p3, 0x7f120485

    invoke-virtual {p1, p3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p3

    invoke-static {p1, p2, p3, v9, v9}, Lcom/lostpixels/fieldservice/activities/territory/TerritoryList;->-$$Nest$mshowUndo(Lcom/lostpixels/fieldservice/activities/territory/TerritoryList;Lcom/lostpixels/fieldservice/internal/ministry/Visit;Ljava/lang/String;ZZ)V

    goto/16 :goto_5

    .line 2347
    :pswitch_2
    :try_start_0
    iget-object p1, p0, Lcom/lostpixels/fieldservice/activities/territory/TerritoryList$19;->val$alertDialog:Landroidx/appcompat/app/AlertDialog;

    invoke-virtual {p1}, Landroid/app/Dialog;->isShowing()Z

    move-result p1

    if-eqz p1, :cond_0

    .line 2348
    iget-object p1, p0, Lcom/lostpixels/fieldservice/activities/territory/TerritoryList$19;->val$alertDialog:Landroidx/appcompat/app/AlertDialog;

    invoke-virtual {p1}, Landroidx/appcompat/app/AppCompatDialog;->dismiss()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 2352
    :catch_0
    :cond_0
    iget-object p1, p0, Lcom/lostpixels/fieldservice/activities/territory/TerritoryList$19;->this$0:Lcom/lostpixels/fieldservice/activities/territory/TerritoryList;

    iget-object p2, p0, Lcom/lostpixels/fieldservice/activities/territory/TerritoryList$19;->val$visit:Lcom/lostpixels/fieldservice/internal/ministry/Visit;

    invoke-virtual {p1, p2, v9}, Lcom/lostpixels/fieldservice/activities/territory/TerritoryList;->openCallVisitDialog(Lcom/lostpixels/fieldservice/internal/ministry/Visit;Z)V

    goto/16 :goto_5

    .line 2396
    :pswitch_3
    iget-object p1, p0, Lcom/lostpixels/fieldservice/activities/territory/TerritoryList$19;->val$visit:Lcom/lostpixels/fieldservice/internal/ministry/Visit;

    invoke-virtual {p1, v0}, Lcom/lostpixels/fieldservice/internal/ministry/Visit;->setType(I)V

    .line 2397
    iget-object p1, p0, Lcom/lostpixels/fieldservice/activities/territory/TerritoryList$19;->this$0:Lcom/lostpixels/fieldservice/activities/territory/TerritoryList;

    iget-object p2, p0, Lcom/lostpixels/fieldservice/activities/territory/TerritoryList$19;->val$visit:Lcom/lostpixels/fieldservice/internal/ministry/Visit;

    const p3, 0x7f120363

    invoke-virtual {p1, p3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p3

    invoke-static {p1, p2, p3, v9, v9}, Lcom/lostpixels/fieldservice/activities/territory/TerritoryList;->-$$Nest$mshowUndo(Lcom/lostpixels/fieldservice/activities/territory/TerritoryList;Lcom/lostpixels/fieldservice/internal/ministry/Visit;Ljava/lang/String;ZZ)V

    goto/16 :goto_5

    .line 2537
    :pswitch_4
    new-instance p1, Lcom/lostpixels/fieldservice/activities/territory/dialogs/CallHistoryDlg;

    invoke-direct {p1}, Lcom/lostpixels/fieldservice/activities/territory/dialogs/CallHistoryDlg;-><init>()V

    .line 2538
    iget-object p2, p0, Lcom/lostpixels/fieldservice/activities/territory/TerritoryList$19;->val$visit:Lcom/lostpixels/fieldservice/internal/ministry/Visit;

    invoke-virtual {p1, p2}, Lcom/lostpixels/fieldservice/activities/territory/dialogs/CallHistoryDlg;->setVisit(Lcom/lostpixels/fieldservice/internal/ministry/Visit;)V

    .line 2539
    iget-object p2, p0, Lcom/lostpixels/fieldservice/activities/territory/TerritoryList$19;->this$0:Lcom/lostpixels/fieldservice/activities/territory/TerritoryList;

    invoke-virtual {p2}, Landroidx/fragment/app/FragmentActivity;->getSupportFragmentManager()Landroidx/fragment/app/FragmentManager;

    move-result-object p2

    .line 2540
    const-string p3, "fragment_show_history"

    invoke-virtual {p1, p2, p3}, Landroidx/fragment/app/DialogFragment;->show(Landroidx/fragment/app/FragmentManager;Ljava/lang/String;)V

    .line 2543
    :try_start_1
    iget-object p1, p0, Lcom/lostpixels/fieldservice/activities/territory/TerritoryList$19;->val$alertDialog:Landroidx/appcompat/app/AlertDialog;

    invoke-virtual {p1}, Landroid/app/Dialog;->isShowing()Z

    move-result p1

    if-eqz p1, :cond_12

    .line 2544
    iget-object p1, p0, Lcom/lostpixels/fieldservice/activities/territory/TerritoryList$19;->val$alertDialog:Landroidx/appcompat/app/AlertDialog;

    invoke-virtual {p1}, Landroidx/appcompat/app/AppCompatDialog;->dismiss()V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    goto/16 :goto_6

    :catch_1
    nop

    goto/16 :goto_6

    .line 2412
    :pswitch_5
    iget-object p1, p0, Lcom/lostpixels/fieldservice/activities/territory/TerritoryList$19;->val$visit:Lcom/lostpixels/fieldservice/internal/ministry/Visit;

    const/16 p2, 0xf

    invoke-virtual {p1, p2}, Lcom/lostpixels/fieldservice/internal/ministry/Visit;->setType(I)V

    .line 2413
    iget-object p1, p0, Lcom/lostpixels/fieldservice/activities/territory/TerritoryList$19;->this$0:Lcom/lostpixels/fieldservice/activities/territory/TerritoryList;

    iget-object p2, p0, Lcom/lostpixels/fieldservice/activities/territory/TerritoryList$19;->val$visit:Lcom/lostpixels/fieldservice/internal/ministry/Visit;

    const p3, 0x7f12045d

    invoke-virtual {p1, p3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p3

    invoke-static {p1, p2, p3, v9, v9}, Lcom/lostpixels/fieldservice/activities/territory/TerritoryList;->-$$Nest$mshowUndo(Lcom/lostpixels/fieldservice/activities/territory/TerritoryList;Lcom/lostpixels/fieldservice/internal/ministry/Visit;Ljava/lang/String;ZZ)V

    goto/16 :goto_5

    .line 2430
    :pswitch_6
    new-instance p1, Lcom/lostpixels/fieldservice/activities/visits/AddPublicationDlg;

    iget-object p2, p0, Lcom/lostpixels/fieldservice/activities/territory/TerritoryList$19;->this$0:Lcom/lostpixels/fieldservice/activities/territory/TerritoryList;

    new-instance p3, Lcom/lostpixels/fieldservice/activities/territory/TerritoryList$19$1;

    invoke-direct {p3, p0}, Lcom/lostpixels/fieldservice/activities/territory/TerritoryList$19$1;-><init>(Lcom/lostpixels/fieldservice/activities/territory/TerritoryList$19;)V

    const/16 p4, 0x23

    invoke-direct {p1, p2, v7, p3, p4}, Lcom/lostpixels/fieldservice/activities/visits/AddPublicationDlg;-><init>(Landroidx/fragment/app/FragmentActivity;ILcom/lostpixels/fieldservice/activities/visits/AddPublicationDlg$OnAddPublicationListener;I)V

    .line 2473
    invoke-virtual {p1}, Lcom/lostpixels/fieldservice/activities/visits/AddPublicationDlg;->showCommentField()V

    .line 2474
    invoke-virtual {p1}, Landroid/app/Dialog;->show()V

    goto/16 :goto_5

    .line 2775
    :pswitch_7
    new-instance p1, Landroid/content/Intent;

    iget-object p2, p0, Lcom/lostpixels/fieldservice/activities/territory/TerritoryList$19;->this$0:Lcom/lostpixels/fieldservice/activities/territory/TerritoryList;

    invoke-direct {p1, p2, p5}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 2776
    iget-object p2, p0, Lcom/lostpixels/fieldservice/activities/territory/TerritoryList$19;->val$visit:Lcom/lostpixels/fieldservice/internal/ministry/Visit;

    invoke-virtual {p2}, Lcom/lostpixels/fieldservice/internal/ministry/Visit;->getParent()Lcom/lostpixels/fieldservice/internal/ministry/Address;

    move-result-object p2

    const-string p3, "Address"

    invoke-virtual {p1, p3, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 2777
    iget-object p2, p0, Lcom/lostpixels/fieldservice/activities/territory/TerritoryList$19;->this$0:Lcom/lostpixels/fieldservice/activities/territory/TerritoryList;

    invoke-virtual {p2, p1, v5}, Landroidx/activity/ComponentActivity;->startActivityForResult(Landroid/content/Intent;I)V

    .line 2779
    :try_start_2
    iget-object p1, p0, Lcom/lostpixels/fieldservice/activities/territory/TerritoryList$19;->val$alertDialog:Landroidx/appcompat/app/AlertDialog;

    invoke-virtual {p1}, Landroid/app/Dialog;->isShowing()Z

    move-result p1

    if-eqz p1, :cond_11

    .line 2780
    iget-object p1, p0, Lcom/lostpixels/fieldservice/activities/territory/TerritoryList$19;->val$alertDialog:Landroidx/appcompat/app/AlertDialog;

    invoke-virtual {p1}, Landroidx/appcompat/app/AppCompatDialog;->dismiss()V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_9

    goto/16 :goto_5

    .line 2623
    :pswitch_8
    new-instance p1, Landroid/app/Dialog;

    iget-object p5, p0, Lcom/lostpixels/fieldservice/activities/territory/TerritoryList$19;->this$0:Lcom/lostpixels/fieldservice/activities/territory/TerritoryList;

    invoke-direct {p1, p5}, Landroid/app/Dialog;-><init>(Landroid/content/Context;)V

    .line 2624
    invoke-virtual {p1, p4}, Landroid/app/Dialog;->setContentView(I)V

    .line 2625
    iget-object p4, p0, Lcom/lostpixels/fieldservice/activities/territory/TerritoryList$19;->this$0:Lcom/lostpixels/fieldservice/activities/territory/TerritoryList;

    invoke-virtual {p4, p3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p3

    invoke-virtual {p1, p3}, Landroid/app/Dialog;->setTitle(Ljava/lang/CharSequence;)V

    .line 2627
    invoke-virtual {p1, p2}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Landroid/widget/EditText;

    .line 2628
    iget-object p3, p0, Lcom/lostpixels/fieldservice/activities/territory/TerritoryList$19;->val$visit:Lcom/lostpixels/fieldservice/internal/ministry/Visit;

    invoke-virtual {p3}, Lcom/lostpixels/fieldservice/internal/ministry/Visit;->getParent()Lcom/lostpixels/fieldservice/internal/ministry/Address;

    move-result-object p3

    invoke-virtual {p3}, Lcom/lostpixels/fieldservice/internal/ministry/Address;->getName()Ljava/lang/String;

    move-result-object p3

    invoke-virtual {p2, p3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 2629
    invoke-virtual {p1, v4}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    move-result-object p3

    check-cast p3, Landroid/widget/Button;

    .line 2630
    new-instance p4, Lcom/lostpixels/fieldservice/activities/territory/TerritoryList$19$3;

    invoke-direct {p4, p0, p2, p1}, Lcom/lostpixels/fieldservice/activities/territory/TerritoryList$19$3;-><init>(Lcom/lostpixels/fieldservice/activities/territory/TerritoryList$19;Landroid/widget/EditText;Landroid/app/Dialog;)V

    invoke-virtual {p3, p4}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 2656
    :try_start_3
    iget-object p2, p0, Lcom/lostpixels/fieldservice/activities/territory/TerritoryList$19;->val$alertDialog:Landroidx/appcompat/app/AlertDialog;

    invoke-virtual {p2}, Landroidx/appcompat/app/AppCompatDialog;->dismiss()V
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_2

    .line 2661
    :catch_2
    invoke-virtual {p1}, Landroid/app/Dialog;->show()V

    goto/16 :goto_6

    .line 2801
    :pswitch_9
    iget-object p1, p0, Lcom/lostpixels/fieldservice/activities/territory/TerritoryList$19;->this$0:Lcom/lostpixels/fieldservice/activities/territory/TerritoryList;

    iget-object p2, p0, Lcom/lostpixels/fieldservice/activities/territory/TerritoryList$19;->val$street:Lcom/lostpixels/fieldservice/internal/ministry/Street;

    invoke-virtual {p2}, Lcom/lostpixels/fieldservice/internal/ministry/Street;->getName()Ljava/lang/String;

    move-result-object p2

    iget-object p3, p0, Lcom/lostpixels/fieldservice/activities/territory/TerritoryList$19;->val$visit:Lcom/lostpixels/fieldservice/internal/ministry/Visit;

    invoke-virtual {p3}, Lcom/lostpixels/fieldservice/internal/ministry/Visit;->getParent()Lcom/lostpixels/fieldservice/internal/ministry/Address;

    move-result-object p3

    invoke-virtual {p3}, Lcom/lostpixels/fieldservice/internal/ministry/Address;->getName()Ljava/lang/String;

    move-result-object p3

    iget-object p4, p0, Lcom/lostpixels/fieldservice/activities/territory/TerritoryList$19;->val$visit:Lcom/lostpixels/fieldservice/internal/ministry/Visit;

    iget-object p5, p0, Lcom/lostpixels/fieldservice/activities/territory/TerritoryList$19;->this$0:Lcom/lostpixels/fieldservice/activities/territory/TerritoryList;

    invoke-static {p5}, Lcom/lostpixels/fieldservice/activities/territory/TerritoryList;->-$$Nest$fgetmTerritory(Lcom/lostpixels/fieldservice/activities/territory/TerritoryList;)Lcom/lostpixels/fieldservice/internal/ministry/Territory;

    move-result-object p5

    invoke-static {p5}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    invoke-static {p1, p2, p3, p4, p5}, Lcom/lostpixels/fieldservice/activities/territory/TerritoryList;->-$$Nest$mopenBuildingDialog(Lcom/lostpixels/fieldservice/activities/territory/TerritoryList;Ljava/lang/String;Ljava/lang/String;Lcom/lostpixels/fieldservice/internal/ministry/Visit;Lcom/lostpixels/fieldservice/internal/ministry/Territory;)V

    goto/16 :goto_5

    .line 2418
    :pswitch_a
    :try_start_4
    iget-object p1, p0, Lcom/lostpixels/fieldservice/activities/territory/TerritoryList$19;->val$alertDialog:Landroidx/appcompat/app/AlertDialog;

    invoke-virtual {p1}, Landroid/app/Dialog;->isShowing()Z

    move-result p1

    if-eqz p1, :cond_1

    .line 2419
    iget-object p1, p0, Lcom/lostpixels/fieldservice/activities/territory/TerritoryList$19;->val$alertDialog:Landroidx/appcompat/app/AlertDialog;

    invoke-virtual {p1}, Landroidx/appcompat/app/AppCompatDialog;->dismiss()V
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_3

    goto :goto_0

    :catch_3
    nop

    .line 2423
    :cond_1
    :goto_0
    iget-object p1, p0, Lcom/lostpixels/fieldservice/activities/territory/TerritoryList$19;->this$0:Lcom/lostpixels/fieldservice/activities/territory/TerritoryList;

    invoke-static {p1}, Lcom/lostpixels/fieldservice/activities/territory/TerritoryList;->access$2300(Lcom/lostpixels/fieldservice/activities/territory/TerritoryList;)Lio/realm/Realm;

    move-result-object p1

    invoke-static {p1}, Lcom/lostpixels/fieldservice/internal/ministry/MinistryManager;->getInstance(Lio/realm/Realm;)Lcom/lostpixels/fieldservice/internal/ministry/MinistryManager;

    move-result-object p1

    iget-object p2, p0, Lcom/lostpixels/fieldservice/activities/territory/TerritoryList$19;->this$0:Lcom/lostpixels/fieldservice/activities/territory/TerritoryList;

    invoke-static {p2}, Lcom/lostpixels/fieldservice/activities/territory/TerritoryList;->access$2200(Lcom/lostpixels/fieldservice/activities/territory/TerritoryList;)Lio/realm/Realm;

    move-result-object p2

    iget-object p3, p0, Lcom/lostpixels/fieldservice/activities/territory/TerritoryList$19;->val$visit:Lcom/lostpixels/fieldservice/internal/ministry/Visit;

    invoke-virtual {p3}, Lcom/lostpixels/fieldservice/internal/ministry/Visit;->getHouseHolder()J

    move-result-wide p3

    invoke-virtual {p1, p2, p3, p4}, Lcom/lostpixels/fieldservice/internal/ministry/MinistryManager;->getPerson(Lio/realm/Realm;J)Lcom/lostpixels/fieldservice/internal/ministry/Person;

    move-result-object p1

    if-eqz p1, :cond_12

    .line 2425
    invoke-virtual {p1}, Lcom/lostpixels/fieldservice/internal/ministry/Person;->isPinnedToFront()Z

    move-result p2

    xor-int/2addr p2, v8

    invoke-virtual {p1, p2}, Lcom/lostpixels/fieldservice/internal/ministry/Person;->setPinnedToFront(Z)V

    .line 2426
    invoke-static {}, Lcom/lostpixels/fieldservice/ui/nowcards/NowCardListCreator;->resetPinnedVisits()V

    goto/16 :goto_6

    .line 2786
    :pswitch_b
    iget-object p1, p0, Lcom/lostpixels/fieldservice/activities/territory/TerritoryList$19;->val$visit:Lcom/lostpixels/fieldservice/internal/ministry/Visit;

    invoke-virtual {p1}, Lcom/lostpixels/fieldservice/internal/ministry/Visit;->getParent()Lcom/lostpixels/fieldservice/internal/ministry/Address;

    move-result-object p1

    invoke-virtual {p1}, Lcom/lostpixels/fieldservice/internal/ministry/Address;->isBuilding()Z

    move-result p1

    if-eqz p1, :cond_2

    .line 2787
    iget-object p1, p0, Lcom/lostpixels/fieldservice/activities/territory/TerritoryList$19;->val$visit:Lcom/lostpixels/fieldservice/internal/ministry/Visit;

    invoke-virtual {p1}, Lcom/lostpixels/fieldservice/internal/ministry/Visit;->getParent()Lcom/lostpixels/fieldservice/internal/ministry/Address;

    move-result-object p1

    .line 2788
    invoke-virtual {p1}, Lcom/lostpixels/fieldservice/internal/ministry/Address;->getVisits()Ljava/util/List;

    move-result-object p2

    iget-object p3, p0, Lcom/lostpixels/fieldservice/activities/territory/TerritoryList$19;->val$visit:Lcom/lostpixels/fieldservice/internal/ministry/Visit;

    invoke-interface {p2, p3}, Ljava/util/List;->indexOf(Ljava/lang/Object;)I

    move-result p2

    if-ltz p2, :cond_3

    add-int/2addr p2, v8

    .line 2790
    iget-object p3, p0, Lcom/lostpixels/fieldservice/activities/territory/TerritoryList$19;->val$visit:Lcom/lostpixels/fieldservice/internal/ministry/Visit;

    invoke-virtual {p3}, Lcom/lostpixels/fieldservice/internal/ministry/Visit;->duplicate()Lcom/lostpixels/fieldservice/internal/ministry/Visit;

    move-result-object p3

    invoke-virtual {p1, p2, p3}, Lcom/lostpixels/fieldservice/internal/ministry/Address;->insertVisit(ILcom/lostpixels/fieldservice/internal/ministry/Visit;)V

    goto :goto_1

    .line 2792
    :cond_2
    iget-object p1, p0, Lcom/lostpixels/fieldservice/activities/territory/TerritoryList$19;->val$visit:Lcom/lostpixels/fieldservice/internal/ministry/Visit;

    invoke-virtual {p1}, Lcom/lostpixels/fieldservice/internal/ministry/Visit;->getParent()Lcom/lostpixels/fieldservice/internal/ministry/Address;

    move-result-object p1

    invoke-virtual {p1}, Lcom/lostpixels/fieldservice/internal/ministry/Address;->duplicate()Lcom/lostpixels/fieldservice/internal/ministry/Address;

    move-result-object p1

    .line 2793
    iget-object p2, p0, Lcom/lostpixels/fieldservice/activities/territory/TerritoryList$19;->val$street:Lcom/lostpixels/fieldservice/internal/ministry/Street;

    invoke-virtual {p2}, Lcom/lostpixels/fieldservice/internal/ministry/Street;->getAddresses()Ljava/util/List;

    move-result-object p2

    iget-object p3, p0, Lcom/lostpixels/fieldservice/activities/territory/TerritoryList$19;->val$visit:Lcom/lostpixels/fieldservice/internal/ministry/Visit;

    invoke-virtual {p3}, Lcom/lostpixels/fieldservice/internal/ministry/Visit;->getParent()Lcom/lostpixels/fieldservice/internal/ministry/Address;

    move-result-object p3

    invoke-interface {p2, p3}, Ljava/util/List;->indexOf(Ljava/lang/Object;)I

    move-result p2

    if-ltz p2, :cond_3

    .line 2795
    iget-object p3, p0, Lcom/lostpixels/fieldservice/activities/territory/TerritoryList$19;->val$street:Lcom/lostpixels/fieldservice/internal/ministry/Street;

    add-int/2addr p2, v8

    invoke-virtual {p3, p1, p2}, Lcom/lostpixels/fieldservice/internal/ministry/Street;->insertAddress(Lcom/lostpixels/fieldservice/internal/ministry/Address;I)V

    .line 2798
    :cond_3
    :goto_1
    iget-object p1, p0, Lcom/lostpixels/fieldservice/activities/territory/TerritoryList$19;->this$0:Lcom/lostpixels/fieldservice/activities/territory/TerritoryList;

    invoke-static {p1}, Lcom/lostpixels/fieldservice/activities/territory/TerritoryList;->-$$Nest$fgetmListFragment(Lcom/lostpixels/fieldservice/activities/territory/TerritoryList;)Lcom/lostpixels/fieldservice/activities/territory/TerritoryListFragment;

    move-result-object p1

    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    invoke-virtual {p1, v8}, Lcom/lostpixels/fieldservice/activities/territory/TerritoryListFragment;->update(Z)V

    goto/16 :goto_5

    .line 2392
    :pswitch_c
    iget-object p1, p0, Lcom/lostpixels/fieldservice/activities/territory/TerritoryList$19;->val$visit:Lcom/lostpixels/fieldservice/internal/ministry/Visit;

    const/16 p2, 0xd

    invoke-virtual {p1, p2}, Lcom/lostpixels/fieldservice/internal/ministry/Visit;->setType(I)V

    .line 2393
    iget-object p1, p0, Lcom/lostpixels/fieldservice/activities/territory/TerritoryList$19;->this$0:Lcom/lostpixels/fieldservice/activities/territory/TerritoryList;

    iget-object p2, p0, Lcom/lostpixels/fieldservice/activities/territory/TerritoryList$19;->val$visit:Lcom/lostpixels/fieldservice/internal/ministry/Visit;

    const p3, 0x7f120434

    invoke-virtual {p1, p3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p3

    invoke-static {p1, p2, p3, v9, v9}, Lcom/lostpixels/fieldservice/activities/territory/TerritoryList;->-$$Nest$mshowUndo(Lcom/lostpixels/fieldservice/activities/territory/TerritoryList;Lcom/lostpixels/fieldservice/internal/ministry/Visit;Ljava/lang/String;ZZ)V

    goto/16 :goto_5

    .line 2676
    :pswitch_d
    new-instance p1, Landroid/app/Dialog;

    iget-object p2, p0, Lcom/lostpixels/fieldservice/activities/territory/TerritoryList$19;->this$0:Lcom/lostpixels/fieldservice/activities/territory/TerritoryList;

    invoke-direct {p1, p2}, Landroid/app/Dialog;-><init>(Landroid/content/Context;)V

    const p2, 0x7f0c00f9

    .line 2677
    invoke-virtual {p1, p2}, Landroid/app/Dialog;->setContentView(I)V

    .line 2678
    iget-object p2, p0, Lcom/lostpixels/fieldservice/activities/territory/TerritoryList$19;->this$0:Lcom/lostpixels/fieldservice/activities/territory/TerritoryList;

    const p3, 0x7f1203d6

    invoke-virtual {p2, p3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Landroid/app/Dialog;->setTitle(Ljava/lang/CharSequence;)V

    const p2, 0x7f090442

    .line 2680
    invoke-virtual {p1, p2}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Landroid/widget/EditText;

    .line 2681
    invoke-virtual {p2, v7}, Landroid/widget/TextView;->setInputType(I)V

    const p3, 0x7f090443

    .line 2683
    invoke-virtual {p1, p3}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    move-result-object p3

    check-cast p3, Landroid/widget/EditText;

    .line 2684
    invoke-virtual {p3, v7}, Landroid/widget/TextView;->setInputType(I)V

    .line 2686
    new-instance p4, Landroid/telephony/PhoneNumberFormattingTextWatcher;

    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object p5

    invoke-virtual {p5}, Ljava/util/Locale;->getCountry()Ljava/lang/String;

    move-result-object p5

    invoke-direct {p4, p5}, Landroid/telephony/PhoneNumberFormattingTextWatcher;-><init>(Ljava/lang/String;)V

    invoke-virtual {p2, p4}, Landroid/widget/TextView;->addTextChangedListener(Landroid/text/TextWatcher;)V

    .line 2687
    new-instance p4, Landroid/telephony/PhoneNumberFormattingTextWatcher;

    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object p5

    invoke-virtual {p5}, Ljava/util/Locale;->getCountry()Ljava/lang/String;

    move-result-object p5

    invoke-direct {p4, p5}, Landroid/telephony/PhoneNumberFormattingTextWatcher;-><init>(Ljava/lang/String;)V

    invoke-virtual {p3, p4}, Landroid/widget/TextView;->addTextChangedListener(Landroid/text/TextWatcher;)V

    .line 2688
    iget-object p4, p0, Lcom/lostpixels/fieldservice/activities/territory/TerritoryList$19;->val$visit:Lcom/lostpixels/fieldservice/internal/ministry/Visit;

    invoke-virtual {p4}, Lcom/lostpixels/fieldservice/internal/ministry/Visit;->getPhoneNumber()Ljava/lang/String;

    move-result-object p4

    invoke-virtual {p2, p4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 2689
    iget-object p4, p0, Lcom/lostpixels/fieldservice/activities/territory/TerritoryList$19;->val$visit:Lcom/lostpixels/fieldservice/internal/ministry/Visit;

    invoke-virtual {p4}, Lcom/lostpixels/fieldservice/internal/ministry/Visit;->getCellNumber()Ljava/lang/String;

    move-result-object p4

    invoke-virtual {p3, p4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 2690
    invoke-virtual {p1, v4}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    move-result-object p4

    check-cast p4, Landroid/widget/Button;

    .line 2691
    new-instance p5, Lcom/lostpixels/fieldservice/activities/territory/TerritoryList$19$4;

    invoke-direct {p5, p0, p2, p3, p1}, Lcom/lostpixels/fieldservice/activities/territory/TerritoryList$19$4;-><init>(Lcom/lostpixels/fieldservice/activities/territory/TerritoryList$19;Landroid/widget/EditText;Landroid/widget/EditText;Landroid/app/Dialog;)V

    invoke-virtual {p4, p5}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 2710
    :try_start_5
    iget-object p2, p0, Lcom/lostpixels/fieldservice/activities/territory/TerritoryList$19;->val$alertDialog:Landroidx/appcompat/app/AlertDialog;

    invoke-virtual {p2}, Landroidx/appcompat/app/AppCompatDialog;->dismiss()V
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_4

    .line 2714
    :catch_4
    invoke-virtual {p1}, Landroid/app/Dialog;->show()V

    goto/16 :goto_6

    .line 2338
    :pswitch_e
    :try_start_6
    iget-object p1, p0, Lcom/lostpixels/fieldservice/activities/territory/TerritoryList$19;->val$alertDialog:Landroidx/appcompat/app/AlertDialog;

    invoke-virtual {p1}, Landroid/app/Dialog;->isShowing()Z

    move-result p1

    if-eqz p1, :cond_4

    .line 2339
    iget-object p1, p0, Lcom/lostpixels/fieldservice/activities/territory/TerritoryList$19;->val$alertDialog:Landroidx/appcompat/app/AlertDialog;

    invoke-virtual {p1}, Landroidx/appcompat/app/AppCompatDialog;->dismiss()V
    :try_end_6
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_6} :catch_5

    .line 2343
    :catch_5
    :cond_4
    iget-object p1, p0, Lcom/lostpixels/fieldservice/activities/territory/TerritoryList$19;->this$0:Lcom/lostpixels/fieldservice/activities/territory/TerritoryList;

    iget-object p2, p0, Lcom/lostpixels/fieldservice/activities/territory/TerritoryList$19;->val$visit:Lcom/lostpixels/fieldservice/internal/ministry/Visit;

    invoke-virtual {p1, p2, v8}, Lcom/lostpixels/fieldservice/activities/territory/TerritoryList;->openCallVisitDialog(Lcom/lostpixels/fieldservice/internal/ministry/Visit;Z)V

    goto/16 :goto_5

    .line 2408
    :pswitch_f
    iget-object p1, p0, Lcom/lostpixels/fieldservice/activities/territory/TerritoryList$19;->val$visit:Lcom/lostpixels/fieldservice/internal/ministry/Visit;

    const/16 p2, 0xc

    invoke-virtual {p1, p2}, Lcom/lostpixels/fieldservice/internal/ministry/Visit;->setType(I)V

    .line 2409
    iget-object p1, p0, Lcom/lostpixels/fieldservice/activities/territory/TerritoryList$19;->this$0:Lcom/lostpixels/fieldservice/activities/territory/TerritoryList;

    iget-object p2, p0, Lcom/lostpixels/fieldservice/activities/territory/TerritoryList$19;->val$visit:Lcom/lostpixels/fieldservice/internal/ministry/Visit;

    const p3, 0x7f1204a7

    invoke-virtual {p1, p3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p3

    invoke-static {p1, p2, p3, v9, v9}, Lcom/lostpixels/fieldservice/activities/territory/TerritoryList;->-$$Nest$mshowUndo(Lcom/lostpixels/fieldservice/activities/territory/TerritoryList;Lcom/lostpixels/fieldservice/internal/ministry/Visit;Ljava/lang/String;ZZ)V

    goto/16 :goto_5

    .line 2388
    :pswitch_10
    iget-object p1, p0, Lcom/lostpixels/fieldservice/activities/territory/TerritoryList$19;->val$visit:Lcom/lostpixels/fieldservice/internal/ministry/Visit;

    const/16 p2, 0xb

    invoke-virtual {p1, p2}, Lcom/lostpixels/fieldservice/internal/ministry/Visit;->setType(I)V

    .line 2389
    iget-object p1, p0, Lcom/lostpixels/fieldservice/activities/territory/TerritoryList$19;->this$0:Lcom/lostpixels/fieldservice/activities/territory/TerritoryList;

    iget-object p2, p0, Lcom/lostpixels/fieldservice/activities/territory/TerritoryList$19;->val$visit:Lcom/lostpixels/fieldservice/internal/ministry/Visit;

    const p3, 0x7f12046e

    invoke-virtual {p1, p3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p3

    invoke-static {p1, p2, p3, v9, v9}, Lcom/lostpixels/fieldservice/activities/territory/TerritoryList;->-$$Nest$mshowUndo(Lcom/lostpixels/fieldservice/activities/territory/TerritoryList;Lcom/lostpixels/fieldservice/internal/ministry/Visit;Ljava/lang/String;ZZ)V

    goto/16 :goto_5

    .line 2665
    :pswitch_11
    iget-object p1, p0, Lcom/lostpixels/fieldservice/activities/territory/TerritoryList$19;->this$0:Lcom/lostpixels/fieldservice/activities/territory/TerritoryList;

    iget-object p2, p0, Lcom/lostpixels/fieldservice/activities/territory/TerritoryList$19;->val$visit:Lcom/lostpixels/fieldservice/internal/ministry/Visit;

    invoke-static {p1, p2, v6, v6}, Lcom/lostpixels/fieldservice/activities/territory/TerritoryList;->-$$Nest$maddComment(Lcom/lostpixels/fieldservice/activities/territory/TerritoryList;Lcom/lostpixels/fieldservice/internal/ministry/Visit;Ljava/lang/String;Ljava/lang/String;)V

    .line 2668
    :try_start_7
    iget-object p1, p0, Lcom/lostpixels/fieldservice/activities/territory/TerritoryList$19;->val$alertDialog:Landroidx/appcompat/app/AlertDialog;

    invoke-virtual {p1}, Landroidx/appcompat/app/AppCompatDialog;->dismiss()V
    :try_end_7
    .catch Ljava/lang/Exception; {:try_start_7 .. :try_end_7} :catch_1

    goto/16 :goto_6

    .line 2508
    :pswitch_12
    :try_start_8
    iget-object p1, p0, Lcom/lostpixels/fieldservice/activities/territory/TerritoryList$19;->val$alertDialog:Landroidx/appcompat/app/AlertDialog;

    invoke-virtual {p1}, Landroidx/appcompat/app/AppCompatDialog;->dismiss()V
    :try_end_8
    .catch Ljava/lang/Exception; {:try_start_8 .. :try_end_8} :catch_6

    .line 2512
    :catch_6
    iget-object p1, p0, Lcom/lostpixels/fieldservice/activities/territory/TerritoryList$19;->val$visit:Lcom/lostpixels/fieldservice/internal/ministry/Visit;

    invoke-virtual {p1}, Lcom/lostpixels/fieldservice/internal/ministry/Visit;->getPosition()Lcom/google/android/gms/maps/model/LatLng;

    move-result-object p1

    iget-object p2, p0, Lcom/lostpixels/fieldservice/activities/territory/TerritoryList$19;->this$0:Lcom/lostpixels/fieldservice/activities/territory/TerritoryList;

    invoke-static {p1, p2}, Lcom/lostpixels/fieldservice/utils/map/NavigationUtils;->navigateTo(Lcom/google/android/gms/maps/model/LatLng;Landroid/app/Activity;)V

    goto/16 :goto_6

    .line 2495
    :pswitch_13
    iget-object p1, p0, Lcom/lostpixels/fieldservice/activities/territory/TerritoryList$19;->this$0:Lcom/lostpixels/fieldservice/activities/territory/TerritoryList;

    iget-object p2, p0, Lcom/lostpixels/fieldservice/activities/territory/TerritoryList$19;->val$visit:Lcom/lostpixels/fieldservice/internal/ministry/Visit;

    invoke-static {p1, p2}, Lcom/lostpixels/fieldservice/activities/territory/TerritoryList;->-$$Nest$fputshowOnMapVisit(Lcom/lostpixels/fieldservice/activities/territory/TerritoryList;Lcom/lostpixels/fieldservice/internal/ministry/Visit;)V

    .line 2496
    iget-object p1, p0, Lcom/lostpixels/fieldservice/activities/territory/TerritoryList$19;->this$0:Lcom/lostpixels/fieldservice/activities/territory/TerritoryList;

    invoke-virtual {p1}, Lcom/lostpixels/fieldservice/activities/territory/TerritoryList;->showMap()V

    .line 2498
    iget-object p1, p0, Lcom/lostpixels/fieldservice/activities/territory/TerritoryList$19;->this$0:Lcom/lostpixels/fieldservice/activities/territory/TerritoryList;

    invoke-virtual {p1}, Landroidx/appcompat/app/AppCompatActivity;->supportInvalidateOptionsMenu()V

    .line 2500
    :try_start_9
    iget-object p1, p0, Lcom/lostpixels/fieldservice/activities/territory/TerritoryList$19;->val$alertDialog:Landroidx/appcompat/app/AlertDialog;

    invoke-virtual {p1}, Landroidx/appcompat/app/AppCompatDialog;->dismiss()V
    :try_end_9
    .catch Ljava/lang/Exception; {:try_start_9 .. :try_end_9} :catch_1

    goto/16 :goto_6

    .line 2477
    :pswitch_14
    iget-object p1, p0, Lcom/lostpixels/fieldservice/activities/territory/TerritoryList$19;->val$visit:Lcom/lostpixels/fieldservice/internal/ministry/Visit;

    invoke-virtual {p1}, Lcom/lostpixels/fieldservice/internal/ministry/Visit;->getPosition()Lcom/google/android/gms/maps/model/LatLng;

    move-result-object p1

    if-nez p1, :cond_5

    .line 2478
    iget-object p1, p0, Lcom/lostpixels/fieldservice/activities/territory/TerritoryList$19;->this$0:Lcom/lostpixels/fieldservice/activities/territory/TerritoryList;

    iget-object p2, p0, Lcom/lostpixels/fieldservice/activities/territory/TerritoryList$19;->val$visit:Lcom/lostpixels/fieldservice/internal/ministry/Visit;

    invoke-static {p1, p2}, Lcom/lostpixels/fieldservice/activities/territory/TerritoryList;->showUpdatePositionDialogWithCheck(Lcom/lostpixels/fieldservice/activities/territory/TerritoryList;Lcom/lostpixels/fieldservice/internal/ministry/Visit;)V

    goto/16 :goto_5

    .line 2480
    :cond_5
    iget-object p1, p0, Lcom/lostpixels/fieldservice/activities/territory/TerritoryList$19;->this$0:Lcom/lostpixels/fieldservice/activities/territory/TerritoryList;

    invoke-static {p1}, Lcom/lostpixels/fieldservice/activities/territory/TerritoryList;->-$$Nest$fgetmMapFragment(Lcom/lostpixels/fieldservice/activities/territory/TerritoryList;)Lcom/lostpixels/fieldservice/activities/territory/TerritoryListMapFragment;

    move-result-object p1

    if-eqz p1, :cond_6

    .line 2481
    iget-object p1, p0, Lcom/lostpixels/fieldservice/activities/territory/TerritoryList$19;->this$0:Lcom/lostpixels/fieldservice/activities/territory/TerritoryList;

    invoke-static {p1}, Lcom/lostpixels/fieldservice/activities/territory/TerritoryList;->-$$Nest$fgetmMapFragment(Lcom/lostpixels/fieldservice/activities/territory/TerritoryList;)Lcom/lostpixels/fieldservice/activities/territory/TerritoryListMapFragment;

    move-result-object p1

    invoke-virtual {p1}, Lcom/lostpixels/fieldservice/activities/territory/TerritoryListMapFragment;->hideInfoWindow()V

    .line 2482
    :cond_6
    iget-object p1, p0, Lcom/lostpixels/fieldservice/activities/territory/TerritoryList$19;->val$visit:Lcom/lostpixels/fieldservice/internal/ministry/Visit;

    invoke-virtual {p1, v6}, Lcom/lostpixels/fieldservice/internal/ministry/Visit;->setPosition(Lcom/google/android/gms/maps/model/LatLng;)V

    .line 2483
    iget-object p1, p0, Lcom/lostpixels/fieldservice/activities/territory/TerritoryList$19;->val$visit:Lcom/lostpixels/fieldservice/internal/ministry/Visit;

    invoke-virtual {p1}, Lcom/lostpixels/fieldservice/internal/ministry/Visit;->getHouseHolder()J

    move-result-wide p1

    cmp-long p3, p1, v2

    if-eqz p3, :cond_11

    .line 2484
    iget-object p1, p0, Lcom/lostpixels/fieldservice/activities/territory/TerritoryList$19;->this$0:Lcom/lostpixels/fieldservice/activities/territory/TerritoryList;

    invoke-static {p1}, Lcom/lostpixels/fieldservice/activities/territory/TerritoryList;->access$3000(Lcom/lostpixels/fieldservice/activities/territory/TerritoryList;)Lio/realm/Realm;

    move-result-object p1

    invoke-static {p1}, Lcom/lostpixels/fieldservice/internal/ministry/MinistryManager;->getInstance(Lio/realm/Realm;)Lcom/lostpixels/fieldservice/internal/ministry/MinistryManager;

    move-result-object p1

    iget-object p2, p0, Lcom/lostpixels/fieldservice/activities/territory/TerritoryList$19;->this$0:Lcom/lostpixels/fieldservice/activities/territory/TerritoryList;

    invoke-static {p2}, Lcom/lostpixels/fieldservice/activities/territory/TerritoryList;->access$2900(Lcom/lostpixels/fieldservice/activities/territory/TerritoryList;)Lio/realm/Realm;

    move-result-object p2

    iget-object p3, p0, Lcom/lostpixels/fieldservice/activities/territory/TerritoryList$19;->val$visit:Lcom/lostpixels/fieldservice/internal/ministry/Visit;

    invoke-virtual {p3}, Lcom/lostpixels/fieldservice/internal/ministry/Visit;->getHouseHolder()J

    move-result-wide p3

    invoke-virtual {p1, p2, p3, p4}, Lcom/lostpixels/fieldservice/internal/ministry/MinistryManager;->getPerson(Lio/realm/Realm;J)Lcom/lostpixels/fieldservice/internal/ministry/Person;

    move-result-object p1

    if-eqz p1, :cond_7

    .line 2486
    invoke-virtual {p1, v6}, Lcom/lostpixels/fieldservice/internal/ministry/Person;->setPosition(Lcom/google/android/gms/maps/model/LatLng;)V

    .line 2487
    :cond_7
    iget-object p1, p0, Lcom/lostpixels/fieldservice/activities/territory/TerritoryList$19;->this$0:Lcom/lostpixels/fieldservice/activities/territory/TerritoryList;

    invoke-static {p1}, Lcom/lostpixels/fieldservice/activities/territory/TerritoryList;->-$$Nest$fgetmListFragment(Lcom/lostpixels/fieldservice/activities/territory/TerritoryList;)Lcom/lostpixels/fieldservice/activities/territory/TerritoryListFragment;

    move-result-object p1

    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    invoke-virtual {p1, v9}, Lcom/lostpixels/fieldservice/activities/territory/TerritoryListFragment;->update(Z)V

    .line 2488
    iget-object p1, p0, Lcom/lostpixels/fieldservice/activities/territory/TerritoryList$19;->this$0:Lcom/lostpixels/fieldservice/activities/territory/TerritoryList;

    invoke-static {p1}, Lcom/lostpixels/fieldservice/activities/territory/TerritoryList;->-$$Nest$fgetmMapFragment(Lcom/lostpixels/fieldservice/activities/territory/TerritoryList;)Lcom/lostpixels/fieldservice/activities/territory/TerritoryListMapFragment;

    move-result-object p1

    if-eqz p1, :cond_11

    .line 2489
    iget-object p1, p0, Lcom/lostpixels/fieldservice/activities/territory/TerritoryList$19;->this$0:Lcom/lostpixels/fieldservice/activities/territory/TerritoryList;

    invoke-static {p1}, Lcom/lostpixels/fieldservice/activities/territory/TerritoryList;->-$$Nest$fgetmMapFragment(Lcom/lostpixels/fieldservice/activities/territory/TerritoryList;)Lcom/lostpixels/fieldservice/activities/territory/TerritoryListMapFragment;

    move-result-object p1

    invoke-virtual {p1}, Lcom/lostpixels/fieldservice/activities/territory/TerritoryListMapFragment;->update()V

    goto/16 :goto_5

    .line 2384
    :pswitch_15
    iget-object p1, p0, Lcom/lostpixels/fieldservice/activities/territory/TerritoryList$19;->val$visit:Lcom/lostpixels/fieldservice/internal/ministry/Visit;

    const/16 p2, 0xa

    invoke-virtual {p1, p2}, Lcom/lostpixels/fieldservice/internal/ministry/Visit;->setType(I)V

    .line 2385
    iget-object p1, p0, Lcom/lostpixels/fieldservice/activities/territory/TerritoryList$19;->this$0:Lcom/lostpixels/fieldservice/activities/territory/TerritoryList;

    iget-object p2, p0, Lcom/lostpixels/fieldservice/activities/territory/TerritoryList$19;->val$visit:Lcom/lostpixels/fieldservice/internal/ministry/Visit;

    iget-object p3, p0, Lcom/lostpixels/fieldservice/activities/territory/TerritoryList$19;->val$menuItems:[Ljava/lang/String;

    const/16 p4, 0x12

    aget-object p3, p3, p4

    invoke-static {p1, p2, p3, v9, v9}, Lcom/lostpixels/fieldservice/activities/territory/TerritoryList;->-$$Nest$mshowUndo(Lcom/lostpixels/fieldservice/activities/territory/TerritoryList;Lcom/lostpixels/fieldservice/internal/ministry/Visit;Ljava/lang/String;ZZ)V

    goto/16 :goto_5

    .line 2380
    :pswitch_16
    iget-object p1, p0, Lcom/lostpixels/fieldservice/activities/territory/TerritoryList$19;->val$visit:Lcom/lostpixels/fieldservice/internal/ministry/Visit;

    const/16 p2, 0x8

    invoke-virtual {p1, p2}, Lcom/lostpixels/fieldservice/internal/ministry/Visit;->setType(I)V

    .line 2381
    iget-object p1, p0, Lcom/lostpixels/fieldservice/activities/territory/TerritoryList$19;->this$0:Lcom/lostpixels/fieldservice/activities/territory/TerritoryList;

    iget-object p2, p0, Lcom/lostpixels/fieldservice/activities/territory/TerritoryList$19;->val$visit:Lcom/lostpixels/fieldservice/internal/ministry/Visit;

    iget-object p3, p0, Lcom/lostpixels/fieldservice/activities/territory/TerritoryList$19;->val$menuItems:[Ljava/lang/String;

    aget-object p3, p3, v0

    invoke-static {p1, p2, p3, v9, v9}, Lcom/lostpixels/fieldservice/activities/territory/TerritoryList;->-$$Nest$mshowUndo(Lcom/lostpixels/fieldservice/activities/territory/TerritoryList;Lcom/lostpixels/fieldservice/internal/ministry/Visit;Ljava/lang/String;ZZ)V

    goto/16 :goto_5

    .line 2404
    :pswitch_17
    iget-object p1, p0, Lcom/lostpixels/fieldservice/activities/territory/TerritoryList$19;->val$visit:Lcom/lostpixels/fieldservice/internal/ministry/Visit;

    const/16 p2, 0x9

    invoke-virtual {p1, p2}, Lcom/lostpixels/fieldservice/internal/ministry/Visit;->setType(I)V

    .line 2405
    iget-object p1, p0, Lcom/lostpixels/fieldservice/activities/territory/TerritoryList$19;->this$0:Lcom/lostpixels/fieldservice/activities/territory/TerritoryList;

    iget-object p2, p0, Lcom/lostpixels/fieldservice/activities/territory/TerritoryList$19;->val$visit:Lcom/lostpixels/fieldservice/internal/ministry/Visit;

    iget-object p3, p0, Lcom/lostpixels/fieldservice/activities/territory/TerritoryList$19;->val$menuItems:[Ljava/lang/String;

    aget-object p3, p3, v1

    invoke-static {p1, p2, p3, v9, v9}, Lcom/lostpixels/fieldservice/activities/territory/TerritoryList;->-$$Nest$mshowUndo(Lcom/lostpixels/fieldservice/activities/territory/TerritoryList;Lcom/lostpixels/fieldservice/internal/ministry/Visit;Ljava/lang/String;ZZ)V

    goto/16 :goto_5

    .line 2764
    :pswitch_18
    new-instance p1, Landroid/content/Intent;

    iget-object p2, p0, Lcom/lostpixels/fieldservice/activities/territory/TerritoryList$19;->this$0:Lcom/lostpixels/fieldservice/activities/territory/TerritoryList;

    invoke-direct {p1, p2, p5}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 2765
    const-string p2, "Street"

    iget-object p3, p0, Lcom/lostpixels/fieldservice/activities/territory/TerritoryList$19;->val$street:Lcom/lostpixels/fieldservice/internal/ministry/Street;

    invoke-virtual {p1, p2, p3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 2766
    iget-object p2, p0, Lcom/lostpixels/fieldservice/activities/territory/TerritoryList$19;->this$0:Lcom/lostpixels/fieldservice/activities/territory/TerritoryList;

    invoke-virtual {p2, p1, v5}, Landroidx/activity/ComponentActivity;->startActivityForResult(Landroid/content/Intent;I)V

    .line 2768
    :try_start_a
    iget-object p1, p0, Lcom/lostpixels/fieldservice/activities/territory/TerritoryList$19;->val$alertDialog:Landroidx/appcompat/app/AlertDialog;

    invoke-virtual {p1}, Landroid/app/Dialog;->isShowing()Z

    move-result p1

    if-eqz p1, :cond_11

    .line 2769
    iget-object p1, p0, Lcom/lostpixels/fieldservice/activities/territory/TerritoryList$19;->val$alertDialog:Landroidx/appcompat/app/AlertDialog;

    invoke-virtual {p1}, Landroidx/appcompat/app/AppCompatDialog;->dismiss()V
    :try_end_a
    .catch Ljava/lang/Exception; {:try_start_a .. :try_end_a} :catch_9

    goto/16 :goto_5

    .line 2531
    :pswitch_19
    iget-object p1, p0, Lcom/lostpixels/fieldservice/activities/territory/TerritoryList$19;->this$0:Lcom/lostpixels/fieldservice/activities/territory/TerritoryList;

    invoke-static {p1}, Lcom/lostpixels/fieldservice/activities/territory/TerritoryList;->access$3400(Lcom/lostpixels/fieldservice/activities/territory/TerritoryList;)Lio/realm/Realm;

    move-result-object p1

    invoke-static {p1}, Lcom/lostpixels/fieldservice/internal/ministry/MinistryManager;->getInstance(Lio/realm/Realm;)Lcom/lostpixels/fieldservice/internal/ministry/MinistryManager;

    move-result-object p1

    iget-object p2, p0, Lcom/lostpixels/fieldservice/activities/territory/TerritoryList$19;->this$0:Lcom/lostpixels/fieldservice/activities/territory/TerritoryList;

    invoke-static {p2}, Lcom/lostpixels/fieldservice/activities/territory/TerritoryList;->access$3300(Lcom/lostpixels/fieldservice/activities/territory/TerritoryList;)Lio/realm/Realm;

    move-result-object p2

    iget-object p3, p0, Lcom/lostpixels/fieldservice/activities/territory/TerritoryList$19;->val$visit:Lcom/lostpixels/fieldservice/internal/ministry/Visit;

    invoke-virtual {p3}, Lcom/lostpixels/fieldservice/internal/ministry/Visit;->getHouseHolder()J

    move-result-wide p3

    invoke-virtual {p1, p2, p3, p4}, Lcom/lostpixels/fieldservice/internal/ministry/MinistryManager;->getPerson(Lio/realm/Realm;J)Lcom/lostpixels/fieldservice/internal/ministry/Person;

    move-result-object p1

    if-eqz p1, :cond_11

    .line 2533
    invoke-virtual {p1}, Lcom/lostpixels/fieldservice/internal/ministry/Person;->isFavorite()Z

    move-result p2

    xor-int/2addr p2, v8

    invoke-virtual {p1, p2}, Lcom/lostpixels/fieldservice/internal/ministry/Person;->setFavorite(Z)V

    goto/16 :goto_5

    .line 2806
    :pswitch_1a
    :try_start_b
    iget-object p1, p0, Lcom/lostpixels/fieldservice/activities/territory/TerritoryList$19;->val$alertDialog:Landroidx/appcompat/app/AlertDialog;

    invoke-virtual {p1}, Landroidx/appcompat/app/AppCompatDialog;->dismiss()V
    :try_end_b
    .catch Ljava/lang/Exception; {:try_start_b .. :try_end_b} :catch_7

    .line 2810
    :catch_7
    new-instance p1, Lcom/lostpixels/fieldservice/dialogs/SetTimeDialog;

    invoke-direct {p1}, Lcom/lostpixels/fieldservice/dialogs/SetTimeDialog;-><init>()V

    .line 2811
    iget-object p2, p0, Lcom/lostpixels/fieldservice/activities/territory/TerritoryList$19;->val$visit:Lcom/lostpixels/fieldservice/internal/ministry/Visit;

    invoke-virtual {p2}, Lcom/lostpixels/fieldservice/internal/ministry/Visit;->getDate()Ljava/util/Date;

    move-result-object p2

    invoke-virtual {p1, p2}, Lcom/lostpixels/fieldservice/dialogs/SetTimeDialog;->setDate(Ljava/util/Date;)V

    .line 2812
    new-instance p2, Lcom/lostpixels/fieldservice/activities/territory/TerritoryList$19$7;

    invoke-direct {p2, p0}, Lcom/lostpixels/fieldservice/activities/territory/TerritoryList$19$7;-><init>(Lcom/lostpixels/fieldservice/activities/territory/TerritoryList$19;)V

    invoke-virtual {p1, p2}, Lcom/lostpixels/fieldservice/dialogs/SetTimeDialog;->setTimeChangedListener(Lcom/lostpixels/fieldservice/dialogs/SetTimeDialog$SetTimeDialogListener;)V

    .line 2825
    iget-object p2, p0, Lcom/lostpixels/fieldservice/activities/territory/TerritoryList$19;->this$0:Lcom/lostpixels/fieldservice/activities/territory/TerritoryList;

    invoke-virtual {p2}, Landroidx/fragment/app/FragmentActivity;->getSupportFragmentManager()Landroidx/fragment/app/FragmentManager;

    move-result-object p2

    .line 2826
    const-string p3, "fragment_set_date"

    invoke-virtual {p1, p2, p3}, Landroidx/fragment/app/DialogFragment;->show(Landroidx/fragment/app/FragmentManager;Ljava/lang/String;)V

    goto/16 :goto_6

    .line 2377
    :pswitch_1b
    iget-object p1, p0, Lcom/lostpixels/fieldservice/activities/territory/TerritoryList$19;->val$visit:Lcom/lostpixels/fieldservice/internal/ministry/Visit;

    invoke-virtual {p1}, Lcom/lostpixels/fieldservice/internal/ministry/Visit;->reset()V

    goto/16 :goto_5

    .line 2551
    :pswitch_1c
    new-instance p1, Landroid/app/Dialog;

    iget-object p5, p0, Lcom/lostpixels/fieldservice/activities/territory/TerritoryList$19;->this$0:Lcom/lostpixels/fieldservice/activities/territory/TerritoryList;

    invoke-direct {p1, p5}, Landroid/app/Dialog;-><init>(Landroid/content/Context;)V

    .line 2552
    invoke-virtual {p1, p4}, Landroid/app/Dialog;->setContentView(I)V

    .line 2553
    iget-object p4, p0, Lcom/lostpixels/fieldservice/activities/territory/TerritoryList$19;->val$visit:Lcom/lostpixels/fieldservice/internal/ministry/Visit;

    invoke-virtual {p4}, Lcom/lostpixels/fieldservice/internal/ministry/Visit;->getName()Ljava/lang/String;

    move-result-object p4

    if-eqz p4, :cond_9

    iget-object p4, p0, Lcom/lostpixels/fieldservice/activities/territory/TerritoryList$19;->val$visit:Lcom/lostpixels/fieldservice/internal/ministry/Visit;

    invoke-virtual {p4}, Lcom/lostpixels/fieldservice/internal/ministry/Visit;->getName()Ljava/lang/String;

    move-result-object p4

    invoke-virtual {p4}, Ljava/lang/String;->isEmpty()Z

    move-result p4

    if-eqz p4, :cond_8

    goto :goto_2

    .line 2556
    :cond_8
    iget-object p4, p0, Lcom/lostpixels/fieldservice/activities/territory/TerritoryList$19;->this$0:Lcom/lostpixels/fieldservice/activities/territory/TerritoryList;

    invoke-virtual {p4, p3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p3

    invoke-virtual {p1, p3}, Landroid/app/Dialog;->setTitle(Ljava/lang/CharSequence;)V

    goto :goto_3

    .line 2554
    :cond_9
    :goto_2
    iget-object p3, p0, Lcom/lostpixels/fieldservice/activities/territory/TerritoryList$19;->this$0:Lcom/lostpixels/fieldservice/activities/territory/TerritoryList;

    const p4, 0x7f120353

    invoke-virtual {p3, p4}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p3

    invoke-virtual {p1, p3}, Landroid/app/Dialog;->setTitle(Ljava/lang/CharSequence;)V

    .line 2558
    :goto_3
    invoke-virtual {p1, p2}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Landroid/widget/EditText;

    .line 2560
    iget-object p3, p0, Lcom/lostpixels/fieldservice/activities/territory/TerritoryList$19;->val$visit:Lcom/lostpixels/fieldservice/internal/ministry/Visit;

    invoke-virtual {p3}, Lcom/lostpixels/fieldservice/internal/ministry/Visit;->getParent()Lcom/lostpixels/fieldservice/internal/ministry/Address;

    move-result-object p3

    invoke-virtual {p3}, Lcom/lostpixels/fieldservice/internal/ministry/Address;->isBuilding()Z

    move-result p3

    if-eqz p3, :cond_b

    iget-object p3, p0, Lcom/lostpixels/fieldservice/activities/territory/TerritoryList$19;->val$visit:Lcom/lostpixels/fieldservice/internal/ministry/Visit;

    invoke-virtual {p3}, Lcom/lostpixels/fieldservice/internal/ministry/Visit;->getHouseHolder()J

    move-result-wide p3

    cmp-long p5, p3, v2

    if-eqz p5, :cond_b

    .line 2561
    iget-object p3, p0, Lcom/lostpixels/fieldservice/activities/territory/TerritoryList$19;->this$0:Lcom/lostpixels/fieldservice/activities/territory/TerritoryList;

    invoke-static {p3}, Lcom/lostpixels/fieldservice/activities/territory/TerritoryList;->access$3600(Lcom/lostpixels/fieldservice/activities/territory/TerritoryList;)Lio/realm/Realm;

    move-result-object p3

    invoke-static {p3}, Lcom/lostpixels/fieldservice/internal/ministry/MinistryManager;->getInstance(Lio/realm/Realm;)Lcom/lostpixels/fieldservice/internal/ministry/MinistryManager;

    move-result-object p3

    iget-object p4, p0, Lcom/lostpixels/fieldservice/activities/territory/TerritoryList$19;->this$0:Lcom/lostpixels/fieldservice/activities/territory/TerritoryList;

    invoke-static {p4}, Lcom/lostpixels/fieldservice/activities/territory/TerritoryList;->access$3500(Lcom/lostpixels/fieldservice/activities/territory/TerritoryList;)Lio/realm/Realm;

    move-result-object p4

    iget-object p5, p0, Lcom/lostpixels/fieldservice/activities/territory/TerritoryList$19;->val$visit:Lcom/lostpixels/fieldservice/internal/ministry/Visit;

    invoke-virtual {p5}, Lcom/lostpixels/fieldservice/internal/ministry/Visit;->getHouseHolder()J

    move-result-wide v0

    invoke-virtual {p3, p4, v0, v1}, Lcom/lostpixels/fieldservice/internal/ministry/MinistryManager;->getPerson(Lio/realm/Realm;J)Lcom/lostpixels/fieldservice/internal/ministry/Person;

    move-result-object p3

    if-eqz p3, :cond_c

    .line 2563
    invoke-virtual {p3}, Lcom/lostpixels/fieldservice/internal/ministry/Person;->getApartment()Ljava/lang/String;

    move-result-object p4

    if-eqz p4, :cond_a

    invoke-virtual {p3}, Lcom/lostpixels/fieldservice/internal/ministry/Person;->getApartment()Ljava/lang/String;

    move-result-object p4

    invoke-virtual {p4}, Ljava/lang/String;->isEmpty()Z

    move-result p4

    if-nez p4, :cond_a

    .line 2564
    invoke-virtual {p3}, Lcom/lostpixels/fieldservice/internal/ministry/Person;->getApartment()Ljava/lang/String;

    move-result-object p3

    invoke-virtual {p2, p3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_4

    .line 2566
    :cond_a
    iget-object p3, p0, Lcom/lostpixels/fieldservice/activities/territory/TerritoryList$19;->val$visit:Lcom/lostpixels/fieldservice/internal/ministry/Visit;

    invoke-virtual {p3}, Lcom/lostpixels/fieldservice/internal/ministry/Visit;->getName()Ljava/lang/String;

    move-result-object p3

    invoke-virtual {p2, p3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_4

    .line 2569
    :cond_b
    iget-object p3, p0, Lcom/lostpixels/fieldservice/activities/territory/TerritoryList$19;->val$visit:Lcom/lostpixels/fieldservice/internal/ministry/Visit;

    invoke-virtual {p3}, Lcom/lostpixels/fieldservice/internal/ministry/Visit;->getName()Ljava/lang/String;

    move-result-object p3

    invoke-virtual {p2, p3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 2578
    :cond_c
    :goto_4
    invoke-virtual {p1, v4}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    move-result-object p3

    check-cast p3, Landroid/widget/Button;

    .line 2579
    new-instance p4, Lcom/lostpixels/fieldservice/activities/territory/TerritoryList$19$2;

    invoke-direct {p4, p0, p2, p1}, Lcom/lostpixels/fieldservice/activities/territory/TerritoryList$19$2;-><init>(Lcom/lostpixels/fieldservice/activities/territory/TerritoryList$19;Landroid/widget/EditText;Landroid/app/Dialog;)V

    invoke-virtual {p3, p4}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 2613
    :try_start_c
    iget-object p2, p0, Lcom/lostpixels/fieldservice/activities/territory/TerritoryList$19;->val$alertDialog:Landroidx/appcompat/app/AlertDialog;

    invoke-virtual {p2}, Landroidx/appcompat/app/AppCompatDialog;->dismiss()V
    :try_end_c
    .catch Ljava/lang/Exception; {:try_start_c .. :try_end_c} :catch_8

    .line 2618
    :catch_8
    invoke-virtual {p1}, Landroid/app/Dialog;->show()V

    goto/16 :goto_6

    .line 2373
    :pswitch_1d
    iget-object p1, p0, Lcom/lostpixels/fieldservice/activities/territory/TerritoryList$19;->val$visit:Lcom/lostpixels/fieldservice/internal/ministry/Visit;

    invoke-virtual {p1, v9}, Lcom/lostpixels/fieldservice/internal/ministry/Visit;->setType(I)V

    .line 2374
    iget-object p1, p0, Lcom/lostpixels/fieldservice/activities/territory/TerritoryList$19;->this$0:Lcom/lostpixels/fieldservice/activities/territory/TerritoryList;

    iget-object p2, p0, Lcom/lostpixels/fieldservice/activities/territory/TerritoryList$19;->val$visit:Lcom/lostpixels/fieldservice/internal/ministry/Visit;

    iget-object p3, p0, Lcom/lostpixels/fieldservice/activities/territory/TerritoryList$19;->val$menuItems:[Ljava/lang/String;

    aget-object p3, p3, v5

    invoke-static {p1, p2, p3, v9, v9}, Lcom/lostpixels/fieldservice/activities/territory/TerritoryList;->-$$Nest$mshowUndo(Lcom/lostpixels/fieldservice/activities/territory/TerritoryList;Lcom/lostpixels/fieldservice/internal/ministry/Visit;Ljava/lang/String;ZZ)V

    goto/16 :goto_5

    .line 2718
    :pswitch_1e
    new-instance p1, Landroidx/appcompat/app/AlertDialog$Builder;

    iget-object p2, p0, Lcom/lostpixels/fieldservice/activities/territory/TerritoryList$19;->this$0:Lcom/lostpixels/fieldservice/activities/territory/TerritoryList;

    invoke-direct {p1, p2}, Landroidx/appcompat/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 2720
    iget-object p2, p0, Lcom/lostpixels/fieldservice/activities/territory/TerritoryList$19;->val$visit:Lcom/lostpixels/fieldservice/internal/ministry/Visit;

    invoke-virtual {p2}, Lcom/lostpixels/fieldservice/internal/ministry/Visit;->getParent()Lcom/lostpixels/fieldservice/internal/ministry/Address;

    move-result-object p2

    invoke-virtual {p2}, Lcom/lostpixels/fieldservice/internal/ministry/Address;->getName()Ljava/lang/String;

    move-result-object p2

    const-string p3, ""

    if-eqz p2, :cond_d

    iget-object p2, p0, Lcom/lostpixels/fieldservice/activities/territory/TerritoryList$19;->val$visit:Lcom/lostpixels/fieldservice/internal/ministry/Visit;

    invoke-virtual {p2}, Lcom/lostpixels/fieldservice/internal/ministry/Visit;->getParent()Lcom/lostpixels/fieldservice/internal/ministry/Address;

    move-result-object p2

    invoke-virtual {p2}, Lcom/lostpixels/fieldservice/internal/ministry/Address;->getName()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p2}, Ljava/lang/String;->isEmpty()Z

    move-result p2

    if-nez p2, :cond_d

    .line 2721
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p3, p0, Lcom/lostpixels/fieldservice/activities/territory/TerritoryList$19;->val$visit:Lcom/lostpixels/fieldservice/internal/ministry/Visit;

    invoke-virtual {p3}, Lcom/lostpixels/fieldservice/internal/ministry/Visit;->getParent()Lcom/lostpixels/fieldservice/internal/ministry/Address;

    move-result-object p3

    invoke-virtual {p3}, Lcom/lostpixels/fieldservice/internal/ministry/Address;->getName()Ljava/lang/String;

    move-result-object p3

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p3

    .line 2722
    :cond_d
    iget-object p2, p0, Lcom/lostpixels/fieldservice/activities/territory/TerritoryList$19;->val$visit:Lcom/lostpixels/fieldservice/internal/ministry/Visit;

    invoke-virtual {p2}, Lcom/lostpixels/fieldservice/internal/ministry/Visit;->getName()Ljava/lang/String;

    move-result-object p2

    if-eqz p2, :cond_f

    iget-object p2, p0, Lcom/lostpixels/fieldservice/activities/territory/TerritoryList$19;->val$visit:Lcom/lostpixels/fieldservice/internal/ministry/Visit;

    invoke-virtual {p2}, Lcom/lostpixels/fieldservice/internal/ministry/Visit;->getName()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p2}, Ljava/lang/String;->isEmpty()Z

    move-result p2

    if-nez p2, :cond_f

    .line 2723
    invoke-virtual {p3}, Ljava/lang/String;->isEmpty()Z

    move-result p2

    if-nez p2, :cond_e

    .line 2724
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p3, ", "

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p3

    .line 2725
    :cond_e
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p3, p0, Lcom/lostpixels/fieldservice/activities/territory/TerritoryList$19;->val$visit:Lcom/lostpixels/fieldservice/internal/ministry/Visit;

    invoke-virtual {p3}, Lcom/lostpixels/fieldservice/internal/ministry/Visit;->getName()Ljava/lang/String;

    move-result-object p3

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p3

    .line 2728
    :cond_f
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    iget-object p4, p0, Lcom/lostpixels/fieldservice/activities/territory/TerritoryList$19;->this$0:Lcom/lostpixels/fieldservice/activities/territory/TerritoryList;

    const p5, 0x7f120157

    invoke-virtual {p4, p5}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p4

    invoke-virtual {p2, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p4, "\n"

    invoke-virtual {p2, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Landroidx/appcompat/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroidx/appcompat/app/AlertDialog$Builder;

    move-result-object p2

    invoke-virtual {p2, v9}, Landroidx/appcompat/app/AlertDialog$Builder;->setCancelable(Z)Landroidx/appcompat/app/AlertDialog$Builder;

    move-result-object p2

    iget-object p3, p0, Lcom/lostpixels/fieldservice/activities/territory/TerritoryList$19;->this$0:Lcom/lostpixels/fieldservice/activities/territory/TerritoryList;

    const p4, 0x7f120158

    .line 2729
    invoke-virtual {p3, p4}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p3

    new-instance p4, Lcom/lostpixels/fieldservice/activities/territory/TerritoryList$19$6;

    invoke-direct {p4, p0}, Lcom/lostpixels/fieldservice/activities/territory/TerritoryList$19$6;-><init>(Lcom/lostpixels/fieldservice/activities/territory/TerritoryList$19;)V

    invoke-virtual {p2, p3, p4}, Landroidx/appcompat/app/AlertDialog$Builder;->setPositiveButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroidx/appcompat/app/AlertDialog$Builder;

    move-result-object p2

    iget-object p3, p0, Lcom/lostpixels/fieldservice/activities/territory/TerritoryList$19;->this$0:Lcom/lostpixels/fieldservice/activities/territory/TerritoryList;

    const p4, 0x7f120152

    .line 2755
    invoke-virtual {p3, p4}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p3

    new-instance p4, Lcom/lostpixels/fieldservice/activities/territory/TerritoryList$19$5;

    invoke-direct {p4, p0}, Lcom/lostpixels/fieldservice/activities/territory/TerritoryList$19$5;-><init>(Lcom/lostpixels/fieldservice/activities/territory/TerritoryList$19;)V

    invoke-virtual {p2, p3, p4}, Landroidx/appcompat/app/AlertDialog$Builder;->setNegativeButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroidx/appcompat/app/AlertDialog$Builder;

    .line 2760
    invoke-virtual {p1}, Landroidx/appcompat/app/AlertDialog$Builder;->create()Landroidx/appcompat/app/AlertDialog;

    move-result-object p1

    .line 2761
    invoke-virtual {p1}, Landroid/app/Dialog;->show()V

    goto/16 :goto_5

    .line 2527
    :pswitch_1f
    iget-object p1, p0, Lcom/lostpixels/fieldservice/activities/territory/TerritoryList$19;->val$visit:Lcom/lostpixels/fieldservice/internal/ministry/Visit;

    invoke-virtual {p1, v8}, Lcom/lostpixels/fieldservice/internal/ministry/Visit;->setType(I)V

    .line 2528
    iget-object p1, p0, Lcom/lostpixels/fieldservice/activities/territory/TerritoryList$19;->this$0:Lcom/lostpixels/fieldservice/activities/territory/TerritoryList;

    iget-object p2, p0, Lcom/lostpixels/fieldservice/activities/territory/TerritoryList$19;->val$visit:Lcom/lostpixels/fieldservice/internal/ministry/Visit;

    iget-object p3, p0, Lcom/lostpixels/fieldservice/activities/territory/TerritoryList$19;->val$menuItems:[Ljava/lang/String;

    aget-object p3, p3, v7

    invoke-static {p1, p2, p3, v9, v9}, Lcom/lostpixels/fieldservice/activities/territory/TerritoryList;->-$$Nest$mshowUndo(Lcom/lostpixels/fieldservice/activities/territory/TerritoryList;Lcom/lostpixels/fieldservice/internal/ministry/Visit;Ljava/lang/String;ZZ)V

    goto/16 :goto_5

    .line 2516
    :pswitch_20
    iget-object p1, p0, Lcom/lostpixels/fieldservice/activities/territory/TerritoryList$19;->val$visit:Lcom/lostpixels/fieldservice/internal/ministry/Visit;

    const/4 p2, 0x6

    invoke-virtual {p1, p2}, Lcom/lostpixels/fieldservice/internal/ministry/Visit;->setType(I)V

    .line 2517
    iget-object p1, p0, Lcom/lostpixels/fieldservice/activities/territory/TerritoryList$19;->this$0:Lcom/lostpixels/fieldservice/activities/territory/TerritoryList;

    invoke-static {p1}, Lcom/lostpixels/fieldservice/activities/territory/TerritoryList;->access$3200(Lcom/lostpixels/fieldservice/activities/territory/TerritoryList;)Lio/realm/Realm;

    move-result-object p1

    invoke-static {p1}, Lcom/lostpixels/fieldservice/internal/ministry/MinistryManager;->getInstance(Lio/realm/Realm;)Lcom/lostpixels/fieldservice/internal/ministry/MinistryManager;

    move-result-object p1

    iget-object p2, p0, Lcom/lostpixels/fieldservice/activities/territory/TerritoryList$19;->this$0:Lcom/lostpixels/fieldservice/activities/territory/TerritoryList;

    invoke-static {p2}, Lcom/lostpixels/fieldservice/activities/territory/TerritoryList;->access$3100(Lcom/lostpixels/fieldservice/activities/territory/TerritoryList;)Lio/realm/Realm;

    move-result-object p2

    iget-object p3, p0, Lcom/lostpixels/fieldservice/activities/territory/TerritoryList$19;->val$visit:Lcom/lostpixels/fieldservice/internal/ministry/Visit;

    invoke-virtual {p3}, Lcom/lostpixels/fieldservice/internal/ministry/Visit;->getHouseHolder()J

    move-result-wide p3

    invoke-virtual {p1, p2, p3, p4}, Lcom/lostpixels/fieldservice/internal/ministry/MinistryManager;->addReturnVisit(Lio/realm/Realm;J)V

    .line 2518
    iget-object p1, p0, Lcom/lostpixels/fieldservice/activities/territory/TerritoryList$19;->this$0:Lcom/lostpixels/fieldservice/activities/territory/TerritoryList;

    invoke-static {p1}, Lcom/lostpixels/fieldservice/activities/territory/TerritoryList;->-$$Nest$fgetmListFragment(Lcom/lostpixels/fieldservice/activities/territory/TerritoryList;)Lcom/lostpixels/fieldservice/activities/territory/TerritoryListFragment;

    move-result-object p1

    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    invoke-virtual {p1, v9}, Lcom/lostpixels/fieldservice/activities/territory/TerritoryListFragment;->update(Z)V

    .line 2520
    :try_start_d
    iget-object p1, p0, Lcom/lostpixels/fieldservice/activities/territory/TerritoryList$19;->val$alertDialog:Landroidx/appcompat/app/AlertDialog;

    invoke-virtual {p1}, Landroidx/appcompat/app/AppCompatDialog;->dismiss()V
    :try_end_d
    .catch Ljava/lang/Exception; {:try_start_d .. :try_end_d} :catch_1

    goto/16 :goto_6

    .line 2369
    :pswitch_21
    iget-object p1, p0, Lcom/lostpixels/fieldservice/activities/territory/TerritoryList$19;->val$visit:Lcom/lostpixels/fieldservice/internal/ministry/Visit;

    const/4 p2, 0x2

    invoke-virtual {p1, p2}, Lcom/lostpixels/fieldservice/internal/ministry/Visit;->setType(I)V

    .line 2370
    iget-object p1, p0, Lcom/lostpixels/fieldservice/activities/territory/TerritoryList$19;->this$0:Lcom/lostpixels/fieldservice/activities/territory/TerritoryList;

    iget-object p2, p0, Lcom/lostpixels/fieldservice/activities/territory/TerritoryList$19;->val$visit:Lcom/lostpixels/fieldservice/internal/ministry/Visit;

    iget-object p3, p0, Lcom/lostpixels/fieldservice/activities/territory/TerritoryList$19;->val$menuItems:[Ljava/lang/String;

    aget-object p3, p3, v8

    invoke-static {p1, p2, p3, v9, v9}, Lcom/lostpixels/fieldservice/activities/territory/TerritoryList;->-$$Nest$mshowUndo(Lcom/lostpixels/fieldservice/activities/territory/TerritoryList;Lcom/lostpixels/fieldservice/internal/ministry/Visit;Ljava/lang/String;ZZ)V

    goto :goto_5

    .line 2355
    :pswitch_22
    iget-object p1, p0, Lcom/lostpixels/fieldservice/activities/territory/TerritoryList$19;->val$visit:Lcom/lostpixels/fieldservice/internal/ministry/Visit;

    invoke-virtual {p1, v9}, Lcom/lostpixels/fieldservice/internal/ministry/Visit;->setVisitInterested(Z)V

    .line 2356
    iget-object p1, p0, Lcom/lostpixels/fieldservice/activities/territory/TerritoryList$19;->val$visit:Lcom/lostpixels/fieldservice/internal/ministry/Visit;

    invoke-virtual {p1}, Lcom/lostpixels/fieldservice/internal/ministry/Visit;->getHouseHolder()J

    move-result-wide p1

    cmp-long p3, p1, v2

    if-eqz p3, :cond_10

    .line 2357
    iget-object p1, p0, Lcom/lostpixels/fieldservice/activities/territory/TerritoryList$19;->this$0:Lcom/lostpixels/fieldservice/activities/territory/TerritoryList;

    invoke-static {p1}, Lcom/lostpixels/fieldservice/activities/territory/TerritoryList;->access$2100(Lcom/lostpixels/fieldservice/activities/territory/TerritoryList;)Lio/realm/Realm;

    move-result-object p1

    invoke-static {p1}, Lcom/lostpixels/fieldservice/internal/ministry/MinistryManager;->getInstance(Lio/realm/Realm;)Lcom/lostpixels/fieldservice/internal/ministry/MinistryManager;

    move-result-object p1

    iget-object p2, p0, Lcom/lostpixels/fieldservice/activities/territory/TerritoryList$19;->this$0:Lcom/lostpixels/fieldservice/activities/territory/TerritoryList;

    invoke-static {p2}, Lcom/lostpixels/fieldservice/activities/territory/TerritoryList;->access$2000(Lcom/lostpixels/fieldservice/activities/territory/TerritoryList;)Lio/realm/Realm;

    move-result-object p2

    iget-object p3, p0, Lcom/lostpixels/fieldservice/activities/territory/TerritoryList$19;->val$visit:Lcom/lostpixels/fieldservice/internal/ministry/Visit;

    invoke-virtual {p3}, Lcom/lostpixels/fieldservice/internal/ministry/Visit;->getHouseHolder()J

    move-result-wide p3

    invoke-virtual {p1, p2, p3, p4}, Lcom/lostpixels/fieldservice/internal/ministry/MinistryManager;->getPerson(Lio/realm/Realm;J)Lcom/lostpixels/fieldservice/internal/ministry/Person;

    move-result-object p1

    if-eqz p1, :cond_11

    .line 2359
    invoke-virtual {p1, v9}, Lcom/lostpixels/fieldservice/internal/ministry/Person;->setReturnVisit(Z)V

    .line 2360
    invoke-virtual {p1, v9}, Lcom/lostpixels/fieldservice/internal/ministry/Person;->setInterested(Z)V

    goto :goto_5

    .line 2364
    :cond_10
    iget-object p1, p0, Lcom/lostpixels/fieldservice/activities/territory/TerritoryList$19;->this$0:Lcom/lostpixels/fieldservice/activities/territory/TerritoryList;

    iget-object p2, p0, Lcom/lostpixels/fieldservice/activities/territory/TerritoryList$19;->val$visit:Lcom/lostpixels/fieldservice/internal/ministry/Visit;

    iget-object p3, p0, Lcom/lostpixels/fieldservice/activities/territory/TerritoryList$19;->val$menuItems:[Ljava/lang/String;

    aget-object p3, p3, v9

    invoke-static {p1, p2, p3, v9, v9}, Lcom/lostpixels/fieldservice/activities/territory/TerritoryList;->-$$Nest$mshowUndo(Lcom/lostpixels/fieldservice/activities/territory/TerritoryList;Lcom/lostpixels/fieldservice/internal/ministry/Visit;Ljava/lang/String;ZZ)V

    .line 2831
    :catch_9
    :cond_11
    :goto_5
    iget-object p1, p0, Lcom/lostpixels/fieldservice/activities/territory/TerritoryList$19;->this$0:Lcom/lostpixels/fieldservice/activities/territory/TerritoryList;

    invoke-static {p1}, Lcom/lostpixels/fieldservice/activities/territory/TerritoryList;->-$$Nest$fgetmTerritory(Lcom/lostpixels/fieldservice/activities/territory/TerritoryList;)Lcom/lostpixels/fieldservice/internal/ministry/Territory;

    move-result-object p1

    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    invoke-virtual {p1}, Lcom/lostpixels/fieldservice/internal/ministry/Territory;->setLastUpdated()V

    .line 2832
    iget-object p1, p0, Lcom/lostpixels/fieldservice/activities/territory/TerritoryList$19;->this$0:Lcom/lostpixels/fieldservice/activities/territory/TerritoryList;

    invoke-static {p1}, Lcom/lostpixels/fieldservice/activities/territory/TerritoryList;->-$$Nest$mupdateStatistics(Lcom/lostpixels/fieldservice/activities/territory/TerritoryList;)V

    .line 2833
    iget-object p1, p0, Lcom/lostpixels/fieldservice/activities/territory/TerritoryList$19;->this$0:Lcom/lostpixels/fieldservice/activities/territory/TerritoryList;

    invoke-static {p1}, Lcom/lostpixels/fieldservice/activities/territory/TerritoryList;->-$$Nest$fgetmListFragment(Lcom/lostpixels/fieldservice/activities/territory/TerritoryList;)Lcom/lostpixels/fieldservice/activities/territory/TerritoryListFragment;

    move-result-object p1

    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    invoke-virtual {p1, v9}, Lcom/lostpixels/fieldservice/activities/territory/TerritoryListFragment;->update(Z)V

    .line 2835
    :try_start_e
    iget-object p1, p0, Lcom/lostpixels/fieldservice/activities/territory/TerritoryList$19;->val$alertDialog:Landroidx/appcompat/app/AlertDialog;

    invoke-virtual {p1}, Landroid/app/Dialog;->isShowing()Z

    move-result p1

    if-eqz p1, :cond_12

    .line 2836
    iget-object p1, p0, Lcom/lostpixels/fieldservice/activities/territory/TerritoryList$19;->val$alertDialog:Landroidx/appcompat/app/AlertDialog;

    invoke-virtual {p1}, Landroidx/appcompat/app/AppCompatDialog;->dismiss()V
    :try_end_e
    .catch Ljava/lang/Exception; {:try_start_e .. :try_end_e} :catch_1

    .line 2841
    :cond_12
    :goto_6
    iget-object p1, p0, Lcom/lostpixels/fieldservice/activities/territory/TerritoryList$19;->this$0:Lcom/lostpixels/fieldservice/activities/territory/TerritoryList;

    invoke-virtual {p1}, Lcom/lostpixels/fieldservice/activities/territory/TerritoryList;->isMapView()Z

    move-result p1

    if-eqz p1, :cond_13

    iget-object p1, p0, Lcom/lostpixels/fieldservice/activities/territory/TerritoryList$19;->this$0:Lcom/lostpixels/fieldservice/activities/territory/TerritoryList;

    invoke-static {p1}, Lcom/lostpixels/fieldservice/activities/territory/TerritoryList;->-$$Nest$fgetmMapFragment(Lcom/lostpixels/fieldservice/activities/territory/TerritoryList;)Lcom/lostpixels/fieldservice/activities/territory/TerritoryListMapFragment;

    move-result-object p1

    if-eqz p1, :cond_13

    .line 2842
    iget-object p1, p0, Lcom/lostpixels/fieldservice/activities/territory/TerritoryList$19;->this$0:Lcom/lostpixels/fieldservice/activities/territory/TerritoryList;

    invoke-static {p1}, Lcom/lostpixels/fieldservice/activities/territory/TerritoryList;->-$$Nest$fgetmMapFragment(Lcom/lostpixels/fieldservice/activities/territory/TerritoryList;)Lcom/lostpixels/fieldservice/activities/territory/TerritoryListMapFragment;

    move-result-object p1

    invoke-virtual {p1}, Lcom/lostpixels/fieldservice/activities/territory/TerritoryListMapFragment;->updateInfoWindow()V

    .line 2844
    :cond_13
    iget-object p1, p0, Lcom/lostpixels/fieldservice/activities/territory/TerritoryList$19;->this$0:Lcom/lostpixels/fieldservice/activities/territory/TerritoryList;

    invoke-virtual {p1}, Lcom/lostpixels/fieldservice/activities/territory/TerritoryList;->saveFile()V

    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_22
        :pswitch_21
        :pswitch_20
        :pswitch_1f
        :pswitch_1e
        :pswitch_1d
        :pswitch_1c
        :pswitch_1b
        :pswitch_1a
        :pswitch_19
        :pswitch_0
        :pswitch_18
        :pswitch_0
        :pswitch_17
        :pswitch_16
        :pswitch_15
        :pswitch_14
        :pswitch_13
        :pswitch_12
        :pswitch_11
        :pswitch_10
        :pswitch_f
        :pswitch_e
        :pswitch_d
        :pswitch_c
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_b
        :pswitch_a
        :pswitch_0
        :pswitch_9
        :pswitch_8
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_3
        :pswitch_2
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method
