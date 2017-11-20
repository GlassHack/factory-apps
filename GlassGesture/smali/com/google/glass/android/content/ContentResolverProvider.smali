.class public final Lcom/google/glass/android/content/ContentResolverProvider;
.super Lcom/google/glass/inject/Provider;
.source "ContentResolverProvider.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/glass/inject/Provider",
        "<",
        "Lcom/google/glass/android/content/ContentResolver;",
        ">;"
    }
.end annotation


# static fields
.field private static final instance:Lcom/google/glass/android/content/ContentResolverProvider;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 15
    new-instance v0, Lcom/google/glass/android/content/ContentResolverProvider;

    invoke-direct {v0}, Lcom/google/glass/android/content/ContentResolverProvider;-><init>()V

    sput-object v0, Lcom/google/glass/android/content/ContentResolverProvider;->instance:Lcom/google/glass/android/content/ContentResolverProvider;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .prologue
    .line 17
    invoke-direct {p0}, Lcom/google/glass/inject/Provider;-><init>()V

    return-void
.end method

.method public static getInstance()Lcom/google/glass/android/content/ContentResolverProvider;
    .locals 1

    .prologue
    .line 19
    sget-object v0, Lcom/google/glass/android/content/ContentResolverProvider;->instance:Lcom/google/glass/android/content/ContentResolverProvider;

    return-object v0
.end method


# virtual methods
.method public from(Landroid/content/ContentResolver;)Lcom/google/glass/android/content/ContentResolver;
    .locals 1
    .param p1, "contentResolver"    # Landroid/content/ContentResolver;

    .prologue
    .line 34
    const-string v0, "null ContentResolver"

    invoke-static {p1, v0}, Lcom/google/common/base/Preconditions;->checkNotNull(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 35
    new-instance v0, Lcom/google/glass/android/content/ContentResolverProvider$1;

    invoke-direct {v0, p0, p1}, Lcom/google/glass/android/content/ContentResolverProvider$1;-><init>(Lcom/google/glass/android/content/ContentResolverProvider;Landroid/content/ContentResolver;)V

    invoke-virtual {p0, v0}, Lcom/google/glass/android/content/ContentResolverProvider;->get(Lcom/google/common/base/Supplier;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/glass/android/content/ContentResolver;

    return-object v0
.end method

.method public from(Landroid/content/Context;)Lcom/google/glass/android/content/ContentResolver;
    .locals 1
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 28
    const-string v0, "null context"

    invoke-static {p1, v0}, Lcom/google/common/base/Preconditions;->checkNotNull(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 29
    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/google/glass/android/content/ContentResolverProvider;->from(Landroid/content/ContentResolver;)Lcom/google/glass/android/content/ContentResolver;

    move-result-object v0

    return-object v0
.end method
