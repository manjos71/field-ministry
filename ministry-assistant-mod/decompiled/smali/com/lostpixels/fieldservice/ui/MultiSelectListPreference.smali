.class public Lcom/lostpixels/fieldservice/ui/MultiSelectListPreference;
.super Landroid/preference/ListPreference;
.source "SourceFile"


# instance fields
.field private final entryChecked:[Z

.field private final separator:Ljava/lang/String;


# direct methods
.method static bridge synthetic -$$Nest$fgetentryChecked(Lcom/lostpixels/fieldservice/ui/MultiSelectListPreference;)[Z
    .locals 0

    .line 0
    iget-object p0, p0, Lcom/lostpixels/fieldservice/ui/MultiSelectListPreference;->entryChecked:[Z

    return-object p0
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    const/4 v0, 0x0

    .line 35
    invoke-direct {p0, p1, v0}, Lcom/lostpixels/fieldservice/ui/MultiSelectListPreference;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0

    .line 29
    invoke-direct {p0, p1, p2}, Landroid/preference/ListPreference;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 30
    invoke-virtual {p0}, Landroid/preference/ListPreference;->getEntries()[Ljava/lang/CharSequence;

    move-result-object p1

    array-length p1, p1

    new-array p1, p1, [Z

    iput-object p1, p0, Lcom/lostpixels/fieldservice/ui/MultiSelectListPreference;->entryChecked:[Z

    .line 31
    const-string p1, "|"

    iput-object p1, p0, Lcom/lostpixels/fieldservice/ui/MultiSelectListPreference;->separator:Ljava/lang/String;

    return-void
.end method

.method protected static join(Ljava/lang/Iterable;Ljava/lang/String;)Ljava/lang/String;
    .locals 2

    if-eqz p0, :cond_2

    .line 51
    invoke-interface {p0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object p0

    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-nez v0, :cond_0

    goto :goto_1

    .line 53
    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 54
    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 55
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    goto :goto_0

    .line 56
    :cond_1
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0

    .line 52
    :cond_2
    :goto_1
    const-string p0, ""

    return-object p0
.end method

.method private restoreCheckedEntries()V
    .locals 5

    .line 99
    invoke-virtual {p0}, Landroid/preference/ListPreference;->getEntryValues()[Ljava/lang/CharSequence;

    move-result-object v0

    .line 102
    invoke-virtual {p0}, Landroid/preference/ListPreference;->getValue()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/lostpixels/fieldservice/ui/MultiSelectListPreference;->unpack(Ljava/lang/CharSequence;)[Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 106
    invoke-static {v1}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v1

    const/4 v2, 0x0

    .line 107
    :goto_0
    array-length v3, v0

    if-ge v2, v3, :cond_0

    .line 108
    aget-object v3, v0, v2

    .line 109
    iget-object v4, p0, Lcom/lostpixels/fieldservice/ui/MultiSelectListPreference;->entryChecked:[Z

    invoke-interface {v1, v3}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v3

    aput-boolean v3, v4, v2

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method private setValueAndEvent(Ljava/lang/String;)V
    .locals 1

    .line 135
    invoke-direct {p0, p1}, Lcom/lostpixels/fieldservice/ui/MultiSelectListPreference;->unpack(Ljava/lang/CharSequence;)[Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Landroid/preference/Preference;->callChangeListener(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 136
    invoke-virtual {p0, p1}, Landroid/preference/ListPreference;->setValue(Ljava/lang/String;)V

    :cond_0
    return-void
.end method

.method private unpack(Ljava/lang/CharSequence;)[Ljava/lang/String;
    .locals 1

    if-eqz p1, :cond_1

    .line 81
    const-string v0, ""

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    .line 84
    :cond_0
    check-cast p1, Ljava/lang/String;

    iget-object v0, p0, Lcom/lostpixels/fieldservice/ui/MultiSelectListPreference;->separator:Ljava/lang/String;

    invoke-static {v0}, Ljava/util/regex/Pattern;->quote(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object p1

    return-object p1

    :cond_1
    :goto_0
    const/4 p1, 0x0

    .line 82
    new-array p1, p1, [Ljava/lang/String;

    return-object p1
.end method


# virtual methods
.method protected onDialogClosed(Z)V
    .locals 3

    .line 116
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 118
    invoke-virtual {p0}, Landroid/preference/ListPreference;->getEntryValues()[Ljava/lang/CharSequence;

    move-result-object v1

    if-eqz p1, :cond_2

    if-eqz v1, :cond_2

    const/4 p1, 0x0

    .line 120
    :goto_0
    array-length v2, v1

    if-ge p1, v2, :cond_1

    .line 121
    iget-object v2, p0, Lcom/lostpixels/fieldservice/ui/MultiSelectListPreference;->entryChecked:[Z

    aget-boolean v2, v2, p1

    if-eqz v2, :cond_0

    .line 122
    aget-object v2, v1, p1

    check-cast v2, Ljava/lang/String;

    .line 123
    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_0
    add-int/lit8 p1, p1, 0x1

    goto :goto_0

    .line 127
    :cond_1
    iget-object p1, p0, Lcom/lostpixels/fieldservice/ui/MultiSelectListPreference;->separator:Ljava/lang/String;

    invoke-static {v0, p1}, Lcom/lostpixels/fieldservice/ui/MultiSelectListPreference;->join(Ljava/lang/Iterable;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 129
    invoke-direct {p0, p1}, Lcom/lostpixels/fieldservice/ui/MultiSelectListPreference;->setValueAndEvent(Ljava/lang/String;)V

    .line 130
    invoke-virtual {p0, p1}, Landroid/preference/Preference;->persistString(Ljava/lang/String;)Z

    :cond_2
    return-void
.end method

.method protected onGetDefaultValue(Landroid/content/res/TypedArray;I)Ljava/lang/Object;
    .locals 0

    .line 142
    invoke-virtual {p1, p2}, Landroid/content/res/TypedArray;->getTextArray(I)[Ljava/lang/CharSequence;

    move-result-object p1

    return-object p1
.end method

.method protected onPrepareDialogBuilder(Landroid/app/AlertDialog$Builder;)V
    .locals 3

    .line 61
    invoke-virtual {p0}, Landroid/preference/ListPreference;->getEntries()[Ljava/lang/CharSequence;

    move-result-object v0

    .line 62
    invoke-virtual {p0}, Landroid/preference/ListPreference;->getEntryValues()[Ljava/lang/CharSequence;

    move-result-object v1

    if-eqz v0, :cond_0

    if-eqz v1, :cond_0

    .line 63
    array-length v2, v0

    array-length v1, v1

    if-ne v2, v1, :cond_0

    .line 70
    invoke-direct {p0}, Lcom/lostpixels/fieldservice/ui/MultiSelectListPreference;->restoreCheckedEntries()V

    .line 71
    new-instance v1, Lcom/lostpixels/fieldservice/ui/MultiSelectListPreference$1;

    invoke-direct {v1, p0}, Lcom/lostpixels/fieldservice/ui/MultiSelectListPreference$1;-><init>(Lcom/lostpixels/fieldservice/ui/MultiSelectListPreference;)V

    .line 76
    iget-object v2, p0, Lcom/lostpixels/fieldservice/ui/MultiSelectListPreference;->entryChecked:[Z

    invoke-virtual {p1, v0, v2, v1}, Landroid/app/AlertDialog$Builder;->setMultiChoiceItems([Ljava/lang/CharSequence;[ZLandroid/content/DialogInterface$OnMultiChoiceClickListener;)Landroid/app/AlertDialog$Builder;

    return-void

    .line 65
    :cond_0
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string v0, "MultiSelectListPreference requires an entries array and an entryValues array which are both the same length"

    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method protected onSetInitialValue(ZLjava/lang/Object;)V
    .locals 0

    if-nez p2, :cond_0

    const/4 p1, 0x0

    .line 151
    new-array p1, p1, [Ljava/lang/CharSequence;

    goto :goto_0

    .line 153
    :cond_0
    move-object p1, p2

    check-cast p1, [Ljava/lang/CharSequence;

    .line 155
    :goto_0
    invoke-static {p1}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object p1

    .line 156
    iget-object p2, p0, Lcom/lostpixels/fieldservice/ui/MultiSelectListPreference;->separator:Ljava/lang/String;

    invoke-static {p1, p2}, Lcom/lostpixels/fieldservice/ui/MultiSelectListPreference;->join(Ljava/lang/Iterable;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 158
    invoke-virtual {p0, p1}, Landroid/preference/Preference;->getPersistedString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 164
    invoke-direct {p0, p1}, Lcom/lostpixels/fieldservice/ui/MultiSelectListPreference;->setValueAndEvent(Ljava/lang/String;)V

    return-void
.end method
