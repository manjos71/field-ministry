.class public Lcom/ipaulpro/afilechooser/FileLoader;
.super Landroidx/loader/content/AsyncTaskLoader;
.source "SourceFile"


# instance fields
.field private mData:Ljava/util/List;

.field private mFileObserver:Landroid/os/FileObserver;

.field private final mPath:Ljava/lang/String;


# direct methods
.method public constructor <init>(Landroid/content/Context;Ljava/lang/String;)V
    .locals 0

    .line 50
    invoke-direct {p0, p1}, Landroidx/loader/content/AsyncTaskLoader;-><init>(Landroid/content/Context;)V

    .line 51
    iput-object p2, p0, Lcom/ipaulpro/afilechooser/FileLoader;->mPath:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public bridge synthetic deliverResult(Ljava/lang/Object;)V
    .locals 0

    .line 37
    check-cast p1, Ljava/util/List;

    invoke-virtual {p0, p1}, Lcom/ipaulpro/afilechooser/FileLoader;->deliverResult(Ljava/util/List;)V

    return-void
.end method

.method public deliverResult(Ljava/util/List;)V
    .locals 2

    .line 87
    invoke-virtual {p0}, Landroidx/loader/content/Loader;->isReset()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 88
    invoke-virtual {p0, p1}, Lcom/ipaulpro/afilechooser/FileLoader;->onReleaseResources(Ljava/util/List;)V

    return-void

    .line 92
    :cond_0
    iget-object v0, p0, Lcom/ipaulpro/afilechooser/FileLoader;->mData:Ljava/util/List;

    .line 93
    iput-object p1, p0, Lcom/ipaulpro/afilechooser/FileLoader;->mData:Ljava/util/List;

    .line 95
    invoke-virtual {p0}, Landroidx/loader/content/Loader;->isStarted()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 96
    invoke-super {p0, p1}, Landroidx/loader/content/Loader;->deliverResult(Ljava/lang/Object;)V

    :cond_1
    if-eqz v0, :cond_2

    if-eq v0, p1, :cond_2

    .line 99
    invoke-virtual {p0, v0}, Lcom/ipaulpro/afilechooser/FileLoader;->onReleaseResources(Ljava/util/List;)V

    :cond_2
    return-void
.end method

