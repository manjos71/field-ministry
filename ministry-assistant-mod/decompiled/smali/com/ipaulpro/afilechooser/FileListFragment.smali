.class public Lcom/ipaulpro/afilechooser/FileListFragment;
.super Landroidx/fragment/app/ListFragment;
.source "SourceFile"

# interfaces
.implements Landroidx/loader/app/LoaderManager$LoaderCallbacks;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/ipaulpro/afilechooser/FileListFragment$Callbacks;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroidx/fragment/app/ListFragment;",
        "Landroidx/loader/app/LoaderManager$LoaderCallbacks;"
    }
.end annotation


# instance fields
.field private mAdapter:Lcom/ipaulpro/afilechooser/FileListAdapter;

.field private mListener:Lcom/ipaulpro/afilechooser/FileListFragment$Callbacks;

.field private mPath:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 38
    invoke-direct {p0}, Landroidx/fragment/app/ListFragment;-><init>()V

    return-void
.end method

.method public static newInstance(Ljava/lang/String;)Lcom/ipaulpro/afilechooser/FileListFragment;
    .locals 3

    .line 67
    new-instance v0, Lcom/ipaulpro/afilechooser/FileListFragment;

    invoke-direct {v0}, Lcom/ipaulpro/afilechooser/FileListFragment;-><init>()V

    .line 68
    new-instance v1, Landroid/os/Bundle;

    invoke-direct {v1}, Landroid/os/Bundle;-><init>()V

    .line 69
    const-string v2, "path"

    invoke-virtual {v1, v2, p0}, Landroid/os/BaseBundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 70
    invoke-virtual {v0, v1}, Landroidx/fragment/app/Fragment;->setArguments(Landroid/os/Bundle;)V

    return-object v0
.end method


# virtual methods
.method public onActivityCreated(Landroid/os/Bundle;)V
    .locals 3

    .line 99
    sget v0, Lcom/ipaulpro/afilechooser/R$string;->empty_directory:I

    invoke-virtual {p0, v0}, Landroidx/fragment/app/Fragment;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Landroidx/fragment/app/ListFragment;->setEmptyText(Ljava/lang/CharSequence;)V

    .line 100
    iget-object v0, p0, Lcom/ipaulpro/afilechooser/FileListFragment;->mAdapter:Lcom/ipaulpro/afilechooser/FileListAdapter;

    invoke-virtual {p0, v0}, Landroidx/fragment/app/ListFragment;->setListAdapter(Landroid/widget/ListAdapter;)V

    const/4 v0, 0x0

    .line 101
    invoke-virtual {p0, v0}, Landroidx/fragment/app/ListFragment;->setListShown(Z)V

    .line 103
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getLoaderManager()Landroidx/loader/app/LoaderManager;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v1, v0, v2, p0}, Landroidx/loader/app/LoaderManager;->initLoader(ILandroid/os/Bundle;Landroidx/loader/app/LoaderManager$LoaderCallbacks;)Landroidx/loader/content/Loader;

    .line 105
    invoke-super {p0, p1}, Landroidx/fragment/app/Fragment;->onActivityCreated(Landroid/os/Bundle;)V

    return-void
.end method

.method public onAttach(Landroid/app/Activity;)V
    .locals 2

    .line 77
    invoke-super {p0, p1}, Landroidx/fragment/app/Fragment;->onAttach(Landroid/app/Activity;)V

    .line 80
    :try_start_0
    move-object v0, p1

    check-cast v0, Lcom/ipaulpro/afilechooser/FileListFragment$Callbacks;

    iput-object v0, p0, Lcom/ipaulpro/afilechooser/FileListFragment;->mListener:Lcom/ipaulpro/afilechooser/FileListFragment$Callbacks;
    :try_end_0
    .catch Ljava/lang/ClassCastException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    .line 82
    :catch_0
    new-instance v0, Ljava/lang/ClassCastException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, " must implement FileListFragment.Callbacks"

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Ljava/lang/ClassCastException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 1

    .line 89
    invoke-super {p0, p1}, Landroidx/fragment/app/Fragment;->onCreate(Landroid/os/Bundle;)V

    .line 91
    new-instance p1, Lcom/ipaulpro/afilechooser/FileListAdapter;

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v0

    invoke-direct {p1, v0}, Lcom/ipaulpro/afilechooser/FileListAdapter;-><init>(Landroid/content/Context;)V

    iput-object p1, p0, Lcom/ipaulpro/afilechooser/FileListFragment;->mAdapter:Lcom/ipaulpro/afilechooser/FileListAdapter;

    .line 92
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getArguments()Landroid/os/Bundle;

    move-result-object p1

    if-eqz p1, :cond_0

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getArguments()Landroid/os/Bundle;

    move-result-object p1

    const-string v0, "path"

    invoke-virtual {p1, v0}, Landroid/os/BaseBundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    goto :goto_0

    .line 94
    :cond_0
    invoke-static {}, Landroid/os/Environment;->getExternalStorageDirectory()Ljava/io/File;

    move-result-object p1

    invoke-virtual {p1}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object p1

    :goto_0
    iput-object p1, p0, Lcom/ipaulpro/afilechooser/FileListFragment;->mPath:Ljava/lang/String;

    return-void
