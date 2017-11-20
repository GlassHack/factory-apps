.class public Lcom/google/android/clockwork/utils/FdStreamWrapper;
.super Ljava/lang/Object;
.source "FdStreamWrapper.java"


# static fields
.field private static final READ_BUFFER_SIZE:I = 0x1000

.field private static final TAG:Ljava/lang/String; = "FdStreamWrapper"


# instance fields
.field private final mReadDescriptor:Landroid/os/ParcelFileDescriptor;

.field private final mStream:Ljava/io/InputStream;

.field private final mWriteDescriptor:Landroid/os/ParcelFileDescriptor;


# direct methods
.method public constructor <init>(Ljava/io/InputStream;)V
    .locals 5
    .param p1, "inputStream"    # Ljava/io/InputStream;

    .prologue
    const/4 v4, 0x0

    .line 25
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 26
    iput-object p1, p0, Lcom/google/android/clockwork/utils/FdStreamWrapper;->mStream:Ljava/io/InputStream;

    .line 27
    const/4 v1, 0x0

    .line 29
    .local v1, "pFds":[Landroid/os/ParcelFileDescriptor;
    :try_start_0
    invoke-static {}, Landroid/os/ParcelFileDescriptor;->createPipe()[Landroid/os/ParcelFileDescriptor;
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    .line 33
    :goto_0
    if-nez v1, :cond_0

    .line 34
    iput-object v4, p0, Lcom/google/android/clockwork/utils/FdStreamWrapper;->mReadDescriptor:Landroid/os/ParcelFileDescriptor;

    .line 35
    iput-object v4, p0, Lcom/google/android/clockwork/utils/FdStreamWrapper;->mWriteDescriptor:Landroid/os/ParcelFileDescriptor;

    .line 40
    :goto_1
    return-void

    .line 30
    :catch_0
    move-exception v0

    .line 31
    .local v0, "e":Ljava/io/IOException;
    const-string v2, "FdStreamWrapper"

    const-string v3, "Could not create a pipe."

    invoke-static {v2, v3, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0

    .line 37
    .end local v0    # "e":Ljava/io/IOException;
    :cond_0
    const/4 v2, 0x0

    aget-object v2, v1, v2

    iput-object v2, p0, Lcom/google/android/clockwork/utils/FdStreamWrapper;->mReadDescriptor:Landroid/os/ParcelFileDescriptor;

    .line 38
    const/4 v2, 0x1

    aget-object v2, v1, v2

    iput-object v2, p0, Lcom/google/android/clockwork/utils/FdStreamWrapper;->mWriteDescriptor:Landroid/os/ParcelFileDescriptor;

    goto :goto_1
.end method

.method static synthetic access$000(Lcom/google/android/clockwork/utils/FdStreamWrapper;)Landroid/os/ParcelFileDescriptor;
    .locals 1
    .param p0, "x0"    # Lcom/google/android/clockwork/utils/FdStreamWrapper;

    .prologue
    .line 16
    iget-object v0, p0, Lcom/google/android/clockwork/utils/FdStreamWrapper;->mWriteDescriptor:Landroid/os/ParcelFileDescriptor;

    return-object v0
.end method

.method static synthetic access$100(Lcom/google/android/clockwork/utils/FdStreamWrapper;)Ljava/io/InputStream;
    .locals 1
    .param p0, "x0"    # Lcom/google/android/clockwork/utils/FdStreamWrapper;

    .prologue
    .line 16
    iget-object v0, p0, Lcom/google/android/clockwork/utils/FdStreamWrapper;->mStream:Ljava/io/InputStream;

    return-object v0
.end method


# virtual methods
.method public getFd()Landroid/os/ParcelFileDescriptor;
    .locals 1

    .prologue
    .line 43
    new-instance v0, Lcom/google/android/clockwork/utils/FdStreamWrapper$1;

    invoke-direct {v0, p0}, Lcom/google/android/clockwork/utils/FdStreamWrapper$1;-><init>(Lcom/google/android/clockwork/utils/FdStreamWrapper;)V

    invoke-virtual {v0}, Lcom/google/android/clockwork/utils/FdStreamWrapper$1;->start()V

    .line 70
    iget-object v0, p0, Lcom/google/android/clockwork/utils/FdStreamWrapper;->mReadDescriptor:Landroid/os/ParcelFileDescriptor;

    return-object v0
.end method
