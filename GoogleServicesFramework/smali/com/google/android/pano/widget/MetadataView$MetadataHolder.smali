.class public Lcom/google/android/pano/widget/MetadataView$MetadataHolder;
.super Ljava/lang/Object;
.source "MetadataView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/pano/widget/MetadataView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "MetadataHolder"
.end annotation


# instance fields
.field public album:Ljava/lang/String;

.field public artist:Ljava/lang/String;

.field public artwork:Landroid/graphics/Bitmap;

.field public title:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 24
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 5
    .param p1, "o"    # Ljava/lang/Object;

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 32
    if-ne p0, p1, :cond_1

    .line 54
    :cond_0
    :goto_0
    return v1

    .line 35
    :cond_1
    if-eqz p1, :cond_2

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v4

    if-eq v3, v4, :cond_3

    :cond_2
    move v1, v2

    .line 36
    goto :goto_0

    :cond_3
    move-object v0, p1

    .line 39
    check-cast v0, Lcom/google/android/pano/widget/MetadataView$MetadataHolder;

    .line 41
    .local v0, "that":Lcom/google/android/pano/widget/MetadataView$MetadataHolder;
    iget-object v3, p0, Lcom/google/android/pano/widget/MetadataView$MetadataHolder;->album:Ljava/lang/String;

    if-eqz v3, :cond_5

    iget-object v3, p0, Lcom/google/android/pano/widget/MetadataView$MetadataHolder;->album:Ljava/lang/String;

    iget-object v4, v0, Lcom/google/android/pano/widget/MetadataView$MetadataHolder;->album:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_6

    :cond_4
    move v1, v2

    .line 42
    goto :goto_0

    .line 41
    :cond_5
    iget-object v3, v0, Lcom/google/android/pano/widget/MetadataView$MetadataHolder;->album:Ljava/lang/String;

    if-nez v3, :cond_4

    .line 44
    :cond_6
    iget-object v3, p0, Lcom/google/android/pano/widget/MetadataView$MetadataHolder;->artist:Ljava/lang/String;

    if-eqz v3, :cond_8

    iget-object v3, p0, Lcom/google/android/pano/widget/MetadataView$MetadataHolder;->artist:Ljava/lang/String;

    iget-object v4, v0, Lcom/google/android/pano/widget/MetadataView$MetadataHolder;->artist:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_9

    :cond_7
    move v1, v2

    .line 45
    goto :goto_0

    .line 44
    :cond_8
    iget-object v3, v0, Lcom/google/android/pano/widget/MetadataView$MetadataHolder;->artist:Ljava/lang/String;

    if-nez v3, :cond_7

    .line 47
    :cond_9
    iget-object v3, p0, Lcom/google/android/pano/widget/MetadataView$MetadataHolder;->artwork:Landroid/graphics/Bitmap;

    if-eqz v3, :cond_b

    iget-object v3, p0, Lcom/google/android/pano/widget/MetadataView$MetadataHolder;->artwork:Landroid/graphics/Bitmap;

    iget-object v4, v0, Lcom/google/android/pano/widget/MetadataView$MetadataHolder;->artwork:Landroid/graphics/Bitmap;

    invoke-virtual {v3, v4}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_c

    :cond_a
    move v1, v2

    .line 48
    goto :goto_0

    .line 47
    :cond_b
    iget-object v3, v0, Lcom/google/android/pano/widget/MetadataView$MetadataHolder;->artwork:Landroid/graphics/Bitmap;

    if-nez v3, :cond_a

    .line 50
    :cond_c
    iget-object v3, p0, Lcom/google/android/pano/widget/MetadataView$MetadataHolder;->title:Ljava/lang/String;

    if-eqz v3, :cond_d

    iget-object v3, p0, Lcom/google/android/pano/widget/MetadataView$MetadataHolder;->title:Ljava/lang/String;

    iget-object v4, v0, Lcom/google/android/pano/widget/MetadataView$MetadataHolder;->title:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_0

    :goto_1
    move v1, v2

    .line 51
    goto :goto_0

    .line 50
    :cond_d
    iget-object v3, v0, Lcom/google/android/pano/widget/MetadataView$MetadataHolder;->title:Ljava/lang/String;

    if-eqz v3, :cond_0

    goto :goto_1
.end method

.method public hashCode()I
    .locals 4

    .prologue
    const/4 v1, 0x0

    .line 59
    iget-object v2, p0, Lcom/google/android/pano/widget/MetadataView$MetadataHolder;->title:Ljava/lang/String;

    if-eqz v2, :cond_1

    iget-object v2, p0, Lcom/google/android/pano/widget/MetadataView$MetadataHolder;->title:Ljava/lang/String;

    invoke-virtual {v2}, Ljava/lang/String;->hashCode()I

    move-result v0

    .line 60
    .local v0, "result":I
    :goto_0
    mul-int/lit8 v3, v0, 0x1f

    iget-object v2, p0, Lcom/google/android/pano/widget/MetadataView$MetadataHolder;->artist:Ljava/lang/String;

    if-eqz v2, :cond_2

    iget-object v2, p0, Lcom/google/android/pano/widget/MetadataView$MetadataHolder;->artist:Ljava/lang/String;

    invoke-virtual {v2}, Ljava/lang/String;->hashCode()I

    move-result v2

    :goto_1
    add-int v0, v3, v2

    .line 61
    mul-int/lit8 v3, v0, 0x1f

    iget-object v2, p0, Lcom/google/android/pano/widget/MetadataView$MetadataHolder;->album:Ljava/lang/String;

    if-eqz v2, :cond_3

    iget-object v2, p0, Lcom/google/android/pano/widget/MetadataView$MetadataHolder;->album:Ljava/lang/String;

    invoke-virtual {v2}, Ljava/lang/String;->hashCode()I

    move-result v2

    :goto_2
    add-int v0, v3, v2

    .line 62
    mul-int/lit8 v2, v0, 0x1f

    iget-object v3, p0, Lcom/google/android/pano/widget/MetadataView$MetadataHolder;->artwork:Landroid/graphics/Bitmap;

    if-eqz v3, :cond_0

    iget-object v1, p0, Lcom/google/android/pano/widget/MetadataView$MetadataHolder;->artwork:Landroid/graphics/Bitmap;

    invoke-virtual {v1}, Ljava/lang/Object;->hashCode()I

    move-result v1

    :cond_0
    add-int v0, v2, v1

    .line 63
    return v0

    .end local v0    # "result":I
    :cond_1
    move v0, v1

    .line 59
    goto :goto_0

    .restart local v0    # "result":I
    :cond_2
    move v2, v1

    .line 60
    goto :goto_1

    :cond_3
    move v2, v1

    .line 61
    goto :goto_2
.end method
