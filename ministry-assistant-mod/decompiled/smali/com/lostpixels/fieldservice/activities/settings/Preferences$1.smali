.class Lcom/lostpixels/fieldservice/activities/settings/Preferences$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/preference/Preference$OnPreferenceChangeListener;


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

    .line 129
    iput-object p1, p0, Lcom/lostpixels/fieldservice/activities/settings/Preferences$1;->this$0:Lcom/lostpixels/fieldservice/activities/settings/Preferences;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onPreferenceChange(Landroid/preference/Preference;Ljava/lang/Object;)Z
    .locals 0

    .line 131
    iget-object p1, p0, Lcom/lostpixels/fieldservice/activities/settings/Preferences$1;->this$0:Lcom/lostpixels/fieldservice/activities/settings/Preferences;

    const/4 p2, 0x1

    iput-boolean p2, p1, Lcom/lostpixels/fieldservice/activities/settings/Preferences;->bResetAbb:Z

    .line 132
    sput-boolean p2, Lcom/lostpixels/fieldservice/activities/MinistryAssistantMain;->mbChangedThatShouldRestart:Z

    .line 133
    invoke-virtual {p1}, Landroid/app/Activity;->recreate()V

    return p2
.end method
