.class public Lcom/google/glass/voice/ConcurrentAudioInterfaceProvider;
.super Lcom/google/glass/inject/LazySingletonProvider;
.source "ConcurrentAudioInterfaceProvider.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/glass/inject/LazySingletonProvider",
        "<",
        "Lcom/google/glass/voice/ConcurrentAudioInterface;",
        ">;"
    }
.end annotation


# static fields
.field private static final instance:Lcom/google/glass/voice/ConcurrentAudioInterfaceProvider;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 13
    new-instance v0, Lcom/google/glass/voice/ConcurrentAudioInterfaceProvider;

    invoke-direct {v0}, Lcom/google/glass/voice/ConcurrentAudioInterfaceProvider;-><init>()V

    sput-object v0, Lcom/google/glass/voice/ConcurrentAudioInterfaceProvider;->instance:Lcom/google/glass/voice/ConcurrentAudioInterfaceProvider;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .prologue
    .line 16
    invoke-direct {p0}, Lcom/google/glass/inject/LazySingletonProvider;-><init>()V

    return-void
.end method

.method public static getInstance()Lcom/google/glass/voice/ConcurrentAudioInterfaceProvider;
    .locals 1

    .prologue
    .line 19
    sget-object v0, Lcom/google/glass/voice/ConcurrentAudioInterfaceProvider;->instance:Lcom/google/glass/voice/ConcurrentAudioInterfaceProvider;

    return-object v0
.end method
