.class Lcom/lostpixels/fieldservice/activities/visits/PersonDialog$15;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lme/gujun/android/taggroup/TagGroup$OnTagChangeListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/lostpixels/fieldservice/activities/visits/PersonDialog;->setupFragment2()Landroid/view/View;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/lostpixels/fieldservice/activities/visits/PersonDialog;


# direct methods
.method constructor <init>(Lcom/lostpixels/fieldservice/activities/visits/PersonDialog;)V
    .locals 0

    .line 954
    iput-object p1, p0, Lcom/lostpixels/fieldservice/activities/visits/PersonDialog$15;->this$0:Lcom/lostpixels/fieldservice/activities/visits/PersonDialog;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onAppend(Lme/gujun/android/taggroup/TagGroup;Ljava/lang/String;)Z
    .locals 0

    const/4 p1, 0x0

    return p1
.end method

.method public onDelete(Lme/gujun/android/taggroup/TagGroup;Ljava/lang/String;)V
    .locals 0

    .line 962
    iget-object p1, p0, Lcom/lostpixels/fieldservice/activities/visits/PersonDialog$15;->this$0:Lcom/lostpixels/fieldservice/activities/visits/PersonDialog;

    const/4 p2, 0x1

    invoke-static {p1, p2}, Lcom/lostpixels/fieldservice/activities/visits/PersonDialog;->-$$Nest$fputbSomethingChanged(Lcom/lostpixels/fieldservice/activities/visits/PersonDialog;Z)V

    .line 963
    iget-object p1, p0, Lcom/lostpixels/fieldservice/activities/visits/PersonDialog$15;->this$0:Lcom/lostpixels/fieldservice/activities/visits/PersonDialog;

    invoke-static {p1}, Lcom/lostpixels/fieldservice/activities/visits/PersonDialog;->-$$Nest$mupdateSaveButton(Lcom/lostpixels/fieldservice/activities/visits/PersonDialog;)V

    return-void
.end method
