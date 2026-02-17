.class public Lit/gmariotti/changelibs/library/view/ChangeLogListView$ParseAsyncTask;
.super Landroid/os/AsyncTask;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lit/gmariotti/changelibs/library/view/ChangeLogListView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4
    name = "ParseAsyncTask"
.end annotation


# instance fields
.field private mAdapter:Lit/gmariotti/changelibs/library/internal/ChangeLogAdapter;

.field private mParse:Lit/gmariotti/changelibs/library/parser/XmlParser;

.field final synthetic this$0:Lit/gmariotti/changelibs/library/view/ChangeLogListView;


# direct methods
.method public constructor <init>(Lit/gmariotti/changelibs/library/view/ChangeLogListView;Lit/gmariotti/changelibs/library/internal/ChangeLogAdapter;Lit/gmariotti/changelibs/library/parser/XmlParser;)V
    .locals 0

    .line 168
    iput-object p1, p0, Lit/gmariotti/changelibs/library/view/ChangeLogListView$ParseAsyncTask;->this$0:Lit/gmariotti/changelibs/library/view/ChangeLogListView;

    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    .line 169
    iput-object p2, p0, Lit/gmariotti/changelibs/library/view/ChangeLogListView$ParseAsyncTask;->mAdapter:Lit/gmariotti/changelibs/library/internal/ChangeLogAdapter;

    .line 170
    iput-object p3, p0, Lit/gmariotti/changelibs/library/view/ChangeLogListView$ParseAsyncTask;->mParse:Lit/gmariotti/changelibs/library/parser/XmlParser;

    return-void
.end method


# virtual methods
.method protected varargs doInBackground([Ljava/lang/Void;)Lit/gmariotti/changelibs/library/internal/ChangeLog;
    .locals 3

    .line 177
    :try_start_0
    iget-object p1, p0, Lit/gmariotti/changelibs/library/view/ChangeLogListView$ParseAsyncTask;->mParse:Lit/gmariotti/changelibs/library/parser/XmlParser;

    if-eqz p1, :cond_0

    .line 178
    invoke-virtual {p1}, Lit/gmariotti/changelibs/library/parser/XmlParser;->readChangeLogFile()Lit/gmariotti/changelibs/library/internal/ChangeLog;

    move-result-object p1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-object p1

    :catch_0
    move-exception p1

    .line 182
    sget-object v0, Lit/gmariotti/changelibs/library/view/ChangeLogListView;->TAG:Ljava/lang/String;

    iget-object v1, p0, Lit/gmariotti/changelibs/library/view/ChangeLogListView$ParseAsyncTask;->this$0:Lit/gmariotti/changelibs/library/view/ChangeLogListView;

    invoke-virtual {v1}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    sget v2, Lit/gmariotti/changelibs/R$string;->changelog_internal_error_parsing:I

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :cond_0
    const/4 p1, 0x0

    return-object p1
.end method

.method protected bridge synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 163
    check-cast p1, [Ljava/lang/Void;

    invoke-virtual {p0, p1}, Lit/gmariotti/changelibs/library/view/ChangeLogListView$ParseAsyncTask;->doInBackground([Ljava/lang/Void;)Lit/gmariotti/changelibs/library/internal/ChangeLog;

    move-result-object p1

    return-object p1
.end method

.method protected onPostExecute(Lit/gmariotti/changelibs/library/internal/ChangeLog;)V
    .locals 1

    if-eqz p1, :cond_0

    .line 192
    iget-object v0, p0, Lit/gmariotti/changelibs/library/view/ChangeLogListView$ParseAsyncTask;->mAdapter:Lit/gmariotti/changelibs/library/internal/ChangeLogAdapter;

    invoke-virtual {p1}, Lit/gmariotti/changelibs/library/internal/ChangeLog;->getRows()Ljava/util/LinkedList;

    move-result-object p1

    invoke-virtual {v0, p1}, Landroid/widget/ArrayAdapter;->addAll(Ljava/util/Collection;)V

    .line 200
    iget-object p1, p0, Lit/gmariotti/changelibs/library/view/ChangeLogListView$ParseAsyncTask;->mAdapter:Lit/gmariotti/changelibs/library/internal/ChangeLogAdapter;

    invoke-virtual {p1}, Landroid/widget/BaseAdapter;->notifyDataSetChanged()V

    :cond_0
    return-void
.end method

.method protected bridge synthetic onPostExecute(Ljava/lang/Object;)V
    .locals 0

    .line 163
    check-cast p1, Lit/gmariotti/changelibs/library/internal/ChangeLog;

    invoke-virtual {p0, p1}, Lit/gmariotti/changelibs/library/view/ChangeLogListView$ParseAsyncTask;->onPostExecute(Lit/gmariotti/changelibs/library/internal/ChangeLog;)V

    return-void
.end method
