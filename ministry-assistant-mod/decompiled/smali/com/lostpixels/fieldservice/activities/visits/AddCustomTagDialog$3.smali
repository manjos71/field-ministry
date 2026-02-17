.class Lcom/lostpixels/fieldservice/activities/visits/AddCustomTagDialog$3;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/lostpixels/fieldservice/activities/visits/AddCustomTagDialog;->onCreateDialog(Landroid/os/Bundle;)Landroid/app/Dialog;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/lostpixels/fieldservice/activities/visits/AddCustomTagDialog;


# direct methods
.method constructor <init>(Lcom/lostpixels/fieldservice/activities/visits/AddCustomTagDialog;)V
    .locals 0

    .line 84
    iput-object p1, p0, Lcom/lostpixels/fieldservice/activities/visits/AddCustomTagDialog$3;->this$0:Lcom/lostpixels/fieldservice/activities/visits/AddCustomTagDialog;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 3

    .line 86
    iget-object p1, p0, Lcom/lostpixels/fieldservice/activities/visits/AddCustomTagDialog$3;->this$0:Lcom/lostpixels/fieldservice/activities/visits/AddCustomTagDialog;

    invoke-static {p1}, Lcom/lostpixels/fieldservice/activities/visits/AddCustomTagDialog;->-$$Nest$fgettagGroup(Lcom/lostpixels/fieldservice/activities/visits/AddCustomTagDialog;)Lme/gujun/android/taggroup/TagGroup;

    move-result-object p1

    invoke-virtual {p1}, Lme/gujun/android/taggroup/TagGroup;->submitTag()V

    .line 87
    iget-object p1, p0, Lcom/lostpixels/fieldservice/activities/visits/AddCustomTagDialog$3;->this$0:Lcom/lostpixels/fieldservice/activities/visits/AddCustomTagDialog;

    invoke-static {p1}, Lcom/lostpixels/fieldservice/activities/visits/AddCustomTagDialog;->-$$Nest$fgettagGroup(Lcom/lostpixels/fieldservice/activities/visits/AddCustomTagDialog;)Lme/gujun/android/taggroup/TagGroup;

    move-result-object p1

    invoke-virtual {p1}, Lme/gujun/android/taggroup/TagGroup;->getCheckedTagIndices()Ljava/util/List;

    move-result-object p1

    .line 88
    iget-object p2, p0, Lcom/lostpixels/fieldservice/activities/visits/AddCustomTagDialog$3;->this$0:Lcom/lostpixels/fieldservice/activities/visits/AddCustomTagDialog;

    invoke-static {p2}, Lcom/lostpixels/fieldservice/activities/visits/AddCustomTagDialog;->-$$Nest$fgettagGroup(Lcom/lostpixels/fieldservice/activities/visits/AddCustomTagDialog;)Lme/gujun/android/taggroup/TagGroup;

    move-result-object p2

    invoke-virtual {p2}, Lme/gujun/android/taggroup/TagGroup;->getTags()[Ljava/lang/String;

    move-result-object p2

    .line 89
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 90
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_0
    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    .line 91
    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    if-ltz v1, :cond_0

    .line 92
    array-length v2, p2

    if-ge v1, v2, :cond_0

    .line 93
    aget-object v1, p2, v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 96
    :cond_1
    iget-object p1, p0, Lcom/lostpixels/fieldservice/activities/visits/AddCustomTagDialog$3;->this$0:Lcom/lostpixels/fieldservice/activities/visits/AddCustomTagDialog;

    iget-object p1, p1, Lcom/lostpixels/fieldservice/activities/visits/AddCustomTagDialog;->listener:Lcom/lostpixels/fieldservice/activities/visits/AddCustomTagDialog$OnTagsSetListener;

    if-eqz p1, :cond_2

    .line 97
    invoke-interface {p1, v0}, Lcom/lostpixels/fieldservice/activities/visits/AddCustomTagDialog$OnTagsSetListener;->onTagsSet(Ljava/util/List;)V

    :cond_2
    return-void
.end method
