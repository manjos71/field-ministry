.class Lcom/lostpixels/fieldservice/activities/settings/Preferences$12$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/lostpixels/fieldservice/activities/settings/Preferences$12;->onPreferenceClick(Landroid/preference/Preference;)Z
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/lostpixels/fieldservice/activities/settings/Preferences$12;


# direct methods
.method constructor <init>(Lcom/lostpixels/fieldservice/activities/settings/Preferences$12;)V
    .locals 0

    .line 530
    iput-object p1, p0, Lcom/lostpixels/fieldservice/activities/settings/Preferences$12$1;->this$1:Lcom/lostpixels/fieldservice/activities/settings/Preferences$12;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 0

    .line 532
    invoke-interface {p1}, Landroid/content/DialogInterface;->cancel()V

    return-void
.end method
