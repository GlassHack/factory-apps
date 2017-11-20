.class public interface abstract Lcom/google/glass/camera/MediaItem;
.super Ljava/lang/Object;
.source "MediaItem.java"


# static fields
.field public static final PICTURE_TYPE:Ljava/lang/String; = "image/jpeg"

.field public static final VIDEO_TYPE:Ljava/lang/String; = "video/mp4"


# virtual methods
.method public abstract delete(Landroid/content/Context;)Z
.end method

.method public abstract getFilePath()Ljava/lang/String;
.end method

.method public abstract getMimeType()Ljava/lang/String;
.end method

.method public abstract getThumbnailBitmap()Landroid/graphics/Bitmap;
.end method

.method public abstract isDeleted()Z
.end method
