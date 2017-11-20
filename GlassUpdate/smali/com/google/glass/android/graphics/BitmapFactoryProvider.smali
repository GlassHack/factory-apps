.class public final Lcom/google/glass/android/graphics/BitmapFactoryProvider;
.super Lcom/google/glass/inject/InitializableProvider;
.source "BitmapFactoryProvider.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/glass/inject/InitializableProvider",
        "<",
        "Lcom/google/glass/android/graphics/BitmapFactory;",
        ">;"
    }
.end annotation


# static fields
.field private static final instance:Lcom/google/glass/android/graphics/BitmapFactoryProvider;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 12
    new-instance v0, Lcom/google/glass/android/graphics/BitmapFactoryProvider;

    invoke-direct {v0}, Lcom/google/glass/android/graphics/BitmapFactoryProvider;-><init>()V

    sput-object v0, Lcom/google/glass/android/graphics/BitmapFactoryProvider;->instance:Lcom/google/glass/android/graphics/BitmapFactoryProvider;

    return-void
.end method

.method private constructor <init>()V
    .locals 1

    .prologue
    .line 14
    invoke-direct {p0}, Lcom/google/glass/inject/InitializableProvider;-><init>()V

    .line 15
    new-instance v0, Lcom/google/glass/android/graphics/BitmapFactoryImpl;

    invoke-direct {v0}, Lcom/google/glass/android/graphics/BitmapFactoryImpl;-><init>()V

    invoke-virtual {p0, v0}, Lcom/google/glass/android/graphics/BitmapFactoryProvider;->init(Ljava/lang/Object;)V

    .line 16
    return-void
.end method

.method public static getInstance()Lcom/google/glass/android/graphics/BitmapFactoryProvider;
    .locals 1

    .prologue
    .line 19
    sget-object v0, Lcom/google/glass/android/graphics/BitmapFactoryProvider;->instance:Lcom/google/glass/android/graphics/BitmapFactoryProvider;

    return-object v0
.end method
