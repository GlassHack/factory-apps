.class public final Lcom/google/glass/android/glass/widget/CardBuilderProvider;
.super Lcom/google/glass/inject/Provider;
.source "CardBuilderProvider.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/glass/inject/Provider",
        "<",
        "Lcom/google/android/glass/widget/CardBuilder;",
        ">;"
    }
.end annotation


# static fields
.field private static final INSTANCE:Lcom/google/glass/android/glass/widget/CardBuilderProvider;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 14
    new-instance v0, Lcom/google/glass/android/glass/widget/CardBuilderProvider;

    invoke-direct {v0}, Lcom/google/glass/android/glass/widget/CardBuilderProvider;-><init>()V

    sput-object v0, Lcom/google/glass/android/glass/widget/CardBuilderProvider;->INSTANCE:Lcom/google/glass/android/glass/widget/CardBuilderProvider;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .prologue
    .line 16
    invoke-direct {p0}, Lcom/google/glass/inject/Provider;-><init>()V

    return-void
.end method

.method public static getInstance()Lcom/google/glass/android/glass/widget/CardBuilderProvider;
    .locals 1

    .prologue
    .line 18
    sget-object v0, Lcom/google/glass/android/glass/widget/CardBuilderProvider;->INSTANCE:Lcom/google/glass/android/glass/widget/CardBuilderProvider;

    return-object v0
.end method


# virtual methods
.method public get(Landroid/content/Context;Lcom/google/android/glass/widget/CardBuilder$Layout;)Lcom/google/android/glass/widget/CardBuilder;
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "layout"    # Lcom/google/android/glass/widget/CardBuilder$Layout;

    .prologue
    .line 27
    const-string v0, "null context"

    invoke-static {p1, v0}, Lcom/google/common/base/Preconditions;->checkNotNull(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 28
    const-string v0, "null layout"

    invoke-static {p2, v0}, Lcom/google/common/base/Preconditions;->checkNotNull(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 29
    new-instance v0, Lcom/google/glass/android/glass/widget/CardBuilderProvider$1;

    invoke-direct {v0, p0, p1, p2}, Lcom/google/glass/android/glass/widget/CardBuilderProvider$1;-><init>(Lcom/google/glass/android/glass/widget/CardBuilderProvider;Landroid/content/Context;Lcom/google/android/glass/widget/CardBuilder$Layout;)V

    invoke-virtual {p0, v0}, Lcom/google/glass/android/glass/widget/CardBuilderProvider;->get(Lcom/google/common/base/Supplier;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/glass/widget/CardBuilder;

    return-object v0
.end method
