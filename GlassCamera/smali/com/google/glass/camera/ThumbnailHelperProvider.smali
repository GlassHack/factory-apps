.class public final Lcom/google/glass/camera/ThumbnailHelperProvider;
.super Lcom/google/glass/inject/Provider;
.source "ThumbnailHelperProvider.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/glass/inject/Provider",
        "<",
        "Lcom/google/glass/util/VideoThumbnailHelper;",
        ">;"
    }
.end annotation


# static fields
.field private static final instance:Lcom/google/glass/camera/ThumbnailHelperProvider;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 11
    new-instance v0, Lcom/google/glass/camera/ThumbnailHelperProvider;

    invoke-direct {v0}, Lcom/google/glass/camera/ThumbnailHelperProvider;-><init>()V

    sput-object v0, Lcom/google/glass/camera/ThumbnailHelperProvider;->instance:Lcom/google/glass/camera/ThumbnailHelperProvider;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .prologue
    .line 13
    invoke-direct {p0}, Lcom/google/glass/inject/Provider;-><init>()V

    return-void
.end method

.method public static getInstance()Lcom/google/glass/camera/ThumbnailHelperProvider;
    .locals 1

    .prologue
    .line 15
    sget-object v0, Lcom/google/glass/camera/ThumbnailHelperProvider;->instance:Lcom/google/glass/camera/ThumbnailHelperProvider;

    return-object v0
.end method


# virtual methods
.method public getThumbnailHelper()Lcom/google/glass/util/VideoThumbnailHelper;
    .locals 1

    .prologue
    .line 18
    new-instance v0, Lcom/google/glass/camera/ThumbnailHelperProvider$1;

    invoke-direct {v0, p0}, Lcom/google/glass/camera/ThumbnailHelperProvider$1;-><init>(Lcom/google/glass/camera/ThumbnailHelperProvider;)V

    invoke-virtual {p0, v0}, Lcom/google/glass/camera/ThumbnailHelperProvider;->get(Lcom/google/common/base/Supplier;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/glass/util/VideoThumbnailHelper;

    return-object v0
.end method
