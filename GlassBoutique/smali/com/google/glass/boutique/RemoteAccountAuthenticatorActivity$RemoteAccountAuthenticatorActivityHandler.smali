.class Lcom/google/glass/boutique/RemoteAccountAuthenticatorActivity$RemoteAccountAuthenticatorActivityHandler;
.super Landroid/os/Handler;
.source "RemoteAccountAuthenticatorActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/glass/boutique/RemoteAccountAuthenticatorActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "RemoteAccountAuthenticatorActivityHandler"
.end annotation


# static fields
.field private static final MSG_WHAT_ACCOUNT_ADDED:I = 0x1

.field private static final MSG_WHAT_AUTH_TOKEN_FOUND:I = 0x2


# instance fields
.field private final activity:Lcom/google/glass/boutique/RemoteAccountAuthenticatorActivity;


# direct methods
.method private constructor <init>(Landroid/os/Looper;Lcom/google/glass/boutique/RemoteAccountAuthenticatorActivity;)V
    .locals 0
    .param p1, "looper"    # Landroid/os/Looper;
    .param p2, "activity"    # Lcom/google/glass/boutique/RemoteAccountAuthenticatorActivity;

    .prologue
    .line 155
    invoke-direct {p0, p1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    .line 156
    iput-object p2, p0, Lcom/google/glass/boutique/RemoteAccountAuthenticatorActivity$RemoteAccountAuthenticatorActivityHandler;->activity:Lcom/google/glass/boutique/RemoteAccountAuthenticatorActivity;

    .line 157
    return-void
.end method

.method synthetic constructor <init>(Landroid/os/Looper;Lcom/google/glass/boutique/RemoteAccountAuthenticatorActivity;Lcom/google/glass/boutique/RemoteAccountAuthenticatorActivity$1;)V
    .locals 0
    .param p1, "x0"    # Landroid/os/Looper;
    .param p2, "x1"    # Lcom/google/glass/boutique/RemoteAccountAuthenticatorActivity;
    .param p3, "x2"    # Lcom/google/glass/boutique/RemoteAccountAuthenticatorActivity$1;

    .prologue
    .line 139
    invoke-direct {p0, p1, p2}, Lcom/google/glass/boutique/RemoteAccountAuthenticatorActivity$RemoteAccountAuthenticatorActivityHandler;-><init>(Landroid/os/Looper;Lcom/google/glass/boutique/RemoteAccountAuthenticatorActivity;)V

    return-void
.end method

.method static synthetic access$100(Lcom/google/glass/boutique/RemoteAccountAuthenticatorActivity$RemoteAccountAuthenticatorActivityHandler;Landroid/os/Bundle;)V
    .locals 0
    .param p0, "x0"    # Lcom/google/glass/boutique/RemoteAccountAuthenticatorActivity$RemoteAccountAuthenticatorActivityHandler;
    .param p1, "x1"    # Landroid/os/Bundle;

    .prologue
    .line 139
    invoke-direct {p0, p1}, Lcom/google/glass/boutique/RemoteAccountAuthenticatorActivity$RemoteAccountAuthenticatorActivityHandler;->onAccountAdded(Landroid/os/Bundle;)V

    return-void
.end method

.method static synthetic access$200(Lcom/google/glass/boutique/RemoteAccountAuthenticatorActivity$RemoteAccountAuthenticatorActivityHandler;Landroid/os/Bundle;)V
    .locals 0
    .param p0, "x0"    # Lcom/google/glass/boutique/RemoteAccountAuthenticatorActivity$RemoteAccountAuthenticatorActivityHandler;
    .param p1, "x1"    # Landroid/os/Bundle;

    .prologue
    .line 139
    invoke-direct {p0, p1}, Lcom/google/glass/boutique/RemoteAccountAuthenticatorActivity$RemoteAccountAuthenticatorActivityHandler;->onAuthTokenFound(Landroid/os/Bundle;)V

    return-void
.end method

.method private onAccountAdded(Landroid/os/Bundle;)V
    .locals 1
    .param p1, "result"    # Landroid/os/Bundle;

    .prologue
    .line 195
    const/4 v0, 0x1

    invoke-virtual {p0, v0, p1}, Lcom/google/glass/boutique/RemoteAccountAuthenticatorActivity$RemoteAccountAuthenticatorActivityHandler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    .line 196
    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    .line 197
    return-void
.end method

.method private onAuthTokenFound(Landroid/os/Bundle;)V
    .locals 1
    .param p1, "result"    # Landroid/os/Bundle;

    .prologue
    .line 203
    const/4 v0, 0x2

    invoke-virtual {p0, v0, p1}, Lcom/google/glass/boutique/RemoteAccountAuthenticatorActivity$RemoteAccountAuthenticatorActivityHandler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    .line 204
    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    .line 205
    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 6
    .param p1, "msg"    # Landroid/os/Message;

    .prologue
    const/4 v2, 0x1

    const/4 v3, 0x0

    .line 161
    iget v1, p1, Landroid/os/Message;->what:I

    packed-switch v1, :pswitch_data_0

    .line 185
    invoke-super {p0, p1}, Landroid/os/Handler;->handleMessage(Landroid/os/Message;)V

    .line 189
    :cond_0
    :goto_0
    return-void

    .line 163
    :pswitch_0
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Landroid/os/Bundle;

    .line 164
    .local v0, "result":Landroid/os/Bundle;
    iget-object v1, p0, Lcom/google/glass/boutique/RemoteAccountAuthenticatorActivity$RemoteAccountAuthenticatorActivityHandler;->activity:Lcom/google/glass/boutique/RemoteAccountAuthenticatorActivity;

    invoke-static {v1}, Lcom/google/glass/boutique/RemoteAccountAuthenticatorActivity;->access$300(Lcom/google/glass/boutique/RemoteAccountAuthenticatorActivity;)Ljava/lang/Thread;

    move-result-object v1

    if-nez v1, :cond_1

    move v1, v2

    :goto_1
    const-string v4, "Returning added account information while auth token polling thread is active.  accountType: [%s]"

    new-array v2, v2, [Ljava/lang/Object;

    iget-object v5, p0, Lcom/google/glass/boutique/RemoteAccountAuthenticatorActivity$RemoteAccountAuthenticatorActivityHandler;->activity:Lcom/google/glass/boutique/RemoteAccountAuthenticatorActivity;

    .line 166
    invoke-static {v5}, Lcom/google/glass/boutique/RemoteAccountAuthenticatorActivity;->access$400(Lcom/google/glass/boutique/RemoteAccountAuthenticatorActivity;)Ljava/lang/String;

    move-result-object v5

    aput-object v5, v2, v3

    .line 164
    invoke-static {v1, v4, v2}, Lcom/google/common/base/Preconditions;->checkState(ZLjava/lang/String;[Ljava/lang/Object;)V

    .line 168
    iget-object v1, p0, Lcom/google/glass/boutique/RemoteAccountAuthenticatorActivity$RemoteAccountAuthenticatorActivityHandler;->activity:Lcom/google/glass/boutique/RemoteAccountAuthenticatorActivity;

    invoke-virtual {v1, v0}, Lcom/google/glass/boutique/RemoteAccountAuthenticatorActivity;->setAccountAuthenticatorResult(Landroid/os/Bundle;)V

    .line 169
    iget-object v1, p0, Lcom/google/glass/boutique/RemoteAccountAuthenticatorActivity$RemoteAccountAuthenticatorActivityHandler;->activity:Lcom/google/glass/boutique/RemoteAccountAuthenticatorActivity;

    invoke-virtual {v1}, Lcom/google/glass/boutique/RemoteAccountAuthenticatorActivity;->finish()V

    goto :goto_0

    :cond_1
    move v1, v3

    .line 164
    goto :goto_1

    .line 173
    .end local v0    # "result":Landroid/os/Bundle;
    :pswitch_1
    iget-object v1, p0, Lcom/google/glass/boutique/RemoteAccountAuthenticatorActivity$RemoteAccountAuthenticatorActivityHandler;->activity:Lcom/google/glass/boutique/RemoteAccountAuthenticatorActivity;

    invoke-static {v1}, Lcom/google/glass/boutique/RemoteAccountAuthenticatorActivity;->access$300(Lcom/google/glass/boutique/RemoteAccountAuthenticatorActivity;)Ljava/lang/Thread;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 177
    iget-object v1, p0, Lcom/google/glass/boutique/RemoteAccountAuthenticatorActivity$RemoteAccountAuthenticatorActivityHandler;->activity:Lcom/google/glass/boutique/RemoteAccountAuthenticatorActivity;

    const/4 v2, 0x0

    invoke-static {v1, v2}, Lcom/google/glass/boutique/RemoteAccountAuthenticatorActivity;->access$302(Lcom/google/glass/boutique/RemoteAccountAuthenticatorActivity;Ljava/lang/Thread;)Ljava/lang/Thread;

    .line 179
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Landroid/os/Bundle;

    .line 180
    .restart local v0    # "result":Landroid/os/Bundle;
    iget-object v1, p0, Lcom/google/glass/boutique/RemoteAccountAuthenticatorActivity$RemoteAccountAuthenticatorActivityHandler;->activity:Lcom/google/glass/boutique/RemoteAccountAuthenticatorActivity;

    invoke-virtual {v1, v0}, Lcom/google/glass/boutique/RemoteAccountAuthenticatorActivity;->setAccountAuthenticatorResult(Landroid/os/Bundle;)V

    .line 181
    iget-object v1, p0, Lcom/google/glass/boutique/RemoteAccountAuthenticatorActivity$RemoteAccountAuthenticatorActivityHandler;->activity:Lcom/google/glass/boutique/RemoteAccountAuthenticatorActivity;

    invoke-virtual {v1}, Lcom/google/glass/boutique/RemoteAccountAuthenticatorActivity;->finish()V

    goto :goto_0

    .line 161
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method
