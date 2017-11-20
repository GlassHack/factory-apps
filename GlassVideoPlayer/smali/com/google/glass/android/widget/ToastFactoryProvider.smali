.class public final Lcom/google/glass/android/widget/ToastFactoryProvider;
.super Lcom/google/glass/inject/InitializableProvider;
.source "SourceFile"


# static fields
.field private static final instance:Lcom/google/glass/android/widget/ToastFactoryProvider;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 10
    new-instance v0, Lcom/google/glass/android/widget/ToastFactoryProvider;

    invoke-direct {v0}, Lcom/google/glass/android/widget/ToastFactoryProvider;-><init>()V

    sput-object v0, Lcom/google/glass/android/widget/ToastFactoryProvider;->instance:Lcom/google/glass/android/widget/ToastFactoryProvider;

    return-void
.end method

.method private constructor <init>()V
    .locals 1

    .prologue
    .line 12
    invoke-direct {p0}, Lcom/google/glass/inject/InitializableProvider;-><init>()V

    .line 13
    new-instance v0, Lcom/google/glass/android/widget/ToastFactoryImpl;

    invoke-direct {v0}, Lcom/google/glass/android/widget/ToastFactoryImpl;-><init>()V

    invoke-virtual {p0, v0}, Lcom/google/glass/android/widget/ToastFactoryProvider;->init(Ljava/lang/Object;)V

    .line 14
    return-void
.end method

.method public static getInstance()Lcom/google/glass/android/widget/ToastFactoryProvider;
    .locals 1

    .prologue
    .line 17
    sget-object v0, Lcom/google/glass/android/widget/ToastFactoryProvider;->instance:Lcom/google/glass/android/widget/ToastFactoryProvider;

    return-object v0
.end method
