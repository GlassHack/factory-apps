.class public Lcom/google/android/speech/audio/AudioUtils;
.super Ljava/lang/Object;
.source "AudioUtils.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/android/speech/audio/AudioUtils$1;,
        Lcom/google/android/speech/audio/AudioUtils$Encoding;
    }
.end annotation


# static fields
.field private static final AMR_AUDIO_FILE_HEADER:Ljava/lang/String; = "#!AMR\n"

.field private static final AMR_INPUT_STREAM_CLASS:Ljava/lang/String; = "android.media.AmrInputStream"

.field public static final BYTES_PER_SAMPLE:I = 0x2

.field public static final DEFAULT_SAMPLING_RATE:I = 0x1f40

.field private static final EFFECT_TYPE_NOISE_SUPPRESSOR:Ljava/util/UUID;

.field private static final MAX_AMR_NB_BYTES_PER_S3REQUEST:I = 0x180

.field private static sAmrInputStreamConstructor:Ljava/lang/reflect/Constructor;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/reflect/Constructor",
            "<+",
            "Ljava/io/InputStream;",
            ">;"
        }
    .end annotation

    .annotation build Ljavax/annotation/concurrent/GuardedBy;
        value = "Utils.class"
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 30
    const-string v0, "58b4b260-8e06-11e0-aa8e-0002a5d5c51b"

    invoke-static {v0}, Ljava/util/UUID;->fromString(Ljava/lang/String;)Ljava/util/UUID;

    move-result-object v0

    sput-object v0, Lcom/google/android/speech/audio/AudioUtils;->EFFECT_TYPE_NOISE_SUPPRESSOR:Ljava/util/UUID;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .prologue
    .line 96
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 98
    return-void
.end method

