.class public final Lcom/google/glass/util/CachedBitmapFactory$Provider;
.super Lcom/google/glass/inject/LazySingletonProvider;
.source "SourceFile"


# static fields
.field private static final INSTANCE:Lcom/google/glass/util/CachedBitmapFactory$Provider;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 458
    new-instance v0, Lcom/google/glass/util/CachedBitmapFactory$Provider;

    invoke-direct {v0}, Lcom/google/glass/util/CachedBitmapFactory$Provider;-><init>()V

    sput-object v0, Lcom/google/glass/util/CachedBitmapFactory$Provider;->INSTANCE:Lcom/google/glass/util/CachedBitmapFactory$Provider;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .prologue
    .line 460
    invoke-direct {p0}, Lcom/google/glass/inject/LazySingletonProvider;-><init>()V

    return-void
.end method

.method public static getInstance()Lcom/google/glass/util/CachedBitmapFactory$Provider;
    .locals 1

    .prologue
    .line 463
    sget-object v0, Lcom/google/glass/util/CachedBitmapFactory$Provider;->INSTANCE:Lcom/google/glass/util/CachedBitmapFactory$Provider;

    return-object v0
.end method
