.class Lcom/lostpixels/fieldservice/activities/territory/TerritoryTemplate$5;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/lostpixels/fieldservice/activities/territory/TerritoryTemplate;->onCreate(Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/lostpixels/fieldservice/activities/territory/TerritoryTemplate;


# direct methods
.method constructor <init>(Lcom/lostpixels/fieldservice/activities/territory/TerritoryTemplate;)V
    .locals 0

    .line 268
    iput-object p1, p0, Lcom/lostpixels/fieldservice/activities/territory/TerritoryTemplate$5;->this$0:Lcom/lostpixels/fieldservice/activities/territory/TerritoryTemplate;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 2

    .line 271
    iget-object p1, p0, Lcom/lostpixels/fieldservice/activities/territory/TerritoryTemplate$5;->this$0:Lcom/lostpixels/fieldservice/activities/territory/TerritoryTemplate;

    const/4 v0, 0x1

    const/4 v1, 0x0

    invoke-virtual {p1, v0, v1}, Lcom/lostpixels/fieldservice/activities/territory/TerritoryTemplate;->addStreets(ZZ)V

    return-void
.end method
