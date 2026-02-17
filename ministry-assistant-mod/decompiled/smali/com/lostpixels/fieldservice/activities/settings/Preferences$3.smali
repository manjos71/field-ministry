.class Lcom/lostpixels/fieldservice/activities/settings/Preferences$3;
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

    .line 163
    iput-object p1, p0, Lcom/lostpixels/fieldservice/activities/settings/Preferences$3;->this$0:Lcom/lostpixels/fieldservice/activities/settings/Preferences;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onPreferenceChange(Landroid/preference/Preference;Ljava/lang/Object;)Z
    .locals 0

    const/4 p1, 0x1

    .line 166
    sput-boolean p1, Lcom/lostpixels/fieldservice/activities/MinistryAssistantMain;->mbChangedThatShouldUpdateSync:Z

    return p1
.end method
