.class public Lcom/google/glass/settings/ui/developer/AnimationScaleHelper;
.super Ljava/lang/Object;
.source "AnimationScaleHelper.java"


# instance fields
.field private final scales:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/google/glass/settings/ui/developer/AnimationScale;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Landroid/content/res/Resources;)V
    .locals 9
    .param p1, "resources"    # Landroid/content/res/Resources;

    .prologue
    .line 23
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 24
    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    iput-object v4, p0, Lcom/google/glass/settings/ui/developer/AnimationScaleHelper;->scales:Ljava/util/List;

    .line 26
    sget v4, Lcom/google/glass/settings/ui/R$array;->developer_setting_animation_scales:I

    invoke-virtual {p1, v4}, Landroid/content/res/Resources;->obtainTypedArray(I)Landroid/content/res/TypedArray;

    move-result-object v3

    .line 27
    .local v3, "valueArray":Landroid/content/res/TypedArray;
    sget v4, Lcom/google/glass/settings/ui/R$array;->developer_setting_animation_scale_titles:I

    .line 28
    invoke-virtual {p1, v4}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v1

    .line 29
    .local v1, "animationScaleTitles":[Ljava/lang/String;
    sget v4, Lcom/google/glass/settings/ui/R$array;->developer_setting_animation_scale_descriptions:I

    .line 30
    invoke-virtual {p1, v4}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v0

    .line 32
    .local v0, "animationScaleDescriptions":[Ljava/lang/String;
    invoke-virtual {v3}, Landroid/content/res/TypedArray;->length()I

    move-result v4

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    array-length v5, v1

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/google/glass/predicates/Assert;->assertEquals(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 33
    invoke-virtual {v3}, Landroid/content/res/TypedArray;->length()I

    move-result v4

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    array-length v5, v0

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/google/glass/predicates/Assert;->assertEquals(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 35
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_0
    invoke-virtual {v3}, Landroid/content/res/TypedArray;->length()I

    move-result v4

    if-ge v2, v4, :cond_0

    .line 36
    iget-object v4, p0, Lcom/google/glass/settings/ui/developer/AnimationScaleHelper;->scales:Ljava/util/List;

    new-instance v5, Lcom/google/glass/settings/ui/developer/AnimationScale;

    const/high16 v6, 0x3f800000    # 1.0f

    .line 37
    invoke-virtual {v3, v2, v6}, Landroid/content/res/TypedArray;->getFloat(IF)F

    move-result v6

    aget-object v7, v1, v2

    aget-object v8, v0, v2

    invoke-direct {v5, v2, v6, v7, v8}, Lcom/google/glass/settings/ui/developer/AnimationScale;-><init>(IFLjava/lang/String;Ljava/lang/String;)V

    .line 36
    invoke-interface {v4, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 35
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 40
    :cond_0
    invoke-virtual {v3}, Landroid/content/res/TypedArray;->recycle()V

    .line 41
    return-void
.end method


# virtual methods
.method public findScale(F)Lcom/google/glass/settings/ui/developer/AnimationScale;
    .locals 4
    .param p1, "scale"    # F

    .prologue
    .line 54
    iget-object v2, p0, Lcom/google/glass/settings/ui/developer/AnimationScaleHelper;->scales:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/glass/settings/ui/developer/AnimationScale;

    .line 55
    .local v0, "animationScale":Lcom/google/glass/settings/ui/developer/AnimationScale;
    iget v1, v0, Lcom/google/glass/settings/ui/developer/AnimationScale;->value:F

    .line 56
    .local v1, "val":F
    cmpg-float v3, p1, v1

    if-gtz v3, :cond_0

    .line 60
    .end local v0    # "animationScale":Lcom/google/glass/settings/ui/developer/AnimationScale;
    .end local v1    # "val":F
    :goto_0
    return-object v0

    :cond_1
    iget-object v2, p0, Lcom/google/glass/settings/ui/developer/AnimationScaleHelper;->scales:Ljava/util/List;

    iget-object v3, p0, Lcom/google/glass/settings/ui/developer/AnimationScaleHelper;->scales:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v3

    add-int/lit8 v3, v3, -0x1

    invoke-interface {v2, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/google/glass/settings/ui/developer/AnimationScale;

    move-object v0, v2

    goto :goto_0
.end method

.method public getScales()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/google/glass/settings/ui/developer/AnimationScale;",
            ">;"
        }
    .end annotation

    .prologue
    .line 45
    iget-object v0, p0, Lcom/google/glass/settings/ui/developer/AnimationScaleHelper;->scales:Ljava/util/List;

    invoke-static {v0}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method
