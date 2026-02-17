.class Lcom/lostpixels/fieldservice/activities/visits/MapOuterReturnVisitFragment$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/widget/CompoundButton$OnCheckedChangeListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/lostpixels/fieldservice/activities/visits/MapOuterReturnVisitFragment;->onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/lostpixels/fieldservice/activities/visits/MapOuterReturnVisitFragment;


# direct methods
.method constructor <init>(Lcom/lostpixels/fieldservice/activities/visits/MapOuterReturnVisitFragment;)V
    .locals 0

    .line 64
    iput-object p1, p0, Lcom/lostpixels/fieldservice/activities/visits/MapOuterReturnVisitFragment$1;->this$0:Lcom/lostpixels/fieldservice/activities/visits/MapOuterReturnVisitFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onCheckedChanged(Landroid/widget/CompoundButton;Z)V
    .locals 0

    .line 67
    iget-object p1, p0, Lcom/lostpixels/fieldservice/activities/visits/MapOuterReturnVisitFragment$1;->this$0:Lcom/lostpixels/fieldservice/activities/visits/MapOuterReturnVisitFragment;

    iget-object p1, p1, Lcom/lostpixels/fieldservice/activities/visits/MapOuterReturnVisitFragment;->moMapFragment:Lcom/lostpixels/fieldservice/activities/visits/ReturnVisitsMapFragment;

    invoke-virtual {p1, p2}, Lcom/lostpixels/fieldservice/activities/visits/ReturnVisitsMapFragment;->showSatelite(Z)V

    return-void
.end method
