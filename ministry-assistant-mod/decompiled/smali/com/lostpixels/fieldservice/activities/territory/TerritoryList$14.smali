.class Lcom/lostpixels/fieldservice/activities/territory/TerritoryList$14;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/widget/AdapterView$OnItemClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/lostpixels/fieldservice/activities/territory/TerritoryList;->createLongClickDialog(Lcom/lostpixels/fieldservice/internal/ministry/Street;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/lostpixels/fieldservice/activities/territory/TerritoryList;

.field final synthetic val$alertDialog:Landroidx/appcompat/app/AlertDialog;

.field final synthetic val$street:Lcom/lostpixels/fieldservice/internal/ministry/Street;


# direct methods
.method constructor <init>(Lcom/lostpixels/fieldservice/activities/territory/TerritoryList;Landroidx/appcompat/app/AlertDialog;Lcom/lostpixels/fieldservice/internal/ministry/Street;)V
    .locals 0

    .line 1736
    iput-object p1, p0, Lcom/lostpixels/fieldservice/activities/territory/TerritoryList$14;->this$0:Lcom/lostpixels/fieldservice/activities/territory/TerritoryList;

    iput-object p2, p0, Lcom/lostpixels/fieldservice/activities/territory/TerritoryList$14;->val$alertDialog:Landroidx/appcompat/app/AlertDialog;

    iput-object p3, p0, Lcom/lostpixels/fieldservice/activities/territory/TerritoryList$14;->val$street:Lcom/lostpixels/fieldservice/internal/ministry/Street;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onItemClick(Landroid/widget/AdapterView;Landroid/view/View;IJ)V
    .locals 2

    long-to-int p1, p4

    const/4 p2, 0x4

    const/4 p3, 0x0

    if-eq p1, p2, :cond_d

    const/16 p2, 0x2b

    const/4 p4, 0x1

    if-eq p1, p2, :cond_b

    const/16 p2, 0xa

    const/4 p5, 0x2

    if-eq p1, p2, :cond_9

    const/16 p2, 0xb

    if-eq p1, p2, :cond_8

    packed-switch p1, :pswitch_data_0

    packed-switch p1, :pswitch_data_1

    goto/16 :goto_1

    .line 1924
    :pswitch_0
    :try_start_0
    iget-object p1, p0, Lcom/lostpixels/fieldservice/activities/territory/TerritoryList$14;->val$alertDialog:Landroidx/appcompat/app/AlertDialog;

    invoke-virtual {p1}, Landroid/app/Dialog;->isShowing()Z

    move-result p1

    if-eqz p1, :cond_0

    .line 1925
    iget-object p1, p0, Lcom/lostpixels/fieldservice/activities/territory/TerritoryList$14;->val$alertDialog:Landroidx/appcompat/app/AlertDialog;

    invoke-virtual {p1}, Landroidx/appcompat/app/AppCompatDialog;->dismiss()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 1929
    :catch_0
    :cond_0
    iget-object p1, p0, Lcom/lostpixels/fieldservice/activities/territory/TerritoryList$14;->val$street:Lcom/lostpixels/fieldservice/internal/ministry/Street;

    invoke-virtual {p1, p4}, Lcom/lostpixels/fieldservice/internal/ministry/Street;->setShowAddress(I)V

    .line 1930
    iget-object p1, p0, Lcom/lostpixels/fieldservice/activities/territory/TerritoryList$14;->this$0:Lcom/lostpixels/fieldservice/activities/territory/TerritoryList;

    invoke-static {p1}, Lcom/lostpixels/fieldservice/activities/territory/TerritoryList;->-$$Nest$fgetmListFragment(Lcom/lostpixels/fieldservice/activities/territory/TerritoryList;)Lcom/lostpixels/fieldservice/activities/territory/TerritoryListFragment;

    move-result-object p1

    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    invoke-virtual {p1, p4}, Lcom/lostpixels/fieldservice/activities/territory/TerritoryListFragment;->update(Z)V

    goto/16 :goto_1

    .line 1914
    :pswitch_1
    :try_start_1
    iget-object p1, p0, Lcom/lostpixels/fieldservice/activities/territory/TerritoryList$14;->val$alertDialog:Landroidx/appcompat/app/AlertDialog;

    invoke-virtual {p1}, Landroid/app/Dialog;->isShowing()Z

    move-result p1

    if-eqz p1, :cond_1

    .line 1915
    iget-object p1, p0, Lcom/lostpixels/fieldservice/activities/territory/TerritoryList$14;->val$alertDialog:Landroidx/appcompat/app/AlertDialog;

    invoke-virtual {p1}, Landroidx/appcompat/app/AppCompatDialog;->dismiss()V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    .line 1919
    :catch_1
    :cond_1
    iget-object p1, p0, Lcom/lostpixels/fieldservice/activities/territory/TerritoryList$14;->val$street:Lcom/lostpixels/fieldservice/internal/ministry/Street;

    invoke-virtual {p1, p5}, Lcom/lostpixels/fieldservice/internal/ministry/Street;->setShowAddress(I)V

    .line 1920
    iget-object p1, p0, Lcom/lostpixels/fieldservice/activities/territory/TerritoryList$14;->this$0:Lcom/lostpixels/fieldservice/activities/territory/TerritoryList;

    invoke-static {p1}, Lcom/lostpixels/fieldservice/activities/territory/TerritoryList;->-$$Nest$fgetmListFragment(Lcom/lostpixels/fieldservice/activities/territory/TerritoryList;)Lcom/lostpixels/fieldservice/activities/territory/TerritoryListFragment;

    move-result-object p1

    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    invoke-virtual {p1, p4}, Lcom/lostpixels/fieldservice/activities/territory/TerritoryListFragment;->update(Z)V

    goto/16 :goto_1

    .line 1904
    :pswitch_2
    :try_start_2
    iget-object p1, p0, Lcom/lostpixels/fieldservice/activities/territory/TerritoryList$14;->val$alertDialog:Landroidx/appcompat/app/AlertDialog;

    invoke-virtual {p1}, Landroid/app/Dialog;->isShowing()Z

    move-result p1

    if-eqz p1, :cond_2

    .line 1905
    iget-object p1, p0, Lcom/lostpixels/fieldservice/activities/territory/TerritoryList$14;->val$alertDialog:Landroidx/appcompat/app/AlertDialog;

    invoke-virtual {p1}, Landroidx/appcompat/app/AppCompatDialog;->dismiss()V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_2

    .line 1909
    :catch_2
    :cond_2
    iget-object p1, p0, Lcom/lostpixels/fieldservice/activities/territory/TerritoryList$14;->val$street:Lcom/lostpixels/fieldservice/internal/ministry/Street;

    invoke-virtual {p1, p3}, Lcom/lostpixels/fieldservice/internal/ministry/Street;->setShowAddress(I)V

    .line 1910
    iget-object p1, p0, Lcom/lostpixels/fieldservice/activities/territory/TerritoryList$14;->this$0:Lcom/lostpixels/fieldservice/activities/territory/TerritoryList;

    invoke-static {p1}, Lcom/lostpixels/fieldservice/activities/territory/TerritoryList;->-$$Nest$fgetmListFragment(Lcom/lostpixels/fieldservice/activities/territory/TerritoryList;)Lcom/lostpixels/fieldservice/activities/territory/TerritoryListFragment;

    move-result-object p1

    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    invoke-virtual {p1, p4}, Lcom/lostpixels/fieldservice/activities/territory/TerritoryListFragment;->update(Z)V

    goto/16 :goto_1

    .line 1873
    :pswitch_3
    new-instance p1, Landroidx/appcompat/app/AlertDialog$Builder;

    iget-object p2, p0, Lcom/lostpixels/fieldservice/activities/territory/TerritoryList$14;->this$0:Lcom/lostpixels/fieldservice/activities/territory/TerritoryList;

    invoke-direct {p1, p2}, Landroidx/appcompat/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 1874
    iget-object p2, p0, Lcom/lostpixels/fieldservice/activities/territory/TerritoryList$14;->this$0:Lcom/lostpixels/fieldservice/activities/territory/TerritoryList;

    const p4, 0x7f1201a2

    invoke-virtual {p2, p4}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Landroidx/appcompat/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroidx/appcompat/app/AlertDialog$Builder;

    move-result-object p2

    invoke-virtual {p2, p3}, Landroidx/appcompat/app/AlertDialog$Builder;->setCancelable(Z)Landroidx/appcompat/app/AlertDialog$Builder;

    move-result-object p2

    iget-object p3, p0, Lcom/lostpixels/fieldservice/activities/territory/TerritoryList$14;->this$0:Lcom/lostpixels/fieldservice/activities/territory/TerritoryList;

    const p4, 0x7f12055b

    .line 1875
    invoke-virtual {p3, p4}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p3

    new-instance p4, Lcom/lostpixels/fieldservice/activities/territory/TerritoryList$14$4;

    invoke-direct {p4, p0}, Lcom/lostpixels/fieldservice/activities/territory/TerritoryList$14$4;-><init>(Lcom/lostpixels/fieldservice/activities/territory/TerritoryList$14;)V

    invoke-virtual {p2, p3, p4}, Landroidx/appcompat/app/AlertDialog$Builder;->setPositiveButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroidx/appcompat/app/AlertDialog$Builder;

    move-result-object p2

    iget-object p3, p0, Lcom/lostpixels/fieldservice/activities/territory/TerritoryList$14;->this$0:Lcom/lostpixels/fieldservice/activities/territory/TerritoryList;

    const p4, 0x7f12045b

    .line 1886
    invoke-virtual {p3, p4}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p3

    new-instance p4, Lcom/lostpixels/fieldservice/activities/territory/TerritoryList$14$3;

    invoke-direct {p4, p0}, Lcom/lostpixels/fieldservice/activities/territory/TerritoryList$14$3;-><init>(Lcom/lostpixels/fieldservice/activities/territory/TerritoryList$14;)V

    invoke-virtual {p2, p3, p4}, Landroidx/appcompat/app/AlertDialog$Builder;->setNegativeButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroidx/appcompat/app/AlertDialog$Builder;

    .line 1893
    :try_start_3
    iget-object p2, p0, Lcom/lostpixels/fieldservice/activities/territory/TerritoryList$14;->val$alertDialog:Landroidx/appcompat/app/AlertDialog;

    invoke-virtual {p2}, Landroid/app/Dialog;->isShowing()Z

    move-result p2

    if-eqz p2, :cond_3

    .line 1894
    iget-object p2, p0, Lcom/lostpixels/fieldservice/activities/territory/TerritoryList$14;->val$alertDialog:Landroidx/appcompat/app/AlertDialog;

    invoke-virtual {p2}, Landroidx/appcompat/app/AppCompatDialog;->dismiss()V
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_3

    .line 1899
    :catch_3
    :cond_3
    invoke-virtual {p1}, Landroidx/appcompat/app/AlertDialog$Builder;->create()Landroidx/appcompat/app/AlertDialog;

    move-result-object p1

    .line 1900
    invoke-virtual {p1}, Landroid/app/Dialog;->show()V

    goto/16 :goto_1

    .line 1820
    :pswitch_4
    new-instance p1, Landroid/app/Dialog;

    iget-object p2, p0, Lcom/lostpixels/fieldservice/activities/territory/TerritoryList$14;->this$0:Lcom/lostpixels/fieldservice/activities/territory/TerritoryList;

    invoke-direct {p1, p2}, Landroid/app/Dialog;-><init>(Landroid/content/Context;)V

    .line 1821
    iget-object p2, p0, Lcom/lostpixels/fieldservice/activities/territory/TerritoryList$14;->this$0:Lcom/lostpixels/fieldservice/activities/territory/TerritoryList;

    invoke-static {p2}, Lcom/lostpixels/fieldservice/activities/territory/TerritoryList;->-$$Nest$fgetmTerritory(Lcom/lostpixels/fieldservice/activities/territory/TerritoryList;)Lcom/lostpixels/fieldservice/internal/ministry/Territory;

    move-result-object p2

    invoke-static {p2}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    invoke-virtual {p2}, Lcom/lostpixels/fieldservice/internal/ministry/Territory;->getStreets()Ljava/util/List;

    move-result-object p2

    iget-object p3, p0, Lcom/lostpixels/fieldservice/activities/territory/TerritoryList$14;->val$street:Lcom/lostpixels/fieldservice/internal/ministry/Street;

    invoke-interface {p2, p3}, Ljava/util/List;->indexOf(Ljava/lang/Object;)I

    move-result p2

    const/4 p3, -0x1

    if-eq p2, p3, :cond_5

    const p3, 0x7f0c0092

    .line 1823
    invoke-virtual {p1, p3}, Landroid/app/Dialog;->setContentView(I)V

    .line 1824
    iget-object p3, p0, Lcom/lostpixels/fieldservice/activities/territory/TerritoryList$14;->this$0:Lcom/lostpixels/fieldservice/activities/territory/TerritoryList;

    const p5, 0x7f1204aa

    invoke-virtual {p3, p5}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p3

    invoke-virtual {p1, p3}, Landroid/app/Dialog;->setTitle(Ljava/lang/CharSequence;)V

    const p3, 0x7f0902a4

    .line 1826
    invoke-virtual {p1, p3}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    move-result-object p3

    check-cast p3, Landroid/widget/AutoCompleteTextView;

    .line 1827
    invoke-virtual {p3, p4}, Landroid/widget/AutoCompleteTextView;->setThreshold(I)V

    .line 1828
    new-instance p4, Ljava/util/ArrayList;

    invoke-direct {p4}, Ljava/util/ArrayList;-><init>()V

    .line 1829
    iget-object p5, p0, Lcom/lostpixels/fieldservice/activities/territory/TerritoryList$14;->this$0:Lcom/lostpixels/fieldservice/activities/territory/TerritoryList;

    invoke-static {p5}, Lcom/lostpixels/fieldservice/activities/territory/TerritoryList;->-$$Nest$fgetmTerritory(Lcom/lostpixels/fieldservice/activities/territory/TerritoryList;)Lcom/lostpixels/fieldservice/internal/ministry/Territory;

    move-result-object p5

    invoke-virtual {p5}, Lcom/lostpixels/fieldservice/internal/ministry/Territory;->getStreets()Ljava/util/List;

    move-result-object p5

    invoke-interface {p5}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p5

    :goto_0
    invoke-interface {p5}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_4

    invoke-interface {p5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/lostpixels/fieldservice/internal/ministry/Street;

    .line 1830
    invoke-virtual {v0}, Lcom/lostpixels/fieldservice/internal/ministry/Street;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p4, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 1831
    :cond_4
    new-instance p5, Lcom/lostpixels/fieldservice/activities/territory/TerritoryList$StreetNameAdapter;

    iget-object v0, p0, Lcom/lostpixels/fieldservice/activities/territory/TerritoryList$14;->this$0:Lcom/lostpixels/fieldservice/activities/territory/TerritoryList;

    const v1, 0x109000a

    invoke-direct {p5, v0, v0, v1, p4}, Lcom/lostpixels/fieldservice/activities/territory/TerritoryList$StreetNameAdapter;-><init>(Lcom/lostpixels/fieldservice/activities/territory/TerritoryList;Landroid/content/Context;ILjava/util/ArrayList;)V

    .line 1833
    invoke-virtual {p3, p5}, Landroid/widget/AutoCompleteTextView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 1834
    iget-object p4, p0, Lcom/lostpixels/fieldservice/activities/territory/TerritoryList$14;->this$0:Lcom/lostpixels/fieldservice/activities/territory/TerritoryList;

    const p5, 0x7f1201c1

    invoke-virtual {p4, p5}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p4

    invoke-virtual {p3, p4}, Landroid/widget/TextView;->setHint(Ljava/lang/CharSequence;)V

    .line 1835
    iget-object p4, p0, Lcom/lostpixels/fieldservice/activities/territory/TerritoryList$14;->this$0:Lcom/lostpixels/fieldservice/activities/territory/TerritoryList;

    invoke-static {p4}, Lcom/lostpixels/fieldservice/activities/territory/TerritoryList;->-$$Nest$fgetmTerritory(Lcom/lostpixels/fieldservice/activities/territory/TerritoryList;)Lcom/lostpixels/fieldservice/internal/ministry/Territory;

    move-result-object p4

    invoke-virtual {p4}, Lcom/lostpixels/fieldservice/internal/ministry/Territory;->getStreets()Ljava/util/List;

    move-result-object p4

    invoke-interface {p4, p2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p4

    check-cast p4, Lcom/lostpixels/fieldservice/internal/ministry/Street;

    invoke-virtual {p4}, Lcom/lostpixels/fieldservice/internal/ministry/Street;->getName()Ljava/lang/String;

    move-result-object p4

    invoke-virtual {p3, p4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    const p4, 0x7f0900f5

    .line 1836
    invoke-virtual {p1, p4}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    move-result-object p4

    check-cast p4, Landroid/widget/Button;

    .line 1837
    new-instance p5, Lcom/lostpixels/fieldservice/activities/territory/TerritoryList$14$2;

    invoke-direct {p5, p0, p2, p3, p1}, Lcom/lostpixels/fieldservice/activities/territory/TerritoryList$14$2;-><init>(Lcom/lostpixels/fieldservice/activities/territory/TerritoryList$14;ILandroid/widget/AutoCompleteTextView;Landroid/app/Dialog;)V

    invoke-virtual {p4, p5}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 1852
    invoke-virtual {p1}, Landroid/app/Dialog;->show()V

    .line 1855
    :cond_5
    :try_start_4
    iget-object p1, p0, Lcom/lostpixels/fieldservice/activities/territory/TerritoryList$14;->val$alertDialog:Landroidx/appcompat/app/AlertDialog;

    invoke-virtual {p1}, Landroid/app/Dialog;->isShowing()Z

    move-result p1

    if-eqz p1, :cond_f

    .line 1856
    iget-object p1, p0, Lcom/lostpixels/fieldservice/activities/territory/TerritoryList$14;->val$alertDialog:Landroidx/appcompat/app/AlertDialog;

    invoke-virtual {p1}, Landroidx/appcompat/app/AppCompatDialog;->dismiss()V
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_8

    return-void

    .line 1809
    :pswitch_5
    iget-object p1, p0, Lcom/lostpixels/fieldservice/activities/territory/TerritoryList$14;->this$0:Lcom/lostpixels/fieldservice/activities/territory/TerritoryList;

    invoke-static {p1}, Lcom/lostpixels/fieldservice/utils/NetworkUtils;->testInternetConnection(Landroid/content/Context;)Z

    move-result p1

    if-eqz p1, :cond_6

    .line 1810
    iget-object p1, p0, Lcom/lostpixels/fieldservice/activities/territory/TerritoryList$14;->this$0:Lcom/lostpixels/fieldservice/activities/territory/TerritoryList;

    iget-object p2, p0, Lcom/lostpixels/fieldservice/activities/territory/TerritoryList$14;->val$street:Lcom/lostpixels/fieldservice/internal/ministry/Street;

    invoke-static {p1, p2}, Lcom/lostpixels/fieldservice/activities/territory/TerritoryList;->-$$Nest$mupdatePositionsFromAddress(Lcom/lostpixels/fieldservice/activities/territory/TerritoryList;Lcom/lostpixels/fieldservice/internal/ministry/Street;)V

    .line 1812
    :cond_6
    :try_start_5
    iget-object p1, p0, Lcom/lostpixels/fieldservice/activities/territory/TerritoryList$14;->val$alertDialog:Landroidx/appcompat/app/AlertDialog;

    invoke-virtual {p1}, Landroid/app/Dialog;->isShowing()Z

    move-result p1

    if-eqz p1, :cond_f

    .line 1813
    iget-object p1, p0, Lcom/lostpixels/fieldservice/activities/territory/TerritoryList$14;->val$alertDialog:Landroidx/appcompat/app/AlertDialog;

    invoke-virtual {p1}, Landroidx/appcompat/app/AppCompatDialog;->dismiss()V
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_8

    return-void

    .line 1741
    :pswitch_6
    :try_start_6
    iget-object p1, p0, Lcom/lostpixels/fieldservice/activities/territory/TerritoryList$14;->val$alertDialog:Landroidx/appcompat/app/AlertDialog;

    invoke-virtual {p1}, Landroid/app/Dialog;->isShowing()Z

    move-result p1

    if-eqz p1, :cond_7

    .line 1742
    iget-object p1, p0, Lcom/lostpixels/fieldservice/activities/territory/TerritoryList$14;->val$alertDialog:Landroidx/appcompat/app/AlertDialog;

    invoke-virtual {p1}, Landroidx/appcompat/app/AppCompatDialog;->dismiss()V
    :try_end_6
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_6} :catch_4

    .line 1746
    :catch_4
    :cond_7
    iget-object p1, p0, Lcom/lostpixels/fieldservice/activities/territory/TerritoryList$14;->this$0:Lcom/lostpixels/fieldservice/activities/territory/TerritoryList;

    iget-object p2, p0, Lcom/lostpixels/fieldservice/activities/territory/TerritoryList$14;->val$street:Lcom/lostpixels/fieldservice/internal/ministry/Street;

    invoke-static {p1, p2}, Lcom/lostpixels/fieldservice/activities/territory/TerritoryList;->-$$Nest$maddAddress(Lcom/lostpixels/fieldservice/activities/territory/TerritoryList;Lcom/lostpixels/fieldservice/internal/ministry/Street;)V

    goto/16 :goto_1

    .line 1862
    :cond_8
    new-instance p1, Landroid/content/Intent;

    iget-object p2, p0, Lcom/lostpixels/fieldservice/activities/territory/TerritoryList$14;->this$0:Lcom/lostpixels/fieldservice/activities/territory/TerritoryList;

    const-class p3, Lcom/lostpixels/fieldservice/activities/territory/dialogs/RuralTerritoryReorder;

    invoke-direct {p1, p2, p3}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 1863
    const-string p2, "Street"

    iget-object p3, p0, Lcom/lostpixels/fieldservice/activities/territory/TerritoryList$14;->val$street:Lcom/lostpixels/fieldservice/internal/ministry/Street;

    invoke-virtual {p1, p2, p3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 1864
    iget-object p2, p0, Lcom/lostpixels/fieldservice/activities/territory/TerritoryList$14;->this$0:Lcom/lostpixels/fieldservice/activities/territory/TerritoryList;

    const/4 p3, 0x5

    invoke-virtual {p2, p1, p3}, Landroidx/activity/ComponentActivity;->startActivityForResult(Landroid/content/Intent;I)V

    .line 1866
    :try_start_7
    iget-object p1, p0, Lcom/lostpixels/fieldservice/activities/territory/TerritoryList$14;->val$alertDialog:Landroidx/appcompat/app/AlertDialog;

    invoke-virtual {p1}, Landroid/app/Dialog;->isShowing()Z

    move-result p1

    if-eqz p1, :cond_f

    .line 1867
    iget-object p1, p0, Lcom/lostpixels/fieldservice/activities/territory/TerritoryList$14;->val$alertDialog:Landroidx/appcompat/app/AlertDialog;

    invoke-virtual {p1}, Landroidx/appcompat/app/AppCompatDialog;->dismiss()V
    :try_end_7
    .catch Ljava/lang/Exception; {:try_start_7 .. :try_end_7} :catch_8

    return-void

    .line 1761
    :cond_9
    :try_start_8
    iget-object p1, p0, Lcom/lostpixels/fieldservice/activities/territory/TerritoryList$14;->val$alertDialog:Landroidx/appcompat/app/AlertDialog;

    invoke-virtual {p1}, Landroid/app/Dialog;->isShowing()Z

    move-result p1

    if-eqz p1, :cond_a

    .line 1762
    iget-object p1, p0, Lcom/lostpixels/fieldservice/activities/territory/TerritoryList$14;->val$alertDialog:Landroidx/appcompat/app/AlertDialog;

    invoke-virtual {p1}, Landroidx/appcompat/app/AppCompatDialog;->dismiss()V
    :try_end_8
    .catch Ljava/lang/Exception; {:try_start_8 .. :try_end_8} :catch_5

    .line 1767
    :catch_5
    :cond_a
    iget-object p1, p0, Lcom/lostpixels/fieldservice/activities/territory/TerritoryList$14;->this$0:Lcom/lostpixels/fieldservice/activities/territory/TerritoryList;

    const p2, 0x7f1201be

    invoke-virtual {p1, p2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p1

    iget-object p2, p0, Lcom/lostpixels/fieldservice/activities/territory/TerritoryList$14;->this$0:Lcom/lostpixels/fieldservice/activities/territory/TerritoryList;

    const v0, 0x7f1201bd

    invoke-virtual {p2, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p2

    new-array p5, p5, [Ljava/lang/CharSequence;

    aput-object p1, p5, p3

    aput-object p2, p5, p4

    .line 1769
    new-instance p1, Landroidx/appcompat/app/AlertDialog$Builder;

    iget-object p2, p0, Lcom/lostpixels/fieldservice/activities/territory/TerritoryList$14;->this$0:Lcom/lostpixels/fieldservice/activities/territory/TerritoryList;

    invoke-direct {p1, p2}, Landroidx/appcompat/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 1770
    iget-object p2, p0, Lcom/lostpixels/fieldservice/activities/territory/TerritoryList$14;->this$0:Lcom/lostpixels/fieldservice/activities/territory/TerritoryList;

    const p3, 0x7f1201bc

    invoke-virtual {p2, p3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Landroidx/appcompat/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Landroidx/appcompat/app/AlertDialog$Builder;

    .line 1771
    new-instance p2, Lcom/lostpixels/fieldservice/activities/territory/TerritoryList$14$1;

    invoke-direct {p2, p0}, Lcom/lostpixels/fieldservice/activities/territory/TerritoryList$14$1;-><init>(Lcom/lostpixels/fieldservice/activities/territory/TerritoryList$14;)V

    invoke-virtual {p1, p5, p2}, Landroidx/appcompat/app/AlertDialog$Builder;->setItems([Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroidx/appcompat/app/AlertDialog$Builder;

    .line 1805
    invoke-virtual {p1}, Landroidx/appcompat/app/AlertDialog$Builder;->create()Landroidx/appcompat/app/AlertDialog;

    move-result-object p1

    .line 1806
    invoke-virtual {p1}, Landroid/app/Dialog;->show()V

    goto/16 :goto_1

    .line 1751
    :cond_b
    :try_start_9
    iget-object p1, p0, Lcom/lostpixels/fieldservice/activities/territory/TerritoryList$14;->val$alertDialog:Landroidx/appcompat/app/AlertDialog;

    invoke-virtual {p1}, Landroid/app/Dialog;->isShowing()Z

    move-result p1

    if-eqz p1, :cond_c

    .line 1752
    iget-object p1, p0, Lcom/lostpixels/fieldservice/activities/territory/TerritoryList$14;->val$alertDialog:Landroidx/appcompat/app/AlertDialog;

    invoke-virtual {p1}, Landroidx/appcompat/app/AppCompatDialog;->dismiss()V
    :try_end_9
    .catch Ljava/lang/Exception; {:try_start_9 .. :try_end_9} :catch_6

    .line 1756
    :catch_6
    :cond_c
    iget-object p1, p0, Lcom/lostpixels/fieldservice/activities/territory/TerritoryList$14;->val$street:Lcom/lostpixels/fieldservice/internal/ministry/Street;

    invoke-virtual {p1, p4}, Lcom/lostpixels/fieldservice/internal/ministry/Street;->sort(Z)V

    .line 1757
    iget-object p1, p0, Lcom/lostpixels/fieldservice/activities/territory/TerritoryList$14;->this$0:Lcom/lostpixels/fieldservice/activities/territory/TerritoryList;

    invoke-static {p1}, Lcom/lostpixels/fieldservice/activities/territory/TerritoryList;->-$$Nest$fgetmListFragment(Lcom/lostpixels/fieldservice/activities/territory/TerritoryList;)Lcom/lostpixels/fieldservice/activities/territory/TerritoryListFragment;

    move-result-object p1

    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    invoke-virtual {p1, p4}, Lcom/lostpixels/fieldservice/activities/territory/TerritoryListFragment;->update(Z)V

    goto :goto_1

    .line 1933
    :cond_d
    new-instance p1, Landroidx/appcompat/app/AlertDialog$Builder;

    iget-object p2, p0, Lcom/lostpixels/fieldservice/activities/territory/TerritoryList$14;->this$0:Lcom/lostpixels/fieldservice/activities/territory/TerritoryList;

    invoke-direct {p1, p2}, Landroidx/appcompat/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 1935
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    iget-object p4, p0, Lcom/lostpixels/fieldservice/activities/territory/TerritoryList$14;->this$0:Lcom/lostpixels/fieldservice/activities/territory/TerritoryList;

    const p5, 0x7f120155

    invoke-virtual {p4, p5}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p4

    invoke-virtual {p2, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p4, "\n"

    invoke-virtual {p2, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p4, p0, Lcom/lostpixels/fieldservice/activities/territory/TerritoryList$14;->val$street:Lcom/lostpixels/fieldservice/internal/ministry/Street;

    invoke-virtual {p4}, Lcom/lostpixels/fieldservice/internal/ministry/Street;->getName()Ljava/lang/String;

    move-result-object p4

    invoke-virtual {p2, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Landroidx/appcompat/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroidx/appcompat/app/AlertDialog$Builder;

    move-result-object p2

    .line 1936
    invoke-virtual {p2, p3}, Landroidx/appcompat/app/AlertDialog$Builder;->setCancelable(Z)Landroidx/appcompat/app/AlertDialog$Builder;

    move-result-object p2

    iget-object p3, p0, Lcom/lostpixels/fieldservice/activities/territory/TerritoryList$14;->this$0:Lcom/lostpixels/fieldservice/activities/territory/TerritoryList;

    const p4, 0x7f120158

    .line 1937
    invoke-virtual {p3, p4}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p3

    new-instance p4, Lcom/lostpixels/fieldservice/activities/territory/TerritoryList$14$6;

    invoke-direct {p4, p0}, Lcom/lostpixels/fieldservice/activities/territory/TerritoryList$14$6;-><init>(Lcom/lostpixels/fieldservice/activities/territory/TerritoryList$14;)V

    invoke-virtual {p2, p3, p4}, Landroidx/appcompat/app/AlertDialog$Builder;->setPositiveButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroidx/appcompat/app/AlertDialog$Builder;

    move-result-object p2

    iget-object p3, p0, Lcom/lostpixels/fieldservice/activities/territory/TerritoryList$14;->this$0:Lcom/lostpixels/fieldservice/activities/territory/TerritoryList;

    const p4, 0x7f120152

    .line 1948
    invoke-virtual {p3, p4}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p3

    new-instance p4, Lcom/lostpixels/fieldservice/activities/territory/TerritoryList$14$5;

    invoke-direct {p4, p0}, Lcom/lostpixels/fieldservice/activities/territory/TerritoryList$14$5;-><init>(Lcom/lostpixels/fieldservice/activities/territory/TerritoryList$14;)V

    invoke-virtual {p2, p3, p4}, Landroidx/appcompat/app/AlertDialog$Builder;->setNegativeButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroidx/appcompat/app/AlertDialog$Builder;

    .line 1955
    :try_start_a
    iget-object p2, p0, Lcom/lostpixels/fieldservice/activities/territory/TerritoryList$14;->val$alertDialog:Landroidx/appcompat/app/AlertDialog;

    invoke-virtual {p2}, Landroid/app/Dialog;->isShowing()Z

    move-result p2

    if-eqz p2, :cond_e

    .line 1956
    iget-object p2, p0, Lcom/lostpixels/fieldservice/activities/territory/TerritoryList$14;->val$alertDialog:Landroidx/appcompat/app/AlertDialog;

    invoke-virtual {p2}, Landroidx/appcompat/app/AppCompatDialog;->dismiss()V
    :try_end_a
    .catch Ljava/lang/Exception; {:try_start_a .. :try_end_a} :catch_7

    .line 1961
    :catch_7
    :cond_e
    invoke-virtual {p1}, Landroidx/appcompat/app/AlertDialog$Builder;->create()Landroidx/appcompat/app/AlertDialog;

    move-result-object p1

    .line 1962
    invoke-virtual {p1}, Landroid/app/Dialog;->show()V

    :catch_8
    :cond_f
    :goto_1
    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x19
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
    .end packed-switch

    :pswitch_data_1
    .packed-switch 0x26
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
