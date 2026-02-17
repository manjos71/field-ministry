.class Lcom/lostpixels/fieldservice/activities/servicereport/AddSchoolDlg$3;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/lostpixels/fieldservice/activities/servicereport/AddSchoolDlg;->onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/lostpixels/fieldservice/activities/servicereport/AddSchoolDlg;


# direct methods
.method constructor <init>(Lcom/lostpixels/fieldservice/activities/servicereport/AddSchoolDlg;)V
    .locals 0

    .line 81
    iput-object p1, p0, Lcom/lostpixels/fieldservice/activities/servicereport/AddSchoolDlg$3;->this$0:Lcom/lostpixels/fieldservice/activities/servicereport/AddSchoolDlg;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 0

    .line 84
    iget-object p1, p0, Lcom/lostpixels/fieldservice/activities/servicereport/AddSchoolDlg$3;->this$0:Lcom/lostpixels/fieldservice/activities/servicereport/AddSchoolDlg;

    invoke-static {p1}, Lcom/lostpixels/fieldservice/activities/servicereport/AddSchoolDlg;->-$$Nest$mshowSchoolsList(Lcom/lostpixels/fieldservice/activities/servicereport/AddSchoolDlg;)V

    return-void
.end method
