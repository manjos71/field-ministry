.class public abstract Lcom/nightlynexus/viewstatepageradapter/ViewStatePagerAdapter;
.super Landroidx/viewpager/widget/PagerAdapter;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/nightlynexus/viewstatepageradapter/ViewStatePagerAdapter$SavedState;
    }
.end annotation


# instance fields
.field private final attached:Landroid/util/SparseArray;

.field private detached:Landroid/util/SparseArray;


# direct methods
.method public constructor <init>()V
    .locals 1

    const/4 v0, 0x3

    .line 30
    invoke-direct {p0, v0}, Lcom/nightlynexus/viewstatepageradapter/ViewStatePagerAdapter;-><init>(I)V

    return-void
.end method

.method public constructor <init>(I)V
    .locals 1

    .line 36
    invoke-direct {p0}, Landroidx/viewpager/widget/PagerAdapter;-><init>()V

    .line 37
    new-instance v0, Landroid/util/SparseArray;

    invoke-direct {v0, p1}, Landroid/util/SparseArray;-><init>(I)V

    iput-object v0, p0, Lcom/nightlynexus/viewstatepageradapter/ViewStatePagerAdapter;->attached:Landroid/util/SparseArray;

    return-void
.end method

.method private putInDetached(ILandroid/view/View;)V
    .locals 1

    .line 86
    new-instance v0, Landroid/util/SparseArray;

    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    .line 87
    invoke-virtual {p2, v0}, Landroid/view/View;->saveHierarchyState(Landroid/util/SparseArray;)V

    .line 88
    iget-object p2, p0, Lcom/nightlynexus/viewstatepageradapter/ViewStatePagerAdapter;->detached:Landroid/util/SparseArray;

    invoke-virtual {p2, p1, v0}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    return-void
.end method


# virtual methods
.method protected abstract createView(Landroid/view/ViewGroup;I)Landroid/view/View;
.end method

.method public final destroyItem(Landroid/view/ViewGroup;ILjava/lang/Object;)V
    .locals 0

    .line 78
    check-cast p3, Landroid/view/View;

    .line 79
    invoke-virtual {p0, p1, p2, p3}, Lcom/nightlynexus/viewstatepageradapter/ViewStatePagerAdapter;->destroyView(Landroid/view/ViewGroup;ILandroid/view/View;)V

    .line 80
    invoke-direct {p0, p2, p3}, Lcom/nightlynexus/viewstatepageradapter/ViewStatePagerAdapter;->putInDetached(ILandroid/view/View;)V

    .line 81
    invoke-virtual {p1, p3}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    .line 82
    iget-object p1, p0, Lcom/nightlynexus/viewstatepageradapter/ViewStatePagerAdapter;->attached:Landroid/util/SparseArray;

    invoke-virtual {p1, p2}, Landroid/util/SparseArray;->remove(I)V

    return-void
.end method

.method protected destroyView(Landroid/view/ViewGroup;ILandroid/view/View;)V
    .locals 0

    return-void
.end method

.method public final instantiateItem(Landroid/view/ViewGroup;I)Ljava/lang/Object;
    .locals 2

    .line 60
    iget-object v0, p0, Lcom/nightlynexus/viewstatepageradapter/ViewStatePagerAdapter;->detached:Landroid/util/SparseArray;

    if-nez v0, :cond_0

    .line 61
    new-instance v0, Landroid/util/SparseArray;

    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    iput-object v0, p0, Lcom/nightlynexus/viewstatepageradapter/ViewStatePagerAdapter;->detached:Landroid/util/SparseArray;

    .line 63
    :cond_0
    invoke-virtual {p0, p1, p2}, Lcom/nightlynexus/viewstatepageradapter/ViewStatePagerAdapter;->createView(Landroid/view/ViewGroup;I)Landroid/view/View;

    move-result-object v0

    if-eqz v0, :cond_2

    .line 68
    iget-object v1, p0, Lcom/nightlynexus/viewstatepageradapter/ViewStatePagerAdapter;->detached:Landroid/util/SparseArray;

    invoke-virtual {v1, p2}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/util/SparseArray;

    if-eqz v1, :cond_1

    .line 70
    invoke-virtual {v0, v1}, Landroid/view/View;->restoreHierarchyState(Landroid/util/SparseArray;)V

    .line 72
    :cond_1
    invoke-virtual {p1, v0}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    .line 73
    iget-object p1, p0, Lcom/nightlynexus/viewstatepageradapter/ViewStatePagerAdapter;->attached:Landroid/util/SparseArray;

    invoke-virtual {p1, p2, v0}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    return-object v0

    .line 65
    :cond_2
    new-instance p1, Ljava/lang/NullPointerException;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "createView must not return null. (position: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p2, ")"

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public final isViewFromObject(Landroid/view/View;Ljava/lang/Object;)Z
    .locals 0

    if-ne p1, p2, :cond_0

    const/4 p1, 0x1

    return p1

    :cond_0
    const/4 p1, 0x0

    return p1
.end method

.method public final restoreState(Landroid/os/Parcelable;Ljava/lang/ClassLoader;)V
    .locals 0

    .line 55
    check-cast p1, Lcom/nightlynexus/viewstatepageradapter/ViewStatePagerAdapter$SavedState;

    .line 56
    iget-object p1, p1, Lcom/nightlynexus/viewstatepageradapter/ViewStatePagerAdapter$SavedState;->detached:Landroid/util/SparseArray;

    iput-object p1, p0, Lcom/nightlynexus/viewstatepageradapter/ViewStatePagerAdapter;->detached:Landroid/util/SparseArray;

    return-void
.end method

.method public bridge synthetic saveState()Landroid/os/Parcelable;
    .locals 1

    .line 25
    invoke-virtual {p0}, Lcom/nightlynexus/viewstatepageradapter/ViewStatePagerAdapter;->saveState()Lcom/nightlynexus/viewstatepageradapter/ViewStatePagerAdapter$SavedState;

    move-result-object v0

    return-object v0
.end method

.method public final saveState()Lcom/nightlynexus/viewstatepageradapter/ViewStatePagerAdapter$SavedState;
    .locals 4

    .line 46
    iget-object v0, p0, Lcom/nightlynexus/viewstatepageradapter/ViewStatePagerAdapter;->attached:Landroid/util/SparseArray;

    invoke-virtual {v0}, Landroid/util/SparseArray;->size()I

    move-result v0

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_0

    .line 47
    iget-object v2, p0, Lcom/nightlynexus/viewstatepageradapter/ViewStatePagerAdapter;->attached:Landroid/util/SparseArray;

    invoke-virtual {v2, v1}, Landroid/util/SparseArray;->keyAt(I)I

    move-result v2

    .line 48
    iget-object v3, p0, Lcom/nightlynexus/viewstatepageradapter/ViewStatePagerAdapter;->attached:Landroid/util/SparseArray;

    invoke-virtual {v3, v1}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/view/View;

    .line 49
    invoke-direct {p0, v2, v3}, Lcom/nightlynexus/viewstatepageradapter/ViewStatePagerAdapter;->putInDetached(ILandroid/view/View;)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 51
    :cond_0
    new-instance v0, Lcom/nightlynexus/viewstatepageradapter/ViewStatePagerAdapter$SavedState;

    iget-object v1, p0, Lcom/nightlynexus/viewstatepageradapter/ViewStatePagerAdapter;->detached:Landroid/util/SparseArray;

    invoke-direct {v0, v1}, Lcom/nightlynexus/viewstatepageradapter/ViewStatePagerAdapter$SavedState;-><init>(Landroid/util/SparseArray;)V

    return-object v0
.end method