.method public bridge synthetic loadInBackground()Ljava/lang/Object;
    .locals 1

    .line 37
    invoke-virtual {p0}, Lcom/ipaulpro/afilechooser/FileLoader;->loadInBackground()Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public loadInBackground()Ljava/util/List;
    .locals 7

    .line 57
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 60
    new-instance v1, Ljava/io/File;

    iget-object v2, p0, Lcom/ipaulpro/afilechooser/FileLoader;->mPath:Ljava/lang/String;

    invoke-direct {v1, v2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 63
    sget-object v2, Lcom/ipaulpro/afilechooser/utils/FileUtils;->sDirFilter:Ljava/io/FileFilter;

    invoke-virtual {v1, v2}, Ljava/io/File;->listFiles(Ljava/io/FileFilter;)[Ljava/io/File;

    move-result-object v2

    const/4 v3, 0x0

    if-eqz v2, :cond_0

    .line 66
    sget-object v4, Lcom/ipaulpro/afilechooser/utils/FileUtils;->sComparator:Ljava/util/Comparator;

    invoke-static {v2, v4}, Ljava/util/Arrays;->sort([Ljava/lang/Object;Ljava/util/Comparator;)V

    .line 68
    array-length v4, v2

    const/4 v5, 0x0

    :goto_0
    if-ge v5, v4, :cond_0

    aget-object v6, v2, v5

    .line 69
    invoke-virtual {v0, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    add-int/lit8 v5, v5, 0x1

    goto :goto_0

    .line 73
    :cond_0
    sget-object v2, Lcom/ipaulpro/afilechooser/utils/FileUtils;->sFileFilter:Ljava/io/FileFilter;

    invoke-virtual {v1, v2}, Ljava/io/File;->listFiles(Ljava/io/FileFilter;)[Ljava/io/File;

    move-result-object v1

    if-eqz v1, :cond_1

    .line 76
    sget-object v2, Lcom/ipaulpro/afilechooser/utils/FileUtils;->sComparator:Ljava/util/Comparator;

    invoke-static {v1, v2}, Ljava/util/Arrays;->sort([Ljava/lang/Object;Ljava/util/Comparator;)V

    .line 78
    array-length v2, v1

    :goto_1
    if-ge v3, v2, :cond_1

    aget-object v4, v1, v3

    .line 79
    invoke-virtual {v0, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    :cond_1
    return-object v0
.end method

.method public bridge synthetic onCanceled(Ljava/lang/Object;)V
    .locals 0

    .line 37
    check-cast p1, Ljava/util/List;

    invoke-virtual {p0, p1}, Lcom/ipaulpro/afilechooser/FileLoader;->onCanceled(Ljava/util/List;)V

    return-void
.end method

.method public onCanceled(Ljava/util/List;)V
    .locals 0

    .line 138
    invoke-super {p0, p1}, Landroidx/loader/content/AsyncTaskLoader;->onCanceled(Ljava/lang/Object;)V

    .line 140
    invoke-virtual {p0, p1}, Lcom/ipaulpro/afilechooser/FileLoader;->onReleaseResources(Ljava/util/List;)V

    return-void
.end method

.method protected onReleaseResources(Ljava/util/List;)V
    .locals 0

    .line 145
    iget-object p1, p0, Lcom/ipaulpro/afilechooser/FileLoader;->mFileObserver:Landroid/os/FileObserver;

    if-eqz p1, :cond_0

    .line 146
    invoke-virtual {p1}, Landroid/os/FileObserver;->stopWatching()V

    const/4 p1, 0x0

    .line 147
    iput-object p1, p0, Lcom/ipaulpro/afilechooser/FileLoader;->mFileObserver:Landroid/os/FileObserver;

    :cond_0
    return-void
.end method

.method protected onReset()V
    .locals 1

    .line 128
    invoke-virtual {p0}, Lcom/ipaulpro/afilechooser/FileLoader;->onStopLoading()V

    .line 130
    iget-object v0, p0, Lcom/ipaulpro/afilechooser/FileLoader;->mData:Ljava/util/List;

    if-eqz v0, :cond_0

    .line 131
    invoke-virtual {p0, v0}, Lcom/ipaulpro/afilechooser/FileLoader;->onReleaseResources(Ljava/util/List;)V

    const/4 v0, 0x0

    .line 132
    iput-object v0, p0, Lcom/ipaulpro/afilechooser/FileLoader;->mData:Ljava/util/List;

    :cond_0
    return-void
.end method

.method protected onStartLoading()V
    .locals 3

    .line 104
    iget-object v0, p0, Lcom/ipaulpro/afilechooser/FileLoader;->mData:Ljava/util/List;

    if-eqz v0, :cond_0

    .line 105
    invoke-virtual {p0, v0}, Lcom/ipaulpro/afilechooser/FileLoader;->deliverResult(Ljava/util/List;)V

    .line 107
    :cond_0
    iget-object v0, p0, Lcom/ipaulpro/afilechooser/FileLoader;->mFileObserver:Landroid/os/FileObserver;

    if-nez v0, :cond_1

    .line 108
    new-instance v0, Lcom/ipaulpro/afilechooser/FileLoader$1;

    iget-object v1, p0, Lcom/ipaulpro/afilechooser/FileLoader;->mPath:Ljava/lang/String;

    const/16 v2, 0xfc2

    invoke-direct {v0, p0, v1, v2}, Lcom/ipaulpro/afilechooser/FileLoader$1;-><init>(Lcom/ipaulpro/afilechooser/FileLoader;Ljava/lang/String;I)V

    iput-object v0, p0, Lcom/ipaulpro/afilechooser/FileLoader;->mFileObserver:Landroid/os/FileObserver;

    .line 115
    :cond_1
    iget-object v0, p0, Lcom/ipaulpro/afilechooser/FileLoader;->mFileObserver:Landroid/os/FileObserver;

    invoke-virtual {v0}, Landroid/os/FileObserver;->startWatching()V

    .line 117
    invoke-virtual {p0}, Landroidx/loader/content/Loader;->takeContentChanged()Z

    move-result v0

    if-nez v0, :cond_3

    iget-object v0, p0, Lcom/ipaulpro/afilechooser/FileLoader;->mData:Ljava/util/List;

    if-nez v0, :cond_2

    goto :goto_0

    :cond_2
    return-void

    .line 118
    :cond_3
    :goto_0
    invoke-virtual {p0}, Landroidx/loader/content/Loader;->forceLoad()V

    return-void
.end method

.method protected onStopLoading()V
    .locals 0

    .line 123
    invoke-virtual {p0}, Landroidx/loader/content/Loader;->cancelLoad()Z

    return-void
.end method
