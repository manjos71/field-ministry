.class Lcom/lostpixels/fieldservice/activities/territory/dialogs/RuralTerritoryReorder$2;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/lostpixels/fieldservice/activities/territory/dialogs/RuralTerritoryReorder;->onCreate(Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/lostpixels/fieldservice/activities/territory/dialogs/RuralTerritoryReorder;


# direct methods
.method constructor <init>(Lcom/lostpixels/fieldservice/activities/territory/dialogs/RuralTerritoryReorder;)V
    .locals 0

    .line 111
    iput-object p1, p0, Lcom/lostpixels/fieldservice/activities/territory/dialogs/RuralTerritoryReorder$2;->this$0:Lcom/lostpixels/fieldservice/activities/territory/dialogs/RuralTerritoryReorder;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 1

    .line 114
    iget-object p1, p0, Lcom/lostpixels/fieldservice/activities/territory/dialogs/RuralTerritoryReorder$2;->this$0:Lcom/lostpixels/fieldservice/activities/territory/dialogs/RuralTerritoryReorder;

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Landroid/app/Activity;->setResult(I)V

    .line 115
    iget-object p1, p0, Lcom/lostpixels/fieldservice/activities/territory/dialogs/RuralTerritoryReorder$2;->this$0:Lcom/lostpixels/fieldservice/activities/territory/dialogs/RuralTerritoryReorder;

    invoke-virtual {p1}, Landroid/app/Activity;->finish()V

    return-void
.end method
