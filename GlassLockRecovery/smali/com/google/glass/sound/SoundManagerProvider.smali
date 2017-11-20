.class public final Lcom/google/glass/sound/SoundManagerProvider;
.super Lcom/google/glass/inject/InitializableProvider;
.source "SoundManagerProvider.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/glass/inject/InitializableProvider",
        "<",
        "Lcom/google/glass/sound/SoundManager;",
        ">;"
    }
.end annotation


# static fields
.field private static final instance:Lcom/google/glass/sound/SoundManagerProvider;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 10
    new-instance v0, Lcom/google/glass/sound/SoundManagerProvider;

    invoke-direct {v0}, Lcom/google/glass/sound/SoundManagerProvider;-><init>()V

    sput-object v0, Lcom/google/glass/sound/SoundManagerProvider;->instance:Lcom/google/glass/sound/SoundManagerProvider;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .prologue
    .line 12
    invoke-direct {p0}, Lcom/google/glass/inject/InitializableProvider;-><init>()V

    return-void
.end method

.method public static getInstance()Lcom/google/glass/sound/SoundManagerProvider;
    .locals 1

    .prologue
    .line 14
    sget-object v0, Lcom/google/glass/sound/SoundManagerProvider;->instance:Lcom/google/glass/sound/SoundManagerProvider;

    return-object v0
.end method
