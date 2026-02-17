.class Lcom/lostpixels/fieldservice/activities/MinistryAssistantMain$18;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/widget/CompoundButton$OnCheckedChangeListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/lostpixels/fieldservice/activities/MinistryAssistantMain;->doSyncing()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/lostpixels/fieldservice/activities/MinistryAssistantMain;

.field final synthetic val$btnSync:Landroid/widget/Button;


# direct methods
.method constructor <init>(Lcom/lostpixels/fieldservice/activities/MinistryAssistantMain;Landroid/widget/Button;)V
    .locals 0

    .line 1523
    iput-object p1, p0, Lcom/lostpixels/fieldservice/activities/MinistryAssistantMain$18;->this$0:Lcom/lostpixels/fieldservice/activities/MinistryAssistantMain;

    iput-object p2, p0, Lcom/lostpixels/fieldservice/activities/MinistryAssistantMain$18;->val$btnSync:Landroid/widget/Button;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onCheckedChanged(Landroid/widget/CompoundButton;Z)V
    .locals 0

    .line 1527
    iget-object p1, p0, Lcom/lostpixels/fieldservice/activities/MinistryAssistantMain$18;->val$btnSync:Landroid/widget/Button;

    invoke-virtual {p1, p2}, Landroid/view/View;->setEnabled(Z)V

    return-void
.end method
