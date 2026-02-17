.class Lcom/lostpixels/fieldservice/activities/MinistryAssistantMain$7;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/lostpixels/fieldservice/activities/MinistryAssistantMain;->onPause()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/lostpixels/fieldservice/activities/MinistryAssistantMain;


# direct methods
.method constructor <init>(Lcom/lostpixels/fieldservice/activities/MinistryAssistantMain;)V
    .locals 0

    .line 679
    iput-object p1, p0, Lcom/lostpixels/fieldservice/activities/MinistryAssistantMain$7;->this$0:Lcom/lostpixels/fieldservice/activities/MinistryAssistantMain;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    .line 681
    invoke-static {}, Lcom/lostpixels/fieldservice/helpfunctions/FileManager;->lowOnDiskSpaceChanged()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 682
    invoke-static {}, Lcom/lostpixels/fieldservice/ui/nowcards/NowCardListCreator;->resetMinistryTips()V

    :cond_0
    return-void
.end method
