.class public Lcom/lostpixels/fieldservice/activities/visits/AddCustomTagDialog;
.super Landroidx/fragment/app/DialogFragment;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/lostpixels/fieldservice/activities/visits/AddCustomTagDialog$OnTagsSetListener;
    }
.end annotation


# instance fields
.field listTags:Ljava/util/TreeSet;

.field listener:Lcom/lostpixels/fieldservice/activities/visits/AddCustomTagDialog$OnTagsSetListener;

.field setSelectedTags:Ljava/util/HashMap;

.field private tagGroup:Lme/gujun/android/taggroup/TagGroup;


# direct methods
.method static bridge synthetic -$$Nest$fgettagGroup(Lcom/lostpixels/fieldservice/activities/visits/AddCustomTagDialog;)Lme/gujun/android/taggroup/TagGroup;
    .locals 0

    .line 0
    iget-object p0, p0, Lcom/lostpixels/fieldservice/activities/visits/AddCustomTagDialog;->tagGroup:Lme/gujun/android/taggroup/TagGroup;

    return-object p0
.end method

.method public constructor <init>()V
    .locals 0

    .line 31
    invoke-direct {p0}, Landroidx/fragment/app/DialogFragment;-><init>()V

    return-void
.end method

.method private updateTags(Landroid/view/LayoutInflater;)V
    .locals 2

    .line 108
    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    .line 109
    iget-object v0, p0, Lcom/lostpixels/fieldservice/activities/visits/AddCustomTagDialog;->listTags:Ljava/util/TreeSet;

    invoke-interface {p1, v0}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 110
    iget-object v0, p0, Lcom/lostpixels/fieldservice/activities/visits/AddCustomTagDialog;->tagGroup:Lme/gujun/android/taggroup/TagGroup;

    invoke-virtual {v0, p1}, Lme/gujun/android/taggroup/TagGroup;->setTags(Ljava/util/List;)V

    .line 111
    iget-object p1, p0, Lcom/lostpixels/fieldservice/activities/visits/AddCustomTagDialog;->setSelectedTags:Ljava/util/HashMap;

    invoke-virtual {p1}, Ljava/util/HashMap;->keySet()Ljava/util/Set;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 112
    iget-object v1, p0, Lcom/lostpixels/fieldservice/activities/visits/AddCustomTagDialog;->listTags:Ljava/util/TreeSet;

    invoke-virtual {v1, v0}, Ljava/util/TreeSet;->headSet(Ljava/lang/Object;)Ljava/util/SortedSet;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->size()I

    move-result v0

    .line 113
    iget-object v1, p0, Lcom/lostpixels/fieldservice/activities/visits/AddCustomTagDialog;->tagGroup:Lme/gujun/android/taggroup/TagGroup;

    invoke-virtual {v1, v0}, Lme/gujun/android/taggroup/TagGroup;->setCheckedTag(I)V

    goto :goto_0

    :cond_0
    return-void
.end method


