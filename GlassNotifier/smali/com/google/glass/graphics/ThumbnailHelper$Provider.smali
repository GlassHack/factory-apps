.class public final Lcom/google/glass/graphics/ThumbnailHelper$Provider;
.super Lcom/google/glass/inject/Provider;
.source "ThumbnailHelper.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/glass/graphics/ThumbnailHelper;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Provider"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/glass/inject/Provider",
        "<",
        "Lcom/google/glass/graphics/ThumbnailHelper;",
        ">;"
    }
.end annotation


# static fields
.field private static final INSTANCE:Lcom/google/glass/graphics/ThumbnailHelper$Provider;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 71
    new-instance v0, Lcom/google/glass/graphics/ThumbnailHelper$Provider;

    invoke-direct {v0}, Lcom/google/glass/graphics/ThumbnailHelper$Provider;-><init>()V

    sput-object v0, Lcom/google/glass/graphics/ThumbnailHelper$Provider;->INSTANCE:Lcom/google/glass/graphics/ThumbnailHelper$Provider;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .prologue
    .line 83
    invoke-direct {p0}, Lcom/google/glass/inject/Provider;-><init>()V

    return-void
.end method

.method public static final getInstance()Lcom/google/glass/graphics/ThumbnailHelper$Provider;
    .locals 1

    .prologue
    .line 73
    sget-object v0, Lcom/google/glass/graphics/ThumbnailHelper$Provider;->INSTANCE:Lcom/google/glass/graphics/ThumbnailHelper$Provider;

    return-object v0
.end method


# virtual methods
.method public get()Lcom/google/glass/graphics/ThumbnailHelper;
    .locals 1

    .prologue
    .line 76
    new-instance v0, Lcom/google/glass/graphics/ThumbnailHelper$Provider$1;

    invoke-direct {v0, p0}, Lcom/google/glass/graphics/ThumbnailHelper$Provider$1;-><init>(Lcom/google/glass/graphics/ThumbnailHelper$Provider;)V

    invoke-super {p0, v0}, Lcom/google/glass/inject/Provider;->get(Lcom/google/common/base/Supplier;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/glass/graphics/ThumbnailHelper;

    return-object v0
.end method
