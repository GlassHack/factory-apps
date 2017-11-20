.class public final Lcom/google/glass/android/glass/widget/CardScrollViewProvider;
.super Lcom/google/glass/inject/Provider;
.source "CardScrollViewProvider.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/glass/inject/Provider",
        "<",
        "Lcom/google/android/glass/widget/CardScrollView;",
        ">;"
    }
.end annotation


# static fields
.field private static final INSTANCE:Lcom/google/glass/android/glass/widget/CardScrollViewProvider;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 13
    new-instance v0, Lcom/google/glass/android/glass/widget/CardScrollViewProvider;

    invoke-direct {v0}, Lcom/google/glass/android/glass/widget/CardScrollViewProvider;-><init>()V

    sput-object v0, Lcom/google/glass/android/glass/widget/CardScrollViewProvider;->INSTANCE:Lcom/google/glass/android/glass/widget/CardScrollViewProvider;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .prologue
    .line 29
    invoke-direct {p0}, Lcom/google/glass/inject/Provider;-><init>()V

    return-void
.end method

.method public static final getInstance()Lcom/google/glass/android/glass/widget/CardScrollViewProvider;
    .locals 1

    .prologue
    .line 16
    sget-object v0, Lcom/google/glass/android/glass/widget/CardScrollViewProvider;->INSTANCE:Lcom/google/glass/android/glass/widget/CardScrollViewProvider;

    return-object v0
.end method


# virtual methods
.method public get(Landroid/content/Context;)Lcom/google/android/glass/widget/CardScrollView;
    .locals 1
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 20
    const-string v0, "null context"

    invoke-static {p1, v0}, Lcom/google/common/base/Preconditions;->checkNotNull(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 21
    new-instance v0, Lcom/google/glass/android/glass/widget/CardScrollViewProvider$1;

    invoke-direct {v0, p0, p1}, Lcom/google/glass/android/glass/widget/CardScrollViewProvider$1;-><init>(Lcom/google/glass/android/glass/widget/CardScrollViewProvider;Landroid/content/Context;)V

    invoke-super {p0, v0}, Lcom/google/glass/inject/Provider;->get(Lcom/google/common/base/Supplier;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/glass/widget/CardScrollView;

    return-object v0
.end method
