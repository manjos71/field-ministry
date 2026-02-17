.class public Lcom/lostpixels/fieldservice/activities/servicereport/ServiceChartActivity;
.super Lcom/lostpixels/fieldservice/activities/base/MinistryAssistantActivity;
.source "SourceFile"

# interfaces
.implements Lcom/lostpixels/fieldservice/activities/servicereport/ServiceChartFragment$ChartUpdateListner;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/lostpixels/fieldservice/activities/servicereport/ServiceChartActivity$DropdownItem;,
        Lcom/lostpixels/fieldservice/activities/servicereport/ServiceChartActivity$DropdownAdapter;
    }
.end annotation


# instance fields
.field private final ID_OVERFLOW:I

.field mChartFragment:Lcom/lostpixels/fieldservice/activities/servicereport/ServiceChartFragment;

.field mYearsToDisplay:Lcom/lostpixels/fieldservice/ui/SparseBooleanArrayParcelable;

.field meStatisticsType:I


# direct methods
.method public constructor <init>()V
    .locals 1

    const v0, 0x7f0c0128

    .line 61
    invoke-direct {p0, v0}, Lcom/lostpixels/fieldservice/activities/base/MinistryAssistantActivity;-><init>(I)V

    const/16 v0, 0x270f

    .line 51
    iput v0, p0, Lcom/lostpixels/fieldservice/activities/servicereport/ServiceChartActivity;->ID_OVERFLOW:I

    const/4 v0, 0x0

    .line 52
    iput v0, p0, Lcom/lostpixels/fieldservice/activities/servicereport/ServiceChartActivity;->meStatisticsType:I

    .line 54
    new-instance v0, Lcom/lostpixels/fieldservice/ui/SparseBooleanArrayParcelable;

    invoke-direct {v0}, Lcom/lostpixels/fieldservice/ui/SparseBooleanArrayParcelable;-><init>()V

    iput-object v0, p0, Lcom/lostpixels/fieldservice/activities/servicereport/ServiceChartActivity;->mYearsToDisplay:Lcom/lostpixels/fieldservice/ui/SparseBooleanArrayParcelable;

    return-void
.end method