.method private static createAmrInputStream(Ljava/io/InputStream;)Ljava/io/InputStream;
    .locals 6
    .param p0, "is"    # Ljava/io/InputStream;

    .prologue
    .line 189
    :try_start_0
    const-class v3, Lcom/google/android/speech/audio/AudioUtils;

    monitor-enter v3
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 190
    :try_start_1
    sget-object v2, Lcom/google/android/speech/audio/AudioUtils;->sAmrInputStreamConstructor:Ljava/lang/reflect/Constructor;

    if-nez v2, :cond_0

    .line 192
    const-string v2, "android.media.AmrInputStream"

    invoke-static {v2}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    .line 195
    .local v0, "clazz":Ljava/lang/Class;, "Ljava/lang/Class<+Ljava/io/InputStream;>;"
    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Class;

    const/4 v4, 0x0

    const-class v5, Ljava/io/InputStream;

    aput-object v5, v2, v4

    invoke-virtual {v0, v2}, Ljava/lang/Class;->getConstructor([Ljava/lang/Class;)Ljava/lang/reflect/Constructor;

    move-result-object v2

    sput-object v2, Lcom/google/android/speech/audio/AudioUtils;->sAmrInputStreamConstructor:Ljava/lang/reflect/Constructor;

    .line 197
    .end local v0    # "clazz":Ljava/lang/Class;, "Ljava/lang/Class<+Ljava/io/InputStream;>;"
    :cond_0
    sget-object v2, Lcom/google/android/speech/audio/AudioUtils;->sAmrInputStreamConstructor:Ljava/lang/reflect/Constructor;

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/Object;

    const/4 v5, 0x0

    aput-object p0, v4, v5

    invoke-virtual {v2, v4}, Ljava/lang/reflect/Constructor;->newInstance([Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/io/InputStream;

    monitor-exit v3

    return-object v2

    .line 198
    :catchall_0
    move-exception v2

    monitor-exit v3
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :try_start_2
    throw v2
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    .line 199
    :catch_0
    move-exception v1

    .line 200
    .local v1, "e":Ljava/lang/Exception;
    new-instance v2, Ljava/lang/RuntimeException;

    const-string v3, "Exception while instantiating AmrInputStream"

    invoke-direct {v2, v3, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v2
.end method

.method private static createAmrWbInputStream(Ljava/io/InputStream;)Ljava/io/InputStream;
    .locals 7
    .param p0, "is"    # Ljava/io/InputStream;

    .prologue
    .line 205
    new-instance v0, Lcom/google/android/speech/audio/AudioEncoderInputStream;

    const-string v2, "audio/amr-wb"

    const/16 v3, 0x3e80

    const/16 v4, 0x800

    const/16 v5, 0x5d2a

    const/4 v6, 0x1

    move-object v1, p0

    invoke-direct/range {v0 .. v6}, Lcom/google/android/speech/audio/AudioEncoderInputStream;-><init>(Ljava/io/InputStream;Ljava/lang/String;IIII)V

    return-object v0
.end method

.method public static encodeAmr(Lcom/google/android/speech/audio/AudioUtils$Encoding;[B)[B
    .locals 3
    .param p0, "encoding"    # Lcom/google/android/speech/audio/AudioUtils$Encoding;
    .param p1, "bytes"    # [B
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 127
    sget-object v0, Lcom/google/android/speech/audio/AudioUtils$1;->$SwitchMap$com$google$android$speech$audio$AudioUtils$Encoding:[I

    invoke-virtual {p0}, Lcom/google/android/speech/audio/AudioUtils$Encoding;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_0

    .line 136
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Encoding not supported: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 129
    :pswitch_0
    const/4 v0, 0x3

    const/4 v1, 0x1

    invoke-static {p1, v0, v1}, Lcom/google/android/speech/audio/AudioUtils;->encodeAmrInternal([BIZ)[B

    move-result-object v0

    .line 133
    :goto_0
    return-object v0

    :pswitch_1
    const/16 v0, 0x9

    const/4 v1, 0x0

    invoke-static {p1, v0, v1}, Lcom/google/android/speech/audio/AudioUtils;->encodeAmrInternal([BIZ)[B

    move-result-object v0

    goto :goto_0

    .line 127
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method private static encodeAmrInternal([BIZ)[B
    .locals 6
    .param p0, "bytes"    # [B
    .param p1, "codec"    # I
    .param p2, "addHeader"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 142
    const/4 v0, 0x0

    .line 144
    .local v0, "amrIs":Ljava/io/InputStream;
    :try_start_0
    new-instance v4, Ljava/io/ByteArrayInputStream;

    invoke-direct {v4, p0}, Ljava/io/ByteArrayInputStream;-><init>([B)V

    invoke-static {v4, p1}, Lcom/google/android/speech/audio/AudioUtils;->getEncodingInputStream(Ljava/io/InputStream;I)Ljava/io/InputStream;

    move-result-object v0

    .line 146
    new-instance v1, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v1}, Ljava/io/ByteArrayOutputStream;-><init>()V

    .line 147
    .local v1, "baos":Ljava/io/ByteArrayOutputStream;
    if-eqz p2, :cond_0

    .line 148
    const-string v4, "#!AMR\n"

    invoke-virtual {v4}, Ljava/lang/String;->getBytes()[B

    move-result-object v4

    invoke-virtual {v1, v4}, Ljava/io/ByteArrayOutputStream;->write([B)V

    .line 150
    :cond_0
    const/16 v4, 0x180

    new-array v2, v4, [B

    .line 151
    .local v2, "buffer":[B
    const/4 v3, -0x1

    .line 152
    .local v3, "length":I
    :goto_0
    const/4 v4, 0x0

    array-length v5, v2

    invoke-static {v0, v2, v4, v5}, Lcom/google/android/shared/util/IoUtils;->read(Ljava/io/InputStream;[BII)I

    move-result v3

    if-lez v3, :cond_1

    .line 153
    const/4 v4, 0x0

    invoke-virtual {v1, v2, v4, v3}, Ljava/io/ByteArrayOutputStream;->write([BII)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    .line 157
    .end local v1    # "baos":Ljava/io/ByteArrayOutputStream;
    .end local v2    # "buffer":[B
    .end local v3    # "length":I
    :catchall_0
    move-exception v4

    invoke-static {v0}, Lcom/google/android/shared/util/IoUtils;->closeQuietly(Ljava/io/InputStream;)V

    throw v4

    .line 155
    .restart local v1    # "baos":Ljava/io/ByteArrayOutputStream;
    .restart local v2    # "buffer":[B
    .restart local v3    # "length":I
    :cond_1
    :try_start_1
    invoke-virtual {v1}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-result-object v4

    .line 157
    invoke-static {v0}, Lcom/google/android/shared/util/IoUtils;->closeQuietly(Ljava/io/InputStream;)V

    return-object v4
.end method

.method public static getAmrEncodingForRecording(Lcom/google/android/speech/audio/AudioStore$AudioRecording;)Lcom/google/android/speech/audio/AudioUtils$Encoding;
    .locals 3
    .param p0, "recording"    # Lcom/google/android/speech/audio/AudioStore$AudioRecording;

    .prologue
    .line 116
    invoke-virtual {p0}, Lcom/google/android/speech/audio/AudioStore$AudioRecording;->getSampleRate()I

    move-result v0

    const/16 v1, 0x3e80

    if-ne v0, v1, :cond_0

    .line 117
    sget-object v0, Lcom/google/android/speech/audio/AudioUtils$Encoding;->AMRWB:Lcom/google/android/speech/audio/AudioUtils$Encoding;

    .line 119
    :goto_0
    return-object v0

    .line 118
    :cond_0
    invoke-virtual {p0}, Lcom/google/android/speech/audio/AudioStore$AudioRecording;->getSampleRate()I

    move-result v0

    const/16 v1, 0x1f40

    if-ne v0, v1, :cond_1

    .line 119
    sget-object v0, Lcom/google/android/speech/audio/AudioUtils$Encoding;->AMR:Lcom/google/android/speech/audio/AudioUtils$Encoding;

    goto :goto_0

    .line 121
    :cond_1
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Unsupported sample rate: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p0}, Lcom/google/android/speech/audio/AudioStore$AudioRecording;->getSampleRate()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public static getEncodingInputStream(Ljava/io/InputStream;I)Ljava/io/InputStream;
    .locals 3
    .param p0, "is"    # Ljava/io/InputStream;
    .param p1, "encoding"    # I

    .prologue
    .line 166
    if-nez p1, :cond_0

    .line 171
    .end local p0    # "is":Ljava/io/InputStream;
    :goto_0
    return-object p0

    .line 168
    .restart local p0    # "is":Ljava/io/InputStream;
    :cond_0
    const/4 v0, 0x3

    if-ne p1, v0, :cond_1

    .line 169
    invoke-static {p0}, Lcom/google/android/speech/audio/AudioUtils;->createAmrInputStream(Ljava/io/InputStream;)Ljava/io/InputStream;

    move-result-object p0

    goto :goto_0

    .line 170
    :cond_1
    const/16 v0, 0x9

    if-ne p1, v0, :cond_2

    .line 171
    invoke-static {p0}, Lcom/google/android/speech/audio/AudioUtils;->createAmrWbInputStream(Ljava/io/InputStream;)Ljava/io/InputStream;

    move-result-object p0

    goto :goto_0

    .line 173
    :cond_2
    new-instance v0, Ljava/lang/RuntimeException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "unsupported encoding:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public static getMaxAmrBytesPerS3Request(I)I
    .locals 3
    .param p0, "encoding"    # I

    .prologue
    .line 102
    const/4 v0, 0x3

    if-ne p0, v0, :cond_0

    .line 103
    const/16 v0, 0x180

    .line 105
    :goto_0
    return v0

    .line 104
    :cond_0
    const/16 v0, 0x9

    if-ne p0, v0, :cond_1

    .line 105
    const/16 v0, 0x300

    goto :goto_0

    .line 107
    :cond_1
    new-instance v0, Ljava/lang/RuntimeException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Unsupported AMR encoding:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public static getNoiseSuppressors(Lcom/google/wireless/voicesearch/proto/GstaticConfiguration$Platform;)Ljava/util/List;
    .locals 10
    .param p0, "platform"    # Lcom/google/wireless/voicesearch/proto/GstaticConfiguration$Platform;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/wireless/voicesearch/proto/GstaticConfiguration$Platform;",
            ")",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 218
    if-nez p0, :cond_1

    .line 219
    invoke-static {}, Lcom/google/common/collect/Lists;->newArrayList()Ljava/util/ArrayList;

    move-result-object v7

    .line 240
    :cond_0
    :goto_0
    return-object v7

    .line 222
    :cond_1
    new-instance v7, Ljava/util/LinkedList;

    invoke-direct {v7}, Ljava/util/LinkedList;-><init>()V

    .line 223
    .local v7, "noiseSuppressors":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    iget-object v8, p0, Lcom/google/wireless/voicesearch/proto/GstaticConfiguration$Platform;->enabledNoiseSuppressors:[Ljava/lang/String;

    invoke-static {v8}, Lcom/google/common/collect/Lists;->newArrayList([Ljava/lang/Object;)Ljava/util/ArrayList;

    move-result-object v3

    .line 224
    .local v3, "enabledNoiseSuppressors":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    invoke-static {}, Landroid/media/audiofx/AudioEffect;->queryEffects()[Landroid/media/audiofx/AudioEffect$Descriptor;

    move-result-object v1

    .line 226
    .local v1, "available":[Landroid/media/audiofx/AudioEffect$Descriptor;
    move-object v0, v1

    .local v0, "arr$":[Landroid/media/audiofx/AudioEffect$Descriptor;
    array-length v5, v0

    .local v5, "len$":I
    const/4 v4, 0x0

    .local v4, "i$":I
    :goto_1
    if-ge v4, v5, :cond_0

    aget-object v2, v0, v4

    .line 227
    .local v2, "descriptor":Landroid/media/audiofx/AudioEffect$Descriptor;
    sget-object v8, Lcom/google/android/speech/audio/AudioUtils;->EFFECT_TYPE_NOISE_SUPPRESSOR:Ljava/util/UUID;

    iget-object v9, v2, Landroid/media/audiofx/AudioEffect$Descriptor;->type:Ljava/util/UUID;

    invoke-virtual {v8, v9}, Ljava/util/UUID;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_2

    .line 228
    iget-object v8, v2, Landroid/media/audiofx/AudioEffect$Descriptor;->uuid:Ljava/util/UUID;

    invoke-virtual {v8}, Ljava/util/UUID;->toString()Ljava/lang/String;

    move-result-object v6

    .line 229
    .local v6, "noiseSuppressorUuid":Ljava/lang/String;
    invoke-interface {v3, v6}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_3

    .line 230
    invoke-interface {v7, v6}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 226
    .end local v6    # "noiseSuppressorUuid":Ljava/lang/String;
    :cond_2
    add-int/lit8 v4, v4, 0x1

    goto :goto_1

    .line 234
    .restart local v6    # "noiseSuppressorUuid":Ljava/lang/String;
    :cond_3
    invoke-interface {v7}, Ljava/util/List;->clear()V

    goto :goto_0
.end method
