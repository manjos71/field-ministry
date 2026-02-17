.class Lcom/lostpixels/fieldservice/activities/visits/AddMagazineDlg$4;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/widget/CompoundButton$OnCheckedChangeListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/lostpixels/fieldservice/activities/visits/AddMagazineDlg;->onCreate(Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/lostpixels/fieldservice/activities/visits/AddMagazineDlg;


# direct methods
.method constructor <init>(Lcom/lostpixels/fieldservice/activities/visits/AddMagazineDlg;)V
    .locals 0

    .line 198
    iput-object p1, p0, Lcom/lostpixels/fieldservice/activities/visits/AddMagazineDlg$4;->this$0:Lcom/lostpixels/fieldservice/activities/visits/AddMagazineDlg;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onCheckedChanged(Landroid/widget/CompoundButton;Z)V
    .locals 2

    if-eqz p2, :cond_0

    .line 202
    invoke-static {}, Lio/realm/Realm;->getDefaultInstance()Lio/realm/Realm;

    move-result-object p1

    .line 203
    iget-object p2, p0, Lcom/lostpixels/fieldservice/activities/visits/AddMagazineDlg$4;->this$0:Lcom/lostpixels/fieldservice/activities/visits/AddMagazineDlg;

    invoke-static {p2}, Lcom/lostpixels/fieldservice/activities/visits/AddMagazineDlg;->-$$Nest$fgetmrdStudyEdition(Lcom/lostpixels/fieldservice/activities/visits/AddMagazineDlg;)Landroid/widget/RadioButton;

    move-result-object p2

    const/4 v0, 0x0

    invoke-virtual {p2, v0}, Landroid/widget/CompoundButton;->setChecked(Z)V

    .line 204
    invoke-static {p1}, Lcom/lostpixels/fieldservice/internal/report/PublicationManager;->getInstance(Lio/realm/Realm;)Lcom/lostpixels/fieldservice/internal/report/PublicationManager;

    move-result-object p2

    iget-object v0, p0, Lcom/lostpixels/fieldservice/activities/visits/AddMagazineDlg$4;->this$0:Lcom/lostpixels/fieldservice/activities/visits/AddMagazineDlg;

    invoke-static {v0}, Lcom/lostpixels/fieldservice/activities/visits/AddMagazineDlg;->-$$Nest$fgetmDate(Lcom/lostpixels/fieldservice/activities/visits/AddMagazineDlg;)Ljava/util/Date;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {p2, v1, v1, v0}, Lcom/lostpixels/fieldservice/internal/report/PublicationManager;->getMagazineAlias(ZZLjava/util/Date;)Ljava/lang/String;

    move-result-object p2

    .line 205
    iget-object v0, p0, Lcom/lostpixels/fieldservice/activities/visits/AddMagazineDlg$4;->this$0:Lcom/lostpixels/fieldservice/activities/visits/AddMagazineDlg;

    invoke-static {v0}, Lcom/lostpixels/fieldservice/activities/visits/AddMagazineDlg;->-$$Nest$fgetmedtAlias(Lcom/lostpixels/fieldservice/activities/visits/AddMagazineDlg;)Landroid/widget/EditText;

    move-result-object v0

    invoke-virtual {v0, p2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 206
    iget-object p2, p0, Lcom/lostpixels/fieldservice/activities/visits/AddMagazineDlg$4;->this$0:Lcom/lostpixels/fieldservice/activities/visits/AddMagazineDlg;

    invoke-static {p2}, Lcom/lostpixels/fieldservice/activities/visits/AddMagazineDlg;->-$$Nest$fgetbtnMonth(Lcom/lostpixels/fieldservice/activities/visits/AddMagazineDlg;)Landroid/widget/Button;

    move-result-object p2

    iget-object v0, p0, Lcom/lostpixels/fieldservice/activities/visits/AddMagazineDlg$4;->this$0:Lcom/lostpixels/fieldservice/activities/visits/AddMagazineDlg;

    invoke-static {v0}, Lcom/lostpixels/fieldservice/activities/visits/AddMagazineDlg;->-$$Nest$mgetMagazineTitle(Lcom/lostpixels/fieldservice/activities/visits/AddMagazineDlg;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 207
    invoke-virtual {p1}, Lio/realm/Realm;->close()V

    :cond_0
    return-void
.end method