# virtual methods
.method public onCreate(Landroid/os/Bundle;)V
    .locals 14

    const/4 v0, 0x4

    .line 107
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/4 v2, 0x3

    .line 104
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    const/4 v4, 0x2

    .line 101
    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    const/4 v6, 0x1

    .line 97
    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    const/4 v8, 0x0

    .line 94
    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    .line 69
    invoke-super {p0, p1}, Lcom/lostpixels/fieldservice/activities/base/MinistryAssistantActivity;->onCreate(Landroid/os/Bundle;)V

    .line 71
    invoke-virtual {p0}, Landroidx/appcompat/app/AppCompatActivity;->getSupportActionBar()Landroidx/appcompat/app/ActionBar;

    move-result-object v10

    if-eqz v10, :cond_0

    .line 72
    invoke-virtual {p0}, Landroidx/appcompat/app/AppCompatActivity;->getSupportActionBar()Landroidx/appcompat/app/ActionBar;

    move-result-object v10

    invoke-virtual {v10, v6}, Landroidx/appcompat/app/ActionBar;->setDisplayHomeAsUpEnabled(Z)V

    :cond_0
    if-eqz p1, :cond_1

    .line 77
    const-string v10, "Type"

    invoke-virtual {p1, v10}, Landroid/os/BaseBundle;->getInt(Ljava/lang/String;)I

    move-result v10

    iput v10, p0, Lcom/lostpixels/fieldservice/activities/servicereport/ServiceChartActivity;->meStatisticsType:I

    .line 78
    const-string v10, "Filter"

    invoke-virtual {p1, v10}, Landroid/os/BaseBundle;->containsKey(Ljava/lang/String;)Z

    move-result v11

    if-eqz v11, :cond_2

    .line 79
    invoke-virtual {p1, v10}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object p1

    check-cast p1, Lcom/lostpixels/fieldservice/ui/SparseBooleanArrayParcelable;

    iput-object p1, p0, Lcom/lostpixels/fieldservice/activities/servicereport/ServiceChartActivity;->mYearsToDisplay:Lcom/lostpixels/fieldservice/ui/SparseBooleanArrayParcelable;

    goto :goto_0

    .line 81
    :cond_1
    iget-object p1, p0, Lcom/lostpixels/fieldservice/activities/servicereport/ServiceChartActivity;->mYearsToDisplay:Lcom/lostpixels/fieldservice/ui/SparseBooleanArrayParcelable;

    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    const-string v10, "yearChart"

    invoke-virtual {p0, v10, v8}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v10

    invoke-virtual {p1, v10}, Lcom/lostpixels/fieldservice/ui/SparseBooleanArrayParcelable;->readFromPreferences(Landroid/content/SharedPreferences;)V

    .line 84
    :cond_2
    :goto_0
    invoke-virtual {p0}, Landroidx/fragment/app/FragmentActivity;->getSupportFragmentManager()Landroidx/fragment/app/FragmentManager;

    move-result-object p1

    const v10, 0x7f090051

    invoke-virtual {p1, v10}, Landroidx/fragment/app/FragmentManager;->findFragmentById(I)Landroidx/fragment/app/Fragment;

    move-result-object p1

    check-cast p1, Lcom/lostpixels/fieldservice/activities/servicereport/ServiceChartFragment;

    iput-object p1, p0, Lcom/lostpixels/fieldservice/activities/servicereport/ServiceChartActivity;->mChartFragment:Lcom/lostpixels/fieldservice/activities/servicereport/ServiceChartFragment;

    .line 86
    invoke-static {p0}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object p1

    .line 87
    const-string v10, "ReportDensity"

    invoke-interface {p1, v10, v8}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result p1

    .line 90
    new-instance v10, Ljava/util/ArrayList;

    invoke-direct {v10}, Ljava/util/ArrayList;-><init>()V

    .line 91
    new-instance v11, Ljava/util/HashMap;

    invoke-direct {v11}, Ljava/util/HashMap;-><init>()V

    .line 93
    new-instance v12, Lcom/lostpixels/fieldservice/activities/servicereport/ServiceChartActivity$DropdownItem;

    const v13, 0x7f120208

    invoke-virtual {p0, v13}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v13

    invoke-direct {v12, v13, v8}, Lcom/lostpixels/fieldservice/activities/servicereport/ServiceChartActivity$DropdownItem;-><init>(Ljava/lang/String;I)V

    invoke-virtual {v10, v12}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 94
    invoke-interface {v11, v9, v9}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 96
    new-instance v9, Lcom/lostpixels/fieldservice/activities/servicereport/ServiceChartActivity$DropdownItem;

    const v12, 0x7f120081

    invoke-virtual {p0, v12}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v12

    const/16 v13, 0x9

    invoke-direct {v9, v12, v13}, Lcom/lostpixels/fieldservice/activities/servicereport/ServiceChartActivity$DropdownItem;-><init>(Ljava/lang/String;I)V

    invoke-virtual {v10, v9}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 97
    invoke-static {v13}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    invoke-interface {v11, v9, v7}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const/4 v9, 0x5

    if-eqz p1, :cond_3

    .line 100
    new-instance v12, Lcom/lostpixels/fieldservice/activities/servicereport/ServiceChartActivity$DropdownItem;

    const v13, 0x7f12031d

    invoke-virtual {p0, v13}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v13

    invoke-direct {v12, v13, v6}, Lcom/lostpixels/fieldservice/activities/servicereport/ServiceChartActivity$DropdownItem;-><init>(Ljava/lang/String;I)V

    invoke-virtual {v10, v12}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 101
    invoke-interface {v11, v7, v5}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 103
    new-instance v6, Lcom/lostpixels/fieldservice/activities/servicereport/ServiceChartActivity$DropdownItem;

    const v7, 0x7f1205f6

    invoke-virtual {p0, v7}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v7

    invoke-direct {v6, v7, v4}, Lcom/lostpixels/fieldservice/activities/servicereport/ServiceChartActivity$DropdownItem;-><init>(Ljava/lang/String;I)V

    invoke-virtual {v10, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 104
    invoke-interface {v11, v5, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 106
    new-instance v5, Lcom/lostpixels/fieldservice/activities/servicereport/ServiceChartActivity$DropdownItem;

    const v6, 0x7f1204b8

    invoke-virtual {p0, v6}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v6

    invoke-direct {v5, v6, v2}, Lcom/lostpixels/fieldservice/activities/servicereport/ServiceChartActivity$DropdownItem;-><init>(Ljava/lang/String;I)V

    invoke-virtual {v10, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 107
    invoke-interface {v11, v3, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const/4 v2, 0x5

    goto :goto_1

    :cond_3
    const/4 v2, 0x2

    .line 110
    :goto_1
    new-instance v3, Lcom/lostpixels/fieldservice/activities/servicereport/ServiceChartActivity$DropdownItem;

    const v5, 0x7f120500

    invoke-virtual {p0, v5}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v5

    invoke-direct {v3, v5, v0}, Lcom/lostpixels/fieldservice/activities/servicereport/ServiceChartActivity$DropdownItem;-><init>(Ljava/lang/String;I)V

    invoke-virtual {v10, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 111
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-interface {v11, v1, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    add-int/lit8 v1, v2, 0x1

    if-ne p1, v4, :cond_4

    .line 114
    new-instance p1, Lcom/lostpixels/fieldservice/activities/servicereport/ServiceChartActivity$DropdownItem;

    const v3, 0x7f120381

    invoke-virtual {p0, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-direct {p1, v3, v9}, Lcom/lostpixels/fieldservice/activities/servicereport/ServiceChartActivity$DropdownItem;-><init>(Ljava/lang/String;I)V

    invoke-virtual {v10, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 115
    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v11, p1, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    add-int/lit8 p1, v2, 0x2

    .line 117
    new-instance v1, Lcom/lostpixels/fieldservice/activities/servicereport/ServiceChartActivity$DropdownItem;

    const v3, 0x7f120385

    invoke-virtual {p0, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x6

    invoke-direct {v1, v3, v4}, Lcom/lostpixels/fieldservice/activities/servicereport/ServiceChartActivity$DropdownItem;-><init>(Ljava/lang/String;I)V

    invoke-virtual {v10, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 118
    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-interface {v11, v1, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    add-int/lit8 p1, v2, 0x3

    .line 120
    new-instance v1, Lcom/lostpixels/fieldservice/activities/servicereport/ServiceChartActivity$DropdownItem;

    const v3, 0x7f12043b

    invoke-virtual {p0, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x7

    invoke-direct {v1, v3, v4}, Lcom/lostpixels/fieldservice/activities/servicereport/ServiceChartActivity$DropdownItem;-><init>(Ljava/lang/String;I)V

    invoke-virtual {v10, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 121
    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-interface {v11, v1, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    add-int/2addr v2, v0

    .line 123
    new-instance p1, Lcom/lostpixels/fieldservice/activities/servicereport/ServiceChartActivity$DropdownItem;

    const v0, 0x7f12053b

    invoke-virtual {p0, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    const/16 v1, 0x8

    invoke-direct {p1, v0, v1}, Lcom/lostpixels/fieldservice/activities/servicereport/ServiceChartActivity$DropdownItem;-><init>(Ljava/lang/String;I)V

    invoke-virtual {v10, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 124
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-interface {v11, p1, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_4
    const p1, 0x7f0901a0

    .line 127
    invoke-virtual {p0, p1}, Landroidx/appcompat/app/AppCompatActivity;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroidx/appcompat/widget/Toolbar;

    .line 129
    invoke-static {p0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    const v1, 0x7f0c015c

    invoke-virtual {v0, v1, p1, v8}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    .line 131
    new-instance v1, Landroidx/appcompat/app/ActionBar$LayoutParams;

    const/4 v2, -0x1

    invoke-direct {v1, v2, v2}, Landroidx/appcompat/app/ActionBar$LayoutParams;-><init>(II)V

    .line 133
    invoke-virtual {p1, v0, v1}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 136
    new-instance p1, Lcom/lostpixels/fieldservice/activities/servicereport/ServiceChartActivity$DropdownAdapter;

    const v1, 0x7f0c015d

    invoke-direct {p1, p0, v1, v10}, Lcom/lostpixels/fieldservice/activities/servicereport/ServiceChartActivity$DropdownAdapter;-><init>(Landroid/content/Context;ILjava/util/List;)V

    const v1, 0x7f0c015e

    .line 137
    invoke-virtual {p1, v1}, Landroid/widget/ArrayAdapter;->setDropDownViewResource(I)V

    const v1, 0x7f0905a7

    .line 139
    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Spinner;

    .line 140
    invoke-virtual {v0, p1}, Landroid/widget/Spinner;->setAdapter(Landroid/widget/SpinnerAdapter;)V

    .line 141
    new-instance p1, Lcom/lostpixels/fieldservice/activities/servicereport/ServiceChartActivity$1;

    invoke-direct {p1, p0}, Lcom/lostpixels/fieldservice/activities/servicereport/ServiceChartActivity$1;-><init>(Lcom/lostpixels/fieldservice/activities/servicereport/ServiceChartActivity;)V

    invoke-virtual {v0, p1}, Landroid/widget/AdapterView;->setOnItemSelectedListener(Landroid/widget/AdapterView$OnItemSelectedListener;)V

    .line 213
    iget p1, p0, Lcom/lostpixels/fieldservice/activities/servicereport/ServiceChartActivity;->meStatisticsType:I

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-interface {v11, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Integer;

    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    invoke-virtual {v0, p1}, Landroid/widget/AdapterView;->setSelection(I)V

    .line 214
    iget-object p1, p0, Lcom/lostpixels/fieldservice/activities/servicereport/ServiceChartActivity;->mChartFragment:Lcom/lostpixels/fieldservice/activities/servicereport/ServiceChartFragment;

    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    iget v0, p0, Lcom/lostpixels/fieldservice/activities/servicereport/ServiceChartActivity;->meStatisticsType:I

    invoke-virtual {p1, v0}, Lcom/lostpixels/fieldservice/activities/servicereport/ServiceChartFragment;->updateChart(I)V

    return-void
.end method

.method public onCreateOptionsMenu(Landroid/view/Menu;)Z
    .locals 3

    const/16 v0, 0x270f

    .line 247
    const-string v1, ""

    const/4 v2, 0x0

    invoke-interface {p1, v2, v0, v2, v1}, Landroid/view/Menu;->add(IIILjava/lang/CharSequence;)Landroid/view/MenuItem;

    move-result-object v0

    const v1, 0x7f080076

    invoke-interface {v0, v1}, Landroid/view/MenuItem;->setIcon(I)Landroid/view/MenuItem;

    move-result-object v0

    const/4 v1, 0x2

    invoke-static {v0, v1}, Landroidx/core/view/MenuItemCompat;->setShowAsAction(Landroid/view/MenuItem;I)V

    .line 248
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreateOptionsMenu(Landroid/view/Menu;)Z

    move-result p1

    return p1
.end method

.method public onOptionsItemSelected(Landroid/view/MenuItem;)Z
    .locals 3

    .line 224
    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v0

    const/16 v1, 0x270f

    if-eq v0, v1, :cond_1

    const v1, 0x102002c

    if-eq v0, v1, :cond_0

    .line 232
    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v0

    if-eqz v0, :cond_2

    .line 233
    iget-object v0, p0, Lcom/lostpixels/fieldservice/activities/servicereport/ServiceChartActivity;->mYearsToDisplay:Lcom/lostpixels/fieldservice/ui/SparseBooleanArrayParcelable;

    invoke-static {v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v1

    invoke-interface {p1}, Landroid/view/MenuItem;->isChecked()Z

    move-result v2

    xor-int/lit8 v2, v2, 0x1

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseBooleanArray;->put(IZ)V

    .line 234
    invoke-interface {p1}, Landroid/view/MenuItem;->isChecked()Z

    move-result v0

    xor-int/lit8 v0, v0, 0x1

    invoke-interface {p1, v0}, Landroid/view/MenuItem;->setChecked(Z)Landroid/view/MenuItem;

    .line 235
    iget-object v0, p0, Lcom/lostpixels/fieldservice/activities/servicereport/ServiceChartActivity;->mChartFragment:Lcom/lostpixels/fieldservice/activities/servicereport/ServiceChartFragment;

    invoke-static {v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    iget v1, p0, Lcom/lostpixels/fieldservice/activities/servicereport/ServiceChartActivity;->meStatisticsType:I

    invoke-virtual {v0, v1}, Lcom/lostpixels/fieldservice/activities/servicereport/ServiceChartFragment;->updateChart(I)V

    .line 236
    iget-object v0, p0, Lcom/lostpixels/fieldservice/activities/servicereport/ServiceChartActivity;->mYearsToDisplay:Lcom/lostpixels/fieldservice/ui/SparseBooleanArrayParcelable;

    const-string v1, "yearChart"

    const/4 v2, 0x0

    invoke-virtual {p0, v1, v2}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/lostpixels/fieldservice/ui/SparseBooleanArrayParcelable;->saveToPreferences(Landroid/content/SharedPreferences;)V

    goto :goto_0

    .line 229
    :cond_0
    invoke-virtual {p0}, Landroid/app/Activity;->finish()V

    goto :goto_0

    .line 226
    :cond_1
    invoke-virtual {p0, v1}, Lcom/lostpixels/fieldservice/activities/servicereport/ServiceChartActivity;->showPopup(I)V

    .line 240
    :cond_2
    :goto_0
    invoke-super {p0, p1}, Landroid/app/Activity;->onOptionsItemSelected(Landroid/view/MenuItem;)Z

    move-result p1

    return p1
.end method

.method protected onSaveInstanceState(Landroid/os/Bundle;)V
    .locals 2

    .line 294
    const-string v0, "Type"

    iget v1, p0, Lcom/lostpixels/fieldservice/activities/servicereport/ServiceChartActivity;->meStatisticsType:I

    invoke-virtual {p1, v0, v1}, Landroid/os/BaseBundle;->putInt(Ljava/lang/String;I)V

    .line 295
    const-string v0, "Filter"

    iget-object v1, p0, Lcom/lostpixels/fieldservice/activities/servicereport/ServiceChartActivity;->mYearsToDisplay:Lcom/lostpixels/fieldservice/ui/SparseBooleanArrayParcelable;

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    .line 296
    invoke-super {p0, p1}, Landroidx/activity/ComponentActivity;->onSaveInstanceState(Landroid/os/Bundle;)V

    return-void
.end method

.method public shouldShowYear(I)Z
    .locals 2

    .line 219
    iget-object v0, p0, Lcom/lostpixels/fieldservice/activities/servicereport/ServiceChartActivity;->mYearsToDisplay:Lcom/lostpixels/fieldservice/ui/SparseBooleanArrayParcelable;

    invoke-static {v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    const/4 v1, 0x1

    invoke-virtual {v0, p1, v1}, Landroid/util/SparseBooleanArray;->get(IZ)Z

    move-result p1

    return p1
.end method

.method public showPopup(I)V
    .locals 6

    .line 255
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v0

    .line 258
    new-instance v1, Ljava/util/Date;

    invoke-direct {v1}, Ljava/util/Date;-><init>()V

    invoke-static {v1}, Lcom/lostpixels/fieldservice/internal/report/ServiceReportManager;->date2ServiceYear(Ljava/util/Date;)Ljava/util/Date;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/Calendar;->setTime(Ljava/util/Date;)V

    const/4 v1, 0x1

    .line 259
    invoke-virtual {v0, v1}, Ljava/util/Calendar;->get(I)I

    move-result v2

    const/4 v3, 0x2

    .line 262
    invoke-virtual {v0, v3}, Ljava/util/Calendar;->get(I)I

    move-result v3

    const/16 v4, 0x8

    if-ne v3, v4, :cond_0

    iget-object v3, p0, Lcom/lostpixels/fieldservice/activities/base/BaseActivity;->realm:Lio/realm/Realm;

    invoke-static {v3}, Lcom/lostpixels/fieldservice/internal/report/ServiceReportManager;->getInstance(Lio/realm/Realm;)Lcom/lostpixels/fieldservice/internal/report/ServiceReportManager;

    move-result-object v3

    iget-object v4, p0, Lcom/lostpixels/fieldservice/activities/base/BaseActivity;->realm:Lio/realm/Realm;

    add-int/lit8 v5, v2, -0x1

    invoke-virtual {v3, v4, v5}, Lcom/lostpixels/fieldservice/internal/report/ServiceReportManager;->getServiceYear(Lio/realm/Realm;I)Lcom/lostpixels/fieldservice/internal/report/YearReport;

    move-result-object v3

    invoke-static {v3}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    invoke-virtual {v3}, Lcom/lostpixels/fieldservice/internal/report/YearReport;->isYearEmpty()Z

    move-result v3

    if-nez v3, :cond_0

    :goto_0
    add-int/lit8 v2, v2, -0x1

    .line 266
    :cond_0
    iget-object v3, p0, Lcom/lostpixels/fieldservice/activities/base/BaseActivity;->realm:Lio/realm/Realm;

    invoke-static {v3}, Lcom/lostpixels/fieldservice/internal/report/ServiceReportManager;->getInstance(Lio/realm/Realm;)Lcom/lostpixels/fieldservice/internal/report/ServiceReportManager;

    move-result-object v3

    iget-object v4, p0, Lcom/lostpixels/fieldservice/activities/base/BaseActivity;->realm:Lio/realm/Realm;

    invoke-virtual {v3, v4, v2}, Lcom/lostpixels/fieldservice/internal/report/ServiceReportManager;->getServiceYear(Lio/realm/Realm;I)Lcom/lostpixels/fieldservice/internal/report/YearReport;

    move-result-object v3

    invoke-static {v3}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    invoke-virtual {v3}, Lcom/lostpixels/fieldservice/internal/report/YearReport;->isYearEmpty()Z

    move-result v3

    if-nez v3, :cond_1

    goto :goto_0

    .line 272
    :cond_1
    invoke-virtual {v0, v1}, Ljava/util/Calendar;->get(I)I

    move-result v3

    if-eq v2, v3, :cond_4

    .line 273
    invoke-virtual {p0, p1}, Landroidx/appcompat/app/AppCompatActivity;->findViewById(I)Landroid/view/View;

    move-result-object p1

    .line 274
    new-instance v3, Landroidx/appcompat/widget/PopupMenu;

    invoke-direct {v3, p0, p1}, Landroidx/appcompat/widget/PopupMenu;-><init>(Landroid/content/Context;Landroid/view/View;)V

    .line 275
    new-instance p1, Lcom/lostpixels/fieldservice/activities/servicereport/ServiceChartActivity$2;

    invoke-direct {p1, p0}, Lcom/lostpixels/fieldservice/activities/servicereport/ServiceChartActivity$2;-><init>(Lcom/lostpixels/fieldservice/activities/servicereport/ServiceChartActivity;)V

    invoke-virtual {v3, p1}, Landroidx/appcompat/widget/PopupMenu;->setOnMenuItemClickListener(Landroidx/appcompat/widget/PopupMenu$OnMenuItemClickListener;)V

    add-int/2addr v2, v1

    .line 282
    :goto_1
    invoke-virtual {v0, v1}, Ljava/util/Calendar;->get(I)I

    move-result p1

    if-gt v2, p1, :cond_3

    .line 283
    invoke-virtual {v3}, Landroidx/appcompat/widget/PopupMenu;->getMenu()Landroid/view/Menu;

    move-result-object p1

    invoke-static {v2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v4

    const/4 v5, 0x0

    invoke-interface {p1, v5, v2, v5, v4}, Landroid/view/Menu;->add(IIILjava/lang/CharSequence;)Landroid/view/MenuItem;

    move-result-object p1

    invoke-interface {p1, v1}, Landroid/view/MenuItem;->setCheckable(Z)Landroid/view/MenuItem;

    move-result-object p1

    iget-object v4, p0, Lcom/lostpixels/fieldservice/activities/servicereport/ServiceChartActivity;->mYearsToDisplay:Lcom/lostpixels/fieldservice/ui/SparseBooleanArrayParcelable;

    invoke-static {v4}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    invoke-virtual {v4, v2, v1}, Landroid/util/SparseBooleanArray;->get(IZ)Z

    move-result v4

    invoke-interface {p1, v4}, Landroid/view/MenuItem;->setChecked(Z)Landroid/view/MenuItem;

    .line 284
    iget-object p1, p0, Lcom/lostpixels/fieldservice/activities/servicereport/ServiceChartActivity;->mYearsToDisplay:Lcom/lostpixels/fieldservice/ui/SparseBooleanArrayParcelable;

    invoke-virtual {p1, v2}, Landroid/util/SparseBooleanArray;->indexOfKey(I)I

    move-result p1

    if-gez p1, :cond_2

    .line 285
    iget-object p1, p0, Lcom/lostpixels/fieldservice/activities/servicereport/ServiceChartActivity;->mYearsToDisplay:Lcom/lostpixels/fieldservice/ui/SparseBooleanArrayParcelable;

    invoke-virtual {p1, v2, v1}, Landroid/util/SparseBooleanArray;->append(IZ)V

    :cond_2
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    .line 288
    :cond_3
    invoke-virtual {v3}, Landroidx/appcompat/widget/PopupMenu;->show()V

    :cond_4
    return-void
.end method
