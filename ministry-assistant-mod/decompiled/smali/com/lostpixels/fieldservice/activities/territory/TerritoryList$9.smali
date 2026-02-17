.class Lcom/lostpixels/fieldservice/activities/territory/TerritoryList$9;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/widget/AdapterView$OnItemClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/lostpixels/fieldservice/activities/territory/TerritoryList;->createOnClickDialog(Lcom/lostpixels/fieldservice/internal/ministry/Visit;Lcom/lostpixels/fieldservice/internal/ministry/Street;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/lostpixels/fieldservice/activities/territory/TerritoryList;

.field final synthetic val$alertDialog:Landroidx/appcompat/app/AlertDialog;

.field final synthetic val$bShowCommentDialg:Z

.field final synthetic val$menuItems:[Ljava/lang/String;

.field final synthetic val$preferences:Landroid/content/SharedPreferences;

.field final synthetic val$street:Lcom/lostpixels/fieldservice/internal/ministry/Street;

.field final synthetic val$visit:Lcom/lostpixels/fieldservice/internal/ministry/Visit;


# direct methods
.method constructor <init>(Lcom/lostpixels/fieldservice/activities/territory/TerritoryList;Lcom/lostpixels/fieldservice/internal/ministry/Visit;Landroidx/appcompat/app/AlertDialog;Z[Ljava/lang/String;Landroid/content/SharedPreferences;Lcom/lostpixels/fieldservice/internal/ministry/Street;)V
    .locals 0

    .line 1078
    iput-object p1, p0, Lcom/lostpixels/fieldservice/activities/territory/TerritoryList$9;->this$0:Lcom/lostpixels/fieldservice/activities/territory/TerritoryList;

    iput-object p2, p0, Lcom/lostpixels/fieldservice/activities/territory/TerritoryList$9;->val$visit:Lcom/lostpixels/fieldservice/internal/ministry/Visit;

    iput-object p3, p0, Lcom/lostpixels/fieldservice/activities/territory/TerritoryList$9;->val$alertDialog:Landroidx/appcompat/app/AlertDialog;

    iput-boolean p4, p0, Lcom/lostpixels/fieldservice/activities/territory/TerritoryList$9;->val$bShowCommentDialg:Z

    iput-object p5, p0, Lcom/lostpixels/fieldservice/activities/territory/TerritoryList$9;->val$menuItems:[Ljava/lang/String;

    iput-object p6, p0, Lcom/lostpixels/fieldservice/activities/territory/TerritoryList$9;->val$preferences:Landroid/content/SharedPreferences;

    iput-object p7, p0, Lcom/lostpixels/fieldservice/activities/territory/TerritoryList$9;->val$street:Lcom/lostpixels/fieldservice/internal/ministry/Street;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onItemClick(Landroid/widget/AdapterView;Landroid/view/View;IJ)V
    .locals 4

    .line 1081
    iget-object p1, p0, Lcom/lostpixels/fieldservice/activities/territory/TerritoryList$9;->this$0:Lcom/lostpixels/fieldservice/activities/territory/TerritoryList;

    invoke-static {p1}, Lcom/lostpixels/fieldservice/activities/territory/TerritoryList;->access$100(Lcom/lostpixels/fieldservice/activities/territory/TerritoryList;)Lio/realm/Realm;

    move-result-object p1

    invoke-static {p1}, Lcom/lostpixels/fieldservice/internal/ministry/MinistryManager;->getInstance(Lio/realm/Realm;)Lcom/lostpixels/fieldservice/internal/ministry/MinistryManager;

    move-result-object p1

    iget-object p2, p0, Lcom/lostpixels/fieldservice/activities/territory/TerritoryList$9;->val$visit:Lcom/lostpixels/fieldservice/internal/ministry/Visit;

    invoke-virtual {p2}, Lcom/lostpixels/fieldservice/internal/ministry/Visit;->getVisitType()I

    move-result p2

    iget-object p3, p0, Lcom/lostpixels/fieldservice/activities/territory/TerritoryList$9;->this$0:Lcom/lostpixels/fieldservice/activities/territory/TerritoryList;

    invoke-virtual {p1, p2, p3}, Lcom/lostpixels/fieldservice/internal/ministry/MinistryManager;->getNote(ILandroid/content/Context;)Ljava/lang/String;

    move-result-object p1

    long-to-int p2, p4

    const-wide/16 p3, 0x0

    const/4 p5, 0x0

    if-eqz p2, :cond_24

    const/4 v0, 0x2

    const/4 v1, 0x1

    if-eq p2, v1, :cond_22

    const/4 v2, 0x6

    if-eq p2, v0, :cond_21

    const/4 v0, 0x3

    if-eq p2, v0, :cond_1f

    const/4 v3, 0x5

    if-eq p2, v3, :cond_1d

    if-eq p2, v2, :cond_1c

    const/16 v2, 0xa

    if-eq p2, v2, :cond_13

    const/16 p3, 0x14

    if-eq p2, p3, :cond_11

    const/16 p3, 0x16

    if-eq p2, p3, :cond_f

    const/16 p3, 0x18

    if-eq p2, p3, :cond_d

    const/16 p3, 0x2c

    const/16 p4, 0x11

    if-eq p2, p3, :cond_b

    const/16 p3, 0x23

    if-eq p2, p3, :cond_a

    const/16 p3, 0x24

    if-eq p2, p3, :cond_8

    const/16 p3, 0x29

    const/16 v0, 0x10

    if-eq p2, p3, :cond_6

    const/16 p3, 0x2a

    if-eq p2, p3, :cond_4

    packed-switch p2, :pswitch_data_0

    goto/16 :goto_4

    .line 1191
    :pswitch_0
    iget-object p2, p0, Lcom/lostpixels/fieldservice/activities/territory/TerritoryList$9;->val$visit:Lcom/lostpixels/fieldservice/internal/ministry/Visit;

    invoke-virtual {p2, v2}, Lcom/lostpixels/fieldservice/internal/ministry/Visit;->setType(I)V

    .line 1192
    iget-boolean p2, p0, Lcom/lostpixels/fieldservice/activities/territory/TerritoryList$9;->val$bShowCommentDialg:Z

    const/16 p3, 0x12

    if-eqz p2, :cond_0

    .line 1193
    iget-object p2, p0, Lcom/lostpixels/fieldservice/activities/territory/TerritoryList$9;->this$0:Lcom/lostpixels/fieldservice/activities/territory/TerritoryList;

    iget-object p4, p0, Lcom/lostpixels/fieldservice/activities/territory/TerritoryList$9;->val$visit:Lcom/lostpixels/fieldservice/internal/ministry/Visit;

    iget-object v0, p0, Lcom/lostpixels/fieldservice/activities/territory/TerritoryList$9;->val$menuItems:[Ljava/lang/String;

    aget-object p3, v0, p3

    invoke-static {p2, p4, p3, p1}, Lcom/lostpixels/fieldservice/activities/territory/TerritoryList;->-$$Nest$maddComment(Lcom/lostpixels/fieldservice/activities/territory/TerritoryList;Lcom/lostpixels/fieldservice/internal/ministry/Visit;Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_4

    .line 1195
    :cond_0
    iget-object p1, p0, Lcom/lostpixels/fieldservice/activities/territory/TerritoryList$9;->this$0:Lcom/lostpixels/fieldservice/activities/territory/TerritoryList;

    iget-object p2, p0, Lcom/lostpixels/fieldservice/activities/territory/TerritoryList$9;->val$visit:Lcom/lostpixels/fieldservice/internal/ministry/Visit;

    iget-object p4, p0, Lcom/lostpixels/fieldservice/activities/territory/TerritoryList$9;->val$menuItems:[Ljava/lang/String;

    aget-object p3, p4, p3

    invoke-static {p1, p2, p3, p5, p5}, Lcom/lostpixels/fieldservice/activities/territory/TerritoryList;->-$$Nest$mshowUndo(Lcom/lostpixels/fieldservice/activities/territory/TerritoryList;Lcom/lostpixels/fieldservice/internal/ministry/Visit;Ljava/lang/String;ZZ)V

    goto/16 :goto_4

    .line 1198
    :pswitch_1
    iget-object p2, p0, Lcom/lostpixels/fieldservice/activities/territory/TerritoryList$9;->val$visit:Lcom/lostpixels/fieldservice/internal/ministry/Visit;

    const/16 p3, 0x8

    invoke-virtual {p2, p3}, Lcom/lostpixels/fieldservice/internal/ministry/Visit;->setType(I)V

    .line 1199
    iget-boolean p2, p0, Lcom/lostpixels/fieldservice/activities/territory/TerritoryList$9;->val$bShowCommentDialg:Z

    if-eqz p2, :cond_1

    .line 1200
    iget-object p2, p0, Lcom/lostpixels/fieldservice/activities/territory/TerritoryList$9;->this$0:Lcom/lostpixels/fieldservice/activities/territory/TerritoryList;

    iget-object p3, p0, Lcom/lostpixels/fieldservice/activities/territory/TerritoryList$9;->val$visit:Lcom/lostpixels/fieldservice/internal/ministry/Visit;

    iget-object p4, p0, Lcom/lostpixels/fieldservice/activities/territory/TerritoryList$9;->val$menuItems:[Ljava/lang/String;

    aget-object p4, p4, v0

    invoke-static {p2, p3, p4, p1}, Lcom/lostpixels/fieldservice/activities/territory/TerritoryList;->-$$Nest$maddComment(Lcom/lostpixels/fieldservice/activities/territory/TerritoryList;Lcom/lostpixels/fieldservice/internal/ministry/Visit;Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_4

    .line 1202
    :cond_1
    iget-object p1, p0, Lcom/lostpixels/fieldservice/activities/territory/TerritoryList$9;->this$0:Lcom/lostpixels/fieldservice/activities/territory/TerritoryList;

    iget-object p2, p0, Lcom/lostpixels/fieldservice/activities/territory/TerritoryList$9;->val$visit:Lcom/lostpixels/fieldservice/internal/ministry/Visit;

    iget-object p3, p0, Lcom/lostpixels/fieldservice/activities/territory/TerritoryList$9;->val$menuItems:[Ljava/lang/String;

    aget-object p3, p3, v0

    invoke-static {p1, p2, p3, p5, p5}, Lcom/lostpixels/fieldservice/activities/territory/TerritoryList;->-$$Nest$mshowUndo(Lcom/lostpixels/fieldservice/activities/territory/TerritoryList;Lcom/lostpixels/fieldservice/internal/ministry/Visit;Ljava/lang/String;ZZ)V

    goto/16 :goto_4

    .line 1184
    :pswitch_2
    iget-object p2, p0, Lcom/lostpixels/fieldservice/activities/territory/TerritoryList$9;->val$visit:Lcom/lostpixels/fieldservice/internal/ministry/Visit;

    const/16 p3, 0x9

    invoke-virtual {p2, p3}, Lcom/lostpixels/fieldservice/internal/ministry/Visit;->setType(I)V

    .line 1185
    iget-boolean p2, p0, Lcom/lostpixels/fieldservice/activities/territory/TerritoryList$9;->val$bShowCommentDialg:Z

    if-eqz p2, :cond_2

    .line 1186
    iget-object p2, p0, Lcom/lostpixels/fieldservice/activities/territory/TerritoryList$9;->this$0:Lcom/lostpixels/fieldservice/activities/territory/TerritoryList;

    iget-object p3, p0, Lcom/lostpixels/fieldservice/activities/territory/TerritoryList$9;->val$visit:Lcom/lostpixels/fieldservice/internal/ministry/Visit;

    iget-object v0, p0, Lcom/lostpixels/fieldservice/activities/territory/TerritoryList$9;->val$menuItems:[Ljava/lang/String;

    aget-object p4, v0, p4

    invoke-static {p2, p3, p4, p1}, Lcom/lostpixels/fieldservice/activities/territory/TerritoryList;->-$$Nest$maddComment(Lcom/lostpixels/fieldservice/activities/territory/TerritoryList;Lcom/lostpixels/fieldservice/internal/ministry/Visit;Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_4

    .line 1188
    :cond_2
    iget-object p1, p0, Lcom/lostpixels/fieldservice/activities/territory/TerritoryList$9;->this$0:Lcom/lostpixels/fieldservice/activities/territory/TerritoryList;

    iget-object p2, p0, Lcom/lostpixels/fieldservice/activities/territory/TerritoryList$9;->val$visit:Lcom/lostpixels/fieldservice/internal/ministry/Visit;

    iget-object p3, p0, Lcom/lostpixels/fieldservice/activities/territory/TerritoryList$9;->val$menuItems:[Ljava/lang/String;

    aget-object p3, p3, p4

    invoke-static {p1, p2, p3, p5, p5}, Lcom/lostpixels/fieldservice/activities/territory/TerritoryList;->-$$Nest$mshowUndo(Lcom/lostpixels/fieldservice/activities/territory/TerritoryList;Lcom/lostpixels/fieldservice/internal/ministry/Visit;Ljava/lang/String;ZZ)V

    goto/16 :goto_4

    .line 1177
    :pswitch_3
    iget-object p2, p0, Lcom/lostpixels/fieldservice/activities/territory/TerritoryList$9;->val$visit:Lcom/lostpixels/fieldservice/internal/ministry/Visit;

    const/4 p3, 0x7

    invoke-virtual {p2, p3}, Lcom/lostpixels/fieldservice/internal/ministry/Visit;->setType(I)V

    .line 1178
    iget-boolean p2, p0, Lcom/lostpixels/fieldservice/activities/territory/TerritoryList$9;->val$bShowCommentDialg:Z

    const p3, 0x7f1203f6

    if-eqz p2, :cond_3

    .line 1179
    iget-object p2, p0, Lcom/lostpixels/fieldservice/activities/territory/TerritoryList$9;->this$0:Lcom/lostpixels/fieldservice/activities/territory/TerritoryList;

    iget-object p4, p0, Lcom/lostpixels/fieldservice/activities/territory/TerritoryList$9;->val$visit:Lcom/lostpixels/fieldservice/internal/ministry/Visit;

    invoke-virtual {p2, p3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p3

    invoke-static {p2, p4, p3, p1}, Lcom/lostpixels/fieldservice/activities/territory/TerritoryList;->-$$Nest$maddComment(Lcom/lostpixels/fieldservice/activities/territory/TerritoryList;Lcom/lostpixels/fieldservice/internal/ministry/Visit;Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_4

    .line 1181
    :cond_3
    iget-object p1, p0, Lcom/lostpixels/fieldservice/activities/territory/TerritoryList$9;->this$0:Lcom/lostpixels/fieldservice/activities/territory/TerritoryList;

    iget-object p2, p0, Lcom/lostpixels/fieldservice/activities/territory/TerritoryList$9;->val$visit:Lcom/lostpixels/fieldservice/internal/ministry/Visit;

    invoke-virtual {p1, p3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p3

    invoke-static {p1, p2, p3, p5, p5}, Lcom/lostpixels/fieldservice/activities/territory/TerritoryList;->-$$Nest$mshowUndo(Lcom/lostpixels/fieldservice/activities/territory/TerritoryList;Lcom/lostpixels/fieldservice/internal/ministry/Visit;Ljava/lang/String;ZZ)V

    goto/16 :goto_4

    .line 1095
    :cond_4
    :try_start_0
    iget-object p1, p0, Lcom/lostpixels/fieldservice/activities/territory/TerritoryList$9;->val$alertDialog:Landroidx/appcompat/app/AlertDialog;

    invoke-virtual {p1}, Landroid/app/Dialog;->isShowing()Z

    move-result p1

    if-eqz p1, :cond_5

    .line 1096
    iget-object p1, p0, Lcom/lostpixels/fieldservice/activities/territory/TerritoryList$9;->val$alertDialog:Landroidx/appcompat/app/AlertDialog;

    invoke-virtual {p1}, Landroidx/appcompat/app/AppCompatDialog;->dismiss()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 1100
    :catch_0
    :cond_5
    iget-object p1, p0, Lcom/lostpixels/fieldservice/activities/territory/TerritoryList$9;->this$0:Lcom/lostpixels/fieldservice/activities/territory/TerritoryList;

    iget-object p2, p0, Lcom/lostpixels/fieldservice/activities/territory/TerritoryList$9;->val$visit:Lcom/lostpixels/fieldservice/internal/ministry/Visit;

    invoke-virtual {p1, p2, p5}, Lcom/lostpixels/fieldservice/activities/territory/TerritoryList;->openCallVisitDialog(Lcom/lostpixels/fieldservice/internal/ministry/Visit;Z)V

    goto/16 :goto_4

    .line 1219
    :cond_6
    iget-object p2, p0, Lcom/lostpixels/fieldservice/activities/territory/TerritoryList$9;->val$visit:Lcom/lostpixels/fieldservice/internal/ministry/Visit;

    invoke-virtual {p2, v0}, Lcom/lostpixels/fieldservice/internal/ministry/Visit;->setType(I)V

    .line 1220
    iget-boolean p2, p0, Lcom/lostpixels/fieldservice/activities/territory/TerritoryList$9;->val$bShowCommentDialg:Z

    const p3, 0x7f120363

    if-eqz p2, :cond_7

    .line 1221
    iget-object p2, p0, Lcom/lostpixels/fieldservice/activities/territory/TerritoryList$9;->this$0:Lcom/lostpixels/fieldservice/activities/territory/TerritoryList;

    iget-object p4, p0, Lcom/lostpixels/fieldservice/activities/territory/TerritoryList$9;->val$visit:Lcom/lostpixels/fieldservice/internal/ministry/Visit;

    invoke-virtual {p2, p3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p3

    invoke-static {p2, p4, p3, p1}, Lcom/lostpixels/fieldservice/activities/territory/TerritoryList;->-$$Nest$maddComment(Lcom/lostpixels/fieldservice/activities/territory/TerritoryList;Lcom/lostpixels/fieldservice/internal/ministry/Visit;Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_4

    .line 1223
    :cond_7
    iget-object p1, p0, Lcom/lostpixels/fieldservice/activities/territory/TerritoryList$9;->this$0:Lcom/lostpixels/fieldservice/activities/territory/TerritoryList;

    iget-object p2, p0, Lcom/lostpixels/fieldservice/activities/territory/TerritoryList$9;->val$visit:Lcom/lostpixels/fieldservice/internal/ministry/Visit;

    invoke-virtual {p1, p3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p3

    invoke-static {p1, p2, p3, p5, p5}, Lcom/lostpixels/fieldservice/activities/territory/TerritoryList;->-$$Nest$mshowUndo(Lcom/lostpixels/fieldservice/activities/territory/TerritoryList;Lcom/lostpixels/fieldservice/internal/ministry/Visit;Ljava/lang/String;ZZ)V

    goto/16 :goto_4

    .line 1131
    :cond_8
    iget-object p2, p0, Lcom/lostpixels/fieldservice/activities/territory/TerritoryList$9;->val$visit:Lcom/lostpixels/fieldservice/internal/ministry/Visit;

    const/16 p3, 0xf

    invoke-virtual {p2, p3}, Lcom/lostpixels/fieldservice/internal/ministry/Visit;->setType(I)V

    .line 1132
    iget-boolean p2, p0, Lcom/lostpixels/fieldservice/activities/territory/TerritoryList$9;->val$bShowCommentDialg:Z

    const p3, 0x7f12045d

    if-eqz p2, :cond_9

    .line 1133
    iget-object p2, p0, Lcom/lostpixels/fieldservice/activities/territory/TerritoryList$9;->this$0:Lcom/lostpixels/fieldservice/activities/territory/TerritoryList;

    iget-object p4, p0, Lcom/lostpixels/fieldservice/activities/territory/TerritoryList$9;->val$visit:Lcom/lostpixels/fieldservice/internal/ministry/Visit;

    invoke-virtual {p2, p3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p3

    invoke-static {p2, p4, p3, p1}, Lcom/lostpixels/fieldservice/activities/territory/TerritoryList;->-$$Nest$maddComment(Lcom/lostpixels/fieldservice/activities/territory/TerritoryList;Lcom/lostpixels/fieldservice/internal/ministry/Visit;Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_4

    .line 1135
    :cond_9
    iget-object p1, p0, Lcom/lostpixels/fieldservice/activities/territory/TerritoryList$9;->this$0:Lcom/lostpixels/fieldservice/activities/territory/TerritoryList;

    iget-object p2, p0, Lcom/lostpixels/fieldservice/activities/territory/TerritoryList$9;->val$visit:Lcom/lostpixels/fieldservice/internal/ministry/Visit;

    invoke-virtual {p1, p3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p3

    invoke-static {p1, p2, p3, p5, p5}, Lcom/lostpixels/fieldservice/activities/territory/TerritoryList;->-$$Nest$mshowUndo(Lcom/lostpixels/fieldservice/activities/territory/TerritoryList;Lcom/lostpixels/fieldservice/internal/ministry/Visit;Ljava/lang/String;ZZ)V

    goto/16 :goto_4

    .line 1138
    :cond_a
    new-instance p1, Lcom/lostpixels/fieldservice/activities/visits/AddPublicationDlg;

    iget-object p2, p0, Lcom/lostpixels/fieldservice/activities/territory/TerritoryList$9;->this$0:Lcom/lostpixels/fieldservice/activities/territory/TerritoryList;

    new-instance p4, Lcom/lostpixels/fieldservice/activities/territory/TerritoryList$9$1;

    invoke-direct {p4, p0}, Lcom/lostpixels/fieldservice/activities/territory/TerritoryList$9$1;-><init>(Lcom/lostpixels/fieldservice/activities/territory/TerritoryList$9;)V

    invoke-direct {p1, p2, v0, p4, p3}, Lcom/lostpixels/fieldservice/activities/visits/AddPublicationDlg;-><init>(Landroidx/fragment/app/FragmentActivity;ILcom/lostpixels/fieldservice/activities/visits/AddPublicationDlg$OnAddPublicationListener;I)V

    .line 1173
    invoke-virtual {p1}, Lcom/lostpixels/fieldservice/activities/visits/AddPublicationDlg;->showCommentField()V

    .line 1174
    invoke-virtual {p1}, Landroid/app/Dialog;->show()V

    goto/16 :goto_4

    .line 1226
    :cond_b
    iget-object p2, p0, Lcom/lostpixels/fieldservice/activities/territory/TerritoryList$9;->val$visit:Lcom/lostpixels/fieldservice/internal/ministry/Visit;

    invoke-virtual {p2, p4}, Lcom/lostpixels/fieldservice/internal/ministry/Visit;->setType(I)V

    .line 1227
    iget-boolean p2, p0, Lcom/lostpixels/fieldservice/activities/territory/TerritoryList$9;->val$bShowCommentDialg:Z

    const p3, 0x7f120485

    if-eqz p2, :cond_c

    .line 1228
    iget-object p2, p0, Lcom/lostpixels/fieldservice/activities/territory/TerritoryList$9;->this$0:Lcom/lostpixels/fieldservice/activities/territory/TerritoryList;

    iget-object p4, p0, Lcom/lostpixels/fieldservice/activities/territory/TerritoryList$9;->val$visit:Lcom/lostpixels/fieldservice/internal/ministry/Visit;

    invoke-virtual {p2, p3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p3

    invoke-static {p2, p4, p3, p1}, Lcom/lostpixels/fieldservice/activities/territory/TerritoryList;->-$$Nest$maddComment(Lcom/lostpixels/fieldservice/activities/territory/TerritoryList;Lcom/lostpixels/fieldservice/internal/ministry/Visit;Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_4

    .line 1230
    :cond_c
    iget-object p1, p0, Lcom/lostpixels/fieldservice/activities/territory/TerritoryList$9;->this$0:Lcom/lostpixels/fieldservice/activities/territory/TerritoryList;

    iget-object p2, p0, Lcom/lostpixels/fieldservice/activities/territory/TerritoryList$9;->val$visit:Lcom/lostpixels/fieldservice/internal/ministry/Visit;

    invoke-virtual {p1, p3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p3

    invoke-static {p1, p2, p3, p5, p5}, Lcom/lostpixels/fieldservice/activities/territory/TerritoryList;->-$$Nest$mshowUndo(Lcom/lostpixels/fieldservice/activities/territory/TerritoryList;Lcom/lostpixels/fieldservice/internal/ministry/Visit;Ljava/lang/String;ZZ)V

    goto/16 :goto_4

    .line 1212
    :cond_d
    iget-object p2, p0, Lcom/lostpixels/fieldservice/activities/territory/TerritoryList$9;->val$visit:Lcom/lostpixels/fieldservice/internal/ministry/Visit;

    const/16 p3, 0xd

    invoke-virtual {p2, p3}, Lcom/lostpixels/fieldservice/internal/ministry/Visit;->setType(I)V

    .line 1213
    iget-boolean p2, p0, Lcom/lostpixels/fieldservice/activities/territory/TerritoryList$9;->val$bShowCommentDialg:Z

    const p3, 0x7f120434

    if-eqz p2, :cond_e

    .line 1214
    iget-object p2, p0, Lcom/lostpixels/fieldservice/activities/territory/TerritoryList$9;->this$0:Lcom/lostpixels/fieldservice/activities/territory/TerritoryList;

    iget-object p4, p0, Lcom/lostpixels/fieldservice/activities/territory/TerritoryList$9;->val$visit:Lcom/lostpixels/fieldservice/internal/ministry/Visit;

    invoke-virtual {p2, p3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p3

    invoke-static {p2, p4, p3, p1}, Lcom/lostpixels/fieldservice/activities/territory/TerritoryList;->-$$Nest$maddComment(Lcom/lostpixels/fieldservice/activities/territory/TerritoryList;Lcom/lostpixels/fieldservice/internal/ministry/Visit;Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_4

    .line 1216
    :cond_e
    iget-object p1, p0, Lcom/lostpixels/fieldservice/activities/territory/TerritoryList$9;->this$0:Lcom/lostpixels/fieldservice/activities/territory/TerritoryList;

    iget-object p2, p0, Lcom/lostpixels/fieldservice/activities/territory/TerritoryList$9;->val$visit:Lcom/lostpixels/fieldservice/internal/ministry/Visit;

    invoke-virtual {p1, p3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p3

    invoke-static {p1, p2, p3, p5, p5}, Lcom/lostpixels/fieldservice/activities/territory/TerritoryList;->-$$Nest$mshowUndo(Lcom/lostpixels/fieldservice/activities/territory/TerritoryList;Lcom/lostpixels/fieldservice/internal/ministry/Visit;Ljava/lang/String;ZZ)V

    goto/16 :goto_4

    .line 1086
    :cond_f
    :try_start_1
    iget-object p1, p0, Lcom/lostpixels/fieldservice/activities/territory/TerritoryList$9;->val$alertDialog:Landroidx/appcompat/app/AlertDialog;

    invoke-virtual {p1}, Landroid/app/Dialog;->isShowing()Z

    move-result p1

    if-eqz p1, :cond_10

    .line 1087
    iget-object p1, p0, Lcom/lostpixels/fieldservice/activities/territory/TerritoryList$9;->val$alertDialog:Landroidx/appcompat/app/AlertDialog;

    invoke-virtual {p1}, Landroidx/appcompat/app/AppCompatDialog;->dismiss()V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    .line 1091
    :catch_1
    :cond_10
    iget-object p1, p0, Lcom/lostpixels/fieldservice/activities/territory/TerritoryList$9;->this$0:Lcom/lostpixels/fieldservice/activities/territory/TerritoryList;

    iget-object p2, p0, Lcom/lostpixels/fieldservice/activities/territory/TerritoryList$9;->val$visit:Lcom/lostpixels/fieldservice/internal/ministry/Visit;

    invoke-virtual {p1, p2, v1}, Lcom/lostpixels/fieldservice/activities/territory/TerritoryList;->openCallVisitDialog(Lcom/lostpixels/fieldservice/internal/ministry/Visit;Z)V

    goto/16 :goto_4

    .line 1205
    :cond_11
    iget-object p2, p0, Lcom/lostpixels/fieldservice/activities/territory/TerritoryList$9;->val$visit:Lcom/lostpixels/fieldservice/internal/ministry/Visit;

    const/16 p3, 0xb

    invoke-virtual {p2, p3}, Lcom/lostpixels/fieldservice/internal/ministry/Visit;->setType(I)V

    .line 1206
    iget-boolean p2, p0, Lcom/lostpixels/fieldservice/activities/territory/TerritoryList$9;->val$bShowCommentDialg:Z

    const p3, 0x7f12046e

    if-eqz p2, :cond_12

    .line 1207
    iget-object p2, p0, Lcom/lostpixels/fieldservice/activities/territory/TerritoryList$9;->this$0:Lcom/lostpixels/fieldservice/activities/territory/TerritoryList;

    iget-object p4, p0, Lcom/lostpixels/fieldservice/activities/territory/TerritoryList$9;->val$visit:Lcom/lostpixels/fieldservice/internal/ministry/Visit;

    invoke-virtual {p2, p3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p3

    invoke-static {p2, p4, p3, p1}, Lcom/lostpixels/fieldservice/activities/territory/TerritoryList;->-$$Nest$maddComment(Lcom/lostpixels/fieldservice/activities/territory/TerritoryList;Lcom/lostpixels/fieldservice/internal/ministry/Visit;Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_4

    .line 1209
    :cond_12
    iget-object p1, p0, Lcom/lostpixels/fieldservice/activities/territory/TerritoryList$9;->this$0:Lcom/lostpixels/fieldservice/activities/territory/TerritoryList;

    iget-object p2, p0, Lcom/lostpixels/fieldservice/activities/territory/TerritoryList$9;->val$visit:Lcom/lostpixels/fieldservice/internal/ministry/Visit;

    invoke-virtual {p1, p3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p3

    invoke-static {p1, p2, p3, p5, p5}, Lcom/lostpixels/fieldservice/activities/territory/TerritoryList;->-$$Nest$mshowUndo(Lcom/lostpixels/fieldservice/activities/territory/TerritoryList;Lcom/lostpixels/fieldservice/internal/ministry/Visit;Ljava/lang/String;ZZ)V

    goto/16 :goto_4

    .line 1279
    :cond_13
    new-instance p1, Landroid/content/Intent;

    iget-object p2, p0, Lcom/lostpixels/fieldservice/activities/territory/TerritoryList$9;->this$0:Lcom/lostpixels/fieldservice/activities/territory/TerritoryList;

    const-class v0, Lcom/lostpixels/fieldservice/activities/visits/PersonDialog;

    invoke-direct {p1, p2, v0}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 1280
    iget-object p2, p0, Lcom/lostpixels/fieldservice/activities/territory/TerritoryList$9;->val$visit:Lcom/lostpixels/fieldservice/internal/ministry/Visit;

    invoke-virtual {p2}, Lcom/lostpixels/fieldservice/internal/ministry/Visit;->getHouseHolder()J

    move-result-wide v2

    cmp-long p2, v2, p3

    if-nez p2, :cond_14

    const/4 p2, 0x0

    goto :goto_0

    .line 1281
    :cond_14
    iget-object p2, p0, Lcom/lostpixels/fieldservice/activities/territory/TerritoryList$9;->this$0:Lcom/lostpixels/fieldservice/activities/territory/TerritoryList;

    .line 1280
    invoke-static {p2}, Lcom/lostpixels/fieldservice/activities/territory/TerritoryList;->access$1000(Lcom/lostpixels/fieldservice/activities/territory/TerritoryList;)Lio/realm/Realm;

    move-result-object p2

    invoke-static {p2}, Lcom/lostpixels/fieldservice/internal/ministry/MinistryManager;->getInstance(Lio/realm/Realm;)Lcom/lostpixels/fieldservice/internal/ministry/MinistryManager;

    move-result-object p2

    iget-object p3, p0, Lcom/lostpixels/fieldservice/activities/territory/TerritoryList$9;->this$0:Lcom/lostpixels/fieldservice/activities/territory/TerritoryList;

    .line 1281
    invoke-static {p3}, Lcom/lostpixels/fieldservice/activities/territory/TerritoryList;->access$900(Lcom/lostpixels/fieldservice/activities/territory/TerritoryList;)Lio/realm/Realm;

    move-result-object p3

    iget-object p4, p0, Lcom/lostpixels/fieldservice/activities/territory/TerritoryList$9;->val$visit:Lcom/lostpixels/fieldservice/internal/ministry/Visit;

    invoke-virtual {p4}, Lcom/lostpixels/fieldservice/internal/ministry/Visit;->getHouseHolder()J

    move-result-wide v2

    invoke-virtual {p2, p3, v2, v3}, Lcom/lostpixels/fieldservice/internal/ministry/MinistryManager;->getPerson(Lio/realm/Realm;J)Lcom/lostpixels/fieldservice/internal/ministry/Person;

    move-result-object p2

    :goto_0
    if-nez p2, :cond_1b

    .line 1283
    iget-object p2, p0, Lcom/lostpixels/fieldservice/activities/territory/TerritoryList$9;->this$0:Lcom/lostpixels/fieldservice/activities/territory/TerritoryList;

    invoke-static {p2}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object p2

    .line 1284
    const-string p3, "checkNumberBeforeStreet"

    invoke-interface {p2, p3, p5}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result p2

    .line 1285
    new-instance p3, Lcom/lostpixels/fieldservice/internal/ministry/Person;

    invoke-direct {p3}, Lcom/lostpixels/fieldservice/internal/ministry/Person;-><init>()V

    .line 1287
    const-string p4, " "

    if-eqz p2, :cond_15

    .line 1288
    iget-object p2, p0, Lcom/lostpixels/fieldservice/activities/territory/TerritoryList$9;->val$visit:Lcom/lostpixels/fieldservice/internal/ministry/Visit;

    invoke-virtual {p2}, Lcom/lostpixels/fieldservice/internal/ministry/Visit;->getParent()Lcom/lostpixels/fieldservice/internal/ministry/Address;

    move-result-object p2

    invoke-virtual {p2}, Lcom/lostpixels/fieldservice/internal/ministry/Address;->getName()Ljava/lang/String;

    move-result-object p2

    .line 1289
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p2, p0, Lcom/lostpixels/fieldservice/activities/territory/TerritoryList$9;->val$street:Lcom/lostpixels/fieldservice/internal/ministry/Street;

    invoke-virtual {p2}, Lcom/lostpixels/fieldservice/internal/ministry/Street;->getName()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    goto :goto_1

    .line 1291
    :cond_15
    iget-object p2, p0, Lcom/lostpixels/fieldservice/activities/territory/TerritoryList$9;->val$street:Lcom/lostpixels/fieldservice/internal/ministry/Street;

    invoke-virtual {p2}, Lcom/lostpixels/fieldservice/internal/ministry/Street;->getName()Ljava/lang/String;

    move-result-object p2

    .line 1292
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p2, p0, Lcom/lostpixels/fieldservice/activities/territory/TerritoryList$9;->val$visit:Lcom/lostpixels/fieldservice/internal/ministry/Visit;

    invoke-virtual {p2}, Lcom/lostpixels/fieldservice/internal/ministry/Visit;->getParent()Lcom/lostpixels/fieldservice/internal/ministry/Address;

    move-result-object p2

    invoke-virtual {p2}, Lcom/lostpixels/fieldservice/internal/ministry/Address;->getName()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    .line 1295
    :goto_1
    iget-object p4, p0, Lcom/lostpixels/fieldservice/activities/territory/TerritoryList$9;->val$visit:Lcom/lostpixels/fieldservice/internal/ministry/Visit;

    invoke-virtual {p4}, Lcom/lostpixels/fieldservice/internal/ministry/Visit;->getParent()Lcom/lostpixels/fieldservice/internal/ministry/Address;

    move-result-object p4

    invoke-virtual {p4}, Lcom/lostpixels/fieldservice/internal/ministry/Address;->isBuilding()Z

    move-result p4

    if-eqz p4, :cond_17

    iget-object p4, p0, Lcom/lostpixels/fieldservice/activities/territory/TerritoryList$9;->val$visit:Lcom/lostpixels/fieldservice/internal/ministry/Visit;

    invoke-virtual {p4}, Lcom/lostpixels/fieldservice/internal/ministry/Visit;->getName()Ljava/lang/String;

    move-result-object p4

    invoke-static {p4}, Lcom/lostpixels/fieldservice/helpfunctions/HelpFunctions;->isInteger(Ljava/lang/String;)Z

    move-result p4

    if-nez p4, :cond_16

    iget-object p4, p0, Lcom/lostpixels/fieldservice/activities/territory/TerritoryList$9;->val$visit:Lcom/lostpixels/fieldservice/internal/ministry/Visit;

    invoke-virtual {p4}, Lcom/lostpixels/fieldservice/internal/ministry/Visit;->getName()Ljava/lang/String;

    move-result-object p4

    invoke-static {p4}, Lcom/lostpixels/fieldservice/helpfunctions/HelpFunctions;->isSingleLetter(Ljava/lang/String;)Z

    move-result p4

    if-eqz p4, :cond_17

    .line 1296
    :cond_16
    iget-object p4, p0, Lcom/lostpixels/fieldservice/activities/territory/TerritoryList$9;->val$visit:Lcom/lostpixels/fieldservice/internal/ministry/Visit;

    invoke-virtual {p4}, Lcom/lostpixels/fieldservice/internal/ministry/Visit;->getName()Ljava/lang/String;

    move-result-object p4

    invoke-virtual {p3, p4}, Lcom/lostpixels/fieldservice/internal/ministry/Person;->setApartment(Ljava/lang/String;)V

    const/4 p4, 0x1

    goto :goto_2

    :cond_17
    const/4 p4, 0x0

    .line 1299
    :goto_2
    invoke-virtual {p3, p2}, Lcom/lostpixels/fieldservice/internal/ministry/Person;->setAddress(Ljava/lang/String;)V

    .line 1300
    iget-object p2, p0, Lcom/lostpixels/fieldservice/activities/territory/TerritoryList$9;->this$0:Lcom/lostpixels/fieldservice/activities/territory/TerritoryList;

    invoke-static {p2}, Lcom/lostpixels/fieldservice/activities/territory/TerritoryList;->-$$Nest$fgetmTerritory(Lcom/lostpixels/fieldservice/activities/territory/TerritoryList;)Lcom/lostpixels/fieldservice/internal/ministry/Territory;

    move-result-object p2

    invoke-static {p2}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    invoke-virtual {p2}, Lcom/lostpixels/fieldservice/internal/ministry/Territory;->getRegion()Ljava/lang/String;

    move-result-object p2

    invoke-static {p2}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    invoke-virtual {p3, p2}, Lcom/lostpixels/fieldservice/internal/ministry/Person;->setSuburb(Ljava/lang/String;)V

    .line 1301
    iget-object p2, p0, Lcom/lostpixels/fieldservice/activities/territory/TerritoryList$9;->this$0:Lcom/lostpixels/fieldservice/activities/territory/TerritoryList;

    invoke-static {p2}, Lcom/lostpixels/fieldservice/activities/territory/TerritoryList;->-$$Nest$fgetmTerritory(Lcom/lostpixels/fieldservice/activities/territory/TerritoryList;)Lcom/lostpixels/fieldservice/internal/ministry/Territory;

    move-result-object p2

    invoke-virtual {p2}, Lcom/lostpixels/fieldservice/internal/ministry/Territory;->getCity()Ljava/lang/String;

    move-result-object p2

    invoke-static {p2}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    invoke-virtual {p3, p2}, Lcom/lostpixels/fieldservice/internal/ministry/Person;->setCity(Ljava/lang/String;)V

    .line 1302
    iget-object p2, p0, Lcom/lostpixels/fieldservice/activities/territory/TerritoryList$9;->val$visit:Lcom/lostpixels/fieldservice/internal/ministry/Visit;

    invoke-virtual {p2}, Lcom/lostpixels/fieldservice/internal/ministry/Visit;->getPosition()Lcom/google/android/gms/maps/model/LatLng;

    move-result-object p2

    invoke-virtual {p3, p2}, Lcom/lostpixels/fieldservice/internal/ministry/Person;->setPosition(Lcom/google/android/gms/maps/model/LatLng;)V

    .line 1304
    iget-object p2, p0, Lcom/lostpixels/fieldservice/activities/territory/TerritoryList$9;->val$visit:Lcom/lostpixels/fieldservice/internal/ministry/Visit;

    invoke-virtual {p2}, Lcom/lostpixels/fieldservice/internal/ministry/Visit;->getName()Ljava/lang/String;

    move-result-object p2

    if-eqz p2, :cond_18

    iget-object p2, p0, Lcom/lostpixels/fieldservice/activities/territory/TerritoryList$9;->val$visit:Lcom/lostpixels/fieldservice/internal/ministry/Visit;

    invoke-virtual {p2}, Lcom/lostpixels/fieldservice/internal/ministry/Visit;->getName()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p2}, Ljava/lang/String;->isEmpty()Z

    move-result p2

    if-nez p2, :cond_18

    if-nez p4, :cond_18

    .line 1305
    iget-object p2, p0, Lcom/lostpixels/fieldservice/activities/territory/TerritoryList$9;->val$visit:Lcom/lostpixels/fieldservice/internal/ministry/Visit;

    invoke-virtual {p2}, Lcom/lostpixels/fieldservice/internal/ministry/Visit;->getName()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p3, p2}, Lcom/lostpixels/fieldservice/internal/ministry/Person;->setName(Ljava/lang/String;)V

    .line 1306
    :cond_18
    iget-object p2, p0, Lcom/lostpixels/fieldservice/activities/territory/TerritoryList$9;->val$visit:Lcom/lostpixels/fieldservice/internal/ministry/Visit;

    invoke-virtual {p2}, Lcom/lostpixels/fieldservice/internal/ministry/Visit;->getPhoneNumber()Ljava/lang/String;

    move-result-object p2

    if-eqz p2, :cond_19

    iget-object p2, p0, Lcom/lostpixels/fieldservice/activities/territory/TerritoryList$9;->val$visit:Lcom/lostpixels/fieldservice/internal/ministry/Visit;

    invoke-virtual {p2}, Lcom/lostpixels/fieldservice/internal/ministry/Visit;->getPhoneNumber()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p2}, Ljava/lang/String;->isEmpty()Z

    move-result p2

    if-nez p2, :cond_19

    .line 1307
    iget-object p2, p0, Lcom/lostpixels/fieldservice/activities/territory/TerritoryList$9;->val$visit:Lcom/lostpixels/fieldservice/internal/ministry/Visit;

    invoke-virtual {p2}, Lcom/lostpixels/fieldservice/internal/ministry/Visit;->getPhoneNumber()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p3, p2}, Lcom/lostpixels/fieldservice/internal/ministry/Person;->setHomePhone(Ljava/lang/String;)V

    .line 1308
    :cond_19
    iget-object p2, p0, Lcom/lostpixels/fieldservice/activities/territory/TerritoryList$9;->val$visit:Lcom/lostpixels/fieldservice/internal/ministry/Visit;

    invoke-virtual {p2}, Lcom/lostpixels/fieldservice/internal/ministry/Visit;->getCellNumber()Ljava/lang/String;

    move-result-object p2

    if-eqz p2, :cond_1a

    iget-object p2, p0, Lcom/lostpixels/fieldservice/activities/territory/TerritoryList$9;->val$visit:Lcom/lostpixels/fieldservice/internal/ministry/Visit;

    invoke-virtual {p2}, Lcom/lostpixels/fieldservice/internal/ministry/Visit;->getCellNumber()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p2}, Ljava/lang/String;->isEmpty()Z

    move-result p2

    if-nez p2, :cond_1a

    .line 1309
    iget-object p2, p0, Lcom/lostpixels/fieldservice/activities/territory/TerritoryList$9;->val$visit:Lcom/lostpixels/fieldservice/internal/ministry/Visit;

    invoke-virtual {p2}, Lcom/lostpixels/fieldservice/internal/ministry/Visit;->getCellNumber()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p3, p2}, Lcom/lostpixels/fieldservice/internal/ministry/Person;->setCellPhone(Ljava/lang/String;)V

    .line 1310
    :cond_1a
    const-string p2, "CreateNew"

    invoke-virtual {p1, p2, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 1311
    const-string p2, "Person"

    invoke-virtual {p1, p2, p3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    goto :goto_3

    .line 1313
    :cond_1b
    const-string p3, "PersonID"

    invoke-virtual {p2}, Lcom/lostpixels/fieldservice/internal/ministry/Person;->getId()J

    move-result-wide v2

    invoke-virtual {p1, p3, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;J)Landroid/content/Intent;

    .line 1316
    :goto_3
    const-string p2, "CreatedFromTerritory"

    invoke-virtual {p1, p2, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 1317
    iget-object p2, p0, Lcom/lostpixels/fieldservice/activities/territory/TerritoryList$9;->this$0:Lcom/lostpixels/fieldservice/activities/territory/TerritoryList;

    invoke-virtual {p2, p1, v1}, Landroidx/activity/ComponentActivity;->startActivityForResult(Landroid/content/Intent;I)V

    goto/16 :goto_4

    .line 1253
    :cond_1c
    new-instance p1, Landroid/app/Dialog;

    iget-object p2, p0, Lcom/lostpixels/fieldservice/activities/territory/TerritoryList$9;->this$0:Lcom/lostpixels/fieldservice/activities/territory/TerritoryList;

    invoke-direct {p1, p2}, Landroid/app/Dialog;-><init>(Landroid/content/Context;)V

    const p2, 0x7f0c0091

    .line 1254
    invoke-virtual {p1, p2}, Landroid/app/Dialog;->setContentView(I)V

    .line 1255
    iget-object p2, p0, Lcom/lostpixels/fieldservice/activities/territory/TerritoryList$9;->this$0:Lcom/lostpixels/fieldservice/activities/territory/TerritoryList;

    const p3, 0x7f120160

    invoke-virtual {p2, p3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Landroid/app/Dialog;->setTitle(Ljava/lang/CharSequence;)V

    const p2, 0x7f0902a4

    .line 1257
    invoke-virtual {p1, p2}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Landroid/widget/EditText;

    .line 1258
    iget-object p3, p0, Lcom/lostpixels/fieldservice/activities/territory/TerritoryList$9;->val$visit:Lcom/lostpixels/fieldservice/internal/ministry/Visit;

    invoke-virtual {p3}, Lcom/lostpixels/fieldservice/internal/ministry/Visit;->getName()Ljava/lang/String;

    move-result-object p3

    invoke-virtual {p2, p3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    const p3, 0x7f0900f5

    .line 1259
    invoke-virtual {p1, p3}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    move-result-object p3

    check-cast p3, Landroid/widget/Button;

    .line 1260
    new-instance p4, Lcom/lostpixels/fieldservice/activities/territory/TerritoryList$9$2;

    invoke-direct {p4, p0, p2, p1}, Lcom/lostpixels/fieldservice/activities/territory/TerritoryList$9$2;-><init>(Lcom/lostpixels/fieldservice/activities/territory/TerritoryList$9;Landroid/widget/EditText;Landroid/app/Dialog;)V

    invoke-virtual {p3, p4}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 1276
    invoke-virtual {p1}, Landroid/app/Dialog;->show()V

    goto/16 :goto_5

    .line 1124
    :cond_1d
    iget-object p2, p0, Lcom/lostpixels/fieldservice/activities/territory/TerritoryList$9;->val$visit:Lcom/lostpixels/fieldservice/internal/ministry/Visit;

    invoke-virtual {p2, p5}, Lcom/lostpixels/fieldservice/internal/ministry/Visit;->setType(I)V

    .line 1125
    iget-boolean p2, p0, Lcom/lostpixels/fieldservice/activities/territory/TerritoryList$9;->val$bShowCommentDialg:Z

    if-eqz p2, :cond_1e

    .line 1126
    iget-object p2, p0, Lcom/lostpixels/fieldservice/activities/territory/TerritoryList$9;->this$0:Lcom/lostpixels/fieldservice/activities/territory/TerritoryList;

    iget-object p3, p0, Lcom/lostpixels/fieldservice/activities/territory/TerritoryList$9;->val$visit:Lcom/lostpixels/fieldservice/internal/ministry/Visit;

    iget-object p4, p0, Lcom/lostpixels/fieldservice/activities/territory/TerritoryList$9;->val$menuItems:[Ljava/lang/String;

    aget-object p4, p4, v3

    invoke-static {p2, p3, p4, p1}, Lcom/lostpixels/fieldservice/activities/territory/TerritoryList;->-$$Nest$maddComment(Lcom/lostpixels/fieldservice/activities/territory/TerritoryList;Lcom/lostpixels/fieldservice/internal/ministry/Visit;Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_4

    .line 1128
    :cond_1e
    iget-object p1, p0, Lcom/lostpixels/fieldservice/activities/territory/TerritoryList$9;->this$0:Lcom/lostpixels/fieldservice/activities/territory/TerritoryList;

    iget-object p2, p0, Lcom/lostpixels/fieldservice/activities/territory/TerritoryList$9;->val$visit:Lcom/lostpixels/fieldservice/internal/ministry/Visit;

    iget-object p3, p0, Lcom/lostpixels/fieldservice/activities/territory/TerritoryList$9;->val$menuItems:[Ljava/lang/String;

    aget-object p3, p3, v3

    invoke-static {p1, p2, p3, p5, p5}, Lcom/lostpixels/fieldservice/activities/territory/TerritoryList;->-$$Nest$mshowUndo(Lcom/lostpixels/fieldservice/activities/territory/TerritoryList;Lcom/lostpixels/fieldservice/internal/ministry/Visit;Ljava/lang/String;ZZ)V

    goto/16 :goto_4

    .line 1244
    :cond_1f
    iget-object p2, p0, Lcom/lostpixels/fieldservice/activities/territory/TerritoryList$9;->val$visit:Lcom/lostpixels/fieldservice/internal/ministry/Visit;

    invoke-virtual {p2, v1}, Lcom/lostpixels/fieldservice/internal/ministry/Visit;->setType(I)V

    .line 1245
    iget-boolean p2, p0, Lcom/lostpixels/fieldservice/activities/territory/TerritoryList$9;->val$bShowCommentDialg:Z

    if-eqz p2, :cond_20

    .line 1246
    iget-object p2, p0, Lcom/lostpixels/fieldservice/activities/territory/TerritoryList$9;->this$0:Lcom/lostpixels/fieldservice/activities/territory/TerritoryList;

    iget-object p3, p0, Lcom/lostpixels/fieldservice/activities/territory/TerritoryList$9;->val$visit:Lcom/lostpixels/fieldservice/internal/ministry/Visit;

    iget-object p4, p0, Lcom/lostpixels/fieldservice/activities/territory/TerritoryList$9;->val$menuItems:[Ljava/lang/String;

    aget-object p4, p4, v0

    invoke-static {p2, p3, p4, p1}, Lcom/lostpixels/fieldservice/activities/territory/TerritoryList;->-$$Nest$maddComment(Lcom/lostpixels/fieldservice/activities/territory/TerritoryList;Lcom/lostpixels/fieldservice/internal/ministry/Visit;Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_4

    .line 1248
    :cond_20
    iget-object p1, p0, Lcom/lostpixels/fieldservice/activities/territory/TerritoryList$9;->this$0:Lcom/lostpixels/fieldservice/activities/territory/TerritoryList;

    iget-object p2, p0, Lcom/lostpixels/fieldservice/activities/territory/TerritoryList$9;->val$visit:Lcom/lostpixels/fieldservice/internal/ministry/Visit;

    iget-object p3, p0, Lcom/lostpixels/fieldservice/activities/territory/TerritoryList$9;->val$menuItems:[Ljava/lang/String;

    aget-object p3, p3, v0

    invoke-static {p1, p2, p3, p5, p5}, Lcom/lostpixels/fieldservice/activities/territory/TerritoryList;->-$$Nest$mshowUndo(Lcom/lostpixels/fieldservice/activities/territory/TerritoryList;Lcom/lostpixels/fieldservice/internal/ministry/Visit;Ljava/lang/String;ZZ)V

    goto/16 :goto_4

    .line 1234
    :cond_21
    iget-object p1, p0, Lcom/lostpixels/fieldservice/activities/territory/TerritoryList$9;->val$visit:Lcom/lostpixels/fieldservice/internal/ministry/Visit;

    invoke-virtual {p1, v2}, Lcom/lostpixels/fieldservice/internal/ministry/Visit;->setType(I)V

    .line 1235
    iget-object p1, p0, Lcom/lostpixels/fieldservice/activities/territory/TerritoryList$9;->this$0:Lcom/lostpixels/fieldservice/activities/territory/TerritoryList;

    invoke-static {p1}, Lcom/lostpixels/fieldservice/activities/territory/TerritoryList;->access$800(Lcom/lostpixels/fieldservice/activities/territory/TerritoryList;)Lio/realm/Realm;

    move-result-object p1

    invoke-static {p1}, Lcom/lostpixels/fieldservice/internal/ministry/MinistryManager;->getInstance(Lio/realm/Realm;)Lcom/lostpixels/fieldservice/internal/ministry/MinistryManager;

    move-result-object p1

    iget-object p2, p0, Lcom/lostpixels/fieldservice/activities/territory/TerritoryList$9;->this$0:Lcom/lostpixels/fieldservice/activities/territory/TerritoryList;

    invoke-static {p2}, Lcom/lostpixels/fieldservice/activities/territory/TerritoryList;->access$700(Lcom/lostpixels/fieldservice/activities/territory/TerritoryList;)Lio/realm/Realm;

    move-result-object p2

    iget-object p3, p0, Lcom/lostpixels/fieldservice/activities/territory/TerritoryList$9;->val$visit:Lcom/lostpixels/fieldservice/internal/ministry/Visit;

    invoke-virtual {p3}, Lcom/lostpixels/fieldservice/internal/ministry/Visit;->getHouseHolder()J

    move-result-wide p3

    invoke-virtual {p1, p2, p3, p4}, Lcom/lostpixels/fieldservice/internal/ministry/MinistryManager;->addReturnVisit(Lio/realm/Realm;J)V

    .line 1236
    iget-object p1, p0, Lcom/lostpixels/fieldservice/activities/territory/TerritoryList$9;->this$0:Lcom/lostpixels/fieldservice/activities/territory/TerritoryList;

    invoke-static {p1}, Lcom/lostpixels/fieldservice/activities/territory/TerritoryList;->-$$Nest$fgetmListFragment(Lcom/lostpixels/fieldservice/activities/territory/TerritoryList;)Lcom/lostpixels/fieldservice/activities/territory/TerritoryListFragment;

    move-result-object p1

    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    invoke-virtual {p1, p5}, Lcom/lostpixels/fieldservice/activities/territory/TerritoryListFragment;->update(Z)V

    .line 1238
    :try_start_2
    iget-object p1, p0, Lcom/lostpixels/fieldservice/activities/territory/TerritoryList$9;->val$alertDialog:Landroidx/appcompat/app/AlertDialog;

    invoke-virtual {p1}, Landroidx/appcompat/app/AppCompatDialog;->dismiss()V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_2

    goto/16 :goto_5

    :catch_2
    nop

    goto/16 :goto_5

    .line 1117
    :cond_22
    iget-object p2, p0, Lcom/lostpixels/fieldservice/activities/territory/TerritoryList$9;->val$visit:Lcom/lostpixels/fieldservice/internal/ministry/Visit;

    invoke-virtual {p2, v0}, Lcom/lostpixels/fieldservice/internal/ministry/Visit;->setType(I)V

    .line 1118
    iget-boolean p2, p0, Lcom/lostpixels/fieldservice/activities/territory/TerritoryList$9;->val$bShowCommentDialg:Z

    if-eqz p2, :cond_23

    .line 1119
    iget-object p2, p0, Lcom/lostpixels/fieldservice/activities/territory/TerritoryList$9;->this$0:Lcom/lostpixels/fieldservice/activities/territory/TerritoryList;

    iget-object p3, p0, Lcom/lostpixels/fieldservice/activities/territory/TerritoryList$9;->val$visit:Lcom/lostpixels/fieldservice/internal/ministry/Visit;

    iget-object p4, p0, Lcom/lostpixels/fieldservice/activities/territory/TerritoryList$9;->val$menuItems:[Ljava/lang/String;

    aget-object p4, p4, v1

    invoke-static {p2, p3, p4, p1}, Lcom/lostpixels/fieldservice/activities/territory/TerritoryList;->-$$Nest$maddComment(Lcom/lostpixels/fieldservice/activities/territory/TerritoryList;Lcom/lostpixels/fieldservice/internal/ministry/Visit;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_4

    .line 1121
    :cond_23
    iget-object p1, p0, Lcom/lostpixels/fieldservice/activities/territory/TerritoryList$9;->this$0:Lcom/lostpixels/fieldservice/activities/territory/TerritoryList;

    iget-object p2, p0, Lcom/lostpixels/fieldservice/activities/territory/TerritoryList$9;->val$visit:Lcom/lostpixels/fieldservice/internal/ministry/Visit;

    iget-object p3, p0, Lcom/lostpixels/fieldservice/activities/territory/TerritoryList$9;->val$menuItems:[Ljava/lang/String;

    aget-object p3, p3, v1

    invoke-static {p1, p2, p3, p5, p5}, Lcom/lostpixels/fieldservice/activities/territory/TerritoryList;->-$$Nest$mshowUndo(Lcom/lostpixels/fieldservice/activities/territory/TerritoryList;Lcom/lostpixels/fieldservice/internal/ministry/Visit;Ljava/lang/String;ZZ)V

    goto :goto_4

    .line 1103
    :cond_24
    iget-object p2, p0, Lcom/lostpixels/fieldservice/activities/territory/TerritoryList$9;->val$visit:Lcom/lostpixels/fieldservice/internal/ministry/Visit;

    invoke-virtual {p2, p5}, Lcom/lostpixels/fieldservice/internal/ministry/Visit;->setVisitInterested(Z)V

    .line 1104
    iget-object p2, p0, Lcom/lostpixels/fieldservice/activities/territory/TerritoryList$9;->val$visit:Lcom/lostpixels/fieldservice/internal/ministry/Visit;

    invoke-virtual {p2}, Lcom/lostpixels/fieldservice/internal/ministry/Visit;->getHouseHolder()J

    move-result-wide v0

    cmp-long p2, v0, p3

    if-eqz p2, :cond_25

    .line 1105
    iget-object p1, p0, Lcom/lostpixels/fieldservice/activities/territory/TerritoryList$9;->this$0:Lcom/lostpixels/fieldservice/activities/territory/TerritoryList;

    invoke-static {p1}, Lcom/lostpixels/fieldservice/activities/territory/TerritoryList;->access$300(Lcom/lostpixels/fieldservice/activities/territory/TerritoryList;)Lio/realm/Realm;

    move-result-object p1

    invoke-static {p1}, Lcom/lostpixels/fieldservice/internal/ministry/MinistryManager;->getInstance(Lio/realm/Realm;)Lcom/lostpixels/fieldservice/internal/ministry/MinistryManager;

    move-result-object p1

    iget-object p2, p0, Lcom/lostpixels/fieldservice/activities/territory/TerritoryList$9;->this$0:Lcom/lostpixels/fieldservice/activities/territory/TerritoryList;

    invoke-static {p2}, Lcom/lostpixels/fieldservice/activities/territory/TerritoryList;->access$200(Lcom/lostpixels/fieldservice/activities/territory/TerritoryList;)Lio/realm/Realm;

    move-result-object p2

    iget-object p3, p0, Lcom/lostpixels/fieldservice/activities/territory/TerritoryList$9;->val$visit:Lcom/lostpixels/fieldservice/internal/ministry/Visit;

    invoke-virtual {p3}, Lcom/lostpixels/fieldservice/internal/ministry/Visit;->getHouseHolder()J

    move-result-wide p3

    invoke-virtual {p1, p2, p3, p4}, Lcom/lostpixels/fieldservice/internal/ministry/MinistryManager;->getPerson(Lio/realm/Realm;J)Lcom/lostpixels/fieldservice/internal/ministry/Person;

    move-result-object p1

    .line 1106
    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    invoke-virtual {p1, p5}, Lcom/lostpixels/fieldservice/internal/ministry/Person;->setReturnVisit(Z)V

    .line 1107
    invoke-virtual {p1, p5}, Lcom/lostpixels/fieldservice/internal/ministry/Person;->setInterested(Z)V

    goto :goto_4

    .line 1110
    :cond_25
    iget-boolean p2, p0, Lcom/lostpixels/fieldservice/activities/territory/TerritoryList$9;->val$bShowCommentDialg:Z

    if-eqz p2, :cond_26

    .line 1111
    iget-object p2, p0, Lcom/lostpixels/fieldservice/activities/territory/TerritoryList$9;->this$0:Lcom/lostpixels/fieldservice/activities/territory/TerritoryList;

    iget-object p3, p0, Lcom/lostpixels/fieldservice/activities/territory/TerritoryList$9;->val$visit:Lcom/lostpixels/fieldservice/internal/ministry/Visit;

    iget-object p4, p0, Lcom/lostpixels/fieldservice/activities/territory/TerritoryList$9;->val$menuItems:[Ljava/lang/String;

    aget-object p4, p4, p5

    invoke-static {p2, p3, p4, p1}, Lcom/lostpixels/fieldservice/activities/territory/TerritoryList;->-$$Nest$maddComment(Lcom/lostpixels/fieldservice/activities/territory/TerritoryList;Lcom/lostpixels/fieldservice/internal/ministry/Visit;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_4

    .line 1113
    :cond_26
    iget-object p1, p0, Lcom/lostpixels/fieldservice/activities/territory/TerritoryList$9;->this$0:Lcom/lostpixels/fieldservice/activities/territory/TerritoryList;

    iget-object p2, p0, Lcom/lostpixels/fieldservice/activities/territory/TerritoryList$9;->val$visit:Lcom/lostpixels/fieldservice/internal/ministry/Visit;

    iget-object p3, p0, Lcom/lostpixels/fieldservice/activities/territory/TerritoryList$9;->val$menuItems:[Ljava/lang/String;

    aget-object p3, p3, p5

    invoke-static {p1, p2, p3, p5, p5}, Lcom/lostpixels/fieldservice/activities/territory/TerritoryList;->-$$Nest$mshowUndo(Lcom/lostpixels/fieldservice/activities/territory/TerritoryList;Lcom/lostpixels/fieldservice/internal/ministry/Visit;Ljava/lang/String;ZZ)V

    .line 1321
    :goto_4
    iget-object p1, p0, Lcom/lostpixels/fieldservice/activities/territory/TerritoryList$9;->this$0:Lcom/lostpixels/fieldservice/activities/territory/TerritoryList;

    invoke-static {p1}, Lcom/lostpixels/fieldservice/activities/territory/TerritoryList;->-$$Nest$fgetmTerritory(Lcom/lostpixels/fieldservice/activities/territory/TerritoryList;)Lcom/lostpixels/fieldservice/internal/ministry/Territory;

    move-result-object p1

    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    invoke-virtual {p1}, Lcom/lostpixels/fieldservice/internal/ministry/Territory;->setLastUpdated()V

    .line 1322
    iget-object p1, p0, Lcom/lostpixels/fieldservice/activities/territory/TerritoryList$9;->this$0:Lcom/lostpixels/fieldservice/activities/territory/TerritoryList;

    invoke-static {p1}, Lcom/lostpixels/fieldservice/activities/territory/TerritoryList;->-$$Nest$mupdateStatistics(Lcom/lostpixels/fieldservice/activities/territory/TerritoryList;)V

    .line 1323
    iget-object p1, p0, Lcom/lostpixels/fieldservice/activities/territory/TerritoryList$9;->this$0:Lcom/lostpixels/fieldservice/activities/territory/TerritoryList;

    invoke-static {p1}, Lcom/lostpixels/fieldservice/activities/territory/TerritoryList;->-$$Nest$fgetmListFragment(Lcom/lostpixels/fieldservice/activities/territory/TerritoryList;)Lcom/lostpixels/fieldservice/activities/territory/TerritoryListFragment;

    move-result-object p1

    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    invoke-virtual {p1, p5}, Lcom/lostpixels/fieldservice/activities/territory/TerritoryListFragment;->update(Z)V

    .line 1325
    :try_start_3
    iget-object p1, p0, Lcom/lostpixels/fieldservice/activities/territory/TerritoryList$9;->val$alertDialog:Landroidx/appcompat/app/AlertDialog;

    invoke-virtual {p1}, Landroidx/appcompat/app/AppCompatDialog;->dismiss()V
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_2

    .line 1331
    :goto_5
    iget-object p1, p0, Lcom/lostpixels/fieldservice/activities/territory/TerritoryList$9;->this$0:Lcom/lostpixels/fieldservice/activities/territory/TerritoryList;

    invoke-virtual {p1}, Lcom/lostpixels/fieldservice/activities/territory/TerritoryList;->isMapView()Z

    move-result p1

    if-eqz p1, :cond_27

    iget-object p1, p0, Lcom/lostpixels/fieldservice/activities/territory/TerritoryList$9;->this$0:Lcom/lostpixels/fieldservice/activities/territory/TerritoryList;

    invoke-static {p1}, Lcom/lostpixels/fieldservice/activities/territory/TerritoryList;->-$$Nest$fgetmMapFragment(Lcom/lostpixels/fieldservice/activities/territory/TerritoryList;)Lcom/lostpixels/fieldservice/activities/territory/TerritoryListMapFragment;

    move-result-object p1

    if-eqz p1, :cond_27

    .line 1332
    iget-object p1, p0, Lcom/lostpixels/fieldservice/activities/territory/TerritoryList$9;->this$0:Lcom/lostpixels/fieldservice/activities/territory/TerritoryList;

    invoke-static {p1}, Lcom/lostpixels/fieldservice/activities/territory/TerritoryList;->-$$Nest$fgetmMapFragment(Lcom/lostpixels/fieldservice/activities/territory/TerritoryList;)Lcom/lostpixels/fieldservice/activities/territory/TerritoryListMapFragment;

    move-result-object p1

    invoke-virtual {p1}, Lcom/lostpixels/fieldservice/activities/territory/TerritoryListMapFragment;->updateInfoWindow()V

    .line 1335
    :cond_27
    iget-object p1, p0, Lcom/lostpixels/fieldservice/activities/territory/TerritoryList$9;->this$0:Lcom/lostpixels/fieldservice/activities/territory/TerritoryList;

    invoke-virtual {p1}, Lcom/lostpixels/fieldservice/activities/territory/TerritoryList;->saveFile()V

    return-void

    :pswitch_data_0
    .packed-switch 0xc
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
