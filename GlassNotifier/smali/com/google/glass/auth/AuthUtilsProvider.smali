.class public final Lcom/google/glass/auth/AuthUtilsProvider;
.super Lcom/google/glass/inject/InitializableProvider;
.source "AuthUtilsProvider.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/glass/inject/InitializableProvider",
        "<",
        "Lcom/google/glass/auth/AuthUtils;",
        ">;"
    }
.end annotation


# static fields
.field private static final INSTANCE:Lcom/google/glass/auth/AuthUtilsProvider;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 9
    new-instance v0, Lcom/google/glass/auth/AuthUtilsProvider;

    invoke-direct {v0}, Lcom/google/glass/auth/AuthUtilsProvider;-><init>()V

    sput-object v0, Lcom/google/glass/auth/AuthUtilsProvider;->INSTANCE:Lcom/google/glass/auth/AuthUtilsProvider;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .prologue
    .line 11
    invoke-direct {p0}, Lcom/google/glass/inject/InitializableProvider;-><init>()V

    return-void
.end method

.method public static getInstance()Lcom/google/glass/auth/AuthUtilsProvider;
    .locals 1

    .prologue
    .line 13
    sget-object v0, Lcom/google/glass/auth/AuthUtilsProvider;->INSTANCE:Lcom/google/glass/auth/AuthUtilsProvider;

    return-object v0
.end method
