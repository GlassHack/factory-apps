.class public Lcom/google/glass/music/MediaButtonDispatcherProvider;
.super Lcom/google/glass/inject/Provider;
.source "SourceFile"


# static fields
.field private static final instance:Lcom/google/glass/music/MediaButtonDispatcherProvider;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 15
    new-instance v0, Lcom/google/glass/music/MediaButtonDispatcherProvider;

    invoke-direct {v0}, Lcom/google/glass/music/MediaButtonDispatcherProvider;-><init>()V

    sput-object v0, Lcom/google/glass/music/MediaButtonDispatcherProvider;->instance:Lcom/google/glass/music/MediaButtonDispatcherProvider;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .prologue
    .line 17
    invoke-direct {p0}, Lcom/google/glass/inject/Provider;-><init>()V

    .line 18
    return-void
.end method

.method public static getInstance()Lcom/google/glass/music/MediaButtonDispatcherProvider;
    .locals 1

    .prologue
    .line 21
    sget-object v0, Lcom/google/glass/music/MediaButtonDispatcherProvider;->instance:Lcom/google/glass/music/MediaButtonDispatcherProvider;

    return-object v0
.end method


# virtual methods
.method public get(Landroid/content/Context;)Lcom/google/glass/music/MediaButtonDispatcher;
    .locals 1

    .prologue
    .line 29
    new-instance v0, Lcom/google/glass/music/MediaButtonDispatcherProvider$1;

    invoke-direct {v0, p0, p1}, Lcom/google/glass/music/MediaButtonDispatcherProvider$1;-><init>(Lcom/google/glass/music/MediaButtonDispatcherProvider;Landroid/content/Context;)V

    invoke-virtual {p0, v0}, Lcom/google/glass/music/MediaButtonDispatcherProvider;->get(Lcom/google/common/base/aw;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/glass/music/MediaButtonDispatcher;

    return-object v0
.end method
