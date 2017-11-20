.class public Lcom/google/glass/settings/ui/developer/RectBuilder;
.super Ljava/lang/Object;
.source "RectBuilder.java"


# instance fields
.field private bottom:Ljava/lang/Integer;

.field private height:Ljava/lang/Integer;

.field private left:Ljava/lang/Integer;

.field private right:Ljava/lang/Integer;

.field private top:Ljava/lang/Integer;

.field private width:Ljava/lang/Integer;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 19
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public build(II)Landroid/graphics/Rect;
    .locals 7
    .param p1, "containerWidth"    # I
    .param p2, "containerHeight"    # I

    .prologue
    .line 94
    const/4 v2, 0x0

    .line 95
    .local v2, "x":I
    const/4 v3, 0x0

    .line 96
    .local v3, "y":I
    const/4 v1, 0x0

    .line 97
    .local v1, "w":I
    const/4 v0, 0x0

    .line 99
    .local v0, "h":I
    iget-object v4, p0, Lcom/google/glass/settings/ui/developer/RectBuilder;->left:Ljava/lang/Integer;

    if-eqz v4, :cond_0

    iget-object v4, p0, Lcom/google/glass/settings/ui/developer/RectBuilder;->right:Ljava/lang/Integer;

    if-eqz v4, :cond_0

    iget-object v4, p0, Lcom/google/glass/settings/ui/developer/RectBuilder;->width:Ljava/lang/Integer;

    if-eqz v4, :cond_0

    .line 100
    new-instance v4, Ljava/lang/IllegalStateException;

    const-string v5, "Overspecified Box: exactly two of {left, right, width} must be provided"

    invoke-direct {v4, v5}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v4

    .line 102
    :cond_0
    iget-object v4, p0, Lcom/google/glass/settings/ui/developer/RectBuilder;->left:Ljava/lang/Integer;

    if-eqz v4, :cond_1

    iget-object v4, p0, Lcom/google/glass/settings/ui/developer/RectBuilder;->width:Ljava/lang/Integer;

    if-eqz v4, :cond_1

    .line 103
    iget-object v4, p0, Lcom/google/glass/settings/ui/developer/RectBuilder;->left:Ljava/lang/Integer;

    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v2

    .line 104
    iget-object v4, p0, Lcom/google/glass/settings/ui/developer/RectBuilder;->width:Ljava/lang/Integer;

    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v1

    .line 116
    :goto_0
    iget-object v4, p0, Lcom/google/glass/settings/ui/developer/RectBuilder;->top:Ljava/lang/Integer;

    if-eqz v4, :cond_4

    iget-object v4, p0, Lcom/google/glass/settings/ui/developer/RectBuilder;->bottom:Ljava/lang/Integer;

    if-eqz v4, :cond_4

    iget-object v4, p0, Lcom/google/glass/settings/ui/developer/RectBuilder;->height:Ljava/lang/Integer;

    if-eqz v4, :cond_4

    .line 117
    new-instance v4, Ljava/lang/IllegalStateException;

    const-string v5, "Overspecified Box: exactly two of {top, bottom, height} must be provided"

    invoke-direct {v4, v5}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v4

    .line 105
    :cond_1
    iget-object v4, p0, Lcom/google/glass/settings/ui/developer/RectBuilder;->left:Ljava/lang/Integer;

    if-eqz v4, :cond_2

    iget-object v4, p0, Lcom/google/glass/settings/ui/developer/RectBuilder;->right:Ljava/lang/Integer;

    if-eqz v4, :cond_2

    .line 106
    iget-object v4, p0, Lcom/google/glass/settings/ui/developer/RectBuilder;->left:Ljava/lang/Integer;

    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v2

    .line 107
    iget-object v4, p0, Lcom/google/glass/settings/ui/developer/RectBuilder;->right:Ljava/lang/Integer;

    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v4

    sub-int v4, p1, v4

    sub-int v1, v4, v2

    goto :goto_0

    .line 108
    :cond_2
    iget-object v4, p0, Lcom/google/glass/settings/ui/developer/RectBuilder;->right:Ljava/lang/Integer;

    if-eqz v4, :cond_3

    iget-object v4, p0, Lcom/google/glass/settings/ui/developer/RectBuilder;->width:Ljava/lang/Integer;

    if-eqz v4, :cond_3

    .line 109
    iget-object v4, p0, Lcom/google/glass/settings/ui/developer/RectBuilder;->width:Ljava/lang/Integer;

    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v1

    .line 110
    iget-object v4, p0, Lcom/google/glass/settings/ui/developer/RectBuilder;->right:Ljava/lang/Integer;

    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v4

    sub-int v4, p1, v4

    sub-int v2, v4, v1

    goto :goto_0

    .line 112
    :cond_3
    new-instance v4, Ljava/lang/IllegalStateException;

    const-string v5, "Underspecified Box: exactly two of {left, right, width} must be provided"

    invoke-direct {v4, v5}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v4

    .line 119
    :cond_4
    iget-object v4, p0, Lcom/google/glass/settings/ui/developer/RectBuilder;->top:Ljava/lang/Integer;

    if-eqz v4, :cond_5

    iget-object v4, p0, Lcom/google/glass/settings/ui/developer/RectBuilder;->height:Ljava/lang/Integer;

    if-eqz v4, :cond_5

    .line 120
    iget-object v4, p0, Lcom/google/glass/settings/ui/developer/RectBuilder;->top:Ljava/lang/Integer;

    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v3

    .line 121
    iget-object v4, p0, Lcom/google/glass/settings/ui/developer/RectBuilder;->height:Ljava/lang/Integer;

    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v0

    .line 133
    :goto_1
    new-instance v4, Landroid/graphics/Rect;

    add-int v5, v2, v1

    add-int v6, v3, v0

    invoke-direct {v4, v2, v3, v5, v6}, Landroid/graphics/Rect;-><init>(IIII)V

    return-object v4

    .line 122
    :cond_5
    iget-object v4, p0, Lcom/google/glass/settings/ui/developer/RectBuilder;->top:Ljava/lang/Integer;

    if-eqz v4, :cond_6

    iget-object v4, p0, Lcom/google/glass/settings/ui/developer/RectBuilder;->bottom:Ljava/lang/Integer;

    if-eqz v4, :cond_6

    .line 123
    iget-object v4, p0, Lcom/google/glass/settings/ui/developer/RectBuilder;->top:Ljava/lang/Integer;

    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v3

    .line 124
    iget-object v4, p0, Lcom/google/glass/settings/ui/developer/RectBuilder;->bottom:Ljava/lang/Integer;

    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v4

    sub-int v4, p2, v4

    sub-int v0, v4, v3

    goto :goto_1

    .line 125
    :cond_6
    iget-object v4, p0, Lcom/google/glass/settings/ui/developer/RectBuilder;->bottom:Ljava/lang/Integer;

    if-eqz v4, :cond_7

    iget-object v4, p0, Lcom/google/glass/settings/ui/developer/RectBuilder;->height:Ljava/lang/Integer;

    if-eqz v4, :cond_7

    .line 126
    iget-object v4, p0, Lcom/google/glass/settings/ui/developer/RectBuilder;->height:Ljava/lang/Integer;

    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v0

    .line 127
    iget-object v4, p0, Lcom/google/glass/settings/ui/developer/RectBuilder;->bottom:Ljava/lang/Integer;

    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v4

    sub-int v4, p2, v4

    sub-int v3, v4, v0

    goto :goto_1

    .line 129
    :cond_7
    new-instance v4, Ljava/lang/IllegalStateException;

    const-string v5, "Underspecified Box: exactly two of {top, bottom, height} must be provided"

    invoke-direct {v4, v5}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v4
