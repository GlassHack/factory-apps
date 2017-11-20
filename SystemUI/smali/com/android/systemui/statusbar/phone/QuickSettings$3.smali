.class Lcom/android/systemui/statusbar/phone/QuickSettings$3;
.super Ljava/lang/Object;
.source "QuickSettings.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/systemui/statusbar/phone/QuickSettings;->addUserTiles(Landroid/view/ViewGroup;Landroid/view/LayoutInflater;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/systemui/statusbar/phone/QuickSettings;


# direct methods
.method constructor <init>(Lcom/android/systemui/statusbar/phone/QuickSettings;)V
    .locals 0

    .prologue
    .line 306
    iput-object p1, p0, Lcom/android/systemui/statusbar/phone/QuickSettings$3;->this$0:Lcom/android/systemui/statusbar/phone/QuickSettings;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 6
    .param p1, "v"    # Landroid/view/View;

    .prologue
    const/4 v3, 0x1

    .line 309
    iget-object v2, p0, Lcom/android/systemui/statusbar/phone/QuickSettings$3;->this$0:Lcom/android/systemui/statusbar/phone/QuickSettings;

    invoke-static {v2}, Lcom/android/systemui/statusbar/phone/QuickSettings;->access$400(Lcom/android/systemui/statusbar/phone/QuickSettings;)V

    .line 310
    iget-object v2, p0, Lcom/android/systemui/statusbar/phone/QuickSettings$3;->this$0:Lcom/android/systemui/statusbar/phone/QuickSettings;

    invoke-static {v2}, Lcom/android/systemui/statusbar/phone/QuickSettings;->access$200(Lcom/android/systemui/statusbar/phone/QuickSettings;)Landroid/content/Context;

    move-result-object v2

    invoke-static {v2}, Landroid/os/UserManager;->get(Landroid/content/Context;)Landroid/os/UserManager;

    move-result-object v1

    .line 311
    .local v1, "um":Landroid/os/UserManager;
    invoke-virtual {v1, v3}, Landroid/os/UserManager;->getUsers(Z)Ljava/util/List;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    if-le v2, v3, :cond_0

    .line 316
    iget-object v2, p0, Lcom/android/systemui/statusbar/phone/QuickSettings$3;->this$0:Lcom/android/systemui/statusbar/phone/QuickSettings;

    invoke-static {v2}, Lcom/android/systemui/statusbar/phone/QuickSettings;->access$500(Lcom/android/systemui/statusbar/phone/QuickSettings;)Landroid/os/Handler;

    move-result-object v2

    new-instance v3, Lcom/android/systemui/statusbar/phone/QuickSettings$3$1;

    invoke-direct {v3, p0}, Lcom/android/systemui/statusbar/phone/QuickSettings$3$1;-><init>(Lcom/android/systemui/statusbar/phone/QuickSettings$3;)V

    const-wide/16 v4, 0x190

    invoke-virtual {v2, v3, v4, v5}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 331
    :goto_0
    return-void

    .line 326
    :cond_0
    iget-object v2, p0, Lcom/android/systemui/statusbar/phone/QuickSettings$3;->this$0:Lcom/android/systemui/statusbar/phone/QuickSettings;

    invoke-static {v2}, Lcom/android/systemui/statusbar/phone/QuickSettings;->access$200(Lcom/android/systemui/statusbar/phone/QuickSettings;)Landroid/content/Context;

    move-result-object v2

    sget-object v3, Landroid/provider/ContactsContract$Profile;->CONTENT_URI:Landroid/net/Uri;

    const/4 v4, 0x3

    const/4 v5, 0x0

    invoke-static {v2, p1, v3, v4, v5}, Landroid/provider/ContactsContract$QuickContact;->composeQuickContactsIntent(Landroid/content/Context;Landroid/view/View;Landroid/net/Uri;I[Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v0

    .line 329
    .local v0, "intent":Landroid/content/Intent;
    iget-object v2, p0, Lcom/android/systemui/statusbar/phone/QuickSettings$3;->this$0:Lcom/android/systemui/statusbar/phone/QuickSettings;

    invoke-static {v2}, Lcom/android/systemui/statusbar/phone/QuickSettings;->access$200(Lcom/android/systemui/statusbar/phone/QuickSettings;)Landroid/content/Context;

    move-result-object v2

    new-instance v3, Landroid/os/UserHandle;

    const/4 v4, -0x2

    invoke-direct {v3, v4}, Landroid/os/UserHandle;-><init>(I)V

    invoke-virtual {v2, v0, v3}, Landroid/content/Context;->startActivityAsUser(Landroid/content/Intent;Landroid/os/UserHandle;)V

    goto :goto_0
.end method
