.class public Lcom/google/glass/maps/opengl/Texture$Cache;
.super Lcom/google/android/maps/driveabout/util/g;
.source "SourceFile"


# direct methods
.method public constructor <init>(I)V
    .locals 0

    .prologue
    .line 383
    invoke-direct {p0, p1}, Lcom/google/android/maps/driveabout/util/g;-><init>(I)V

    .line 384
    return-void
.end method


# virtual methods
.method public onEject(Ljava/lang/Object;Lcom/google/glass/maps/opengl/Texture;)V
    .locals 0

    .prologue
    .line 388
    invoke-virtual {p2}, Lcom/google/glass/maps/opengl/Texture;->releaseRef()V

    .line 389
    return-void
.end method

.method public bridge synthetic onEject(Ljava/lang/Object;Ljava/lang/Object;)V
    .locals 0

    .prologue
    .line 381
    check-cast p2, Lcom/google/glass/maps/opengl/Texture;

    invoke-virtual {p0, p1, p2}, Lcom/google/glass/maps/opengl/Texture$Cache;->onEject(Ljava/lang/Object;Lcom/google/glass/maps/opengl/Texture;)V

    return-void
.end method
