.class public final Lcom/google/glass/net/UserAgentProvider;
.super Lcom/google/glass/inject/Provider;
.source "SourceFile"


# static fields
.field private static final INSTANCE:Lcom/google/glass/net/UserAgentProvider;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 11
    new-instance v0, Lcom/google/glass/net/UserAgentProvider;

    invoke-direct {v0}, Lcom/google/glass/net/UserAgentProvider;-><init>()V

    sput-object v0, Lcom/google/glass/net/UserAgentProvider;->INSTANCE:Lcom/google/glass/net/UserAgentProvider;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .prologue
    .line 13
    invoke-direct {p0}, Lcom/google/glass/inject/Provider;-><init>()V

    return-void
.end method

.method public static getInstance()Lcom/google/glass/net/UserAgentProvider;
    .locals 1

    .prologue
    .line 16
    sget-object v0, Lcom/google/glass/net/UserAgentProvider;->INSTANCE:Lcom/google/glass/net/UserAgentProvider;

    return-object v0
.end method


# virtual methods
.method public final get()Lcom/google/glass/net/UserAgent;
    .locals 1

    .prologue
    .line 20
    new-instance v0, Lcom/google/glass/net/UserAgentProvider$1;

    invoke-direct {v0, p0}, Lcom/google/glass/net/UserAgentProvider$1;-><init>(Lcom/google/glass/net/UserAgentProvider;)V

    invoke-virtual {p0, v0}, Lcom/google/glass/net/UserAgentProvider;->get(Lcom/google/common/base/av;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/glass/net/UserAgent;

    return-object v0
.end method
