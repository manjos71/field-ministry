.class public Lcom/lostpixels/fieldservice/ui/DynamicPreference;
.super Landroid/preference/ListPreference;
.source "SourceFile"


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0

    .line 24
    invoke-direct {p0, p1}, Landroid/preference/ListPreference;-><init>(Landroid/content/Context;)V

    .line 25
    invoke-static {}, Lcom/lostpixels/fieldservice/utils/StorageUtils;->determineStorageOptions()V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0

    .line 19
    invoke-direct {p0, p1, p2}, Landroid/preference/ListPreference;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 20
    invoke-static {}, Lcom/lostpixels/fieldservice/utils/StorageUtils;->determineStorageOptions()V

    return-void
.end method

.method private adapter()Landroid/widget/ListAdapter;
    .locals 3

    .line 41
    new-instance v0, Landroid/widget/ArrayAdapter;

    invoke-virtual {p0}, Landroid/preference/Preference;->getContext()Landroid/content/Context;

    move-result-object v1

    const v2, 0x1090012

    invoke-direct {v0, v1, v2}, Landroid/widget/ArrayAdapter;-><init>(Landroid/content/Context;I)V

    return-object v0
.end method

.method private entries()[Ljava/lang/CharSequence;
    .locals 7

    .line 46
    sget-object v0, Lcom/lostpixels/fieldservice/utils/StorageUtils;->labels:[Ljava/lang/String;

    array-length v0, v0

    new-array v1, v0, [Ljava/lang/String;

    const/4 v2, 0x0

    const/4 v3, 0x0

    :goto_0
    if-ge v3, v0, :cond_0

    .line 48
    sget-object v4, Lcom/lostpixels/fieldservice/utils/StorageUtils;->labels:[Ljava/lang/String;

    aget-object v4, v4, v3

    sget-object v5, Lcom/lostpixels/fieldservice/utils/StorageUtils;->paths:[Ljava/lang/String;

    aget-object v5, v5, v3

    const/4 v6, 0x2

    new-array v6, v6, [Ljava/lang/Object;

    aput-object v4, v6, v2

    const/4 v4, 0x1

    aput-object v5, v6, v4

    const-string v4, "%s (%s)"

    invoke-static {v4, v6}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    aput-object v4, v1, v3

    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_0
    return-object v1
.end method

.method private entryValues()[Ljava/lang/CharSequence;
    .locals 1

    .line 54
    sget-object v0, Lcom/lostpixels/fieldservice/utils/StorageUtils;->paths:[Ljava/lang/String;

    return-object v0
.end method


# virtual methods
.method protected onCreateDialogView()Landroid/view/View;
    .locals 2

    .line 31
    new-instance v0, Landroid/widget/ListView;

    invoke-virtual {p0}, Landroid/preference/Preference;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/widget/ListView;-><init>(Landroid/content/Context;)V

    .line 32
    invoke-direct {p0}, Lcom/lostpixels/fieldservice/ui/DynamicPreference;->adapter()Landroid/widget/ListAdapter;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 33
    invoke-direct {p0}, Lcom/lostpixels/fieldservice/ui/DynamicPreference;->entries()[Ljava/lang/CharSequence;

    move-result-object v1

    invoke-virtual {p0, v1}, Landroid/preference/ListPreference;->setEntries([Ljava/lang/CharSequence;)V

    .line 34
    invoke-direct {p0}, Lcom/lostpixels/fieldservice/ui/DynamicPreference;->entryValues()[Ljava/lang/CharSequence;

    move-result-object v1

    invoke-virtual {p0, v1}, Landroid/preference/ListPreference;->setEntryValues([Ljava/lang/CharSequence;)V

    return-object v0
.end method
