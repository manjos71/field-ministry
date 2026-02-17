.class Lcom/lostpixels/fieldservice/activities/territory/TerritoryList$6;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/widget/AdapterView$OnItemClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/lostpixels/fieldservice/activities/territory/TerritoryList;->displayFilterDialog()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/lostpixels/fieldservice/activities/territory/TerritoryList;

.field final synthetic val$alertDialog:Landroidx/appcompat/app/AlertDialog;


# direct methods
.method constructor <init>(Lcom/lostpixels/fieldservice/activities/territory/TerritoryList;Landroidx/appcompat/app/AlertDialog;)V
    .locals 0

    .line 780
    iput-object p1, p0, Lcom/lostpixels/fieldservice/activities/territory/TerritoryList$6;->this$0:Lcom/lostpixels/fieldservice/activities/territory/TerritoryList;

    iput-object p2, p0, Lcom/lostpixels/fieldservice/activities/territory/TerritoryList$6;->val$alertDialog:Landroidx/appcompat/app/AlertDialog;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onItemClick(Landroid/widget/AdapterView;Landroid/view/View;IJ)V
    .locals 6

    long-to-int p1, p4

    const/4 p2, 0x5

    const/4 p3, 0x1

    if-eqz p1, :cond_d

    if-eq p1, p3, :cond_c

    const/4 p4, 0x3

    if-eq p1, p4, :cond_b

    if-eq p1, p2, :cond_a

    const/16 p5, 0x9

    if-eq p1, p5, :cond_9

    const/16 p4, 0x18

    if-eq p1, p4, :cond_8

    const/16 p4, 0x1f

    if-eq p1, p4, :cond_6

    const/16 p2, 0x29

    if-eq p1, p2, :cond_5

    const/16 p2, 0x2c

    const/16 p4, 0x14

    if-eq p1, p2, :cond_4

    if-eq p1, p4, :cond_3

    const/16 p2, 0x15

    if-eq p1, p2, :cond_2

    const/16 p2, 0x23

    if-eq p1, p2, :cond_1

    const/16 p2, 0x24

    if-eq p1, p2, :cond_0

    packed-switch p1, :pswitch_data_0

    goto/16 :goto_0

    .line 797
    :pswitch_0
    iget-object p1, p0, Lcom/lostpixels/fieldservice/activities/territory/TerritoryList$6;->this$0:Lcom/lostpixels/fieldservice/activities/territory/TerritoryList;

    const/16 p2, 0xa

    iput p2, p1, Lcom/lostpixels/fieldservice/activities/territory/TerritoryList;->meFilterOptions:I

    goto/16 :goto_0

    .line 794
    :pswitch_1
    iget-object p1, p0, Lcom/lostpixels/fieldservice/activities/territory/TerritoryList$6;->this$0:Lcom/lostpixels/fieldservice/activities/territory/TerritoryList;

    const/16 p2, 0x8

    iput p2, p1, Lcom/lostpixels/fieldservice/activities/territory/TerritoryList;->meFilterOptions:I

    goto/16 :goto_0

    .line 827
    :pswitch_2
    iget-object p1, p0, Lcom/lostpixels/fieldservice/activities/territory/TerritoryList$6;->this$0:Lcom/lostpixels/fieldservice/activities/territory/TerritoryList;

    const/16 p2, 0xe

    iput p2, p1, Lcom/lostpixels/fieldservice/activities/territory/TerritoryList;->meFilterOptions:I

    goto/16 :goto_0

    .line 824
    :pswitch_3
    iget-object p1, p0, Lcom/lostpixels/fieldservice/activities/territory/TerritoryList$6;->this$0:Lcom/lostpixels/fieldservice/activities/territory/TerritoryList;

    const/16 p2, 0xd

    iput p2, p1, Lcom/lostpixels/fieldservice/activities/territory/TerritoryList;->meFilterOptions:I

    goto/16 :goto_0

    .line 821
    :cond_0
    iget-object p1, p0, Lcom/lostpixels/fieldservice/activities/territory/TerritoryList$6;->this$0:Lcom/lostpixels/fieldservice/activities/territory/TerritoryList;

    const/16 p2, 0x11

    iput p2, p1, Lcom/lostpixels/fieldservice/activities/territory/TerritoryList;->meFilterOptions:I

    goto/16 :goto_0

    .line 818
    :cond_1
    iget-object p1, p0, Lcom/lostpixels/fieldservice/activities/territory/TerritoryList$6;->this$0:Lcom/lostpixels/fieldservice/activities/territory/TerritoryList;

    const/16 p2, 0x10

    iput p2, p1, Lcom/lostpixels/fieldservice/activities/territory/TerritoryList;->meFilterOptions:I

    goto/16 :goto_0

    .line 830
    :cond_2
    iget-object p1, p0, Lcom/lostpixels/fieldservice/activities/territory/TerritoryList$6;->this$0:Lcom/lostpixels/fieldservice/activities/territory/TerritoryList;

    const/16 p2, 0x13

    iput p2, p1, Lcom/lostpixels/fieldservice/activities/territory/TerritoryList;->meFilterOptions:I

    goto/16 :goto_0

    .line 800
    :cond_3
    iget-object p1, p0, Lcom/lostpixels/fieldservice/activities/territory/TerritoryList$6;->this$0:Lcom/lostpixels/fieldservice/activities/territory/TerritoryList;

    const/16 p2, 0xb

    iput p2, p1, Lcom/lostpixels/fieldservice/activities/territory/TerritoryList;->meFilterOptions:I

    goto/16 :goto_0

    .line 815
    :cond_4
    iget-object p1, p0, Lcom/lostpixels/fieldservice/activities/territory/TerritoryList$6;->this$0:Lcom/lostpixels/fieldservice/activities/territory/TerritoryList;

    iput p4, p1, Lcom/lostpixels/fieldservice/activities/territory/TerritoryList;->meFilterOptions:I

    goto/16 :goto_0

    .line 812
    :cond_5
    iget-object p1, p0, Lcom/lostpixels/fieldservice/activities/territory/TerritoryList$6;->this$0:Lcom/lostpixels/fieldservice/activities/territory/TerritoryList;

    const/16 p2, 0x12

    iput p2, p1, Lcom/lostpixels/fieldservice/activities/territory/TerritoryList;->meFilterOptions:I

    goto/16 :goto_0

    .line 834
    :cond_6
    iget-object p1, p0, Lcom/lostpixels/fieldservice/activities/territory/TerritoryList$6;->this$0:Lcom/lostpixels/fieldservice/activities/territory/TerritoryList;

    invoke-static {p1}, Lcom/lostpixels/fieldservice/activities/territory/TerritoryList;->-$$Nest$fgetmFilterDateSetListener(Lcom/lostpixels/fieldservice/activities/territory/TerritoryList;)Lcom/fourmob/datetimepicker/date/DatePickerDialog$OnDateSetListener;

    move-result-object v0

    iget-object p1, p0, Lcom/lostpixels/fieldservice/activities/territory/TerritoryList$6;->this$0:Lcom/lostpixels/fieldservice/activities/territory/TerritoryList;

    invoke-static {p1}, Lcom/lostpixels/fieldservice/activities/territory/TerritoryList;->-$$Nest$fgetmFilterDate(Lcom/lostpixels/fieldservice/activities/territory/TerritoryList;)Ljava/util/Calendar;

    move-result-object p1

    invoke-virtual {p1, p3}, Ljava/util/Calendar;->get(I)I

    move-result v1

    iget-object p1, p0, Lcom/lostpixels/fieldservice/activities/territory/TerritoryList$6;->this$0:Lcom/lostpixels/fieldservice/activities/territory/TerritoryList;

    invoke-static {p1}, Lcom/lostpixels/fieldservice/activities/territory/TerritoryList;->-$$Nest$fgetmFilterDate(Lcom/lostpixels/fieldservice/activities/territory/TerritoryList;)Ljava/util/Calendar;

    move-result-object p1

    const/4 p4, 0x2

    invoke-virtual {p1, p4}, Ljava/util/Calendar;->get(I)I

    move-result v2

    iget-object p1, p0, Lcom/lostpixels/fieldservice/activities/territory/TerritoryList$6;->this$0:Lcom/lostpixels/fieldservice/activities/territory/TerritoryList;

    invoke-static {p1}, Lcom/lostpixels/fieldservice/activities/territory/TerritoryList;->-$$Nest$fgetmFilterDate(Lcom/lostpixels/fieldservice/activities/territory/TerritoryList;)Ljava/util/Calendar;

    move-result-object p1

    invoke-virtual {p1, p2}, Ljava/util/Calendar;->get(I)I

    move-result v3

    const/4 v4, 0x0

    const/4 v5, 0x0

    invoke-static/range {v0 .. v5}, Lcom/fourmob/datetimepicker/date/DatePickerDialog;->newInstance(Lcom/fourmob/datetimepicker/date/DatePickerDialog$OnDateSetListener;IIIZZ)Lcom/fourmob/datetimepicker/date/DatePickerDialog;

    move-result-object p1

    .line 835
    iget-object p2, p0, Lcom/lostpixels/fieldservice/activities/territory/TerritoryList$6;->this$0:Lcom/lostpixels/fieldservice/activities/territory/TerritoryList;

    invoke-static {p2}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object p2

    .line 836
    const-string p5, "checkFirstDayOfWeek"

    const/4 v0, 0x0

    invoke-interface {p2, p5, v0}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result p2

    if-eqz p2, :cond_7

    const/4 p4, 0x1

    .line 837
    :cond_7
    invoke-virtual {p1, p4}, Lcom/fourmob/datetimepicker/date/DatePickerDialog;->setFirstDayOfWeek(I)V

    const/16 p2, 0x7c1

    const/16 p4, 0x7ec

    .line 839
    invoke-virtual {p1, p2, p4}, Lcom/fourmob/datetimepicker/date/DatePickerDialog;->setYearRange(II)V

    .line 841
    iget-object p2, p0, Lcom/lostpixels/fieldservice/activities/territory/TerritoryList$6;->this$0:Lcom/lostpixels/fieldservice/activities/territory/TerritoryList;

    invoke-virtual {p2}, Landroidx/fragment/app/FragmentActivity;->getSupportFragmentManager()Landroidx/fragment/app/FragmentManager;

    move-result-object p2

    const-string p4, "datepicker"

    invoke-virtual {p1, p2, p4}, Landroidx/fragment/app/DialogFragment;->show(Landroidx/fragment/app/FragmentManager;Ljava/lang/String;)V

    goto :goto_1

    .line 809
    :cond_8
    iget-object p1, p0, Lcom/lostpixels/fieldservice/activities/territory/TerritoryList$6;->this$0:Lcom/lostpixels/fieldservice/activities/territory/TerritoryList;

    const/16 p2, 0xc

    iput p2, p1, Lcom/lostpixels/fieldservice/activities/territory/TerritoryList;->meFilterOptions:I

    goto :goto_0

    .line 806
    :cond_9
    iget-object p1, p0, Lcom/lostpixels/fieldservice/activities/territory/TerritoryList$6;->this$0:Lcom/lostpixels/fieldservice/activities/territory/TerritoryList;

    iput p4, p1, Lcom/lostpixels/fieldservice/activities/territory/TerritoryList;->meFilterOptions:I

    goto :goto_0

    .line 791
    :cond_a
    iget-object p1, p0, Lcom/lostpixels/fieldservice/activities/territory/TerritoryList$6;->this$0:Lcom/lostpixels/fieldservice/activities/territory/TerritoryList;

    const/4 p2, 0x7

    iput p2, p1, Lcom/lostpixels/fieldservice/activities/territory/TerritoryList;->meFilterOptions:I

    goto :goto_0

    .line 803
    :cond_b
    iget-object p1, p0, Lcom/lostpixels/fieldservice/activities/territory/TerritoryList$6;->this$0:Lcom/lostpixels/fieldservice/activities/territory/TerritoryList;

    const/4 p2, 0x6

    iput p2, p1, Lcom/lostpixels/fieldservice/activities/territory/TerritoryList;->meFilterOptions:I

    goto :goto_0

    .line 788
    :cond_c
    iget-object p1, p0, Lcom/lostpixels/fieldservice/activities/territory/TerritoryList$6;->this$0:Lcom/lostpixels/fieldservice/activities/territory/TerritoryList;

    const/4 p2, 0x4

    iput p2, p1, Lcom/lostpixels/fieldservice/activities/territory/TerritoryList;->meFilterOptions:I

    goto :goto_0

    .line 785
    :cond_d
    iget-object p1, p0, Lcom/lostpixels/fieldservice/activities/territory/TerritoryList$6;->this$0:Lcom/lostpixels/fieldservice/activities/territory/TerritoryList;

    iput p2, p1, Lcom/lostpixels/fieldservice/activities/territory/TerritoryList;->meFilterOptions:I

    :goto_0
    const/4 v0, 0x1

    .line 849
    :goto_1
    iget-object p1, p0, Lcom/lostpixels/fieldservice/activities/territory/TerritoryList$6;->val$alertDialog:Landroidx/appcompat/app/AlertDialog;

    invoke-virtual {p1}, Landroidx/appcompat/app/AppCompatDialog;->dismiss()V

    if-eqz v0, :cond_e

    .line 852
    iget-object p1, p0, Lcom/lostpixels/fieldservice/activities/territory/TerritoryList$6;->this$0:Lcom/lostpixels/fieldservice/activities/territory/TerritoryList;

    invoke-static {p1}, Lcom/lostpixels/fieldservice/activities/territory/TerritoryList;->-$$Nest$mupdateFilterInfo(Lcom/lostpixels/fieldservice/activities/territory/TerritoryList;)V

    .line 853
    iget-object p1, p0, Lcom/lostpixels/fieldservice/activities/territory/TerritoryList$6;->this$0:Lcom/lostpixels/fieldservice/activities/territory/TerritoryList;

    invoke-static {p1}, Lcom/lostpixels/fieldservice/activities/territory/TerritoryList;->-$$Nest$fgetmListFragment(Lcom/lostpixels/fieldservice/activities/territory/TerritoryList;)Lcom/lostpixels/fieldservice/activities/territory/TerritoryListFragment;

    move-result-object p1

    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    invoke-virtual {p1, p3}, Lcom/lostpixels/fieldservice/activities/territory/TerritoryListFragment;->update(Z)V

    .line 854
    iget-object p1, p0, Lcom/lostpixels/fieldservice/activities/territory/TerritoryList$6;->this$0:Lcom/lostpixels/fieldservice/activities/territory/TerritoryList;

    invoke-static {p1}, Lcom/lostpixels/fieldservice/activities/territory/TerritoryList;->-$$Nest$fgetmMapFragment(Lcom/lostpixels/fieldservice/activities/territory/TerritoryList;)Lcom/lostpixels/fieldservice/activities/territory/TerritoryListMapFragment;

    move-result-object p1

    if-eqz p1, :cond_e

    .line 855
    iget-object p1, p0, Lcom/lostpixels/fieldservice/activities/territory/TerritoryList$6;->this$0:Lcom/lostpixels/fieldservice/activities/territory/TerritoryList;

    invoke-static {p1}, Lcom/lostpixels/fieldservice/activities/territory/TerritoryList;->-$$Nest$fgetmMapFragment(Lcom/lostpixels/fieldservice/activities/territory/TerritoryList;)Lcom/lostpixels/fieldservice/activities/territory/TerritoryListMapFragment;

    move-result-object p1

    invoke-virtual {p1}, Lcom/lostpixels/fieldservice/activities/territory/TerritoryListMapFragment;->update()V

    :cond_e
    return-void

    nop

    :pswitch_data_0
    .packed-switch 0xc
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
