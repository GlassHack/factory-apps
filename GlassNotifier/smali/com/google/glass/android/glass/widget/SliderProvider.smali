.class public final Lcom/google/glass/android/glass/widget/SliderProvider;
.super Lcom/google/glass/inject/Provider;
.source "SliderProvider.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/glass/inject/Provider",
        "<",
        "Lcom/google/android/glass/widget/Slider;",
        ">;"
    }
.end annotation


# static fields
.field private static final INSTANCE:Lcom/google/glass/android/glass/widget/SliderProvider;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 15
    new-instance v0, Lcom/google/glass/android/glass/widget/SliderProvider;

    invoke-direct {v0}, Lcom/google/glass/android/glass/widget/SliderProvider;-><init>()V

    sput-object v0, Lcom/google/glass/android/glass/widget/SliderProvider;->INSTANCE:Lcom/google/glass/android/glass/widget/SliderProvider;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .prologue
    .line 17
    invoke-direct {p0}, Lcom/google/glass/inject/Provider;-><init>()V

    return-void
.end method

.method public static getInstance()Lcom/google/glass/android/glass/widget/SliderProvider;
    .locals 1

    .prologue
    .line 20
    sget-object v0, Lcom/google/glass/android/glass/widget/SliderProvider;->INSTANCE:Lcom/google/glass/android/glass/widget/SliderProvider;

    return-object v0
.end method


# virtual methods
.method public get(Landroid/view/View;)Lcom/google/android/glass/widget/Slider;
    .locals 1
    .param p1, "view"    # Landroid/view/View;

    .prologue
    .line 30
    const-string v0, "null view"

    invoke-static {p1, v0}, Lcom/google/common/base/Preconditions;->checkNotNull(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 31
    new-instance v0, Lcom/google/glass/android/glass/widget/SliderProvider$1;

    invoke-direct {v0, p0, p1}, Lcom/google/glass/android/glass/widget/SliderProvider$1;-><init>(Lcom/google/glass/android/glass/widget/SliderProvider;Landroid/view/View;)V

    invoke-super {p0, v0}, Lcom/google/glass/inject/Provider;->get(Lcom/google/common/base/Supplier;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/glass/widget/Slider;

    return-object v0
.end method
