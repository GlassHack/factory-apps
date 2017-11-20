.class public final Lcom/google/glass/android/provider/MediaStoreImagesMediaProvider;
.super Lcom/google/glass/inject/InitializableProvider;
.source "SourceFile"


# static fields
.field private static final instance:Lcom/google/glass/android/provider/MediaStoreImagesMediaProvider;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 13
    new-instance v0, Lcom/google/glass/android/provider/MediaStoreImagesMediaProvider;

    invoke-direct {v0}, Lcom/google/glass/android/provider/MediaStoreImagesMediaProvider;-><init>()V

    sput-object v0, Lcom/google/glass/android/provider/MediaStoreImagesMediaProvider;->instance:Lcom/google/glass/android/provider/MediaStoreImagesMediaProvider;

    return-void
.end method

.method private constructor <init>()V
    .locals 1

    .prologue
    .line 16
    invoke-direct {p0}, Lcom/google/glass/inject/InitializableProvider;-><init>()V

    .line 17
    new-instance v0, Lcom/google/glass/android/provider/MediaStoreImagesMediaImpl;

    invoke-direct {v0}, Lcom/google/glass/android/provider/MediaStoreImagesMediaImpl;-><init>()V

    invoke-virtual {p0, v0}, Lcom/google/glass/android/provider/MediaStoreImagesMediaProvider;->init(Ljava/lang/Object;)V

    .line 18
    return-void
.end method

.method public static getInstance()Lcom/google/glass/android/provider/MediaStoreImagesMediaProvider;
    .locals 1

    .prologue
    .line 21
    sget-object v0, Lcom/google/glass/android/provider/MediaStoreImagesMediaProvider;->instance:Lcom/google/glass/android/provider/MediaStoreImagesMediaProvider;

    return-object v0
.end method
