.class public Lcom/lostpixels/fieldservice/activities/SearchActivity;
.super Lcom/lostpixels/fieldservice/activities/base/MinistryAssistantListActivity;
.source "SourceFile"


# instance fields
.field lstPersons:Ljava/util/ArrayList;

.field private sSearchString:Ljava/lang/String;


# direct methods
.method static bridge synthetic -$$Nest$mdisplayPerson(Lcom/lostpixels/fieldservice/activities/SearchActivity;Lcom/lostpixels/fieldservice/internal/ministry/Person;)V
    .locals 0

    .line 0
    invoke-direct {p0, p1}, Lcom/lostpixels/fieldservice/activities/SearchActivity;->displayPerson(Lcom/lostpixels/fieldservice/internal/ministry/Person;)V

    return-void
.end method

.method static bridge synthetic -$$Nest$mdoSearch(Lcom/lostpixels/fieldservice/activities/SearchActivity;Ljava/lang/String;Lio/realm/Realm;)V
    .locals 0

    .line 0
    invoke-direct {p0, p1, p2}, Lcom/lostpixels/fieldservice/activities/SearchActivity;->doSearch(Ljava/lang/String;Lio/realm/Realm;)V

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    const v0, 0x7f0c011d

    .line 42
    invoke-direct {p0, v0}, Lcom/lostpixels/fieldservice/activities/base/MinistryAssistantListActivity;-><init>(I)V

    return-void
.end method

