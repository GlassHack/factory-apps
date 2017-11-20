.class public final enum Lcom/google/android/apps/lightcycle/opengl/GLTexture$TextureType;
.super Ljava/lang/Enum;
.source "GLTexture.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/apps/lightcycle/opengl/GLTexture;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "TextureType"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/google/android/apps/lightcycle/opengl/GLTexture$TextureType;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/google/android/apps/lightcycle/opengl/GLTexture$TextureType;

.field public static final enum NearestNeighbor:Lcom/google/android/apps/lightcycle/opengl/GLTexture$TextureType;

.field public static final enum Standard:Lcom/google/android/apps/lightcycle/opengl/GLTexture$TextureType;


# direct methods
.method static constructor <clinit>()V
    .locals 4

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 22
    new-instance v0, Lcom/google/android/apps/lightcycle/opengl/GLTexture$TextureType;

    const-string v1, "Standard"

    invoke-direct {v0, v1, v2}, Lcom/google/android/apps/lightcycle/opengl/GLTexture$TextureType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/google/android/apps/lightcycle/opengl/GLTexture$TextureType;->Standard:Lcom/google/android/apps/lightcycle/opengl/GLTexture$TextureType;

    new-instance v0, Lcom/google/android/apps/lightcycle/opengl/GLTexture$TextureType;

    const-string v1, "NearestNeighbor"

    invoke-direct {v0, v1, v3}, Lcom/google/android/apps/lightcycle/opengl/GLTexture$TextureType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/google/android/apps/lightcycle/opengl/GLTexture$TextureType;->NearestNeighbor:Lcom/google/android/apps/lightcycle/opengl/GLTexture$TextureType;

    .line 21
    const/4 v0, 0x2

    new-array v0, v0, [Lcom/google/android/apps/lightcycle/opengl/GLTexture$TextureType;

    sget-object v1, Lcom/google/android/apps/lightcycle/opengl/GLTexture$TextureType;->Standard:Lcom/google/android/apps/lightcycle/opengl/GLTexture$TextureType;

    aput-object v1, v0, v2

    sget-object v1, Lcom/google/android/apps/lightcycle/opengl/GLTexture$TextureType;->NearestNeighbor:Lcom/google/android/apps/lightcycle/opengl/GLTexture$TextureType;

    aput-object v1, v0, v3

    sput-object v0, Lcom/google/android/apps/lightcycle/opengl/GLTexture$TextureType;->$VALUES:[Lcom/google/android/apps/lightcycle/opengl/GLTexture$TextureType;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .prologue
    .line 21
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/google/android/apps/lightcycle/opengl/GLTexture$TextureType;
    .locals 1
    .param p0, "name"    # Ljava/lang/String;

    .prologue
    .line 21
    const-class v0, Lcom/google/android/apps/lightcycle/opengl/GLTexture$TextureType;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/google/android/apps/lightcycle/opengl/GLTexture$TextureType;

    return-object v0
.end method

.method public static values()[Lcom/google/android/apps/lightcycle/opengl/GLTexture$TextureType;
    .locals 1

    .prologue
    .line 21
    sget-object v0, Lcom/google/android/apps/lightcycle/opengl/GLTexture$TextureType;->$VALUES:[Lcom/google/android/apps/lightcycle/opengl/GLTexture$TextureType;

    invoke-virtual {v0}, [Lcom/google/android/apps/lightcycle/opengl/GLTexture$TextureType;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/google/android/apps/lightcycle/opengl/GLTexture$TextureType;

    return-object v0
.end method
