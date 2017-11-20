.class public final Lcom/google/glass/util/CachedBitmapFactory$Provider;
.super Lcom/google/glass/inject/LazySingletonProvider;
.source "CachedBitmapFactory.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/glass/util/CachedBitmapFactory;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Provider"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/glass/inject/LazySingletonProvider",
        "<",
        "Lcom/google/glass/util/CachedBitmapFactory;",
        ">;"
    }
.end annotation


# static fields
.field private static final INSTANCE:Lcom/google/glass/util/CachedBitmapFactory$Provider;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 440
    new-instance v0, Lcom/google/glass/util/CachedBitmapFactory$Provider;

    invoke-direct {v0}, Lcom/google/glass/util/CachedBitmapFactory$Provider;-><init>()V

    sput-object v0, Lcom/google/glass/util/CachedBitmapFactory$Provider;->INSTANCE:Lcom/google/glass/util/CachedBitmapFactory$Provider;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .prologue
    .line 442
    invoke-direct {p0}, Lcom/google/glass/inject/LazySingletonProvider;-><init>()V

    return-void
.end method

.method public static getInstance()Lcom/google/glass/util/CachedBitmapFactory$Provider;
    .locals 1

    .prologue
    .line 445
    sget-object v0, Lcom/google/glass/util/CachedBitmapFactory$Provider;->INSTANCE:Lcom/google/glass/util/CachedBitmapFactory$Provider;

    return-object v0
.end method
