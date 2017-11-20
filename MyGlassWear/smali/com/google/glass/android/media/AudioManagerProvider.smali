.class public final Lcom/google/glass/android/media/AudioManagerProvider;
.super Lcom/google/glass/inject/Provider;
.source "AudioManagerProvider.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/glass/inject/Provider",
        "<",
        "Lcom/google/glass/android/media/AudioManager;",
        ">;"
    }
.end annotation


# static fields
.field private static final instance:Lcom/google/glass/android/media/AudioManagerProvider;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 17
    new-instance v0, Lcom/google/glass/android/media/AudioManagerProvider;

    invoke-direct {v0}, Lcom/google/glass/android/media/AudioManagerProvider;-><init>()V

    sput-object v0, Lcom/google/glass/android/media/AudioManagerProvider;->instance:Lcom/google/glass/android/media/AudioManagerProvider;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .prologue
    .line 19
    invoke-direct {p0}, Lcom/google/glass/inject/Provider;-><init>()V

    return-void
.end method

.method public static getInstance()Lcom/google/glass/android/media/AudioManagerProvider;
    .locals 1

    .prologue
    .line 21
    sget-object v0, Lcom/google/glass/android/media/AudioManagerProvider;->instance:Lcom/google/glass/android/media/AudioManagerProvider;

    return-object v0
.end method


# virtual methods
.method public from(Landroid/content/Context;)Lcom/google/glass/android/media/AudioManager;
    .locals 1
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 30
    const-string v0, "null context"

    invoke-static {p1, v0}, Lcom/google/common/base/Preconditions;->checkNotNull(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 31
    new-instance v0, Lcom/google/glass/android/media/AudioManagerProvider$1;

    invoke-direct {v0, p0, p1}, Lcom/google/glass/android/media/AudioManagerProvider$1;-><init>(Lcom/google/glass/android/media/AudioManagerProvider;Landroid/content/Context;)V

    invoke-virtual {p0, v0}, Lcom/google/glass/android/media/AudioManagerProvider;->get(Lcom/google/common/base/Supplier;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/glass/android/media/AudioManager;

    return-object v0
.end method
