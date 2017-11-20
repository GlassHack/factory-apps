.class Lcom/google/glass/camera/exif/ExifReader;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field private static final TAG:Ljava/lang/String; = "ExifReader"


# instance fields
.field private final mInterface:Lcom/google/glass/camera/exif/ExifInterface;


# direct methods
.method constructor <init>(Lcom/google/glass/camera/exif/ExifInterface;)V
    .locals 0

    .prologue
    .line 33
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 34
    iput-object p1, p0, Lcom/google/glass/camera/exif/ExifReader;->mInterface:Lcom/google/glass/camera/exif/ExifInterface;

    .line 35
    return-void
.end method


# virtual methods
.method protected read(Ljava/io/InputStream;)Lcom/google/glass/camera/exif/ExifData;
    .locals 5

    .prologue
    .line 46
    iget-object v0, p0, Lcom/google/glass/camera/exif/ExifReader;->mInterface:Lcom/google/glass/camera/exif/ExifInterface;

    invoke-static {p1, v0}, Lcom/google/glass/camera/exif/ExifParser;->parse(Ljava/io/InputStream;Lcom/google/glass/camera/exif/ExifInterface;)Lcom/google/glass/camera/exif/ExifParser;

    move-result-object v1

    .line 47
    new-instance v2, Lcom/google/glass/camera/exif/ExifData;

    invoke-virtual {v1}, Lcom/google/glass/camera/exif/ExifParser;->getByteOrder()Ljava/nio/ByteOrder;

    move-result-object v0

    invoke-direct {v2, v0}, Lcom/google/glass/camera/exif/ExifData;-><init>(Ljava/nio/ByteOrder;)V

    .line 48
    invoke-virtual {v1}, Lcom/google/glass/camera/exif/ExifParser;->next()I

    move-result v0

    .line 51
    :goto_0
    const/4 v3, 0x5

    if-eq v0, v3, :cond_4

    .line 52
    packed-switch v0, :pswitch_data_0

    .line 88
    :goto_1
    invoke-virtual {v1}, Lcom/google/glass/camera/exif/ExifParser;->next()I

    move-result v0

    goto :goto_0

    .line 54
    :pswitch_0
    new-instance v0, Lcom/google/glass/camera/exif/IfdData;

    invoke-virtual {v1}, Lcom/google/glass/camera/exif/ExifParser;->getCurrentIfd()I

    move-result v3

    invoke-direct {v0, v3}, Lcom/google/glass/camera/exif/IfdData;-><init>(I)V

    invoke-virtual {v2, v0}, Lcom/google/glass/camera/exif/ExifData;->addIfdData(Lcom/google/glass/camera/exif/IfdData;)V

    goto :goto_1

    .line 57
    :pswitch_1
    invoke-virtual {v1}, Lcom/google/glass/camera/exif/ExifParser;->getTag()Lcom/google/glass/camera/exif/ExifTag;

    move-result-object v0

    .line 58
    invoke-virtual {v0}, Lcom/google/glass/camera/exif/ExifTag;->hasValue()Z

    move-result v3

    if-nez v3, :cond_0

    .line 59
    invoke-virtual {v1, v0}, Lcom/google/glass/camera/exif/ExifParser;->registerForTagValue(Lcom/google/glass/camera/exif/ExifTag;)V

    goto :goto_1

    .line 61
    :cond_0
    invoke-virtual {v0}, Lcom/google/glass/camera/exif/ExifTag;->getIfd()I

    move-result v3

    invoke-virtual {v2, v3}, Lcom/google/glass/camera/exif/ExifData;->getIfdData(I)Lcom/google/glass/camera/exif/IfdData;

    move-result-object v3

    invoke-virtual {v3, v0}, Lcom/google/glass/camera/exif/IfdData;->setTag(Lcom/google/glass/camera/exif/ExifTag;)Lcom/google/glass/camera/exif/ExifTag;

    goto :goto_1

    .line 65
    :pswitch_2
    invoke-virtual {v1}, Lcom/google/glass/camera/exif/ExifParser;->getTag()Lcom/google/glass/camera/exif/ExifTag;

    move-result-object v0

    .line 66
    invoke-virtual {v0}, Lcom/google/glass/camera/exif/ExifTag;->getDataType()S

    move-result v3

    const/4 v4, 0x7

    if-ne v3, v4, :cond_1

    .line 67
    invoke-virtual {v1, v0}, Lcom/google/glass/camera/exif/ExifParser;->readFullTagValue(Lcom/google/glass/camera/exif/ExifTag;)V

    .line 69
    :cond_1
    invoke-virtual {v0}, Lcom/google/glass/camera/exif/ExifTag;->getIfd()I

    move-result v3

    invoke-virtual {v2, v3}, Lcom/google/glass/camera/exif/ExifData;->getIfdData(I)Lcom/google/glass/camera/exif/IfdData;

    move-result-object v3

    invoke-virtual {v3, v0}, Lcom/google/glass/camera/exif/IfdData;->setTag(Lcom/google/glass/camera/exif/ExifTag;)Lcom/google/glass/camera/exif/ExifTag;

    goto :goto_1

    .line 72
    :pswitch_3
    invoke-virtual {v1}, Lcom/google/glass/camera/exif/ExifParser;->getCompressedImageSize()I

    move-result v0

    new-array v0, v0, [B

    .line 73
    array-length v3, v0

    invoke-virtual {v1, v0}, Lcom/google/glass/camera/exif/ExifParser;->read([B)I

    move-result v4

    if-ne v3, v4, :cond_2

    .line 74
    invoke-virtual {v2, v0}, Lcom/google/glass/camera/exif/ExifData;->setCompressedThumbnail([B)V

    goto :goto_1

    .line 76
    :cond_2
    const-string v0, "ExifReader"

    const-string v3, "Failed to read the compressed thumbnail"

    invoke-static {v0, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    .line 80
    :pswitch_4
    invoke-virtual {v1}, Lcom/google/glass/camera/exif/ExifParser;->getStripSize()I

    move-result v0

    new-array v0, v0, [B

    .line 81
    array-length v3, v0

    invoke-virtual {v1, v0}, Lcom/google/glass/camera/exif/ExifParser;->read([B)I

    move-result v4

    if-ne v3, v4, :cond_3

    .line 82
    invoke-virtual {v1}, Lcom/google/glass/camera/exif/ExifParser;->getStripIndex()I

    move-result v3

    invoke-virtual {v2, v3, v0}, Lcom/google/glass/camera/exif/ExifData;->setStripBytes(I[B)V

    goto :goto_1

    .line 84
    :cond_3
    const-string v0, "ExifReader"

    const-string v3, "Failed to read the strip bytes"

    invoke-static {v0, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    .line 90
    :cond_4
    return-object v2

    .line 52
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
    .end packed-switch
.end method
