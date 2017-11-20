.class public Lcom/google/glass/async/HandlerProvider;
.super Lcom/google/glass/inject/Provider;
.source "HandlerProvider.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/glass/inject/Provider",
        "<",
        "Landroid/os/Handler;",
        ">;"
    }
.end annotation


# static fields
.field private static final instance:Lcom/google/glass/async/HandlerProvider;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 12
    new-instance v0, Lcom/google/glass/async/HandlerProvider;

    invoke-direct {v0}, Lcom/google/glass/async/HandlerProvider;-><init>()V

    sput-object v0, Lcom/google/glass/async/HandlerProvider;->instance:Lcom/google/glass/async/HandlerProvider;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .prologue
    .line 14
    invoke-direct {p0}, Lcom/google/glass/inject/Provider;-><init>()V

    return-void
.end method

.method public static getInstance()Lcom/google/glass/async/HandlerProvider;
    .locals 1

    .prologue
    .line 17
    sget-object v0, Lcom/google/glass/async/HandlerProvider;->instance:Lcom/google/glass/async/HandlerProvider;

    return-object v0
.end method


# virtual methods
.method public get()Landroid/os/Handler;
    .locals 1

    .prologue
    .line 21
    new-instance v0, Lcom/google/glass/async/HandlerProvider$1;

    invoke-direct {v0, p0}, Lcom/google/glass/async/HandlerProvider$1;-><init>(Lcom/google/glass/async/HandlerProvider;)V

    invoke-virtual {p0, v0}, Lcom/google/glass/async/HandlerProvider;->get(Lcom/google/common/base/Supplier;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/Handler;

    return-object v0
.end method
