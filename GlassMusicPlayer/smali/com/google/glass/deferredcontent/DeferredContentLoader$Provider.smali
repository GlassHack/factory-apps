.class public final Lcom/google/glass/deferredcontent/DeferredContentLoader$Provider;
.super Lcom/google/glass/inject/LazySingletonProvider;
.source "SourceFile"


# static fields
.field private static final INSTANCE:Lcom/google/glass/deferredcontent/DeferredContentLoader$Provider;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 30
    new-instance v0, Lcom/google/glass/deferredcontent/DeferredContentLoader$Provider;

    invoke-direct {v0}, Lcom/google/glass/deferredcontent/DeferredContentLoader$Provider;-><init>()V

    sput-object v0, Lcom/google/glass/deferredcontent/DeferredContentLoader$Provider;->INSTANCE:Lcom/google/glass/deferredcontent/DeferredContentLoader$Provider;

    return-void
.end method

.method private constructor <init>()V
    .locals 1

    .prologue
    .line 32
    invoke-direct {p0}, Lcom/google/glass/inject/LazySingletonProvider;-><init>()V

    .line 33
    new-instance v0, Lcom/google/glass/deferredcontent/DeferredContentLoader$Provider$1;

    invoke-direct {v0, p0}, Lcom/google/glass/deferredcontent/DeferredContentLoader$Provider$1;-><init>(Lcom/google/glass/deferredcontent/DeferredContentLoader$Provider;)V

    invoke-virtual {p0, v0}, Lcom/google/glass/deferredcontent/DeferredContentLoader$Provider;->init(Lcom/google/common/base/aw;)V

    .line 39
    return-void
.end method

.method public static getInstance()Lcom/google/glass/deferredcontent/DeferredContentLoader$Provider;
    .locals 1

    .prologue
    .line 42
    sget-object v0, Lcom/google/glass/deferredcontent/DeferredContentLoader$Provider;->INSTANCE:Lcom/google/glass/deferredcontent/DeferredContentLoader$Provider;

    return-object v0
.end method
