.class public interface abstract Lcom/lostpixels/fieldservice/activities/visits/TagFilterDialog$OnTagsSetListener;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/lostpixels/fieldservice/activities/visits/TagFilterDialog;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x609
    name = "OnTagsSetListener"
.end annotation


# virtual methods
.method public abstract getAllCitiesTags()Ljava/util/List;
.end method

.method public abstract getAllNeighborhoodTags()Ljava/util/List;
.end method

.method public abstract getAllTags()Ljava/util/List;
.end method

.method public abstract getNumResults()I
.end method

.method public abstract getSelectedCitiesTags()Ljava/util/Set;
.end method

.method public abstract getSelectedNeighborhoodTags()Ljava/util/Set;
.end method

.method public abstract getSelectedTags()Ljava/util/Set;
.end method

.method public abstract getShowArchived()Z
.end method

.method public abstract onClearAllTags()V
.end method

.method public abstract onShowArchiveChanged(Z)V
.end method

.method public abstract onTagChanged(Ljava/lang/String;Ljava/lang/String;ZI)V
.end method
