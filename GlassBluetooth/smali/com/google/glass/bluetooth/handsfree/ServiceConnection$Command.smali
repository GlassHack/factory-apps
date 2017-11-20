.class abstract Lcom/google/glass/bluetooth/handsfree/ServiceConnection$Command;
.super Ljava/lang/Object;
.source "ServiceConnection.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/glass/bluetooth/handsfree/ServiceConnection;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x402
    name = "Command"
.end annotation


# instance fields
.field private final command:Ljava/lang/String;

.field final synthetic this$0:Lcom/google/glass/bluetooth/handsfree/ServiceConnection;


# direct methods
.method public constructor <init>(Lcom/google/glass/bluetooth/handsfree/ServiceConnection;Ljava/lang/String;)V
    .locals 1
    .param p2, "cmd"    # Ljava/lang/String;

    .prologue
    .line 77
    iput-object p1, p0, Lcom/google/glass/bluetooth/handsfree/ServiceConnection$Command;->this$0:Lcom/google/glass/bluetooth/handsfree/ServiceConnection;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 78
    iput-object p2, p0, Lcom/google/glass/bluetooth/handsfree/ServiceConnection$Command;->command:Ljava/lang/String;

    .line 79
    iget-object v0, p0, Lcom/google/glass/bluetooth/handsfree/ServiceConnection$Command;->command:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    invoke-static {v0}, Lcom/google/glass/predicates/Assert;->assertTrue(Z)V

    .line 80
    return-void

    .line 79
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method


# virtual methods
.method public getCommand()Ljava/lang/String;
    .locals 1

    .prologue
    .line 83
    iget-object v0, p0, Lcom/google/glass/bluetooth/handsfree/ServiceConnection$Command;->command:Ljava/lang/String;

    return-object v0
.end method

.method public abstract onResponse(Lcom/google/glass/bluetooth/handsfree/AtResult;)V
.end method

.method public toString()Ljava/lang/String;
    .locals 3

    .prologue
    .line 90
    invoke-static {}, Lcom/google/glass/build/BuildHelper;->isUser()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/google/glass/bluetooth/handsfree/ServiceConnection$Command;->command:Ljava/lang/String;

    const-string v1, "ATD"

    invoke-virtual {v0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 91
    iget-object v0, p0, Lcom/google/glass/bluetooth/handsfree/ServiceConnection$Command;->command:Ljava/lang/String;

    const/4 v1, 0x0

    const/4 v2, 0x5

    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "..."

    invoke-virtual {v0, v1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 93
    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/google/glass/bluetooth/handsfree/ServiceConnection$Command;->command:Ljava/lang/String;

    goto :goto_0
.end method
