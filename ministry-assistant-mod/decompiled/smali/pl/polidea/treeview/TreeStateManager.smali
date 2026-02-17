.class public interface abstract Lpl/polidea/treeview/TreeStateManager;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/io/Serializable;


# virtual methods
.method public abstract addAfterChild(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V
.end method

.method public abstract collapseChildren(Ljava/lang/Object;)V
.end method

.method public abstract expandDirectChildren(Ljava/lang/Object;)V
.end method

.method public abstract getLevel(Ljava/lang/Object;)I
.end method

.method public abstract getNextSibling(Ljava/lang/Object;)Ljava/lang/Object;
.end method

.method public abstract getNodeInfo(Ljava/lang/Object;)Lpl/polidea/treeview/TreeNodeInfo;
.end method

.method public abstract getParent(Ljava/lang/Object;)Ljava/lang/Object;
.end method

.method public abstract getVisibleCount()I
.end method

.method public abstract getVisibleList()Ljava/util/List;
.end method

.method public abstract refresh()V
.end method

.method public abstract registerDataSetObserver(Landroid/database/DataSetObserver;)V
.end method

.method public abstract unregisterDataSetObserver(Landroid/database/DataSetObserver;)V
.end method
