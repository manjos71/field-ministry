.class Lcom/lostpixels/fieldservice/activities/visits/AddCustomTagDialog$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lme/gujun/android/taggroup/TagGroup$OnTagChangeListener;


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

    .line 70
    iput-object p1, p0, Lcom/lostpixels/fieldservice/activities/visits/AddCustomTagDialog$1;->this$0:Lcom/lostpixels/fieldservice/activities/visits/AddCustomTagDialog;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onAppend(Lme/gujun/android/taggroup/TagGroup;Ljava/lang/String;)Z
    .locals 0

    .line 73
    invoke-virtual {p1, p2}, Lme/gujun/android/taggroup/TagGroup;->setCheckedTag(Ljava/lang/String;)V

    const/4 p1, 0x1

    return p1
.end method

.method public onDelete(Lme/gujun/android/taggroup/TagGroup;Ljava/lang/String;)V
    .locals 0

    return-void
.end method
