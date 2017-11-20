.class public final Lcom/google/glass/android/widget/ToastFactoryProvider;
.super Lcom/google/glass/inject/InitializableProvider;
.source "ToastFactoryProvider.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/glass/inject/InitializableProvider",
        "<",
        "Lcom/google/glass/android/widget/ToastFactory;",
        ">;"
    }
.end annotation


# static fields
.field private static final instance:Lcom/google/glass/android/widget/ToastFactoryProvider;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 13
    new-instance v0, Lcom/google/glass/android/widget/ToastFactoryProvider;

    invoke-direct {v0}, Lcom/google/glass/android/widget/ToastFactoryProvider;-><init>()V

    sput-object v0, Lcom/google/glass/android/widget/ToastFactoryProvider;->instance:Lcom/google/glass/android/widget/ToastFactoryProvider;

    return-void
.end method

.method private constructor <init>()V
    .locals 1

    .prologue
    .line 15
    invoke-direct {p0}, Lcom/google/glass/inject/InitializableProvider;-><init>()V

    .line 16
    new-instance v0, Lcom/google/glass/android/widget/ToastFactoryImpl;

    invoke-direct {v0}, Lcom/google/glass/android/widget/ToastFactoryImpl;-><init>()V

    invoke-virtual {p0, v0}, Lcom/google/glass/android/widget/ToastFactoryProvider;->init(Ljava/lang/Object;)V

    .line 17
    return-void
.end method

.method public static getInstance()Lcom/google/glass/android/widget/ToastFactoryProvider;
    .locals 1

    .prologue
    .line 20
    sget-object v0, Lcom/google/glass/android/widget/ToastFactoryProvider;->instance:Lcom/google/glass/android/widget/ToastFactoryProvider;

    return-object v0
.end method