.method private displayPerson(Lcom/lostpixels/fieldservice/internal/ministry/Person;)V
    .locals 4

    .line 89
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/lostpixels/fieldservice/activities/visits/PersonDialog;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 90
    const-string v1, "PersonID"

    invoke-virtual {p1}, Lcom/lostpixels/fieldservice/internal/ministry/Person;->getId()J

    move-result-wide v2

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;J)Landroid/content/Intent;

    .line 91
    const-string p1, "CreatedFromTerritory"

    const/4 v1, 0x0

    invoke-virtual {v0, p1, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 92
    const-string p1, "CreateNew"

    invoke-virtual {v0, p1, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    const/4 p1, 0x1

    .line 93
    invoke-virtual {p0, v0, p1}, Landroidx/activity/ComponentActivity;->startActivityForResult(Landroid/content/Intent;I)V

    return-void
.end method

.method private doSearch(Ljava/lang/String;Lio/realm/Realm;)V
    .locals 2

    .line 175
    iput-object p1, p0, Lcom/lostpixels/fieldservice/activities/SearchActivity;->sSearchString:Ljava/lang/String;

    .line 176
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/lostpixels/fieldservice/activities/SearchActivity;->lstPersons:Ljava/util/ArrayList;

    .line 177
    invoke-static {p2}, Lcom/lostpixels/fieldservice/internal/ministry/MinistryManager;->getInstance(Lio/realm/Realm;)Lcom/lostpixels/fieldservice/internal/ministry/MinistryManager;

    move-result-object v0

    invoke-virtual {v0, p2}, Lcom/lostpixels/fieldservice/internal/ministry/MinistryManager;->getPersons(Lio/realm/Realm;)Lio/realm/RealmResults;

    move-result-object p2

    invoke-virtual {p2}, Lio/realm/RealmResults;->iterator()Ljava/util/Iterator;

    move-result-object p2

    :cond_0
    :goto_0
    invoke-interface {p2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {p2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/lostpixels/fieldservice/internal/ministry/Person;

    const/4 v1, 0x1

    .line 178
    invoke-virtual {v0, p1, v1}, Lcom/lostpixels/fieldservice/internal/ministry/Person;->matchQuery(Ljava/lang/String;Z)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 179
    iget-object v1, p0, Lcom/lostpixels/fieldservice/activities/SearchActivity;->lstPersons:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 183
    :cond_1
    iget-object p1, p0, Lcom/lostpixels/fieldservice/activities/SearchActivity;->lstPersons:Ljava/util/ArrayList;

    new-instance p2, Lcom/lostpixels/fieldservice/utils/comparators/PersonComparator;

    invoke-direct {p2}, Lcom/lostpixels/fieldservice/utils/comparators/PersonComparator;-><init>()V

    invoke-static {p1, p2}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    .line 185
    new-instance p1, Lcom/lostpixels/fieldservice/adapters/PersonSearchArrayAdapter;

    iget-object p2, p0, Lcom/lostpixels/fieldservice/activities/SearchActivity;->lstPersons:Ljava/util/ArrayList;

    invoke-direct {p1, p0, p2}, Lcom/lostpixels/fieldservice/adapters/PersonSearchArrayAdapter;-><init>(Landroid/app/Activity;Ljava/util/List;)V

    invoke-virtual {p0, p1}, Lcom/lostpixels/fieldservice/activities/base/MinistryAssistantListActivity;->setListAdapter(Landroid/widget/ListAdapter;)V

    return-void
.end method

.method private handleIntent(Landroid/content/Intent;)V
    .locals 5

    .line 110
    const-string v0, "android.intent.action.SEARCH"

    invoke-virtual {p1}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    const/4 v1, 0x0

    const/4 v2, 0x1

    const-string v3, "query"

    if-eqz v0, :cond_0

    .line 111
    invoke-virtual {p1, v3}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 112
    new-instance v0, Landroid/provider/SearchRecentSuggestions;

    sget-object v3, Lcom/lostpixels/fieldservice/helpfunctions/SearchSuggestionsProvider;->AUTHORITY:Ljava/lang/String;

    invoke-direct {v0, p0, v3, v2}, Landroid/provider/SearchRecentSuggestions;-><init>(Landroid/content/Context;Ljava/lang/String;I)V

    .line 114
    invoke-virtual {v0, p1, v1}, Landroid/provider/SearchRecentSuggestions;->saveRecentQuery(Ljava/lang/String;Ljava/lang/String;)V

    .line 116
    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v0, p0, Lcom/lostpixels/fieldservice/activities/base/BaseActivity;->realm:Lio/realm/Realm;

    invoke-direct {p0, p1, v0}, Lcom/lostpixels/fieldservice/activities/SearchActivity;->doSearch(Ljava/lang/String;Lio/realm/Realm;)V

    return-void

    .line 117
    :cond_0
    const-string v0, "android.intent.action.VIEW"

    invoke-virtual {p1}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 120
    invoke-virtual {p1}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object v0

    .line 121
    invoke-static {v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    invoke-virtual {v0}, Landroid/net/Uri;->getLastPathSegment()Ljava/lang/String;

    move-result-object v0

    .line 122
    invoke-static {v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    const-string v1, "person"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 123
    invoke-virtual {p1, v3}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 124
    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v0, p0, Lcom/lostpixels/fieldservice/activities/base/BaseActivity;->realm:Lio/realm/Realm;

    invoke-direct {p0, p1, v0}, Lcom/lostpixels/fieldservice/activities/SearchActivity;->doSearch(Ljava/lang/String;Lio/realm/Realm;)V

    return-void

    .line 126
    :cond_1
    invoke-static {v0}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v0

    .line 127
    iget-object p1, p0, Lcom/lostpixels/fieldservice/activities/base/BaseActivity;->realm:Lio/realm/Realm;

    invoke-static {p1}, Lcom/lostpixels/fieldservice/internal/ministry/MinistryManager;->getInstance(Lio/realm/Realm;)Lcom/lostpixels/fieldservice/internal/ministry/MinistryManager;

    move-result-object p1

    iget-object v2, p0, Lcom/lostpixels/fieldservice/activities/base/BaseActivity;->realm:Lio/realm/Realm;

    invoke-virtual {p1, v2, v0, v1}, Lcom/lostpixels/fieldservice/internal/ministry/MinistryManager;->getPerson(Lio/realm/Realm;J)Lcom/lostpixels/fieldservice/internal/ministry/Person;

    move-result-object p1

    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    invoke-direct {p0, p1}, Lcom/lostpixels/fieldservice/activities/SearchActivity;->displayPerson(Lcom/lostpixels/fieldservice/internal/ministry/Person;)V

    .line 129
    invoke-virtual {p0}, Landroid/app/Activity;->finish()V

    return-void

    .line 131
    :cond_2
    const-string v0, "com.google.android.gms.actions.SEARCH_ACTION"

    invoke-virtual {p1}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_5

    .line 132
    invoke-virtual {p1, v3}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 133
    new-instance v0, Landroid/provider/SearchRecentSuggestions;

    sget-object v3, Lcom/lostpixels/fieldservice/helpfunctions/SearchSuggestionsProvider;->AUTHORITY:Ljava/lang/String;

    invoke-direct {v0, p0, v3, v2}, Landroid/provider/SearchRecentSuggestions;-><init>(Landroid/content/Context;Ljava/lang/String;I)V

    .line 135
    invoke-virtual {v0, p1, v1}, Landroid/provider/SearchRecentSuggestions;->saveRecentQuery(Ljava/lang/String;Ljava/lang/String;)V

    .line 137
    invoke-static {p0}, Lcom/lostpixels/fieldservice/internal/ministry/MinistryManager;->ministryFileExists(Landroid/content/Context;)Z

    move-result v0

    if-nez v0, :cond_4

    invoke-static {p0}, Lcom/lostpixels/fieldservice/internal/report/ServiceReportManager;->serviceFileExists(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_3

    goto :goto_0

    .line 169
    :cond_3
    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v0, p0, Lcom/lostpixels/fieldservice/activities/base/BaseActivity;->realm:Lio/realm/Realm;

    invoke-direct {p0, p1, v0}, Lcom/lostpixels/fieldservice/activities/SearchActivity;->doSearch(Ljava/lang/String;Lio/realm/Realm;)V

    return-void

    .line 139
    :cond_4
    :goto_0
    iget-object v0, p0, Lcom/lostpixels/fieldservice/activities/base/BaseActivity;->realm:Lio/realm/Realm;

    new-instance v1, Lcom/lostpixels/fieldservice/activities/SearchActivity$2;

    invoke-direct {v1, p0}, Lcom/lostpixels/fieldservice/activities/SearchActivity$2;-><init>(Lcom/lostpixels/fieldservice/activities/SearchActivity;)V

    invoke-virtual {v0, v1}, Lio/realm/Realm;->executeTransaction(Lio/realm/Realm$Transaction;)V

    .line 145
    new-instance v0, Lcom/lostpixels/fieldservice/activities/SearchActivity$3;

    invoke-direct {v0, p0, p1}, Lcom/lostpixels/fieldservice/activities/SearchActivity$3;-><init>(Lcom/lostpixels/fieldservice/activities/SearchActivity;Ljava/lang/String;)V

    const-string p1, "SearchActivity"

    invoke-static {p0, v0, p1}, Lcom/lostpixels/fieldservice/helpfunctions/FileManager;->loadInternalFiles(Landroid/content/Context;Lcom/lostpixels/fieldservice/helpfunctions/FileManager$LoadOperationInterface;Ljava/lang/String;)V

    :cond_5
    return-void
.end method

.method private updateList()V
    .locals 4

    .line 189
    iget-object v0, p0, Lcom/lostpixels/fieldservice/activities/SearchActivity;->sSearchString:Ljava/lang/String;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/lostpixels/fieldservice/activities/SearchActivity;->lstPersons:Ljava/util/ArrayList;

    if-eqz v0, :cond_2

    .line 190
    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 191
    iget-object v0, p0, Lcom/lostpixels/fieldservice/activities/base/BaseActivity;->realm:Lio/realm/Realm;

    invoke-static {v0}, Lcom/lostpixels/fieldservice/internal/ministry/MinistryManager;->getInstance(Lio/realm/Realm;)Lcom/lostpixels/fieldservice/internal/ministry/MinistryManager;

    move-result-object v0

    iget-object v1, p0, Lcom/lostpixels/fieldservice/activities/base/BaseActivity;->realm:Lio/realm/Realm;

    invoke-virtual {v0, v1}, Lcom/lostpixels/fieldservice/internal/ministry/MinistryManager;->getPersons(Lio/realm/Realm;)Lio/realm/RealmResults;

    move-result-object v0

    invoke-virtual {v0}, Lio/realm/RealmResults;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_0
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/lostpixels/fieldservice/internal/ministry/Person;

    .line 192
    iget-object v2, p0, Lcom/lostpixels/fieldservice/activities/SearchActivity;->sSearchString:Ljava/lang/String;

    const/4 v3, 0x1

    invoke-virtual {v1, v2, v3}, Lcom/lostpixels/fieldservice/internal/ministry/Person;->matchQuery(Ljava/lang/String;Z)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 193
    iget-object v2, p0, Lcom/lostpixels/fieldservice/activities/SearchActivity;->lstPersons:Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 196
    :cond_1
    iget-object v0, p0, Lcom/lostpixels/fieldservice/activities/SearchActivity;->lstPersons:Ljava/util/ArrayList;

    new-instance v1, Lcom/lostpixels/fieldservice/utils/comparators/PersonComparator;

    invoke-direct {v1}, Lcom/lostpixels/fieldservice/utils/comparators/PersonComparator;-><init>()V

    invoke-static {v0, v1}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    :cond_2
    return-void
.end method


# virtual methods
.method protected onActivityResult(IILandroid/content/Intent;)V
    .locals 1

    const/4 v0, 0x1

    if-ne p1, v0, :cond_1

    const/4 v0, -0x1

    if-eq p2, v0, :cond_0

    const/4 v0, 0x2

    if-ne p2, v0, :cond_1

    .line 100
    :cond_0
    invoke-virtual {p0}, Lcom/lostpixels/fieldservice/activities/base/MinistryAssistantListActivity;->getListAdapter()Landroid/widget/ListAdapter;

    move-result-object v0

    if-eqz v0, :cond_1

    invoke-virtual {p0}, Lcom/lostpixels/fieldservice/activities/base/MinistryAssistantListActivity;->getListAdapter()Landroid/widget/ListAdapter;

    move-result-object v0

    instance-of v0, v0, Lcom/lostpixels/fieldservice/adapters/PersonSearchArrayAdapter;

    if-eqz v0, :cond_1

    .line 101
    invoke-direct {p0}, Lcom/lostpixels/fieldservice/activities/SearchActivity;->updateList()V

    .line 102
    invoke-virtual {p0}, Lcom/lostpixels/fieldservice/activities/base/MinistryAssistantListActivity;->getListAdapter()Landroid/widget/ListAdapter;

    move-result-object v0

    check-cast v0, Lcom/lostpixels/fieldservice/adapters/PersonSearchArrayAdapter;

    invoke-virtual {v0}, Landroid/widget/BaseAdapter;->notifyDataSetChanged()V

    .line 106
    :cond_1
    invoke-super {p0, p1, p2, p3}, Lcom/lostpixels/fieldservice/activities/base/MinistryAssistantListActivity;->onActivityResult(IILandroid/content/Intent;)V

    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 1

    .line 48
    invoke-super {p0, p1}, Lcom/lostpixels/fieldservice/activities/base/MinistryAssistantListActivity;->onCreate(Landroid/os/Bundle;)V

    .line 50
    invoke-virtual {p0}, Landroidx/appcompat/app/AppCompatActivity;->getSupportActionBar()Landroidx/appcompat/app/ActionBar;

    move-result-object p1

    if-eqz p1, :cond_0

    .line 51
    invoke-virtual {p0}, Landroidx/appcompat/app/AppCompatActivity;->getSupportActionBar()Landroidx/appcompat/app/ActionBar;

    move-result-object p1

    const/4 v0, 0x1

    invoke-virtual {p1, v0}, Landroidx/appcompat/app/ActionBar;->setDisplayHomeAsUpEnabled(Z)V

    .line 52
    invoke-virtual {p0}, Landroidx/appcompat/app/AppCompatActivity;->getSupportActionBar()Landroidx/appcompat/app/ActionBar;

    move-result-object p1

    const v0, 0x7f120332

    invoke-virtual {p1, v0}, Landroidx/appcompat/app/ActionBar;->setTitle(I)V

    .line 57
    :cond_0
    invoke-virtual {p0}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object p1

    invoke-direct {p0, p1}, Lcom/lostpixels/fieldservice/activities/SearchActivity;->handleIntent(Landroid/content/Intent;)V

    .line 58
    invoke-virtual {p0}, Lcom/lostpixels/fieldservice/activities/base/MinistryAssistantListActivity;->getListView()Landroid/widget/ListView;

    move-result-object p1

    const v0, 0x7f090209

    invoke-virtual {p0, v0}, Landroidx/appcompat/app/AppCompatActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/widget/AdapterView;->setEmptyView(Landroid/view/View;)V

    .line 59
    invoke-virtual {p0}, Lcom/lostpixels/fieldservice/activities/base/MinistryAssistantListActivity;->getListView()Landroid/widget/ListView;

    move-result-object p1

    new-instance v0, Lcom/lostpixels/fieldservice/activities/SearchActivity$1;

    invoke-direct {v0, p0}, Lcom/lostpixels/fieldservice/activities/SearchActivity$1;-><init>(Lcom/lostpixels/fieldservice/activities/SearchActivity;)V

    invoke-virtual {p1, v0}, Landroid/widget/AdapterView;->setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V

    return-void
.end method

.method public onNewIntent(Landroid/content/Intent;)V
    .locals 0

    .line 68
    invoke-super {p0, p1}, Landroidx/activity/ComponentActivity;->onNewIntent(Landroid/content/Intent;)V

    .line 69
    invoke-virtual {p0, p1}, Landroid/app/Activity;->setIntent(Landroid/content/Intent;)V

    .line 70
    invoke-direct {p0, p1}, Lcom/lostpixels/fieldservice/activities/SearchActivity;->handleIntent(Landroid/content/Intent;)V

    return-void
.end method

.method public onOptionsItemSelected(Landroid/view/MenuItem;)Z
    .locals 2

    .line 81
    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v0

    const v1, 0x102002c

    if-ne v0, v1, :cond_0

    .line 82
    invoke-virtual {p0}, Landroid/app/Activity;->finish()V

    .line 85
    :cond_0
    invoke-super {p0, p1}, Landroid/app/Activity;->onOptionsItemSelected(Landroid/view/MenuItem;)Z

    move-result p1

    return p1
.end method

.method protected onResume()V
    .locals 0

    .line 75
    invoke-static {p0}, Lcom/lostpixels/fieldservice/helpfunctions/ConsistancyChecks;->restartIfImported(Landroid/app/Activity;)Z

    .line 76
    invoke-super {p0}, Lcom/lostpixels/fieldservice/activities/base/MinistryAssistantListActivity;->onResume()V

    return-void
.end method
