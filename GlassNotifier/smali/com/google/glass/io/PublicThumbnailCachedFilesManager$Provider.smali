.class public final Lcom/google/glass/io/PublicThumbnailCachedFilesManager$Provider;
.super Lcom/google/glass/inject/Provider;
.source "PublicThumbnailCachedFilesManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/glass/io/PublicThumbnailCachedFilesManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Provider"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/glass/inject/Provider",
        "<",
        "Lcom/google/glass/io/PublicThumbnailCachedFilesManager;",
        ">;"
    }
.end annotation


# static fields
.field private static final INSTANCE:Lcom/google/glass/io/PublicThumbnailCachedFilesManager$Provider;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 31
    new-instance v0, Lcom/google/glass/io/PublicThumbnailCachedFilesManager$Provider;

    invoke-direct {v0}, Lcom/google/glass/io/PublicThumbnailCachedFilesManager$Provider;-><init>()V

    sput-object v0, Lcom/google/glass/io/PublicThumbnailCachedFilesManager$Provider;->INSTANCE:Lcom/google/glass/io/PublicThumbnailCachedFilesManager$Provider;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .prologue
    .line 43
    invoke-direct {p0}, Lcom/google/glass/inject/Provider;-><init>()V

    return-void
.end method

.method public static final getInstance()Lcom/google/glass/io/PublicThumbnailCachedFilesManager$Provider;
    .locals 1

    .prologue
    .line 33
    sget-object v0, Lcom/google/glass/io/PublicThumbnailCachedFilesManager$Provider;->INSTANCE:Lcom/google/glass/io/PublicThumbnailCachedFilesManager$Provider;

    return-object v0
.end method


# virtual methods
.method public get()Lcom/google/glass/io/PublicThumbnailCachedFilesManager;
    .locals 1

    .prologue
    .line 36
    new-instance v0, Lcom/google/glass/io/PublicThumbnailCachedFilesManager$Provider$1;

    invoke-direct {v0, p0}, Lcom/google/glass/io/PublicThumbnailCachedFilesManager$Provider$1;-><init>(Lcom/google/glass/io/PublicThumbnailCachedFilesManager$Provider;)V

    invoke-super {p0, v0}, Lcom/google/glass/inject/Provider;->get(Lcom/google/common/base/Supplier;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/glass/io/PublicThumbnailCachedFilesManager;

    return-object v0
.end method
