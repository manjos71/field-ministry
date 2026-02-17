.class Lcom/lostpixels/fieldservice/activities/MinistryAssistantMain$23;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/lostpixels/fieldservice/activities/MinistryAssistantMain;->askForAutoSync()V
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

    .line 1618
    iput-object p1, p0, Lcom/lostpixels/fieldservice/activities/MinistryAssistantMain$23;->this$0:Lcom/lostpixels/fieldservice/activities/MinistryAssistantMain;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 1

    .line 1620
    iget-object p1, p0, Lcom/lostpixels/fieldservice/activities/MinistryAssistantMain$23;->this$0:Lcom/lostpixels/fieldservice/activities/MinistryAssistantMain;

    invoke-static {p1}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object p1

    .line 1621
    invoke-interface {p1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object p1

    const-string p2, "syncMode"

    const-string v0, "auto"

    invoke-interface {p1, p2, v0}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object p1

    invoke-interface {p1}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 1622
    iget-object p1, p0, Lcom/lostpixels/fieldservice/activities/MinistryAssistantMain$23;->this$0:Lcom/lostpixels/fieldservice/activities/MinistryAssistantMain;

    const/4 p2, 0x0

    invoke-static {p1, p2}, Lcom/lostpixels/fieldservice/helpfunctions/ConsistancyChecks;->setupSyncDevices(Landroid/content/Context;Z)V

    return-void
.end method
