.class public Lcom/google/android/apps/lightcycle/storage/LocalZippableSession;
.super Ljava/lang/Object;
.source "LocalZippableSession.java"

# interfaces
.implements Lcom/google/android/apps/lightcycle/storage/ZippableSession;


# static fields
.field private static final CAPTURE_DIR_NAME:Ljava/lang/String; = "capture"

.field private static final TAG:Ljava/lang/String;

.field private static final THUMBNAIL_FILENAME:Ljava/lang/String; = "thumbnail.jpg"


# instance fields
.field private final sessionEntry:Lcom/google/android/apps/lightcycle/storage/LocalSessionEntry;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 28
    const-class v0, Lcom/google/android/apps/lightcycle/storage/LocalZippableSession;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/google/android/apps/lightcycle/storage/LocalZippableSession;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Lcom/google/android/apps/lightcycle/storage/LocalSessionEntry;)V
    .locals 0
    .param p1, "sessionEntry"    # Lcom/google/android/apps/lightcycle/storage/LocalSessionEntry;

    .prologue
    .line 38
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 39
    iput-object p1, p0, Lcom/google/android/apps/lightcycle/storage/LocalZippableSession;->sessionEntry:Lcom/google/android/apps/lightcycle/storage/LocalSessionEntry;

    .line 40
    return-void
.end method

.method static synthetic access$000()Ljava/lang/String;
    .locals 1

    .prologue
    .line 27
    sget-object v0, Lcom/google/android/apps/lightcycle/storage/LocalZippableSession;->TAG:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$100(Lcom/google/android/apps/lightcycle/storage/LocalZippableSession;)Lcom/google/android/apps/lightcycle/storage/LocalSessionEntry;
    .locals 1
    .param p0, "x0"    # Lcom/google/android/apps/lightcycle/storage/LocalZippableSession;

    .prologue
    .line 27
    iget-object v0, p0, Lcom/google/android/apps/lightcycle/storage/LocalZippableSession;->sessionEntry:Lcom/google/android/apps/lightcycle/storage/LocalSessionEntry;

    return-object v0
.end method

.method static synthetic access$200(Ljava/lang/String;Ljava/io/File;Ljava/util/zip/ZipOutputStream;)Z
    .locals 1
    .param p0, "x0"    # Ljava/lang/String;
    .param p1, "x1"    # Ljava/io/File;
    .param p2, "x2"    # Ljava/util/zip/ZipOutputStream;

    .prologue
    .line 27
    invoke-static {p0, p1, p2}, Lcom/google/android/apps/lightcycle/storage/LocalZippableSession;->putZipEntry(Ljava/lang/String;Ljava/io/File;Ljava/util/zip/ZipOutputStream;)Z

    move-result v0

    return v0
.end method

.method static synthetic access$300(Ljava/lang/String;Ljava/lang/String;Ljava/io/File;Ljava/util/zip/ZipOutputStream;)Z
    .locals 1
    .param p0, "x0"    # Ljava/lang/String;
    .param p1, "x1"    # Ljava/lang/String;
    .param p2, "x2"    # Ljava/io/File;
    .param p3, "x3"    # Ljava/util/zip/ZipOutputStream;

    .prologue
    .line 27
    invoke-static {p0, p1, p2, p3}, Lcom/google/android/apps/lightcycle/storage/LocalZippableSession;->addDirectory(Ljava/lang/String;Ljava/lang/String;Ljava/io/File;Ljava/util/zip/ZipOutputStream;)Z

    move-result v0

    return v0
.end method

