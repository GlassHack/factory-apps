.class public final Lcom/google/glass/voice/embedded/PathParamsCache$Provider;
.super Lcom/google/glass/inject/Provider;
.source "PathParamsCache.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/glass/voice/embedded/PathParamsCache;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Provider"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/glass/inject/Provider",
        "<",
        "Lcom/google/glass/voice/embedded/PathParamsCache;",
        ">;"
    }
.end annotation


# static fields
.field private static final INSTANCE:Lcom/google/glass/voice/embedded/PathParamsCache$Provider;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 155
    new-instance v0, Lcom/google/glass/voice/embedded/PathParamsCache$Provider;

    invoke-direct {v0}, Lcom/google/glass/voice/embedded/PathParamsCache$Provider;-><init>()V

    sput-object v0, Lcom/google/glass/voice/embedded/PathParamsCache$Provider;->INSTANCE:Lcom/google/glass/voice/embedded/PathParamsCache$Provider;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 154
    invoke-direct {p0}, Lcom/google/glass/inject/Provider;-><init>()V

    return-void
.end method

.method public static getInstance()Lcom/google/glass/voice/embedded/PathParamsCache$Provider;
    .locals 1

    .prologue
    .line 158
    sget-object v0, Lcom/google/glass/voice/embedded/PathParamsCache$Provider;->INSTANCE:Lcom/google/glass/voice/embedded/PathParamsCache$Provider;

    return-object v0
.end method


# virtual methods
.method public get(Landroid/content/Context;Ljava/util/Locale;)Lcom/google/glass/voice/embedded/PathParamsCache;
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "locale"    # Ljava/util/Locale;

    .prologue
    .line 162
    new-instance v0, Lcom/google/glass/voice/embedded/PathParamsCache$Provider$1;

    invoke-direct {v0, p0, p2, p1}, Lcom/google/glass/voice/embedded/PathParamsCache$Provider$1;-><init>(Lcom/google/glass/voice/embedded/PathParamsCache$Provider;Ljava/util/Locale;Landroid/content/Context;)V

    invoke-super {p0, v0}, Lcom/google/glass/inject/Provider;->get(Lcom/google/common/base/Supplier;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/glass/voice/embedded/PathParamsCache;

    return-object v0
.end method
