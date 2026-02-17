.class Lcom/lostpixels/fieldservice/activities/territory/TerritoryTabFragment$7;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/content/DialogInterface$OnMultiChoiceClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/lostpixels/fieldservice/activities/territory/TerritoryTabFragment;->resetTerritory(Lcom/lostpixels/fieldservice/internal/ministry/Territory;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/lostpixels/fieldservice/activities/territory/TerritoryTabFragment;

.field final synthetic val$bChecked:[Z


# direct methods
.method constructor <init>(Lcom/lostpixels/fieldservice/activities/territory/TerritoryTabFragment;[Z)V
    .locals 0

    .line 546
    iput-object p1, p0, Lcom/lostpixels/fieldservice/activities/territory/TerritoryTabFragment$7;->this$0:Lcom/lostpixels/fieldservice/activities/territory/TerritoryTabFragment;

    iput-object p2, p0, Lcom/lostpixels/fieldservice/activities/territory/TerritoryTabFragment$7;->val$bChecked:[Z

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;IZ)V
    .locals 0

    .line 549
    iget-object p1, p0, Lcom/lostpixels/fieldservice/activities/territory/TerritoryTabFragment$7;->val$bChecked:[Z

    aput-boolean p3, p1, p2

    return-void
.end method
