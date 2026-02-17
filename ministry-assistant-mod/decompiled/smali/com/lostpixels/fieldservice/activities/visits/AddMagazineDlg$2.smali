.class Lcom/lostpixels/fieldservice/activities/visits/AddMagazineDlg$2;
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

    .line 178
    iput-object p1, p0, Lcom/lostpixels/fieldservice/activities/visits/AddMagazineDlg$2;->this$0:Lcom/lostpixels/fieldservice/activities/visits/AddMagazineDlg;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onCheckedChanged(Landroid/widget/CompoundButton;Z)V
    .locals 3

    .line 181
    invoke-static {}, Lio/realm/Realm;->getDefaultInstance()Lio/realm/Realm;

    move-result-object p1

    .line 182
    invoke-static {p1}, Lcom/lostpixels/fieldservice/internal/report/PublicationManager;->getInstance(Lio/realm/Realm;)Lcom/lostpixels/fieldservice/internal/report/PublicationManager;

    move-result-object v0

    iget-object v1, p0, Lcom/lostpixels/fieldservice/activities/visits/AddMagazineDlg$2;->this$0:Lcom/lostpixels/fieldservice/activities/visits/AddMagazineDlg;

    invoke-static {v1}, Lcom/lostpixels/fieldservice/activities/visits/AddMagazineDlg;->-$$Nest$fgetmckAwake(Lcom/lostpixels/fieldservice/activities/visits/AddMagazineDlg;)Landroid/widget/CheckBox;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/CompoundButton;->isChecked()Z

    move-result v1

    iget-object v2, p0, Lcom/lostpixels/fieldservice/activities/visits/AddMagazineDlg$2;->this$0:Lcom/lostpixels/fieldservice/activities/visits/AddMagazineDlg;

    invoke-static {v2}, Lcom/lostpixels/fieldservice/activities/visits/AddMagazineDlg;->-$$Nest$fgetmDate(Lcom/lostpixels/fieldservice/activities/visits/AddMagazineDlg;)Ljava/util/Date;

    move-result-object v2

    invoke-virtual {v0, p2, v1, v2}, Lcom/lostpixels/fieldservice/internal/report/PublicationManager;->getMagazineAlias(ZZLjava/util/Date;)Ljava/lang/String;

    move-result-object p2

    .line 183
    iget-object v0, p0, Lcom/lostpixels/fieldservice/activities/visits/AddMagazineDlg$2;->this$0:Lcom/lostpixels/fieldservice/activities/visits/AddMagazineDlg;

    invoke-static {v0}, Lcom/lostpixels/fieldservice/activities/visits/AddMagazineDlg;->-$$Nest$fgetmedtAlias(Lcom/lostpixels/fieldservice/activities/visits/AddMagazineDlg;)Landroid/widget/EditText;

    move-result-object v0

    invoke-virtual {v0, p2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 184
    invoke-virtual {p1}, Lio/realm/Realm;->close()V

    return-void
.end method