# virtual methods
.method public onAttach(Landroid/content/Context;)V
    .locals 2

    .line 119
    invoke-super {p0, p1}, Landroidx/fragment/app/DialogFragment;->onAttach(Landroid/content/Context;)V

    .line 124
    :try_start_0
    move-object v0, p1

    check-cast v0, Lcom/lostpixels/fieldservice/activities/visits/AddCustomTagDialog$OnTagsSetListener;

    iput-object v0, p0, Lcom/lostpixels/fieldservice/activities/visits/AddCustomTagDialog;->listener:Lcom/lostpixels/fieldservice/activities/visits/AddCustomTagDialog$OnTagsSetListener;
    :try_end_0
    .catch Ljava/lang/ClassCastException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    .line 127
    :catch_0
    new-instance v0, Ljava/lang/ClassCastException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p1, " must implement OnTagsSetListener"

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Ljava/lang/ClassCastException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public onCreateDialog(Landroid/os/Bundle;)Landroid/app/Dialog;
    .locals 6

    .line 42
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getArguments()Landroid/os/Bundle;

    move-result-object p1

    .line 45
    new-instance v0, Ljava/util/TreeSet;

    invoke-direct {v0}, Ljava/util/TreeSet;-><init>()V

    iput-object v0, p0, Lcom/lostpixels/fieldservice/activities/visits/AddCustomTagDialog;->listTags:Ljava/util/TreeSet;

    .line 46
    invoke-static {}, Lio/realm/Realm;->getDefaultInstance()Lio/realm/Realm;

    move-result-object v0

    .line 47
    invoke-static {v0}, Lcom/lostpixels/fieldservice/internal/ministry/MinistryManager;->getInstance(Lio/realm/Realm;)Lcom/lostpixels/fieldservice/internal/ministry/MinistryManager;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/lostpixels/fieldservice/internal/ministry/MinistryManager;->getPersons(Lio/realm/Realm;)Lio/realm/RealmResults;

    move-result-object v1

    invoke-virtual {v1}, Lio/realm/RealmResults;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/lostpixels/fieldservice/internal/ministry/Person;

    .line 48
    iget-object v3, p0, Lcom/lostpixels/fieldservice/activities/visits/AddCustomTagDialog;->listTags:Ljava/util/TreeSet;

    invoke-virtual {v2}, Lcom/lostpixels/fieldservice/internal/ministry/Person;->getCustomTagsSet()Ljava/util/Set;

    move-result-object v2

    invoke-virtual {v3, v2}, Ljava/util/TreeSet;->addAll(Ljava/util/Collection;)Z

    goto :goto_0

    .line 50
    :cond_0
    invoke-virtual {v0}, Lio/realm/Realm;->close()V

    .line 51
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/lostpixels/fieldservice/activities/visits/AddCustomTagDialog;->setSelectedTags:Ljava/util/HashMap;

    const/4 v0, 0x0

    if-eqz p1, :cond_1

    .line 52
    const-string v1, "TagsSet"

    invoke-virtual {p1, v1}, Landroid/os/BaseBundle;->containsKey(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 53
    invoke-virtual {p1, v1}, Landroid/os/Bundle;->getStringArrayList(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object p1

    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v1

    const/4 v2, 0x0

    :goto_1
    if-ge v2, v1, :cond_1

    invoke-virtual {p1, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    add-int/lit8 v2, v2, 0x1

    check-cast v3, Ljava/lang/String;

    .line 54
    iget-object v4, p0, Lcom/lostpixels/fieldservice/activities/visits/AddCustomTagDialog;->setSelectedTags:Ljava/util/HashMap;

    sget-object v5, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    invoke-virtual {v4, v3, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_1

    .line 59
    :cond_1
    iget-object p1, p0, Lcom/lostpixels/fieldservice/activities/visits/AddCustomTagDialog;->listTags:Ljava/util/TreeSet;

    iget-object v1, p0, Lcom/lostpixels/fieldservice/activities/visits/AddCustomTagDialog;->setSelectedTags:Ljava/util/HashMap;

    invoke-virtual {v1}, Ljava/util/HashMap;->keySet()Ljava/util/Set;

    move-result-object v1

    invoke-virtual {p1, v1}, Ljava/util/TreeSet;->addAll(Ljava/util/Collection;)Z

    .line 62
    new-instance p1, Landroid/app/AlertDialog$Builder;

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v1

    invoke-direct {p1, v1}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 63
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->requireActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/Activity;->getLayoutInflater()Landroid/view/LayoutInflater;

    move-result-object v1

    const v2, 0x7f0c0064

    const/4 v3, 0x0

    .line 67
    invoke-virtual {v1, v2, v3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v2

    const v3, 0x7f090549

    .line 68
    invoke-virtual {v2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Lme/gujun/android/taggroup/TagGroup;

    iput-object v3, p0, Lcom/lostpixels/fieldservice/activities/visits/AddCustomTagDialog;->tagGroup:Lme/gujun/android/taggroup/TagGroup;

    .line 69
    invoke-virtual {v3, v0}, Lme/gujun/android/taggroup/TagGroup;->setAllowRepeats(Z)V

    .line 70
    iget-object v0, p0, Lcom/lostpixels/fieldservice/activities/visits/AddCustomTagDialog;->tagGroup:Lme/gujun/android/taggroup/TagGroup;

    new-instance v3, Lcom/lostpixels/fieldservice/activities/visits/AddCustomTagDialog$1;

    invoke-direct {v3, p0}, Lcom/lostpixels/fieldservice/activities/visits/AddCustomTagDialog$1;-><init>(Lcom/lostpixels/fieldservice/activities/visits/AddCustomTagDialog;)V

    invoke-virtual {v0, v3}, Lme/gujun/android/taggroup/TagGroup;->setOnTagChangeListener(Lme/gujun/android/taggroup/TagGroup$OnTagChangeListener;)V

    .line 82
    invoke-direct {p0, v1}, Lcom/lostpixels/fieldservice/activities/visits/AddCustomTagDialog;->updateTags(Landroid/view/LayoutInflater;)V

    .line 84
    invoke-virtual {p1, v2}, Landroid/app/AlertDialog$Builder;->setView(Landroid/view/View;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    new-instance v1, Lcom/lostpixels/fieldservice/activities/visits/AddCustomTagDialog$3;

    invoke-direct {v1, p0}, Lcom/lostpixels/fieldservice/activities/visits/AddCustomTagDialog$3;-><init>(Lcom/lostpixels/fieldservice/activities/visits/AddCustomTagDialog;)V

    const v2, 0x7f120054

    invoke-virtual {v0, v2, v1}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    new-instance v1, Lcom/lostpixels/fieldservice/activities/visits/AddCustomTagDialog$2;

    invoke-direct {v1, p0}, Lcom/lostpixels/fieldservice/activities/visits/AddCustomTagDialog$2;-><init>(Lcom/lostpixels/fieldservice/activities/visits/AddCustomTagDialog;)V

    const v2, 0x7f12004b

    .line 99
    invoke-virtual {v0, v2, v1}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    .line 103
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v1

    const v2, 0x7f1203bc

    invoke-virtual {v1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    .line 104
    invoke-virtual {p1}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object p1

    return-object p1
.end method

.method public onDetach()V
    .locals 1

    const/4 v0, 0x0

    .line 133
    iput-object v0, p0, Lcom/lostpixels/fieldservice/activities/visits/AddCustomTagDialog;->listener:Lcom/lostpixels/fieldservice/activities/visits/AddCustomTagDialog$OnTagsSetListener;

    .line 134
    invoke-super {p0}, Landroidx/fragment/app/DialogFragment;->onDetach()V

    return-void
.end method
