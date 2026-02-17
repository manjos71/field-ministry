.class public Lcom/lostpixels/fieldservice/ui/SyncTimePreference;
.super Landroid/preference/ListPreference;
.source "SourceFile"


# instance fields
.field sHour:Ljava/lang/String;

.field sHours:Ljava/lang/String;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    .line 29
    invoke-direct {p0, p1}, Landroid/preference/ListPreference;-><init>(Landroid/content/Context;)V

    const v0, 0x7f120418

    .line 30
    invoke-virtual {p1, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/lostpixels/fieldservice/ui/SyncTimePreference;->sHours:Ljava/lang/String;

    const v0, 0x7f120412

    .line 31
    invoke-virtual {p1, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/lostpixels/fieldservice/ui/SyncTimePreference;->sHour:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0

    .line 23
    invoke-direct {p0, p1, p2}, Landroid/preference/ListPreference;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    const p2, 0x7f120418

    .line 24
    invoke-virtual {p1, p2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p2

    iput-object p2, p0, Lcom/lostpixels/fieldservice/ui/SyncTimePreference;->sHours:Ljava/lang/String;

    const p2, 0x7f120412

    .line 25
    invoke-virtual {p1, p2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/lostpixels/fieldservice/ui/SyncTimePreference;->sHour:Ljava/lang/String;

    return-void
.end method

.method private adapter()Landroid/widget/ListAdapter;
    .locals 3

    .line 46
    new-instance v0, Landroid/widget/ArrayAdapter;

    invoke-virtual {p0}, Landroid/preference/Preference;->getContext()Landroid/content/Context;

    move-result-object v1

    const v2, 0x1090012

    invoke-direct {v0, v1, v2}, Landroid/widget/ArrayAdapter;-><init>(Landroid/content/Context;I)V

    return-object v0
.end method

.method private entries()[Ljava/lang/CharSequence;
    .locals 9

    .line 52
    iget-object v0, p0, Lcom/lostpixels/fieldservice/ui/SyncTimePreference;->sHour:Ljava/lang/String;

    const/4 v1, 0x1

    new-array v2, v1, [Ljava/lang/Object;

    const/4 v3, 0x0

    aput-object v0, v2, v3

    const-string v0, "1 %s"

    invoke-static {v0, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    .line 53
    iget-object v2, p0, Lcom/lostpixels/fieldservice/ui/SyncTimePreference;->sHours:Ljava/lang/String;

    new-array v4, v1, [Ljava/lang/Object;

    aput-object v2, v4, v3

    const-string v2, "2 %s"

    invoke-static {v2, v4}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    .line 54
    iget-object v4, p0, Lcom/lostpixels/fieldservice/ui/SyncTimePreference;->sHours:Ljava/lang/String;

    new-array v5, v1, [Ljava/lang/Object;

    aput-object v4, v5, v3

    const-string v4, "3 %s"

    invoke-static {v4, v5}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    .line 55
    iget-object v5, p0, Lcom/lostpixels/fieldservice/ui/SyncTimePreference;->sHours:Ljava/lang/String;

    new-array v6, v1, [Ljava/lang/Object;

    aput-object v5, v6, v3

    const-string v5, "6 %s"

    invoke-static {v5, v6}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    .line 56
    iget-object v6, p0, Lcom/lostpixels/fieldservice/ui/SyncTimePreference;->sHours:Ljava/lang/String;

    new-array v7, v1, [Ljava/lang/Object;

    aput-object v6, v7, v3

    const-string v6, "12 %s"

    invoke-static {v6, v7}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v6

    .line 57
    iget-object v7, p0, Lcom/lostpixels/fieldservice/ui/SyncTimePreference;->sHours:Ljava/lang/String;

    new-array v8, v1, [Ljava/lang/Object;

    aput-object v7, v8, v3

    const-string v7, "24 %s"

    invoke-static {v7, v8}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v7

    const/4 v8, 0x6

    new-array v8, v8, [Ljava/lang/CharSequence;

    aput-object v0, v8, v3

    aput-object v2, v8, v1

    const/4 v0, 0x2

    aput-object v4, v8, v0

    const/4 v0, 0x3

    aput-object v5, v8, v0

    const/4 v0, 0x4

    aput-object v6, v8, v0

    const/4 v0, 0x5

    aput-object v7, v8, v0

    return-object v8
.end method

.method private entryValues()[Ljava/lang/CharSequence;
    .locals 3

    const/4 v0, 0x6

    .line 69
    new-array v0, v0, [Ljava/lang/CharSequence;

    const-string v1, "1"

    const/4 v2, 0x0

    aput-object v1, v0, v2

    const-string v1, "2"

    const/4 v2, 0x1

    aput-object v1, v0, v2

    const-string v1, "3"

    const/4 v2, 0x2

    aput-object v1, v0, v2

    const-string v1, "6"

    const/4 v2, 0x3

    aput-object v1, v0, v2

    const-string v1, "12"

    const/4 v2, 0x4

    aput-object v1, v0, v2

    const-string v1, "24"

    const/4 v2, 0x5

    aput-object v1, v0, v2

    return-object v0
.end method


# virtual methods
.method protected onCreateDialogView()Landroid/view/View;
    .locals 2

    .line 37
    new-instance v0, Landroid/widget/ListView;

    invoke-virtual {p0}, Landroid/preference/Preference;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/widget/ListView;-><init>(Landroid/content/Context;)V

    .line 38
    invoke-direct {p0}, Lcom/lostpixels/fieldservice/ui/SyncTimePreference;->adapter()Landroid/widget/ListAdapter;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 39
    invoke-direct {p0}, Lcom/lostpixels/fieldservice/ui/SyncTimePreference;->entries()[Ljava/lang/CharSequence;

    move-result-object v1

    invoke-virtual {p0, v1}, Landroid/preference/ListPreference;->setEntries([Ljava/lang/CharSequence;)V

    .line 40
    invoke-direct {p0}, Lcom/lostpixels/fieldservice/ui/SyncTimePreference;->entryValues()[Ljava/lang/CharSequence;

    move-result-object v1

    invoke-virtual {p0, v1}, Landroid/preference/ListPreference;->setEntryValues([Ljava/lang/CharSequence;)V

    return-object v0
.end method
