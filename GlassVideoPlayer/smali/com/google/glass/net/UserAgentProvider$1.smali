.class Lcom/google/glass/net/UserAgentProvider$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/google/common/base/av;


# instance fields
.field final synthetic this$0:Lcom/google/glass/net/UserAgentProvider;


# direct methods
.method constructor <init>(Lcom/google/glass/net/UserAgentProvider;)V
    .locals 0

    .prologue
    .line 20
    iput-object p1, p0, Lcom/google/glass/net/UserAgentProvider$1;->this$0:Lcom/google/glass/net/UserAgentProvider;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public get()Lcom/google/glass/net/UserAgent;
    .locals 1

    .prologue
    .line 23
    new-instance v0, Lcom/google/glass/net/UserAgent;

    invoke-direct {v0}, Lcom/google/glass/net/UserAgent;-><init>()V

    return-object v0
.end method

.method public bridge synthetic get()Ljava/lang/Object;
    .locals 1

    .prologue
    .line 20
    invoke-virtual {p0}, Lcom/google/glass/net/UserAgentProvider$1;->get()Lcom/google/glass/net/UserAgent;

    move-result-object v0

    return-object v0
.end method
