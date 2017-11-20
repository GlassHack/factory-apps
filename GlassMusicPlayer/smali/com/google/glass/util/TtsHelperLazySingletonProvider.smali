.class public final Lcom/google/glass/util/TtsHelperLazySingletonProvider;
.super Lcom/google/glass/inject/LazySingletonProvider;
.source "SourceFile"


# static fields
.field private static final INSTANCE:Lcom/google/glass/util/TtsHelperLazySingletonProvider;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 10
    new-instance v0, Lcom/google/glass/util/TtsHelperLazySingletonProvider;

    invoke-direct {v0}, Lcom/google/glass/util/TtsHelperLazySingletonProvider;-><init>()V

    sput-object v0, Lcom/google/glass/util/TtsHelperLazySingletonProvider;->INSTANCE:Lcom/google/glass/util/TtsHelperLazySingletonProvider;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .prologue
    .line 13
    invoke-direct {p0}, Lcom/google/glass/inject/LazySingletonProvider;-><init>()V

    return-void
.end method

.method public static getInstance()Lcom/google/glass/util/TtsHelperLazySingletonProvider;
    .locals 1

    .prologue
    .line 15
    sget-object v0, Lcom/google/glass/util/TtsHelperLazySingletonProvider;->INSTANCE:Lcom/google/glass/util/TtsHelperLazySingletonProvider;

    return-object v0
.end method