.method private static addDirectory(Ljava/lang/String;Ljava/lang/String;Ljava/io/File;Ljava/util/zip/ZipOutputStream;)Z
    .locals 10
    .param p0, "rootSrc"    # Ljava/lang/String;
    .param p1, "rootDest"    # Ljava/lang/String;
    .param p2, "directory"    # Ljava/io/File;
    .param p3, "zos"    # Ljava/util/zip/ZipOutputStream;

    .prologue
    const/4 v6, 0x0

    .line 114
    invoke-virtual {p2}, Ljava/io/File;->isDirectory()Z

    move-result v7

    if-nez v7, :cond_1

    .line 136
    :cond_0
    :goto_0
    return v6

    .line 118
    :cond_1
    invoke-virtual {p2}, Ljava/io/File;->listFiles()[Ljava/io/File;

    move-result-object v0

    .local v0, "arr$":[Ljava/io/File;
    array-length v5, v0

    .local v5, "len$":I
    const/4 v4, 0x0

    .local v4, "i$":I
    :goto_1
    if-ge v4, v5, :cond_4

    aget-object v1, v0, v4

    .line 119
    .local v1, "entry":Ljava/io/File;
    invoke-virtual {v1}, Ljava/io/File;->isDirectory()Z

    move-result v7

    if-eqz v7, :cond_2

    .line 120
    invoke-static {p0, p1, v1, p3}, Lcom/google/android/apps/lightcycle/storage/LocalZippableSession;->addDirectory(Ljava/lang/String;Ljava/lang/String;Ljava/io/File;Ljava/util/zip/ZipOutputStream;)Z

    .line 124
    :cond_2
    invoke-virtual {v1}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v2

    .line 125
    .local v2, "entryAbsolutePath":Ljava/lang/String;
    invoke-virtual {v2, p0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v7

    if-nez v7, :cond_3

    .line 126
    sget-object v7, Lcom/google/android/apps/lightcycle/storage/LocalZippableSession;->TAG:Ljava/lang/String;

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "Something went wrong... entry not part of root: \'"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, "\' vs \'"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, "\'."

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 131
    :cond_3
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v7

    invoke-virtual {v2, v7}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v3

    .line 132
    .local v3, "entryName":Ljava/lang/String;
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v7, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    sget-char v8, Ljava/io/File;->separatorChar:C

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v7, v1, p3}, Lcom/google/android/apps/lightcycle/storage/LocalZippableSession;->putZipEntry(Ljava/lang/String;Ljava/io/File;Ljava/util/zip/ZipOutputStream;)Z

    move-result v7

    if-eqz v7, :cond_0

    .line 118
    add-int/lit8 v4, v4, 0x1

    goto :goto_1

    .line 136
    .end local v1    # "entry":Ljava/io/File;
    .end local v2    # "entryAbsolutePath":Ljava/lang/String;
    .end local v3    # "entryName":Ljava/lang/String;
    :cond_4
    const/4 v6, 0x1

    goto :goto_0
.end method

.method private static putZipEntry(Ljava/lang/String;Ljava/io/File;Ljava/util/zip/ZipOutputStream;)Z
    .locals 5
    .param p0, "entryName"    # Ljava/lang/String;
    .param p1, "file"    # Ljava/io/File;
    .param p2, "zos"    # Ljava/util/zip/ZipOutputStream;

    .prologue
    const/4 v2, 0x0

    .line 149
    new-instance v1, Ljava/util/zip/ZipEntry;

    invoke-direct {v1, p0}, Ljava/util/zip/ZipEntry;-><init>(Ljava/lang/String;)V

    .line 151
    .local v1, "entry":Ljava/util/zip/ZipEntry;
    :try_start_0
    invoke-virtual {p2, v1}, Ljava/util/zip/ZipOutputStream;->putNextEntry(Ljava/util/zip/ZipEntry;)V

    .line 152
    const/4 v3, 0x0

    invoke-virtual {p2, v3}, Ljava/util/zip/ZipOutputStream;->setLevel(I)V

    .line 153
    invoke-static {p1, p2}, Lcom/google/android/apps/lightcycle/storage/LocalZippableSession;->writeZosEntry(Ljava/io/File;Ljava/util/zip/ZipOutputStream;)V

    .line 154
    invoke-virtual {p2}, Ljava/util/zip/ZipOutputStream;->closeEntry()V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 159
    const/4 v2, 0x1

    :goto_0
    return v2

    .line 155
    :catch_0
    move-exception v0

    .line 156
    .local v0, "e":Ljava/io/IOException;
    sget-object v3, Lcom/google/android/apps/lightcycle/storage/LocalZippableSession;->TAG:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method

.method private static writeZosEntry(Ljava/io/File;Ljava/util/zip/ZipOutputStream;)V
    .locals 4
    .param p0, "file"    # Ljava/io/File;
    .param p1, "zos"    # Ljava/util/zip/ZipOutputStream;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 171
    new-instance v1, Ljava/io/BufferedInputStream;

    new-instance v3, Ljava/io/FileInputStream;

    invoke-direct {v3, p0}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V

    invoke-direct {v1, v3}, Ljava/io/BufferedInputStream;-><init>(Ljava/io/InputStream;)V

    .line 172
    .local v1, "is":Ljava/io/BufferedInputStream;
    const/16 v3, 0x1000

    new-array v0, v3, [B

    .line 174
    .local v0, "buffer":[B
    :goto_0
    invoke-virtual {v1, v0}, Ljava/io/BufferedInputStream;->read([B)I

    move-result v2

    .local v2, "len":I
    if-lez v2, :cond_0

    .line 175
    const/4 v3, 0x0

    invoke-virtual {p1, v0, v3, v2}, Ljava/util/zip/ZipOutputStream;->write([BII)V

    goto :goto_0

    .line 177
    :cond_0
    invoke-virtual {v1}, Ljava/io/BufferedInputStream;->close()V

    .line 178
    return-void
.end method


# virtual methods
.method public saveAs(Ljava/io/File;Lcom/google/android/apps/lightcycle/util/Callback;)V
    .locals 4
    .param p1, "file"    # Ljava/io/File;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/io/File;",
            "Lcom/google/android/apps/lightcycle/util/Callback",
            "<",
            "Ljava/lang/Boolean;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 44
    .local p2, "doneCallback":Lcom/google/android/apps/lightcycle/util/Callback;, "Lcom/google/android/apps/lightcycle/util/Callback<Ljava/lang/Boolean;>;"
    sget-object v1, Lcom/google/android/apps/lightcycle/storage/LocalZippableSession;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Saving temporary zip file to: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {p1}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 46
    new-instance v0, Lcom/google/android/apps/lightcycle/storage/LocalZippableSession$1;

    invoke-direct {v0, p0, p1, p2}, Lcom/google/android/apps/lightcycle/storage/LocalZippableSession$1;-><init>(Lcom/google/android/apps/lightcycle/storage/LocalZippableSession;Ljava/io/File;Lcom/google/android/apps/lightcycle/util/Callback;)V

    .line 98
    .local v0, "task":Landroid/os/AsyncTask;, "Landroid/os/AsyncTask<Ljava/lang/Void;Ljava/lang/Integer;Ljava/lang/Void;>;"
    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Void;

    invoke-virtual {v0, v1}, Landroid/os/AsyncTask;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    .line 99
    return-void
.end method
