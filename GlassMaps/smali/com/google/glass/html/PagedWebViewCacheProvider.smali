.class public Lcom/google/glass/html/PagedWebViewCacheProvider;
.super Lcom/google/glass/inject/Provider;
.source "SourceFile"


# static fields
.field private static final CACHE_INSTANCE:Lcom/google/glass/html/PagedWebViewCache;

.field private static final PROVIDER_INSTANCE:Lcom/google/glass/html/PagedWebViewCacheProvider;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 10
    new-instance v0, Lcom/google/glass/html/PagedWebViewCacheProvider;

    invoke-direct {v0}, Lcom/google/glass/html/PagedWebViewCacheProvider;-><init>()V

    sput-object v0, Lcom/google/glass/html/PagedWebViewCacheProvider;->PROVIDER_INSTANCE:Lcom/google/glass/html/PagedWebViewCacheProvider;

    .line 14
    new-instance v0, Lcom/google/glass/html/PagedWebViewCache;

    invoke-direct {v0}, Lcom/google/glass/html/PagedWebViewCache;-><init>()V

    sput-object v0, Lcom/google/glass/html/PagedWebViewCacheProvider;->CACHE_INSTANCE:Lcom/google/glass/html/PagedWebViewCache;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .prologue
    .line 16
    invoke-direct {p0}, Lcom/google/glass/inject/Provider;-><init>()V

    return-void
.end method

.method static synthetic access$000()Lcom/google/glass/html/PagedWebViewCache;
    .locals 1

    .prologue
    .line 9
    sget-object v0, Lcom/google/glass/html/PagedWebViewCacheProvider;->CACHE_INSTANCE:Lcom/google/glass/html/PagedWebViewCache;

    return-object v0
.end method

.method public static getInstance()Lcom/google/glass/html/PagedWebViewCacheProvider;
    .locals 1

    .prologue
    .line 19
    sget-object v0, Lcom/google/glass/html/PagedWebViewCacheProvider;->PROVIDER_INSTANCE:Lcom/google/glass/html/PagedWebViewCacheProvider;

    return-object v0
.end method


# virtual methods
.method public get()Lcom/google/glass/html/PagedWebViewCache;
    .locals 1

    .prologue
    .line 26
    new-instance v0, Lcom/google/glass/html/PagedWebViewCacheProvider$1;

    invoke-direct {v0, p0}, Lcom/google/glass/html/PagedWebViewCacheProvider$1;-><init>(Lcom/google/glass/html/PagedWebViewCacheProvider;)V

    invoke-virtual {p0, v0}, Lcom/google/glass/html/PagedWebViewCacheProvider;->get(Lcom/google/common/base/aw;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/glass/html/PagedWebViewCache;

    return-object v0
.end method
