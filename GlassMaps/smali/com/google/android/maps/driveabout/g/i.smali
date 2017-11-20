.class public final Lcom/google/android/maps/driveabout/g/i;
.super Lcom/google/android/maps/driveabout/g/j;
.source "SourceFile"


# instance fields
.field private final a:I

.field private final b:I

.field private final c:I

.field private final d:J

.field private final e:I


# direct methods
.method public constructor <init>(IIIJI)V
    .locals 0

    .prologue
    .line 315
    invoke-direct {p0}, Lcom/google/android/maps/driveabout/g/j;-><init>()V

    .line 316
    iput p1, p0, Lcom/google/android/maps/driveabout/g/i;->a:I

    .line 317
    iput p2, p0, Lcom/google/android/maps/driveabout/g/i;->b:I

    .line 318
    iput p3, p0, Lcom/google/android/maps/driveabout/g/i;->c:I

    .line 319
    iput-wide p4, p0, Lcom/google/android/maps/driveabout/g/i;->d:J

    .line 320
    iput p6, p0, Lcom/google/android/maps/driveabout/g/i;->e:I

    .line 321
    return-void
.end method


# virtual methods
.method protected final a(Ljava/io/Writer;)V
    .locals 9

    .prologue
    .line 325
    const-string v0, "<datarequest type=\'networkStats\' numResponses=\'"

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    iget v1, p0, Lcom/google/android/maps/driveabout/g/i;->a:I

    iget v2, p0, Lcom/google/android/maps/driveabout/g/i;->b:I

    iget v3, p0, Lcom/google/android/maps/driveabout/g/i;->c:I

    iget-wide v4, p0, Lcom/google/android/maps/driveabout/g/i;->d:J

    iget v6, p0, Lcom/google/android/maps/driveabout/g/i;->e:I

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v8

    add-int/lit16 v8, v8, 0x84

    invoke-direct {v7, v8}, Ljava/lang/StringBuilder;-><init>(I)V

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "\' bytesSent=\'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "\' bytesReceived=\'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "\' lastActiveTime=\'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "\' networkSpeed=\'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "\' />"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/Writer;->write(Ljava/lang/String;)V

    .line 332
    return-void
.end method
