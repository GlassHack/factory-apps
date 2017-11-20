.class public final Lcom/google/glass/android/os/PowerManagerProvider;
.super Lcom/google/glass/inject/Provider;
.source "PowerManagerProvider.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/glass/inject/Provider",
        "<",
        "Lcom/google/glass/android/os/PowerManager;",
        ">;"
    }
.end annotation


# static fields
.field private static final instance:Lcom/google/glass/android/os/PowerManagerProvider;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 16
    new-instance v0, Lcom/google/glass/android/os/PowerManagerProvider;

    invoke-direct {v0}, Lcom/google/glass/android/os/PowerManagerProvider;-><init>()V

    sput-object v0, Lcom/google/glass/android/os/PowerManagerProvider;->instance:Lcom/google/glass/android/os/PowerManagerProvider;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .prologue
    .line 18
    invoke-direct {p0}, Lcom/google/glass/inject/Provider;-><init>()V

    return-void
.end method

.method public static getInstance()Lcom/google/glass/android/os/PowerManagerProvider;
    .locals 1

    .prologue
    .line 20
    sget-object v0, Lcom/google/glass/android/os/PowerManagerProvider;->instance:Lcom/google/glass/android/os/PowerManagerProvider;

    return-object v0
.end method


# virtual methods
.method public from(Landroid/content/Context;)Lcom/google/glass/android/os/PowerManager;
    .locals 1
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 29
    new-instance v0, Lcom/google/glass/android/os/PowerManagerProvider$1;

    invoke-direct {v0, p0, p1}, Lcom/google/glass/android/os/PowerManagerProvider$1;-><init>(Lcom/google/glass/android/os/PowerManagerProvider;Landroid/content/Context;)V

    invoke-virtual {p0, v0}, Lcom/google/glass/android/os/PowerManagerProvider;->get(Lcom/google/common/base/Supplier;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/glass/android/os/PowerManager;

    return-object v0
.end method
