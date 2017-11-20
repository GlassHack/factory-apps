.class Lcom/google/android/apps/lightcycle/gallery/AccountsUtil$1;
.super Ljava/lang/Object;
.source "AccountsUtil.java"

# interfaces
.implements Lcom/google/android/apps/lightcycle/util/Callback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/android/apps/lightcycle/gallery/AccountsUtil;->getAuthToken(Lcom/google/android/apps/lightcycle/util/Callback;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/google/android/apps/lightcycle/util/Callback",
        "<",
        "Landroid/accounts/Account;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/google/android/apps/lightcycle/gallery/AccountsUtil;

.field final synthetic val$callback:Lcom/google/android/apps/lightcycle/util/Callback;


# direct methods
.method constructor <init>(Lcom/google/android/apps/lightcycle/gallery/AccountsUtil;Lcom/google/android/apps/lightcycle/util/Callback;)V
    .locals 0

    .prologue
    .line 113
    iput-object p1, p0, Lcom/google/android/apps/lightcycle/gallery/AccountsUtil$1;->this$0:Lcom/google/android/apps/lightcycle/gallery/AccountsUtil;

    iput-object p2, p0, Lcom/google/android/apps/lightcycle/gallery/AccountsUtil$1;->val$callback:Lcom/google/android/apps/lightcycle/util/Callback;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onCallback(Landroid/accounts/Account;)V
    .locals 3
    .param p1, "selectedAccount"    # Landroid/accounts/Account;

    .prologue
    .line 116
    iget-object v0, p0, Lcom/google/android/apps/lightcycle/gallery/AccountsUtil$1;->this$0:Lcom/google/android/apps/lightcycle/gallery/AccountsUtil;

    invoke-static {v0, p1}, Lcom/google/android/apps/lightcycle/gallery/AccountsUtil;->access$002(Lcom/google/android/apps/lightcycle/gallery/AccountsUtil;Landroid/accounts/Account;)Landroid/accounts/Account;

    .line 118
    iget-object v0, p0, Lcom/google/android/apps/lightcycle/gallery/AccountsUtil$1;->this$0:Lcom/google/android/apps/lightcycle/gallery/AccountsUtil;

    invoke-static {v0}, Lcom/google/android/apps/lightcycle/gallery/AccountsUtil;->access$000(Lcom/google/android/apps/lightcycle/gallery/AccountsUtil;)Landroid/accounts/Account;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 121
    iget-object v0, p0, Lcom/google/android/apps/lightcycle/gallery/AccountsUtil$1;->this$0:Lcom/google/android/apps/lightcycle/gallery/AccountsUtil;

    iget-object v1, p0, Lcom/google/android/apps/lightcycle/gallery/AccountsUtil$1;->val$callback:Lcom/google/android/apps/lightcycle/util/Callback;

    const/4 v2, 0x1

    invoke-static {v0, v1, v2}, Lcom/google/android/apps/lightcycle/gallery/AccountsUtil;->access$100(Lcom/google/android/apps/lightcycle/gallery/AccountsUtil;Lcom/google/android/apps/lightcycle/util/Callback;Z)V

    .line 125
    :goto_0
    return-void

    .line 123
    :cond_0
    iget-object v0, p0, Lcom/google/android/apps/lightcycle/gallery/AccountsUtil$1;->val$callback:Lcom/google/android/apps/lightcycle/util/Callback;

    const/4 v1, 0x0

    invoke-interface {v0, v1}, Lcom/google/android/apps/lightcycle/util/Callback;->onCallback(Ljava/lang/Object;)V

    goto :goto_0
.end method

.method public bridge synthetic onCallback(Ljava/lang/Object;)V
    .locals 0
    .param p1, "x0"    # Ljava/lang/Object;

    .prologue
    .line 113
    check-cast p1, Landroid/accounts/Account;

    .end local p1    # "x0":Ljava/lang/Object;
    invoke-virtual {p0, p1}, Lcom/google/android/apps/lightcycle/gallery/AccountsUtil$1;->onCallback(Landroid/accounts/Account;)V

    return-void
.end method
