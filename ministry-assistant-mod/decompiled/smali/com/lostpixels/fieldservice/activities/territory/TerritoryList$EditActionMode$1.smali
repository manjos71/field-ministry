.class Lcom/lostpixels/fieldservice/activities/territory/TerritoryList$EditActionMode$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/lostpixels/fieldservice/activities/territory/TerritoryList$EditActionMode;->onDestroyActionMode(Landroidx/appcompat/view/ActionMode;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/lostpixels/fieldservice/activities/territory/TerritoryList$EditActionMode;


# direct methods
.method constructor <init>(Lcom/lostpixels/fieldservice/activities/territory/TerritoryList$EditActionMode;)V
    .locals 0

    .line 4322
    iput-object p1, p0, Lcom/lostpixels/fieldservice/activities/territory/TerritoryList$EditActionMode$1;->this$1:Lcom/lostpixels/fieldservice/activities/territory/TerritoryList$EditActionMode;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 0

    .line 4325
    invoke-interface {p1}, Landroid/content/DialogInterface;->dismiss()V

    .line 4326
    iget-object p1, p0, Lcom/lostpixels/fieldservice/activities/territory/TerritoryList$EditActionMode$1;->this$1:Lcom/lostpixels/fieldservice/activities/territory/TerritoryList$EditActionMode;

    invoke-static {p1}, Lcom/lostpixels/fieldservice/activities/territory/TerritoryList$EditActionMode;->-$$Nest$msaveTerritory(Lcom/lostpixels/fieldservice/activities/territory/TerritoryList$EditActionMode;)V

    return-void
.end method
