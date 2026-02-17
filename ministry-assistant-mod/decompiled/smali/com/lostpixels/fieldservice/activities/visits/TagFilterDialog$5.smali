.class Lcom/lostpixels/fieldservice/activities/visits/TagFilterDialog$5;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/lostpixels/fieldservice/ui/TagView$TagChangedListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/lostpixels/fieldservice/activities/visits/TagFilterDialog;->onCreateDialog(Landroid/os/Bundle;)Landroid/app/Dialog;
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

    .line 175
    iput-object p1, p0, Lcom/lostpixels/fieldservice/activities/visits/TagFilterDialog$5;->this$0:Lcom/lostpixels/fieldservice/activities/visits/TagFilterDialog;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onTagChanaged(Ljava/lang/String;Ljava/lang/String;Z)V
    .locals 2

    .line 178
    iget-object v0, p0, Lcom/lostpixels/fieldservice/activities/visits/TagFilterDialog$5;->this$0:Lcom/lostpixels/fieldservice/activities/visits/TagFilterDialog;

    iget-boolean v1, v0, Lcom/lostpixels/fieldservice/activities/visits/TagFilterDialog;->isCreating:Z

    if-nez v1, :cond_0

    .line 179
    invoke-static {v0}, Lcom/lostpixels/fieldservice/activities/visits/TagFilterDialog;->-$$Nest$fgetlistener(Lcom/lostpixels/fieldservice/activities/visits/TagFilterDialog;)Lcom/lostpixels/fieldservice/activities/visits/TagFilterDialog$OnTagsSetListener;

    move-result-object v0

    const/4 v1, 0x1

    invoke-interface {v0, p1, p2, p3, v1}, Lcom/lostpixels/fieldservice/activities/visits/TagFilterDialog$OnTagsSetListener;->onTagChanged(Ljava/lang/String;Ljava/lang/String;ZI)V

    :cond_0
    return-void
.end method
