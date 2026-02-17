.class public interface abstract Lcom/lostpixels/fieldservice/activities/territory/TerritoryListFragment$OnAddVisitListener;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/lostpixels/fieldservice/activities/territory/TerritoryListFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x609
    name = "OnAddVisitListener"
.end annotation


# virtual methods
.method public abstract isEditMode()Z
.end method

.method public abstract onShouldAddAddress(Lcom/lostpixels/fieldservice/internal/ministry/Address;)Z
.end method

.method public abstract onShouldAddStreet(Lcom/lostpixels/fieldservice/internal/ministry/Street;)Z
.end method

.method public abstract onShouldAddVisit(Lcom/lostpixels/fieldservice/internal/ministry/Visit;)Z
.end method
