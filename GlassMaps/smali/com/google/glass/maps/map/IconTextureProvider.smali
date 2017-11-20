.class public Lcom/google/glass/maps/map/IconTextureProvider;
.super Lcom/google/glass/maps/map/TextureProvider;
.source "SourceFile"


# instance fields
.field private bitmap:Landroid/graphics/Bitmap;


# direct methods
.method public constructor <init>(Lcom/google/glass/maps/opengl/TextureAllocator;Landroid/graphics/Bitmap;)V
    .locals 2

    .prologue
    .line 23
    invoke-virtual {p2}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v0

    invoke-virtual {p2}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v1

    invoke-direct {p0, p1, v0, v1}, Lcom/google/glass/maps/map/TextureProvider;-><init>(Lcom/google/glass/maps/opengl/TextureAllocator;II)V

    .line 24
    iput-object p2, p0, Lcom/google/glass/maps/map/IconTextureProvider;->bitmap:Landroid/graphics/Bitmap;

    .line 25
    return-void
.end method


# virtual methods
.method public createTexture()Lcom/google/glass/maps/opengl/Texture;
    .locals 3

    .prologue
    const/4 v1, 0x0

    .line 29
    iget-object v0, p0, Lcom/google/glass/maps/map/IconTextureProvider;->bitmap:Landroid/graphics/Bitmap;

    if-eqz v0, :cond_0

    .line 30
    new-instance v0, Lcom/google/glass/maps/opengl/Texture;

    iget-object v2, p0, Lcom/google/glass/maps/map/IconTextureProvider;->textureAllocator:Lcom/google/glass/maps/opengl/TextureAllocator;

    invoke-direct {v0, v2}, Lcom/google/glass/maps/opengl/Texture;-><init>(Lcom/google/glass/maps/opengl/TextureAllocator;)V

    .line 31
    iget-object v2, p0, Lcom/google/glass/maps/map/IconTextureProvider;->bitmap:Landroid/graphics/Bitmap;

    invoke-virtual {v0, v2}, Lcom/google/glass/maps/opengl/Texture;->load(Landroid/graphics/Bitmap;)V

    .line 32
    iput-object v1, p0, Lcom/google/glass/maps/map/IconTextureProvider;->bitmap:Landroid/graphics/Bitmap;

    .line 35
    :goto_0
    return-object v0

    :cond_0
    move-object v0, v1

    goto :goto_0
.end method
