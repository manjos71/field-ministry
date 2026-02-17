.class Lcom/lostpixels/fieldservice/activities/territory/MapCreatorActivity$3;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/widget/CompoundButton$OnCheckedChangeListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/lostpixels/fieldservice/activities/territory/MapCreatorActivity;->onCreate(Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/lostpixels/fieldservice/activities/territory/MapCreatorActivity;


# direct methods
.method constructor <init>(Lcom/lostpixels/fieldservice/activities/territory/MapCreatorActivity;)V
    .locals 0

    .line 180
    iput-object p1, p0, Lcom/lostpixels/fieldservice/activities/territory/MapCreatorActivity$3;->this$0:Lcom/lostpixels/fieldservice/activities/territory/MapCreatorActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onCheckedChanged(Landroid/widget/CompoundButton;Z)V
    .locals 0

    .line 183
    iget-object p1, p0, Lcom/lostpixels/fieldservice/activities/territory/MapCreatorActivity$3;->this$0:Lcom/lostpixels/fieldservice/activities/territory/MapCreatorActivity;

    invoke-virtual {p1, p2}, Lcom/lostpixels/fieldservice/activities/territory/MapCreatorActivity;->showSatelite(Z)V

    return-void
.end method
