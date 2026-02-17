.class public interface abstract Lcom/lostpixels/fieldservice/activities/territory/TerritoryListFragment$OnListItemClickListener;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/lostpixels/fieldservice/activities/territory/TerritoryListFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x609
    name = "OnListItemClickListener"
.end annotation


# virtual methods
.method public abstract onAddNewStreet()V
.end method

.method public abstract onStreetClicked(Lcom/lostpixels/fieldservice/internal/ministry/Street;)V
.end method

.method public abstract onVisitClicked(Lcom/lostpixels/fieldservice/internal/ministry/Visit;Lcom/lostpixels/fieldservice/internal/ministry/Street;)V
.end method

.method public abstract onVisitLongClicked(Lcom/lostpixels/fieldservice/internal/ministry/Visit;)V
.end method

.method public abstract onVisitLongClicked(Lcom/lostpixels/fieldservice/internal/ministry/Visit;Lcom/lostpixels/fieldservice/internal/ministry/Street;)V
.end method

.method public abstract openBuildingDialog()V
.end method

.method public abstract openPhoneTerritoryDialog()V
.end method

.method public abstract openRuralDialog()V
.end method

.method public abstract openStreetDialog()V
.end method
