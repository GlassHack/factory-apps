.class public final Lcom/google/glass/android/glass/security/LockScreenManagerProvider;
.super Lcom/google/glass/inject/Provider;
.source "LockScreenManagerProvider.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/glass/inject/Provider",
        "<",
        "Lcom/google/glass/android/glass/security/LockScreenManager;",
        ">;"
    }
.end annotation


# static fields
.field private static final instance:Lcom/google/glass/android/glass/security/LockScreenManagerProvider;

.field private static final supplier:Lcom/google/common/base/Supplier;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 14
    new-instance v0, Lcom/google/glass/android/glass/security/LockScreenManagerProvider;

    invoke-direct {v0}, Lcom/google/glass/android/glass/security/LockScreenManagerProvider;-><init>()V

    sput-object v0, Lcom/google/glass/android/glass/security/LockScreenManagerProvider;->instance:Lcom/google/glass/android/glass/security/LockScreenManagerProvider;

    .line 16
    new-instance v0, Lcom/google/glass/android/glass/security/LockScreenManagerProvider$1;

    invoke-direct {v0}, Lcom/google/glass/android/glass/security/LockScreenManagerProvider$1;-><init>()V

    sput-object v0, Lcom/google/glass/android/glass/security/LockScreenManagerProvider;->supplier:Lcom/google/common/base/Supplier;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .prologue
    .line 25
    invoke-direct {p0}, Lcom/google/glass/inject/Provider;-><init>()V

    return-void
.end method

.method public static getInstance()Lcom/google/glass/android/glass/security/LockScreenManagerProvider;
    .locals 1

    .prologue
    .line 27
    sget-object v0, Lcom/google/glass/android/glass/security/LockScreenManagerProvider;->instance:Lcom/google/glass/android/glass/security/LockScreenManagerProvider;

    return-object v0
.end method


# virtual methods
.method public get()Lcom/google/glass/android/glass/security/LockScreenManager;
    .locals 1

    .prologue
    .line 36
    sget-object v0, Lcom/google/glass/android/glass/security/LockScreenManagerProvider;->supplier:Lcom/google/common/base/Supplier;

    invoke-virtual {p0, v0}, Lcom/google/glass/android/glass/security/LockScreenManagerProvider;->get(Lcom/google/common/base/Supplier;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/glass/android/glass/security/LockScreenManager;

    return-object v0
.end method
