.class Lcom/lostpixels/fieldservice/activities/settings/ConvertCustomItemFragment$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/widget/RadioGroup$OnCheckedChangeListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/lostpixels/fieldservice/activities/settings/ConvertCustomItemFragment;->onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/lostpixels/fieldservice/activities/settings/ConvertCustomItemFragment;


# direct methods
.method constructor <init>(Lcom/lostpixels/fieldservice/activities/settings/ConvertCustomItemFragment;)V
    .locals 0

    .line 40
    iput-object p1, p0, Lcom/lostpixels/fieldservice/activities/settings/ConvertCustomItemFragment$1;->this$0:Lcom/lostpixels/fieldservice/activities/settings/ConvertCustomItemFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onCheckedChanged(Landroid/widget/RadioGroup;I)V
    .locals 0

    .line 43
    iget-object p1, p0, Lcom/lostpixels/fieldservice/activities/settings/ConvertCustomItemFragment$1;->this$0:Lcom/lostpixels/fieldservice/activities/settings/ConvertCustomItemFragment;

    invoke-static {p1, p2}, Lcom/lostpixels/fieldservice/activities/settings/ConvertCustomItemFragment;->-$$Nest$mupdateSettings(Lcom/lostpixels/fieldservice/activities/settings/ConvertCustomItemFragment;I)V

    return-void
.end method
