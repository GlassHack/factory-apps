.class public final Lcom/google/glass/android/media/AudioTrackProvider;
.super Lcom/google/glass/inject/Provider;
.source "AudioTrackProvider.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/glass/inject/Provider",
        "<",
        "Landroid/media/AudioTrack;",
        ">;"
    }
.end annotation


# static fields
.field private static final BUFFER_SIZE:I

.field private static final DEFAULT_SUPPLIER:Lcom/google/common/base/Supplier;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/common/base/Supplier",
            "<",
            "Landroid/media/AudioTrack;",
            ">;"
        }
    .end annotation
.end field

.field private static final INSTANCE:Lcom/google/glass/android/media/AudioTrackProvider;

.field private static final SAMPLE_RATE_8KHZ:I = 0x1f40


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    .line 17
    const/16 v0, 0x1f40

    const/4 v1, 0x4

    const/4 v2, 0x2

    invoke-static {v0, v1, v2}, Landroid/media/AudioTrack;->getMinBufferSize(III)I

    move-result v0

    sput v0, Lcom/google/glass/android/media/AudioTrackProvider;->BUFFER_SIZE:I

    .line 20
    new-instance v0, Lcom/google/glass/android/media/AudioTrackProvider;

    invoke-direct {v0}, Lcom/google/glass/android/media/AudioTrackProvider;-><init>()V

    sput-object v0, Lcom/google/glass/android/media/AudioTrackProvider;->INSTANCE:Lcom/google/glass/android/media/AudioTrackProvider;

    .line 22
    new-instance v0, Lcom/google/glass/android/media/AudioTrackProvider$1;

    invoke-direct {v0}, Lcom/google/glass/android/media/AudioTrackProvider$1;-><init>()V

    sput-object v0, Lcom/google/glass/android/media/AudioTrackProvider;->DEFAULT_SUPPLIER:Lcom/google/common/base/Supplier;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .prologue
    .line 31
    invoke-direct {p0}, Lcom/google/glass/inject/Provider;-><init>()V

    return-void
.end method

.method static synthetic access$000()I
    .locals 1

    .prologue
    .line 15
    sget v0, Lcom/google/glass/android/media/AudioTrackProvider;->BUFFER_SIZE:I

    return v0
.end method

.method public static getInstance()Lcom/google/glass/android/media/AudioTrackProvider;
    .locals 1

    .prologue
    .line 33
    sget-object v0, Lcom/google/glass/android/media/AudioTrackProvider;->INSTANCE:Lcom/google/glass/android/media/AudioTrackProvider;

    return-object v0
.end method


# virtual methods
.method public get()Landroid/media/AudioTrack;
    .locals 1

    .prologue
    .line 40
    sget-object v0, Lcom/google/glass/android/media/AudioTrackProvider;->DEFAULT_SUPPLIER:Lcom/google/common/base/Supplier;

    invoke-virtual {p0, v0}, Lcom/google/glass/android/media/AudioTrackProvider;->get(Lcom/google/common/base/Supplier;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/media/AudioTrack;

    return-object v0
.end method
