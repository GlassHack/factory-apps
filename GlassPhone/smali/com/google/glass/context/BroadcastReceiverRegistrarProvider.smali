.class public final Lcom/google/glass/context/BroadcastReceiverRegistrarProvider;
.super Lcom/google/glass/inject/Provider;
.source "BroadcastReceiverRegistrarProvider.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/glass/inject/Provider",
        "<",
        "Lcom/google/glass/context/BroadcastReceiverRegistrar;",
        ">;"
    }
.end annotation


# static fields
.field private static final instance:Lcom/google/glass/context/BroadcastReceiverRegistrarProvider;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 12
    new-instance v0, Lcom/google/glass/context/BroadcastReceiverRegistrarProvider;

    invoke-direct {v0}, Lcom/google/glass/context/BroadcastReceiverRegistrarProvider;-><init>()V

    sput-object v0, Lcom/google/glass/context/BroadcastReceiverRegistrarProvider;->instance:Lcom/google/glass/context/BroadcastReceiverRegistrarProvider;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .prologue
    .line 15
    invoke-direct {p0}, Lcom/google/glass/inject/Provider;-><init>()V

    return-void
.end method

.method public static getInstance()Lcom/google/glass/context/BroadcastReceiverRegistrarProvider;
    .locals 1

    .prologue
    .line 17
    sget-object v0, Lcom/google/glass/context/BroadcastReceiverRegistrarProvider;->instance:Lcom/google/glass/context/BroadcastReceiverRegistrarProvider;

    return-object v0
.end method


# virtual methods
.method public from(Landroid/content/Context;)Lcom/google/glass/context/BroadcastReceiverRegistrar;
    .locals 1
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 26
    new-instance v0, Lcom/google/glass/context/BroadcastReceiverRegistrarProvider$1;

    invoke-direct {v0, p0, p1}, Lcom/google/glass/context/BroadcastReceiverRegistrarProvider$1;-><init>(Lcom/google/glass/context/BroadcastReceiverRegistrarProvider;Landroid/content/Context;)V

    invoke-virtual {p0, v0}, Lcom/google/glass/context/BroadcastReceiverRegistrarProvider;->get(Lcom/google/common/base/Supplier;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/glass/context/BroadcastReceiverRegistrar;

    return-object v0
.end method
