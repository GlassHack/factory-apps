.class public final Lcom/google/glass/android/media/MediaRecorderProvider;
.super Lcom/google/glass/inject/Provider;
.source "SourceFile"


# static fields
.field private static final INSTANCE:Lcom/google/glass/android/media/MediaRecorderProvider;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 13
    new-instance v0, Lcom/google/glass/android/media/MediaRecorderProvider;

    invoke-direct {v0}, Lcom/google/glass/android/media/MediaRecorderProvider;-><init>()V

    sput-object v0, Lcom/google/glass/android/media/MediaRecorderProvider;->INSTANCE:Lcom/google/glass/android/media/MediaRecorderProvider;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .prologue
    .line 15
    invoke-direct {p0}, Lcom/google/glass/inject/Provider;-><init>()V

    return-void
.end method

.method public static getInstance()Lcom/google/glass/android/media/MediaRecorderProvider;
    .locals 1

    .prologue
    .line 17
    sget-object v0, Lcom/google/glass/android/media/MediaRecorderProvider;->INSTANCE:Lcom/google/glass/android/media/MediaRecorderProvider;

    return-object v0
.end method


# virtual methods
.method public final get()Landroid/media/MediaRecorder;
    .locals 1

    .prologue
    .line 24
    new-instance v0, Lcom/google/glass/android/media/MediaRecorderProvider$1;

    invoke-direct {v0, p0}, Lcom/google/glass/android/media/MediaRecorderProvider$1;-><init>(Lcom/google/glass/android/media/MediaRecorderProvider;)V

    invoke-virtual {p0, v0}, Lcom/google/glass/android/media/MediaRecorderProvider;->get(Lcom/google/common/base/aw;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/media/MediaRecorder;

    return-object v0
.end method
