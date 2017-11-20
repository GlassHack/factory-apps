.class Lcom/google/android/apps/lightcycle/gallery/AccountsUtil$5$1;
.super Ljava/lang/Object;
.source "AccountsUtil.java"

# interfaces
.implements Lcom/google/android/apps/lightcycle/util/Callback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/android/apps/lightcycle/gallery/AccountsUtil$5;->onCallback(Landroid/os/Bundle;)V
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
        "Ljava/lang/String;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$1:Lcom/google/android/apps/lightcycle/gallery/AccountsUtil$5;


# direct methods
.method constructor <init>(Lcom/google/android/apps/lightcycle/gallery/AccountsUtil$5;)V
    .locals 0

    .prologue
    .line 273
    iput-object p1, p0, Lcom/google/android/apps/lightcycle/gallery/AccountsUtil$5$1;->this$1:Lcom/google/android/apps/lightcycle/gallery/AccountsUtil$5;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public bridge synthetic onCallback(Ljava/lang/Object;)V
    .locals 0
    .param p1, "x0"    # Ljava/lang/Object;

    .prologue
    .line 273
    check-cast p1, Ljava/lang/String;

    .end local p1    # "x0":Ljava/lang/Object;
    invoke-virtual {p0, p1}, Lcom/google/android/apps/lightcycle/gallery/AccountsUtil$5$1;->onCallback(Ljava/lang/String;)V

    return-void
.end method

.method public onCallback(Ljava/lang/String;)V
    .locals 3
    .param p1, "authToken"    # Ljava/lang/String;

    .prologue
    .line 276
    invoke-static {}, Lcom/google/android/apps/lightcycle/gallery/AccountsUtil;->access$300()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Received authToken: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 280
    iget-object v0, p0, Lcom/google/android/apps/lightcycle/gallery/AccountsUtil$5$1;->this$1:Lcom/google/android/apps/lightcycle/gallery/AccountsUtil$5;

    iget-boolean v0, v0, Lcom/google/android/apps/lightcycle/gallery/AccountsUtil$5;->val$invalidate:Z

    if-eqz v0, :cond_1

    .line 281
    if-eqz p1, :cond_0

    invoke-virtual {p1}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_0

    .line 282
    invoke-static {}, Lcom/google/android/apps/lightcycle/gallery/AccountsUtil;->access$300()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Invalidating authToken: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 284
    iget-object v0, p0, Lcom/google/android/apps/lightcycle/gallery/AccountsUtil$5$1;->this$1:Lcom/google/android/apps/lightcycle/gallery/AccountsUtil$5;

    iget-object v0, v0, Lcom/google/android/apps/lightcycle/gallery/AccountsUtil$5;->this$0:Lcom/google/android/apps/lightcycle/gallery/AccountsUtil;

    invoke-static {v0}, Lcom/google/android/apps/lightcycle/gallery/AccountsUtil;->access$400(Lcom/google/android/apps/lightcycle/gallery/AccountsUtil;)Landroid/accounts/AccountManager;

    move-result-object v0

    const-string v1, "com.google"

    invoke-virtual {v0, v1, p1}, Landroid/accounts/AccountManager;->invalidateAuthToken(Ljava/lang/String;Ljava/lang/String;)V

    .line 286
    iget-object v0, p0, Lcom/google/android/apps/lightcycle/gallery/AccountsUtil$5$1;->this$1:Lcom/google/android/apps/lightcycle/gallery/AccountsUtil$5;

    iget-object v0, v0, Lcom/google/android/apps/lightcycle/gallery/AccountsUtil$5;->this$0:Lcom/google/android/apps/lightcycle/gallery/AccountsUtil;

    iget-object v1, p0, Lcom/google/android/apps/lightcycle/gallery/AccountsUtil$5$1;->this$1:Lcom/google/android/apps/lightcycle/gallery/AccountsUtil$5;

    iget-object v1, v1, Lcom/google/android/apps/lightcycle/gallery/AccountsUtil$5;->val$callback:Lcom/google/android/apps/lightcycle/util/Callback;

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Lcom/google/android/apps/lightcycle/gallery/AccountsUtil;->access$100(Lcom/google/android/apps/lightcycle/gallery/AccountsUtil;Lcom/google/android/apps/lightcycle/util/Callback;Z)V

    .line 293
    :goto_0
    return-void

    .line 288
    :cond_0
    iget-object v0, p0, Lcom/google/android/apps/lightcycle/gallery/AccountsUtil$5$1;->this$1:Lcom/google/android/apps/lightcycle/gallery/AccountsUtil$5;

    iget-object v0, v0, Lcom/google/android/apps/lightcycle/gallery/AccountsUtil$5;->val$callback:Lcom/google/android/apps/lightcycle/util/Callback;

    const-string v1, ""

    invoke-interface {v0, v1}, Lcom/google/android/apps/lightcycle/util/Callback;->onCallback(Ljava/lang/Object;)V

    goto :goto_0

    .line 291
    :cond_1
    iget-object v0, p0, Lcom/google/android/apps/lightcycle/gallery/AccountsUtil$5$1;->this$1:Lcom/google/android/apps/lightcycle/gallery/AccountsUtil$5;

    iget-object v0, v0, Lcom/google/android/apps/lightcycle/gallery/AccountsUtil$5;->val$callback:Lcom/google/android/apps/lightcycle/util/Callback;

    invoke-interface {v0, p1}, Lcom/google/android/apps/lightcycle/util/Callback;->onCallback(Ljava/lang/Object;)V

    goto :goto_0
.end method