.end method

.method public onCreateLoader(ILandroid/os/Bundle;)Landroidx/loader/content/Loader;
    .locals 1

    .line 120
    new-instance p1, Lcom/ipaulpro/afilechooser/FileLoader;

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object p2

    iget-object v0, p0, Lcom/ipaulpro/afilechooser/FileListFragment;->mPath:Ljava/lang/String;

    invoke-direct {p1, p2, v0}, Lcom/ipaulpro/afilechooser/FileLoader;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    return-object p1
.end method

.method public onListItemClick(Landroid/widget/ListView;Landroid/view/View;IJ)V
    .locals 0

    .line 110
    invoke-virtual {p1}, Landroid/widget/ListView;->getAdapter()Landroid/widget/ListAdapter;

    move-result-object p1

    check-cast p1, Lcom/ipaulpro/afilechooser/FileListAdapter;

    if-eqz p1, :cond_0

    .line 112
    invoke-virtual {p1, p3}, Lcom/ipaulpro/afilechooser/FileListAdapter;->getItem(I)Ljava/io/File;

    move-result-object p1

    .line 113
    invoke-virtual {p1}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object p2

    iput-object p2, p0, Lcom/ipaulpro/afilechooser/FileListFragment;->mPath:Ljava/lang/String;

    .line 114
    iget-object p2, p0, Lcom/ipaulpro/afilechooser/FileListFragment;->mListener:Lcom/ipaulpro/afilechooser/FileListFragment$Callbacks;

    invoke-interface {p2, p1}, Lcom/ipaulpro/afilechooser/FileListFragment$Callbacks;->onFileSelected(Ljava/io/File;)V

    :cond_0
    return-void
.end method

.method public bridge synthetic onLoadFinished(Landroidx/loader/content/Loader;Ljava/lang/Object;)V
    .locals 0

    .line 38
    check-cast p2, Ljava/util/List;

    invoke-virtual {p0, p1, p2}, Lcom/ipaulpro/afilechooser/FileListFragment;->onLoadFinished(Landroidx/loader/content/Loader;Ljava/util/List;)V

    return-void
.end method

.method public onLoadFinished(Landroidx/loader/content/Loader;Ljava/util/List;)V
    .locals 0

    .line 125
    iget-object p1, p0, Lcom/ipaulpro/afilechooser/FileListFragment;->mAdapter:Lcom/ipaulpro/afilechooser/FileListAdapter;

    invoke-virtual {p1, p2}, Lcom/ipaulpro/afilechooser/FileListAdapter;->setListItems(Ljava/util/List;)V

    .line 127
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->isResumed()Z

    move-result p1

    const/4 p2, 0x1

    if-eqz p1, :cond_0

    .line 128
    invoke-virtual {p0, p2}, Landroidx/fragment/app/ListFragment;->setListShown(Z)V

    return-void

    .line 130
    :cond_0
    invoke-virtual {p0, p2}, Landroidx/fragment/app/ListFragment;->setListShownNoAnimation(Z)V

    return-void
.end method

.method public onLoaderReset(Landroidx/loader/content/Loader;)V
    .locals 0

    .line 135
    iget-object p1, p0, Lcom/ipaulpro/afilechooser/FileListFragment;->mAdapter:Lcom/ipaulpro/afilechooser/FileListAdapter;

    invoke-virtual {p1}, Lcom/ipaulpro/afilechooser/FileListAdapter;->clear()V

    return-void
.end method
