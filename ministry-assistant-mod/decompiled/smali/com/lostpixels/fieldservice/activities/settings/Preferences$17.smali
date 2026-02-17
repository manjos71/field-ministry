.class Lcom/lostpixels/fieldservice/activities/settings/Preferences$17;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/preference/Preference$OnPreferenceClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/lostpixels/fieldservice/activities/settings/Preferences;->onCreate(Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/lostpixels/fieldservice/activities/settings/Preferences;


# direct methods
.method constructor <init>(Lcom/lostpixels/fieldservice/activities/settings/Preferences;)V
    .locals 0

    .line 644
    iput-object p1, p0, Lcom/lostpixels/fieldservice/activities/settings/Preferences$17;->this$0:Lcom/lostpixels/fieldservice/activities/settings/Preferences;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onPreferenceClick(Landroid/preference/Preference;)Z
    .locals 2

    .line 646
    iget-object p1, p0, Lcom/lostpixels/fieldservice/activities/settings/Preferences$17;->this$0:Lcom/lostpixels/fieldservice/activities/settings/Preferences;

    const-string v0, "pixelslost@gmail.com"

    const-string v1, "Debug log files"

    invoke-static {p1, v0, v1}, Lcom/lostpixels/fieldservice/helpfunctions/ShareUtils;->sendErrorFilesAsEMail(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    const/4 p1, 0x1

    return p1
.end method
