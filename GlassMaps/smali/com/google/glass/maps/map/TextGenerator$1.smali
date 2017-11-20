.class Lcom/google/glass/maps/map/TextGenerator$1;
.super Landroid/util/LruCache;
.source "SourceFile"


# instance fields
.field final synthetic this$0:Lcom/google/glass/maps/map/TextGenerator;


# direct methods
.method constructor <init>(Lcom/google/glass/maps/map/TextGenerator;I)V
    .locals 0

    .prologue
    .line 83
    iput-object p1, p0, Lcom/google/glass/maps/map/TextGenerator$1;->this$0:Lcom/google/glass/maps/map/TextGenerator;

    invoke-direct {p0, p2}, Landroid/util/LruCache;-><init>(I)V

    return-void
.end method


# virtual methods
.method protected entryRemoved(ZLcom/google/glass/maps/map/TextGenerator$TextureCacheKey;Lcom/google/glass/maps/opengl/Texture;Lcom/google/glass/maps/opengl/Texture;)V
    .locals 0

    .prologue
    .line 87
    invoke-virtual {p3}, Lcom/google/glass/maps/opengl/Texture;->releaseRef()V

    .line 88
    return-void
.end method

.method protected bridge synthetic entryRemoved(ZLjava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V
    .locals 0

    .prologue
    .line 83
    check-cast p2, Lcom/google/glass/maps/map/TextGenerator$TextureCacheKey;

    check-cast p3, Lcom/google/glass/maps/opengl/Texture;

    check-cast p4, Lcom/google/glass/maps/opengl/Texture;

    invoke-virtual {p0, p1, p2, p3, p4}, Lcom/google/glass/maps/map/TextGenerator$1;->entryRemoved(ZLcom/google/glass/maps/map/TextGenerator$TextureCacheKey;Lcom/google/glass/maps/opengl/Texture;Lcom/google/glass/maps/opengl/Texture;)V

    return-void
.end method
