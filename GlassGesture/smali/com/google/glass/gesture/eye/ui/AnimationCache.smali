.class public final Lcom/google/glass/gesture/eye/ui/AnimationCache;
.super Ljava/lang/Object;
.source "AnimationCache.java"


# static fields
.field private static final PRELOAD_ANIMATION_ARRAY:[I

.field private static instance:Lcom/google/glass/gesture/eye/ui/AnimationCache;


# instance fields
.field private context:Landroid/content/Context;

.field private drawables:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/Integer;",
            "Landroid/graphics/drawable/AnimationDrawable;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    .line 15
    const/4 v0, 0x3

    new-array v0, v0, [I

    const/4 v1, 0x0

    sget v2, Lcom/google/glass/gesture/R$drawable;->open_eye_alpha_animation:I

    aput v2, v0, v1

    const/4 v1, 0x1

    sget v2, Lcom/google/glass/gesture/R$drawable;->close_eye_alpha_animation:I

    aput v2, v0, v1

    const/4 v1, 0x2

    sget v2, Lcom/google/glass/gesture/R$drawable;->wink_alpha_animation:I

    aput v2, v0, v1

    sput-object v0, Lcom/google/glass/gesture/eye/ui/AnimationCache;->PRELOAD_ANIMATION_ARRAY:[I

    return-void
.end method

.method private constructor <init>(Landroid/content/Context;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 26
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 27
    new-instance v0, Landroid/util/ArrayMap;

    invoke-direct {v0}, Landroid/util/ArrayMap;-><init>()V

    iput-object v0, p0, Lcom/google/glass/gesture/eye/ui/AnimationCache;->drawables:Ljava/util/Map;

    .line 28
    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    iput-object v0, p0, Lcom/google/glass/gesture/eye/ui/AnimationCache;->context:Landroid/content/Context;

    .line 29
    return-void
.end method

.method public static getInstance(Landroid/content/Context;)Lcom/google/glass/gesture/eye/ui/AnimationCache;
    .locals 1
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 50
    sget-object v0, Lcom/google/glass/gesture/eye/ui/AnimationCache;->instance:Lcom/google/glass/gesture/eye/ui/AnimationCache;

    if-nez v0, :cond_0

    new-instance v0, Lcom/google/glass/gesture/eye/ui/AnimationCache;

    invoke-direct {v0, p0}, Lcom/google/glass/gesture/eye/ui/AnimationCache;-><init>(Landroid/content/Context;)V

    sput-object v0, Lcom/google/glass/gesture/eye/ui/AnimationCache;->instance:Lcom/google/glass/gesture/eye/ui/AnimationCache;

    :goto_0
    return-object v0

    :cond_0
    sget-object v0, Lcom/google/glass/gesture/eye/ui/AnimationCache;->instance:Lcom/google/glass/gesture/eye/ui/AnimationCache;

    goto :goto_0
.end method


# virtual methods
.method public get(I)Landroid/graphics/drawable/AnimationDrawable;
    .locals 3
    .param p1, "animation"    # I

    .prologue
    .line 41
    iget-object v1, p0, Lcom/google/glass/gesture/eye/ui/AnimationCache;->drawables:Ljava/util/Map;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/graphics/drawable/AnimationDrawable;

    .line 42
    .local v0, "drawable":Landroid/graphics/drawable/AnimationDrawable;
    if-nez v0, :cond_0

    .line 43
    iget-object v1, p0, Lcom/google/glass/gesture/eye/ui/AnimationCache;->context:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1, p1}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    .end local v0    # "drawable":Landroid/graphics/drawable/AnimationDrawable;
    check-cast v0, Landroid/graphics/drawable/AnimationDrawable;

    .line 44
    .restart local v0    # "drawable":Landroid/graphics/drawable/AnimationDrawable;
    iget-object v1, p0, Lcom/google/glass/gesture/eye/ui/AnimationCache;->drawables:Ljava/util/Map;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v1, v2, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 46
    :cond_0
    return-object v0
.end method

.method public preload()V
    .locals 4

    .prologue
    .line 33
    iget-object v1, p0, Lcom/google/glass/gesture/eye/ui/AnimationCache;->drawables:Ljava/util/Map;

    invoke-interface {v1}, Ljava/util/Map;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 34
    sget-object v2, Lcom/google/glass/gesture/eye/ui/AnimationCache;->PRELOAD_ANIMATION_ARRAY:[I

    array-length v3, v2

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v3, :cond_0

    aget v0, v2, v1

    .line 35
    .local v0, "resId":I
    invoke-virtual {p0, v0}, Lcom/google/glass/gesture/eye/ui/AnimationCache;->get(I)Landroid/graphics/drawable/AnimationDrawable;

    .line 34
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 38
    .end local v0    # "resId":I
    :cond_0
    return-void
.end method
