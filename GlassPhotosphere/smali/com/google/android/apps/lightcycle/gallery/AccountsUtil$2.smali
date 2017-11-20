.class Lcom/google/android/apps/lightcycle/gallery/AccountsUtil$2;
.super Ljava/lang/Object;
.source "AccountsUtil.java"

# interfaces
.implements Lcom/google/android/apps/lightcycle/util/Callback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/android/apps/lightcycle/gallery/AccountsUtil;->onAuthenticationActivityResult(Z)V
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
.field final synthetic this$0:Lcom/google/android/apps/lightcycle/gallery/AccountsUtil;


# direct methods
.method constructor <init>(Lcom/google/android/apps/lightcycle/gallery/AccountsUtil;)V
    .locals 0

    .prologue
    .line 169
    iput-object p1, p0, Lcom/google/android/apps/lightcycle/gallery/AccountsUtil$2;->this$0:Lcom/google/android/apps/lightcycle/gallery/AccountsUtil;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public bridge synthetic onCallback(Ljava/lang/Object;)V
    .locals 0
    .param p1, "x0"    # Ljava/lang/Object;

    .prologue
    .line 169
    check-cast p1, Ljava/lang/String;

    .end local p1    # "x0":Ljava/lang/Object;
    invoke-virtual {p0, p1}, Lcom/google/android/apps/lightcycle/gallery/AccountsUtil$2;->onCallback(Ljava/lang/String;)V

    return-void
.end method

.method public onCallback(Ljava/lang/String;)V
    .locals 3
    .param p1, "authToken"    # Ljava/lang/String;

    .prologue
    .line 172
    iget-object v0, p0, Lcom/google/android/apps/lightcycle/gallery/AccountsUtil$2;->this$0:Lcom/google/android/apps/lightcycle/gallery/AccountsUtil;

    invoke-static {v0}, Lcom/google/android/apps/lightcycle/gallery/AccountsUtil;->access$200(Lcom/google/android/apps/lightcycle/gallery/AccountsUtil;)Ljava/util/List;

    move-result-object v1

    monitor-enter v1

    .line 173
    :goto_0
    :try_start_0
    iget-object v0, p0, Lcom/google/android/apps/lightcycle/gallery/AccountsUtil$2;->this$0:Lcom/google/android/apps/lightcycle/gallery/AccountsUtil;

    invoke-static {v0}, Lcom/google/android/apps/lightcycle/gallery/AccountsUtil;->access$200(Lcom/google/android/apps/lightcycle/gallery/AccountsUtil;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-lez v0, :cond_0

    .line 174
    iget-object v0, p0, Lcom/google/android/apps/lightcycle/gallery/AccountsUtil$2;->this$0:Lcom/google/android/apps/lightcycle/gallery/AccountsUtil;

    invoke-static {v0}, Lcom/google/android/apps/lightcycle/gallery/AccountsUtil;->access$200(Lcom/google/android/apps/lightcycle/gallery/AccountsUtil;)Ljava/util/List;

    move-result-object v0

    const/4 v2, 0x0

    invoke-interface {v0, v2}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/apps/lightcycle/util/Callback;

    invoke-interface {v0, p1}, Lcom/google/android/apps/lightcycle/util/Callback;->onCallback(Ljava/lang/Object;)V

    goto :goto_0

    .line 176
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0

    :cond_0
    :try_start_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 177
    return-void
.end method
