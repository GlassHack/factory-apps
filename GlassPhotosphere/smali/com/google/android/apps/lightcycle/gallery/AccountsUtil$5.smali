.class Lcom/google/android/apps/lightcycle/gallery/AccountsUtil$5;
.super Ljava/lang/Object;
.source "AccountsUtil.java"

# interfaces
.implements Lcom/google/android/apps/lightcycle/util/Callback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/android/apps/lightcycle/gallery/AccountsUtil;->getAuthTokenForActiveAccount(Lcom/google/android/apps/lightcycle/util/Callback;Z)V
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
        "Landroid/os/Bundle;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/google/android/apps/lightcycle/gallery/AccountsUtil;

.field final synthetic val$callback:Lcom/google/android/apps/lightcycle/util/Callback;

.field final synthetic val$invalidate:Z


# direct methods
.method constructor <init>(Lcom/google/android/apps/lightcycle/gallery/AccountsUtil;ZLcom/google/android/apps/lightcycle/util/Callback;)V
    .locals 0

    .prologue
    .line 269
    iput-object p1, p0, Lcom/google/android/apps/lightcycle/gallery/AccountsUtil$5;->this$0:Lcom/google/android/apps/lightcycle/gallery/AccountsUtil;

    iput-boolean p2, p0, Lcom/google/android/apps/lightcycle/gallery/AccountsUtil$5;->val$invalidate:Z

    iput-object p3, p0, Lcom/google/android/apps/lightcycle/gallery/AccountsUtil$5;->val$callback:Lcom/google/android/apps/lightcycle/util/Callback;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onCallback(Landroid/os/Bundle;)V
    .locals 2
    .param p1, "bundle"    # Landroid/os/Bundle;

    .prologue
    .line 272
    if-eqz p1, :cond_0

    .line 273
    iget-object v0, p0, Lcom/google/android/apps/lightcycle/gallery/AccountsUtil$5;->this$0:Lcom/google/android/apps/lightcycle/gallery/AccountsUtil;

    new-instance v1, Lcom/google/android/apps/lightcycle/gallery/AccountsUtil$5$1;

    invoke-direct {v1, p0}, Lcom/google/android/apps/lightcycle/gallery/AccountsUtil$5$1;-><init>(Lcom/google/android/apps/lightcycle/gallery/AccountsUtil$5;)V

    invoke-static {v0, p1, v1}, Lcom/google/android/apps/lightcycle/gallery/AccountsUtil;->access$500(Lcom/google/android/apps/lightcycle/gallery/AccountsUtil;Landroid/os/Bundle;Lcom/google/android/apps/lightcycle/util/Callback;)V

    .line 298
    :goto_0
    return-void

    .line 296
    :cond_0
    iget-object v0, p0, Lcom/google/android/apps/lightcycle/gallery/AccountsUtil$5;->val$callback:Lcom/google/android/apps/lightcycle/util/Callback;

    const-string v1, ""

    invoke-interface {v0, v1}, Lcom/google/android/apps/lightcycle/util/Callback;->onCallback(Ljava/lang/Object;)V

    goto :goto_0
.end method

.method public bridge synthetic onCallback(Ljava/lang/Object;)V
    .locals 0
    .param p1, "x0"    # Ljava/lang/Object;

    .prologue
    .line 269
    check-cast p1, Landroid/os/Bundle;

    .end local p1    # "x0":Ljava/lang/Object;
    invoke-virtual {p0, p1}, Lcom/google/android/apps/lightcycle/gallery/AccountsUtil$5;->onCallback(Landroid/os/Bundle;)V

    return-void
.end method
