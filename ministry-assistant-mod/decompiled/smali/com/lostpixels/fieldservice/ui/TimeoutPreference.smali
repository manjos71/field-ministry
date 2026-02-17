.class public Lcom/lostpixels/fieldservice/ui/TimeoutPreference;
.super Landroid/preference/ListPreference;
.source "SourceFile"


# instance fields
.field sMinutes:Ljava/lang/String;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    .line 26
    invoke-direct {p0, p1}, Landroid/preference/ListPreference;-><init>(Landroid/content/Context;)V

    const v0, 0x7f120180

    .line 27
    invoke-virtual {p1, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/lostpixels/fieldservice/ui/TimeoutPreference;->sMinutes:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0

    .line 21
    invoke-direct {p0, p1, p2}, Landroid/preference/ListPreference;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    const p2, 0x7f120180

    .line 22
    invoke-virtual {p1, p2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/lostpixels/fieldservice/ui/TimeoutPreference;->sMinutes:Ljava/lang/String;

    return-void
.end method

.method private adapter()Landroid/widget/ListAdapter;
    .locals 3

    .line 42
    new-instance v0, Landroid/widget/ArrayAdapter;

    invoke-virtual {p0}, Landroid/preference/Preference;->getContext()Landroid/content/Context;

    move-result-object v1

    const v2, 0x1090012

    invoke-direct {v0, v1, v2}, Landroid/widget/ArrayAdapter;-><init>(Landroid/content/Context;I)V

    return-object v0
.end method

.method private entries()[Ljava/lang/CharSequence;
    .locals 9

    .line 48
    iget-object v0, p0, Lcom/lostpixels/fieldservice/ui/TimeoutPreference;->sMinutes:Ljava/lang/String;

    const/4 v1, 0x1

    new-array v2, v1, [Ljava/lang/Object;

    const/4 v3, 0x0

    aput-object v0, v2, v3

    const-string v0, "5 %s"

    invoke-static {v0, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    .line 49
    iget-object v2, p0, Lcom/lostpixels/fieldservice/ui/TimeoutPreference;->sMinutes:Ljava/lang/String;

    new-array v4, v1, [Ljava/lang/Object;

    aput-object v2, v4, v3

    const-string v2, "10 %s"

    invoke-static {v2, v4}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    .line 50
    iget-object v4, p0, Lcom/lostpixels/fieldservice/ui/TimeoutPreference;->sMinutes:Ljava/lang/String;

    new-array v5, v1, [Ljava/lang/Object;

    aput-object v4, v5, v3

    const-string v4, "15 %s"

    invoke-static {v4, v5}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    .line 51
    iget-object v5, p0, Lcom/lostpixels/fieldservice/ui/TimeoutPreference;->sMinutes:Ljava/lang/String;

    new-array v6, v1, [Ljava/lang/Object;

    aput-object v5, v6, v3

    const-string v5, "30 %s"

    invoke-static {v5, v6}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    .line 52
    iget-object v6, p0, Lcom/lostpixels/fieldservice/ui/TimeoutPreference;->sMinutes:Ljava/lang/String;

    new-array v7, v1, [Ljava/lang/Object;

    aput-object v6, v7, v3

    const-string v6, "60 %s"

    invoke-static {v6, v7}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v6

    .line 53
    iget-object v7, p0, Lcom/lostpixels/fieldservice/ui/TimeoutPreference;->sMinutes:Ljava/lang/String;

    new-array v8, v1, [Ljava/lang/Object;

    aput-object v7, v8, v3

    const-string v7, "120 %s"

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

    .line 65
    new-array v0, v0, [Ljava/lang/CharSequence;

    const-string v1, "5"

    const/4 v2, 0x0

    aput-object v1, v0, v2

    const-string v1, "10"

    const/4 v2, 0x1

    aput-object v1, v0, v2

    const-string v1, "15"

    const/4 v2, 0x2

    aput-object v1, v0, v2

    const-string v1, "30"

    const/4 v2, 0x3

    aput-object v1, v0, v2

    const-string v1, "60"

    const/4 v2, 0x4

    aput-object v1, v0, v2

    const-string v1, "120"

    const/4 v2, 0x5

    aput-object v1, v0, v2

    return-object v0
.end method


# virtual methods
.method protected onCreateDialogView()Landroid/view/View;
    .locals 2

    .line 33
    new-instance v0, Landroid/widget/ListView;

    invoke-virtual {p0}, Landroid/preference/Preference;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/widget/ListView;-><init>(Landroid/content/Context;)V

    .line 34
    invoke-direct {p0}, Lcom/lostpixels/fieldservice/ui/TimeoutPreference;->adapter()Landroid/widget/ListAdapter;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 35
    invoke-direct {p0}, Lcom/lostpixels/fieldservice/ui/TimeoutPreference;->entries()[Ljava/lang/CharSequence;

    move-result-object v1

    invoke-virtual {p0, v1}, Landroid/preference/ListPreference;->setEntries([Ljava/lang/CharSequence;)V

    .line 36
    invoke-direct {p0}, Lcom/lostpixels/fieldservice/ui/TimeoutPreference;->entryValues()[Ljava/lang/CharSequence;

    move-result-object v1

    invoke-virtual {p0, v1}, Landroid/preference/ListPreference;->setEntryValues([Ljava/lang/CharSequence;)V

    return-object v0
.end method
