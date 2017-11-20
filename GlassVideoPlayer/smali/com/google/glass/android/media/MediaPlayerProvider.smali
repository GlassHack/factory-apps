.class public final Lcom/google/glass/android/media/MediaPlayerProvider;
.super Lcom/google/glass/inject/Provider;
.source "SourceFile"


# static fields
.field private static final DEFAULT_SUPPLIER:Lcom/google/common/base/av;

.field private static final INSTANCE:Lcom/google/glass/android/media/MediaPlayerProvider;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 15
    new-instance v0, Lcom/google/glass/android/media/MediaPlayerProvider;

    invoke-direct {v0}, Lcom/google/glass/android/media/MediaPlayerProvider;-><init>()V

    sput-object v0, Lcom/google/glass/android/media/MediaPlayerProvider;->INSTANCE:Lcom/google/glass/android/media/MediaPlayerProvider;

    .line 17
    new-instance v0, Lcom/google/glass/android/media/MediaPlayerProvider$1;

    invoke-direct {v0}, Lcom/google/glass/android/media/MediaPlayerProvider$1;-><init>()V

    sput-object v0, Lcom/google/glass/android/media/MediaPlayerProvider;->DEFAULT_SUPPLIER:Lcom/google/common/base/av;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .prologue
    .line 24
    invoke-direct {p0}, Lcom/google/glass/inject/Provider;-><init>()V

    return-void
.end method

.method public static getInstance()Lcom/google/glass/android/media/MediaPlayerProvider;
    .locals 1

    .prologue
    .line 26
    sget-object v0, Lcom/google/glass/android/media/MediaPlayerProvider;->INSTANCE:Lcom/google/glass/android/media/MediaPlayerProvider;

    return-object v0
.end method


# virtual methods
.method public final get()Landroid/media/MediaPlayer;
    .locals 1

    .prologue
    .line 33
    sget-object v0, Lcom/google/glass/android/media/MediaPlayerProvider;->DEFAULT_SUPPLIER:Lcom/google/common/base/av;

    invoke-virtual {p0, v0}, Lcom/google/glass/android/media/MediaPlayerProvider;->get(Lcom/google/common/base/av;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/media/MediaPlayer;

    return-object v0
.end method
