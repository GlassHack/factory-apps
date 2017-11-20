.class public final Lcom/google/glass/util/GestureDetectorProvider;
.super Lcom/google/glass/inject/Provider;
.source "GestureDetectorProvider.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/glass/inject/Provider",
        "<",
        "Lcom/google/android/glass/touchpad/GestureDetector;",
        ">;"
    }
.end annotation


# static fields
.field private static final INSTANCE:Lcom/google/glass/util/GestureDetectorProvider;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 13
    new-instance v0, Lcom/google/glass/util/GestureDetectorProvider;

    invoke-direct {v0}, Lcom/google/glass/util/GestureDetectorProvider;-><init>()V

    sput-object v0, Lcom/google/glass/util/GestureDetectorProvider;->INSTANCE:Lcom/google/glass/util/GestureDetectorProvider;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .prologue
    .line 15
    invoke-direct {p0}, Lcom/google/glass/inject/Provider;-><init>()V

    return-void
.end method

.method public static getInstance()Lcom/google/glass/util/GestureDetectorProvider;
    .locals 1

    .prologue
    .line 18
    sget-object v0, Lcom/google/glass/util/GestureDetectorProvider;->INSTANCE:Lcom/google/glass/util/GestureDetectorProvider;

    return-object v0
.end method


# virtual methods
.method public get(Landroid/content/Context;)Lcom/google/android/glass/touchpad/GestureDetector;
    .locals 1
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 28
    new-instance v0, Lcom/google/glass/util/GestureDetectorProvider$1;

    invoke-direct {v0, p0, p1}, Lcom/google/glass/util/GestureDetectorProvider$1;-><init>(Lcom/google/glass/util/GestureDetectorProvider;Landroid/content/Context;)V

    invoke-virtual {p0, v0}, Lcom/google/glass/util/GestureDetectorProvider;->get(Lcom/google/common/base/Supplier;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/glass/touchpad/GestureDetector;

    return-object v0
.end method