.end method

.method public setBottom(I)Lcom/google/glass/settings/ui/developer/RectBuilder;
    .locals 1
    .param p1, "b"    # I

    .prologue
    .line 75
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    iput-object v0, p0, Lcom/google/glass/settings/ui/developer/RectBuilder;->bottom:Ljava/lang/Integer;

    .line 76
    return-object p0
.end method

.method public setHeight(I)Lcom/google/glass/settings/ui/developer/RectBuilder;
    .locals 1
    .param p1, "h"    # I

    .prologue
    .line 85
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    iput-object v0, p0, Lcom/google/glass/settings/ui/developer/RectBuilder;->height:Ljava/lang/Integer;

    .line 86
    return-object p0
.end method

.method public setLeft(I)Lcom/google/glass/settings/ui/developer/RectBuilder;
    .locals 1
    .param p1, "l"    # I

    .prologue
    .line 35
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    iput-object v0, p0, Lcom/google/glass/settings/ui/developer/RectBuilder;->left:Ljava/lang/Integer;

    .line 36
    return-object p0
.end method

.method public setRight(I)Lcom/google/glass/settings/ui/developer/RectBuilder;
    .locals 1
    .param p1, "r"    # I

    .prologue
    .line 45
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    iput-object v0, p0, Lcom/google/glass/settings/ui/developer/RectBuilder;->right:Ljava/lang/Integer;

    .line 46
    return-object p0
.end method

.method public setTop(I)Lcom/google/glass/settings/ui/developer/RectBuilder;
    .locals 1
    .param p1, "t"    # I

    .prologue
    .line 65
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    iput-object v0, p0, Lcom/google/glass/settings/ui/developer/RectBuilder;->top:Ljava/lang/Integer;

    .line 66
    return-object p0
.end method

.method public setWidth(I)Lcom/google/glass/settings/ui/developer/RectBuilder;
    .locals 1
    .param p1, "w"    # I

    .prologue
    .line 55
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    iput-object v0, p0, Lcom/google/glass/settings/ui/developer/RectBuilder;->width:Ljava/lang/Integer;

    .line 56
    return-object p0
.end method
