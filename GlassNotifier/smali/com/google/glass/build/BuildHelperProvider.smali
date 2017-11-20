.class public final Lcom/google/glass/build/BuildHelperProvider;
.super Lcom/google/glass/inject/InitializableProvider;
.source "BuildHelperProvider.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/glass/inject/InitializableProvider",
        "<",
        "Lcom/google/glass/build/BuildHelper;",
        ">;"
    }
.end annotation


# static fields
.field private static final INSTANCE:Lcom/google/glass/build/BuildHelperProvider;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 9
    new-instance v0, Lcom/google/glass/build/BuildHelperProvider;

    invoke-direct {v0}, Lcom/google/glass/build/BuildHelperProvider;-><init>()V

    sput-object v0, Lcom/google/glass/build/BuildHelperProvider;->INSTANCE:Lcom/google/glass/build/BuildHelperProvider;

    return-void
.end method

.method private constructor <init>()V
    .locals 1

    .prologue
    .line 11
    invoke-direct {p0}, Lcom/google/glass/inject/InitializableProvider;-><init>()V

    .line 12
    new-instance v0, Lcom/google/glass/build/BuildHelperImpl;

    invoke-direct {v0}, Lcom/google/glass/build/BuildHelperImpl;-><init>()V

    invoke-virtual {p0, v0}, Lcom/google/glass/build/BuildHelperProvider;->init(Ljava/lang/Object;)V

    .line 13
    return-void
.end method

.method public static getInstance()Lcom/google/glass/build/BuildHelperProvider;
    .locals 1

    .prologue
    .line 16
    sget-object v0, Lcom/google/glass/build/BuildHelperProvider;->INSTANCE:Lcom/google/glass/build/BuildHelperProvider;

    return-object v0
.end method
