.class Lcom/lostpixels/fieldservice/activities/settings/Preferences$15$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/webkit/ValueCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/lostpixels/fieldservice/activities/settings/Preferences$15;->onPreferenceClick(Landroid/preference/Preference;)Z
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/lostpixels/fieldservice/activities/settings/Preferences$15;


# direct methods
.method constructor <init>(Lcom/lostpixels/fieldservice/activities/settings/Preferences$15;)V
    .locals 0

    .line 611
    iput-object p1, p0, Lcom/lostpixels/fieldservice/activities/settings/Preferences$15$1;->this$1:Lcom/lostpixels/fieldservice/activities/settings/Preferences$15;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceiveValue(Ljava/lang/Boolean;)V
    .locals 0

    .line 0
    return-void
.end method

.method public bridge synthetic onReceiveValue(Ljava/lang/Object;)V
    .locals 0

    .line 611
    check-cast p1, Ljava/lang/Boolean;

    invoke-virtual {p0, p1}, Lcom/lostpixels/fieldservice/activities/settings/Preferences$15$1;->onReceiveValue(Ljava/lang/Boolean;)V

    return-void
.end method
