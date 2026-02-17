.class Lcom/lostpixels/fieldservice/activities/visits/TagFilterDialog$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/lostpixels/fieldservice/activities/visits/TagFilterDialog;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/lostpixels/fieldservice/activities/visits/TagFilterDialog;


# direct methods
.method constructor <init>(Lcom/lostpixels/fieldservice/activities/visits/TagFilterDialog;)V
    .locals 0

    .line 59
    iput-object p1, p0, Lcom/lostpixels/fieldservice/activities/visits/TagFilterDialog$1;->this$0:Lcom/lostpixels/fieldservice/activities/visits/TagFilterDialog;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 5

    .line 62
    :try_start_0
    iget-object v0, p0, Lcom/lostpixels/fieldservice/activities/visits/TagFilterDialog$1;->this$0:Lcom/lostpixels/fieldservice/activities/visits/TagFilterDialog;

    iget-object v1, v0, Lcom/lostpixels/fieldservice/activities/visits/TagFilterDialog;->txtNumResults:Landroid/widget/TextView;

    if-eqz v1, :cond_0

    invoke-static {v0}, Lcom/lostpixels/fieldservice/activities/visits/TagFilterDialog;->-$$Nest$fgetlistener(Lcom/lostpixels/fieldservice/activities/visits/TagFilterDialog;)Lcom/lostpixels/fieldservice/activities/visits/TagFilterDialog$OnTagsSetListener;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 63
    iget-object v0, p0, Lcom/lostpixels/fieldservice/activities/visits/TagFilterDialog$1;->this$0:Lcom/lostpixels/fieldservice/activities/visits/TagFilterDialog;

    iget-object v1, v0, Lcom/lostpixels/fieldservice/activities/visits/TagFilterDialog;->txtNumResults:Landroid/widget/TextView;

    const v2, 0x7f120475

    invoke-virtual {v0, v2}, Landroidx/fragment/app/Fragment;->getString(I)Ljava/lang/String;

    move-result-object v0

    iget-object v2, p0, Lcom/lostpixels/fieldservice/activities/visits/TagFilterDialog$1;->this$0:Lcom/lostpixels/fieldservice/activities/visits/TagFilterDialog;

    invoke-static {v2}, Lcom/lostpixels/fieldservice/activities/visits/TagFilterDialog;->-$$Nest$fgetlistener(Lcom/lostpixels/fieldservice/activities/visits/TagFilterDialog;)Lcom/lostpixels/fieldservice/activities/visits/TagFilterDialog$OnTagsSetListener;

    move-result-object v2

    invoke-interface {v2}, Lcom/lostpixels/fieldservice/activities/visits/TagFilterDialog$OnTagsSetListener;->getNumResults()I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    aput-object v2, v3, v4

    invoke-static {v0, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0

    :catch_0
    move-exception v0

    goto :goto_1

    .line 64
    :cond_0
    :goto_0
    iget-object v0, p0, Lcom/lostpixels/fieldservice/activities/visits/TagFilterDialog$1;->this$0:Lcom/lostpixels/fieldservice/activities/visits/TagFilterDialog;

    invoke-static {v0}, Lcom/lostpixels/fieldservice/activities/visits/TagFilterDialog;->-$$Nest$fgetmUpdateHandler(Lcom/lostpixels/fieldservice/activities/visits/TagFilterDialog;)Landroid/os/Handler;

    move-result-object v0

    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v1

    const-wide/16 v3, 0x64

    add-long/2addr v1, v3

    invoke-virtual {v0, p0, v1, v2}, Landroid/os/Handler;->postAtTime(Ljava/lang/Runnable;J)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    .line 66
    :goto_1
    const-string v1, "Update results"

    invoke-static {v0}, Lcom/lostpixels/fieldservice/helpfunctions/HelpFunctions;->getStackTrace(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Lcom/lostpixels/fieldservice/utils/LogToSD;->write(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method
