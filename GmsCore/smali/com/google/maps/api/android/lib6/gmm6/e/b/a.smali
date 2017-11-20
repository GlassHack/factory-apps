.class public final Lcom/google/maps/api/android/lib6/gmm6/e/b/a;
.super Ljava/lang/Object;


# instance fields
.field public a:Ljava/io/RandomAccessFile;


# direct methods
.method public constructor <init>(Ljava/io/File;Ljava/lang/String;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/io/RandomAccessFile;

    invoke-direct {v0, p1, p2}, Ljava/io/RandomAccessFile;-><init>(Ljava/io/File;Ljava/lang/String;)V

    iput-object v0, p0, Lcom/google/maps/api/android/lib6/gmm6/e/b/a;->a:Ljava/io/RandomAccessFile;

    return-void
.end method


# virtual methods
.method public final a()V
    .locals 1

    iget-object v0, p0, Lcom/google/maps/api/android/lib6/gmm6/e/b/a;->a:Ljava/io/RandomAccessFile;

    invoke-virtual {v0}, Ljava/io/RandomAccessFile;->getFD()Ljava/io/FileDescriptor;

    move-result-object v0

    invoke-virtual {v0}, Ljava/io/FileDescriptor;->sync()V

    return-void
.end method

.method public final a(J)V
    .locals 1

    iget-object v0, p0, Lcom/google/maps/api/android/lib6/gmm6/e/b/a;->a:Ljava/io/RandomAccessFile;

    invoke-virtual {v0, p1, p2}, Ljava/io/RandomAccessFile;->seek(J)V

    return-void
.end method

.method public final a([B)V
    .locals 1

    iget-object v0, p0, Lcom/google/maps/api/android/lib6/gmm6/e/b/a;->a:Ljava/io/RandomAccessFile;

    invoke-virtual {v0, p1}, Ljava/io/RandomAccessFile;->write([B)V

    return-void
.end method

.method public final a([BII)V
    .locals 1

    iget-object v0, p0, Lcom/google/maps/api/android/lib6/gmm6/e/b/a;->a:Ljava/io/RandomAccessFile;

    invoke-virtual {v0, p1, p2, p3}, Ljava/io/RandomAccessFile;->write([BII)V

    return-void
.end method

.method public final b([B)V
    .locals 1

    iget-object v0, p0, Lcom/google/maps/api/android/lib6/gmm6/e/b/a;->a:Ljava/io/RandomAccessFile;

    invoke-virtual {v0, p1}, Ljava/io/RandomAccessFile;->readFully([B)V

    return-void
.end method
