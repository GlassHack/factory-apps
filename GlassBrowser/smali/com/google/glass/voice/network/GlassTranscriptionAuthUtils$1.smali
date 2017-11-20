.class Lcom/google/glass/voice/network/GlassTranscriptionAuthUtils$1;
.super Ljava/lang/Object;
.source "GlassTranscriptionAuthUtils.java"

# interfaces
.implements Ljava/util/concurrent/Callable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/glass/voice/network/GlassTranscriptionAuthUtils;->getTokenWithTimeout(JLjava/lang/String;)Ljava/lang/String;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/util/concurrent/Callable",
        "<",
        "Ljava/lang/String;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/google/glass/voice/network/GlassTranscriptionAuthUtils;

.field final synthetic val$timeoutMs:J

.field final synthetic val$tokenType:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/google/glass/voice/network/GlassTranscriptionAuthUtils;JLjava/lang/String;)V
    .locals 0
    .param p1, "this$0"    # Lcom/google/glass/voice/network/GlassTranscriptionAuthUtils;

    .prologue
    .line 76
    iput-object p1, p0, Lcom/google/glass/voice/network/GlassTranscriptionAuthUtils$1;->this$0:Lcom/google/glass/voice/network/GlassTranscriptionAuthUtils;

    iput-wide p2, p0, Lcom/google/glass/voice/network/GlassTranscriptionAuthUtils$1;->val$timeoutMs:J

    iput-object p4, p0, Lcom/google/glass/voice/network/GlassTranscriptionAuthUtils$1;->val$tokenType:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public bridge synthetic call()Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    .line 76
    invoke-virtual {p0}, Lcom/google/glass/voice/network/GlassTranscriptionAuthUtils$1;->call()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public call()Ljava/lang/String;
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    const/4 v5, 0x0

    .line 79
    invoke-static {}, Lcom/google/glass/voice/network/GlassTranscriptionAuthUtils;->access$000()Lcom/google/glass/logging/FormattingLogger;

    move-result-object v0

    const-string v1, "getTokenWithTimeout inner [timeoutMs=%s, tokenType=%s]"

    const/4 v2, 0x2

    new-array v2, v2, [Ljava/lang/Object;

    iget-wide v3, p0, Lcom/google/glass/voice/network/GlassTranscriptionAuthUtils$1;->val$timeoutMs:J

    invoke-static {v3, v4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    aput-object v3, v2, v5

    const/4 v3, 0x1

    iget-object v4, p0, Lcom/google/glass/voice/network/GlassTranscriptionAuthUtils$1;->val$tokenType:Ljava/lang/String;

    aput-object v4, v2, v3

    invoke-interface {v0, v1, v2}, Lcom/google/glass/logging/FormattingLogger;->v(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 80
    iget-object v0, p0, Lcom/google/glass/voice/network/GlassTranscriptionAuthUtils$1;->this$0:Lcom/google/glass/voice/network/GlassTranscriptionAuthUtils;

    invoke-static {v0}, Lcom/google/glass/voice/network/GlassTranscriptionAuthUtils;->access$100(Lcom/google/glass/voice/network/GlassTranscriptionAuthUtils;)Lcom/google/glass/auth/AuthUtils;

    move-result-object v0

    iget-object v1, p0, Lcom/google/glass/voice/network/GlassTranscriptionAuthUtils$1;->val$tokenType:Ljava/lang/String;

    invoke-interface {v0, v1, v5}, Lcom/google/glass/auth/AuthUtils;->getAuthToken(Ljava/lang/String;Z)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
